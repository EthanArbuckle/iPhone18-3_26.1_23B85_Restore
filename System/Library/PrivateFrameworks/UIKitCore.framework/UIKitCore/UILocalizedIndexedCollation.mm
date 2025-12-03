@interface UILocalizedIndexedCollation
+ (UILocalizedIndexedCollation)collationWithDictionary:(id)dictionary;
+ (UILocalizedIndexedCollation)currentCollation;
- (NSArray)sectionIndexTitles;
- (NSArray)sortedArrayFromArray:(NSArray *)array collationStringSelector:(SEL)selector;
- (NSInteger)sectionForObject:(id)object collationStringSelector:(SEL)selector;
- (NSInteger)sectionForSectionIndexTitleAtIndex:(NSInteger)indexTitleIndex;
- (UILocalizedIndexedCollation)initWithDictionary:(id)dictionary;
- (__CFStringTokenizer)tokenizer;
- (id)_kanaTranscriptionForString:(id)string;
- (id)transformedCollationStringForString:(id)string;
- (void)dealloc;
@end

@implementation UILocalizedIndexedCollation

+ (UILocalizedIndexedCollation)currentCollation
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"UITableViewLocalizedSectionIndex" ofType:@"plist"];

  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v4];
  v6 = [self collationWithDictionary:v5];

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

+ (UILocalizedIndexedCollation)collationWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (UILocalizedIndexedCollation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = UILocalizedIndexedCollation;
  v6 = [(UILocalizedIndexedCollation *)&v29 init];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"UICollationKey"];
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"UILocalizedIndexedCollation.m" lineNumber:61 description:@"Missing locale identifier in collation dictionary"];
    }

    v8 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v7];
    locale = v6->_locale;
    v6->_locale = v8;

    v10 = [dictionaryCopy objectForKey:@"UISectionTitles"];
    sectionTitles = v6->_sectionTitles;
    v6->_sectionTitles = v10;

    v12 = [dictionaryCopy objectForKey:@"UISectionStartStrings"];
    sectionStartStrings = v6->_sectionStartStrings;
    v6->_sectionStartStrings = v12;

    v14 = [dictionaryCopy objectForKey:@"UIIndexTitles"];
    sectionIndexTitles = v6->_sectionIndexTitles;
    v6->_sectionIndexTitles = v14;

    v16 = [dictionaryCopy objectForKey:@"UIIndexMapping"];
    sectionIndexMapping = v6->_sectionIndexMapping;
    v6->_sectionIndexMapping = v16;

    v18 = [dictionaryCopy objectForKey:@"UITransform"];
    transform = v6->_transform;
    v6->_transform = v18;

    v20 = [(NSArray *)v6->_sectionStartStrings objectAtIndex:0];
    firstSectionStartString = v6->_firstSectionStartString;
    v6->_firstSectionStartString = v20;

    lastObject = [(NSArray *)v6->_sectionStartStrings lastObject];
    lastSectionStartString = v6->_lastSectionStartString;
    v6->_lastSectionStartString = lastObject;

    languageCode = [(NSLocale *)v6->_locale languageCode];
    v6->_primaryLanguageIsJapanese = [languageCode isEqualToString:@"ja"];

    if (v6->_primaryLanguageIsJapanese)
    {
      v6->_preferJapaneseRomajiTranscriptions = 0;
    }

    else
    {
      v25 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:&unk_1EFE2D978];
      firstObject = [v25 firstObject];
      v6->_preferJapaneseRomajiTranscriptions = [firstObject isEqualToString:@"ja"];
    }
  }

  return v6;
}

- (id)_kanaTranscriptionForString:(id)string
{
  stringCopy = string;
  _firstGrapheme = [stringCopy _firstGrapheme];
  _containsJapaneseOnly = [_firstGrapheme _containsJapaneseOnly];

  if (_containsJapaneseOnly)
  {
    v7 = [stringCopy _stringByTranscribingUsingTokenizer:{-[UILocalizedIndexedCollation tokenizer](self, "tokenizer")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)transformedCollationStringForString:(id)string
{
  if (string && self->_transform)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, string);
    if (CFStringTransform(MutableCopy, 0, self->_transform, 0))
    {
      goto LABEL_18;
    }

    CFRelease(MutableCopy);
    goto LABEL_17;
  }

  if (!string)
  {
    goto LABEL_17;
  }

  v6 = [string length];
  if ([string compare:self->_lastSectionStartString options:64 range:0 locale:{v6, self->_locale}] == -1 && objc_msgSend(string, "compare:options:range:locale:", self->_firstSectionStartString, 64, 0, v6, self->_locale) != -1)
  {
    goto LABEL_17;
  }

  if (!self->_primaryLanguageIsJapanese || ([(UILocalizedIndexedCollation *)self _kanaTranscriptionForString:string], (MutableCopy = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (!self->_preferJapaneseRomajiTranscriptions)
    {
      MutableCopy = [string _stringByApplyingTransform:*MEMORY[0x1E695E9A8]];
      if (MutableCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    stringCopy = [(UILocalizedIndexedCollation *)self _kanaTranscriptionForString:string];
    v8 = stringCopy;
    if (!stringCopy)
    {
      stringCopy = string;
    }

    MutableCopy = [stringCopy _stringByApplyingTransform:*MEMORY[0x1E695E9A8]];

    if (!MutableCopy)
    {
LABEL_17:
      MutableCopy = string;
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
  intValue = indexTitleIndex;
  sectionIndexMapping = self->_sectionIndexMapping;
  if (sectionIndexMapping)
  {
    v5 = [(NSArray *)sectionIndexMapping objectAtIndex:indexTitleIndex];
    intValue = [v5 intValue];
  }

  return intValue;
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