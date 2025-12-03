@interface VSSpeechCharacterSet
+ (id)languageMapping;
- (VSSpeechCharacterSet)initWithLanguage:(id)language;
- (id)unspeakableRangeOfText:(id)text;
@end

@implementation VSSpeechCharacterSet

+ (id)languageMapping
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"VSSpeechLangCharset" ofType:@"plist" inDirectory:@"CharacterBinaryMaps"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];

  return v4;
}

- (id)unspeakableRangeOfText:(id)text
{
  textCopy = text;
  array = [MEMORY[0x277CBEB18] array];
  if ([textCopy length])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      characterSet = [(VSSpeechCharacterSet *)self characterSet];
      v10 = [characterSet characterIsMember:{objc_msgSend(textCopy, "characterAtIndex:", v7)}];

      if (!v10 || v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = 1;
        }

        else
        {
          v12 = v10;
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = 1;
        }

        else
        {
          v13 = v6;
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v7;
        }

        else
        {
          v14 = v8;
        }

        if (v10)
        {
          v13 = v6;
          v14 = v8;
        }

        if (v12)
        {
          v6 = v13;
        }

        else
        {
          ++v6;
        }

        if (v12)
        {
          v8 = v14;
        }
      }

      else
      {
        v11 = [MEMORY[0x277CCAE60] valueWithRange:{v8, v6}];
        [array addObject:v11];

        v6 = 0;
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v7;
    }

    while (v7 < [textCopy length]);
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [MEMORY[0x277CCAE60] valueWithRange:{v8, v6}];
      [array addObject:v15];
    }
  }

  return array;
}

- (VSSpeechCharacterSet)initWithLanguage:(id)language
{
  languageCopy = language;
  v14.receiver = self;
  v14.super_class = VSSpeechCharacterSet;
  v5 = [(VSSpeechCharacterSet *)&v14 init];
  if (!v5)
  {
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = +[VSSpeechCharacterSet languageMapping];
  v7 = [v6 objectForKeyedSubscript:languageCopy];

  if (v7)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 pathForResource:v7 ofType:@"cbm" inDirectory:@"CharacterBinaryMaps"];

    if (!v9)
    {

      v7 = 0;
      goto LABEL_6;
    }

    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9];
    v11 = [MEMORY[0x277CCA900] characterSetWithBitmapRepresentation:v10];
    characterSet = v5->_characterSet;
    v5->_characterSet = v11;

    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

@end