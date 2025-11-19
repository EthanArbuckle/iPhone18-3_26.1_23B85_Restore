@interface SearchUISuggestionImageUtilities
+ (CGSize)maximumSize;
+ (id)appIconImageForBundleIdentifier:(id)a3;
+ (id)imageForSuggestionCardSection:(id)a3;
+ (id)suggestionSymbolImageWithSymbolName:(id)a3;
+ (id)symbolImageForSuggestionType:(int)a3;
+ (unint64_t)currentWebSuggestionIconPref;
+ (void)initialize;
@end

@implementation SearchUISuggestionImageUtilities

+ (void)initialize
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:a1 selector:sel_resetSizes name:*MEMORY[0x1E69DDC48] object:0];
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
    v5 = [a1 symbolImageForSuggestionType:{0, sMaxGlyphSize}];
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

+ (id)imageForSuggestionCardSection:(id)a3
{
  v4 = a3;
  [a1 maximumSize];
  v5 = [SearchUIAppIconImage bestVariantForSize:?];
  v6 = [v4 thumbnail];
  v7 = [SearchUIImage imageWithSFImage:v6 variantForAppIcon:v5];

  if (!v7)
  {
    v8 = [v4 suggestionType];
    v9 = [a1 currentWebSuggestionIconPref];
    v10 = [v4 punchoutOptions];
    v11 = [v10 firstObject];
    v12 = [v11 bundleIdentifier];

    v13 = [SearchUIUtilities bundleIdentifierForApp:14];
    v14 = v13;
    if (v8 == 4 && (v9 == 3 || !v9))
    {
      v15 = v13;

      v12 = v15;
    }

    if (v12)
    {
      v16 = [SearchUIUtilities bundleIdentifierForApp:14];
      v17 = [v12 isEqualToString:v16];

      if (v17)
      {
        v18 = [[SearchUIDefaultBrowserAppIconImage alloc] initWithVariant:v5];
        v7 = v18;
        if (v8 == 4 && v9 == 3)
        {
          [(SearchUIDefaultBrowserAppIconImage *)v18 setCornerRoundingStyle:4];
        }

        goto LABEL_14;
      }

      v19 = [a1 appIconImageForBundleIdentifier:v12];
    }

    else
    {
      v19 = [a1 symbolImageForSuggestionType:v8];
    }

    v7 = v19;
LABEL_14:
  }

  return v7;
}

+ (id)symbolImageForSuggestionType:(int)a3
{
  v5 = [a1 currentWebSuggestionIconPref];
  if (a3 == 1)
  {
    v7 = @"person.crop.circle";
  }

  else if (a3 == 4)
  {
    v6 = @"safari";
    if (v5 == 2)
    {
      v6 = @"safari.fill";
    }

    v7 = v6;
  }

  else
  {
    v7 = @"magnifyingglass";
  }

  v8 = [a1 suggestionSymbolImageWithSymbolName:v7];

  return v8;
}

+ (id)appIconImageForBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [a1 maximumSize];
    v5 = [SearchUIAppIconImage appIconForBundleIdentifier:v4 variant:[SearchUIAppIconImage bestVariantForSize:?]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)suggestionSymbolImageWithSymbolName:(id)a3
{
  v3 = a3;
  v4 = +[SearchUIThumbnailViewController compactSymbolFont];
  v5 = [[SearchUISymbolImage alloc] initWithSymbolName:v3 font:v4 scale:+[SearchUIThumbnailViewController compactSymbolScale]];

  return v5;
}

@end