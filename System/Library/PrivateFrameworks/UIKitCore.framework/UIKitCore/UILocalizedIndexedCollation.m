@interface UILocalizedIndexedCollation
+ (UILocalizedIndexedCollation)collationWithDictionary:(id)a3;
+ (UILocalizedIndexedCollation)currentCollation;
- (NSArray)sectionIndexTitles;
- (NSArray)sortedArrayFromArray:(NSArray *)array collationStringSelector:(SEL)selector;
- (NSInteger)sectionForObject:(id)object collationStringSelector:(SEL)selector;
- (NSInteger)sectionForSectionIndexTitleAtIndex:(NSInteger)indexTitleIndex;
- (UILocalizedIndexedCollation)initWithDictionary:(id)a3;
- (__CFStringTokenizer)tokenizer;
- (id)_kanaTranscriptionForString:(id)a3;
- (id)transformedCollationStringForString:(id)a3;
- (void)dealloc;
@end

@implementation UILocalizedIndexedCollation

+ (UILocalizedIndexedCollation)currentCollation
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"UITableViewLocalizedSectionIndex" ofType:@"plist"];

  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v4];
  v6 = [a1 collationWithDictionary:v5];

  return v6;
}

- (void)dealloc
{
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
  }

  v4.receiver = self;
  v4.super_class = UILocalizedIndexedCollation;
  [(UILocalizedIndexedCollation *)&v4 dealloc];
}

+ (UILocalizedIndexedCollation)collationWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (UILocalizedIndexedCollation)initWithDictionary:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = UILocalizedIndexedCollation;
  v6 = [(UILocalizedIndexedCollation *)&v29 init];
  if (v6)
  {
    v7 = [v5 objectForKey:@"UICollationKey"];
    if (!v7)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:v6 file:@"UILocalizedIndexedCollation.m" lineNumber:61 description:@"Missing locale identifier in collation dictionary"];
    }

    v8 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v7];
    locale = v6->_locale;
    v6->_locale = v8;

    v10 = [v5 objectForKey:@"UISectionTitles"];
    sectionTitles = v6->_sectionTitles;
    v6->_sectionTitles = v10;

    v12 = [v5 objectForKey:@"UISectionStartStrings"];
    sectionStartStrings = v6->_sectionStartStrings;
    v6->_sectionStartStrings = v12;

    v14 = [v5 objectForKey:@"UIIndexTitles"];
    sectionIndexTitles = v6->_sectionIndexTitles;
    v6->_sectionIndexTitles = v14;

    v16 = [v5 objectForKey:@"UIIndexMapping"];
    sectionIndexMapping = v6->_sectionIndexMapping;
    v6->_sectionIndexMapping = v16;

    v18 = [v5 objectForKey:@"UITransform"];
    transform = v6->_transform;
    v6->_transform = v18;

    v20 = [(NSArray *)v6->_sectionStartStrings objectAtIndex:0];
    firstSectionStartString = v6->_firstSectionStartString;
    v6->_firstSectionStartString = v20;

    v22 = [(NSArray *)v6->_sectionStartStrings lastObject];
    lastSectionStartString = v6->_lastSectionStartString;
    v6->_lastSectionStartString = v22;

    v24 = [(NSLocale *)v6->_locale languageCode];
    v6->_primaryLanguageIsJapanese = [v24 isEqualToString:@"ja"];

    if (v6->_primaryLanguageIsJapanese)
    {
      v6->_preferJapaneseRomajiTranscriptions = 0;
    }

    else
    {
      v25 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:&unk_1EFE2D978];
      v26 = [v25 firstObject];
      v6->_preferJapaneseRomajiTranscriptions = [v26 isEqualToString:@"ja"];
    }
  }

  return v6;
}

- (id)_kanaTranscriptionForString:(id)a3
{
  v4 = a3;
  v5 = [v4 _firstGrapheme];
  v6 = [v5 _containsJapaneseOnly];

  if (v6)
  {
    v7 = [v4 _stringByTranscribingUsingTokenizer:{-[UILocalizedIndexedCollation tokenizer](self, "tokenizer")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)transformedCollationStringForString:(id)a3
{
  if (a3 && self->_transform)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, a3);
    if (CFStringTransform(MutableCopy, 0, self->_transform, 0))
    {
      goto LABEL_18;
    }

    CFRelease(MutableCopy);
    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v6 = [a3 length];
  if ([a3 compare:self->_lastSectionStartString options:64 range:0 locale:{v6, self->_locale}] == -1 && objc_msgSend(a3, "compare:options:range:locale:", self->_firstSectionStartString, 64, 0, v6, self->_locale) != -1)
  {
    goto LABEL_17;
  }

  if (!self->_primaryLanguageIsJapanese || ([(UILocalizedIndexedCollation *)self _kanaTranscriptionForString:a3], (MutableCopy = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (!self->_preferJapaneseRomajiTranscriptions)
    {
      MutableCopy = [a3 _stringByApplyingTransform:*MEMORY[0x1E695E9A8]];
      if (MutableCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v7 = [(UILocalizedIndexedCollation *)self _kanaTranscriptionForString:a3];
    v8 = v7;
    if (!v7)
    {
      v7 = a3;
    }

    MutableCopy = [v7 _stringByApplyingTransform:*MEMORY[0x1E695E9A8]];

    if (!MutableCopy)
    {
LABEL_17:
      MutableCopy = a3;
    }
  }

LABEL_18:

  return MutableCopy;
}

- (__CFStringTokenizer)tokenizer
{
  result = self->_tokenizer;
  if (!result)
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"ja"];
    v6.location = 0;
    v6.length = 0;
    result = CFStringTokenizerCreate(v4, 0, v6, 0, v5);
    self->_tokenizer = result;
  }

  return result;
}

- (NSArray)sectionIndexTitles
{
  sectionIndexTitles = self->_sectionIndexTitles;
  if (!sectionIndexTitles)
  {
    sectionIndexTitles = self->_sectionTitles;
  }

  v3 = sectionIndexTitles;

  return v3;
}

- (NSInteger)sectionForSectionIndexTitleAtIndex:(NSInteger)indexTitleIndex
{
  v3 = indexTitleIndex;
  sectionIndexMapping = self->_sectionIndexMapping;
  if (sectionIndexMapping)
  {
    v5 = [(NSArray *)sectionIndexMapping objectAtIndex:indexTitleIndex];
    v3 = [v5 intValue];
  }

  return v3;
}

- (NSInteger)sectionForObject:(id)object collationStringSelector:(SEL)selector
{
  sectionStartStrings = self->_sectionStartStrings;
  if (!sectionStartStrings)
  {
    sectionStartStrings = self->_sectionTitles;
  }

  v6 = ([object methodForSelector:selector])(object, selector);
  v7 = [(UILocalizedIndexedCollation *)self transformedCollationStringForString:v6];

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [(NSArray *)sectionStartStrings count];
  if (v8 < 1)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  do
  {
    v11 = (v9 + v10) >> 1;
    v12 = [v7 compare:-[NSArray objectAtIndex:](sectionStartStrings options:"objectAtIndex:" range:v11) locale:{64, 0, objc_msgSend(v7, "length"), self->_locale}];
    if (v12 == -1)
    {
      v9 = (v9 + v10) >> 1;
    }

    else
    {
      if (v12 != 1)
      {
        goto LABEL_14;
      }

      v10 = v11 + 1;
    }
  }

  while (v10 < v9);
  if (v10 <= 0)
  {
LABEL_12:
    v10 = [(NSArray *)sectionStartStrings count];
  }

  v11 = v10 - 1;
LABEL_14:

  return v11;
}

- (NSArray)sortedArrayFromArray:(NSArray *)array collationStringSelector:(SEL)selector
{
  v6[0] = self;
  v6[1] = selector;
  v4 = [(NSArray *)array sortedArrayUsingFunction:localizedObjectSort context:v6];

  return v4;
}

@end