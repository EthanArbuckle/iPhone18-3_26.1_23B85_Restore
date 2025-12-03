@interface SearchUISuggestionImageUtilities
+ (CGSize)maximumSize;
+ (id)appIconImageForBundleIdentifier:(id)identifier;
+ (id)imageForSuggestionCardSection:(id)section;
+ (id)suggestionSymbolImageWithSymbolName:(id)name;
+ (id)symbolImageForSuggestionType:(int)type;
+ (unint64_t)currentWebSuggestionIconPref;
+ (void)initialize;
@end

@implementation SearchUISuggestionImageUtilities

+ (void)initialize
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_resetSizes name:*MEMORY[0x1E69DDC48] object:0];
}

+ (unint64_t)currentWebSuggestionIconPref
{
  if (currentWebSuggestionIconPref_onceToken != -1)
  {
    +[SearchUISuggestionImageUtilities currentWebSuggestionIconPref];
  }

  return currentWebSuggestionIconPref_currentWebSuggestionIconPref;
}

void __64__SearchUISuggestionImageUtilities_currentWebSuggestionIconPref__block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v0 = [v1 objectForKey:@"SPUIWebSuggestionIconKey"];
  currentWebSuggestionIconPref_currentWebSuggestionIconPref = [v0 integerValue];
}

+ (CGSize)maximumSize
{
  v3 = *(&sMaxGlyphSize + 1);
  v2 = *&sMaxGlyphSize;
  if (*&sMaxGlyphSize == *MEMORY[0x1E695F060] && *(&sMaxGlyphSize + 1) == *(MEMORY[0x1E695F060] + 8))
  {
    v5 = [self symbolImageForSuggestionType:{0, sMaxGlyphSize}];
    v6 = [v5 loadImageWithScale:0 isDarkStyle:0.0];

    [v6 size];
    if (v7 < v8)
    {
      v7 = v8;
    }

    [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:0 forView:v7];
    *&sMaxGlyphSize = v9;
    *(&sMaxGlyphSize + 1) = v9;

    v3 = *(&sMaxGlyphSize + 1);
    v2 = *&sMaxGlyphSize;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)imageForSuggestionCardSection:(id)section
{
  sectionCopy = section;
  [self maximumSize];
  v5 = [SearchUIAppIconImage bestVariantForSize:?];
  thumbnail = [sectionCopy thumbnail];
  v7 = [SearchUIImage imageWithSFImage:thumbnail variantForAppIcon:v5];

  if (!v7)
  {
    suggestionType = [sectionCopy suggestionType];
    currentWebSuggestionIconPref = [self currentWebSuggestionIconPref];
    punchoutOptions = [sectionCopy punchoutOptions];
    firstObject = [punchoutOptions firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];

    v13 = [SearchUIUtilities bundleIdentifierForApp:14];
    v14 = v13;
    if (suggestionType == 4 && (currentWebSuggestionIconPref == 3 || !currentWebSuggestionIconPref))
    {
      v15 = v13;

      bundleIdentifier = v15;
    }

    if (bundleIdentifier)
    {
      v16 = [SearchUIUtilities bundleIdentifierForApp:14];
      v17 = [bundleIdentifier isEqualToString:v16];

      if (v17)
      {
        v18 = [[SearchUIDefaultBrowserAppIconImage alloc] initWithVariant:v5];
        v7 = v18;
        if (suggestionType == 4 && currentWebSuggestionIconPref == 3)
        {
          [(SearchUIDefaultBrowserAppIconImage *)v18 setCornerRoundingStyle:4];
        }

        goto LABEL_14;
      }

      v19 = [self appIconImageForBundleIdentifier:bundleIdentifier];
    }

    else
    {
      v19 = [self symbolImageForSuggestionType:suggestionType];
    }

    v7 = v19;
LABEL_14:
  }

  return v7;
}

+ (id)symbolImageForSuggestionType:(int)type
{
  currentWebSuggestionIconPref = [self currentWebSuggestionIconPref];
  if (type == 1)
  {
    v7 = @"person.crop.circle";
  }

  else if (type == 4)
  {
    v6 = @"safari";
    if (currentWebSuggestionIconPref == 2)
    {
      v6 = @"safari.fill";
    }

    v7 = v6;
  }

  else
  {
    v7 = @"magnifyingglass";
  }

  v8 = [self suggestionSymbolImageWithSymbolName:v7];

  return v8;
}

+ (id)appIconImageForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    [self maximumSize];
    v5 = [SearchUIAppIconImage appIconForBundleIdentifier:identifierCopy variant:[SearchUIAppIconImage bestVariantForSize:?]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)suggestionSymbolImageWithSymbolName:(id)name
{
  nameCopy = name;
  v4 = +[SearchUIThumbnailViewController compactSymbolFont];
  v5 = [[SearchUISymbolImage alloc] initWithSymbolName:nameCopy font:v4 scale:+[SearchUIThumbnailViewController compactSymbolScale]];

  return v5;
}

@end