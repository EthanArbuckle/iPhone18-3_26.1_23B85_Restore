@interface WLKLocale
- (WLKLocale)initWithDictionary:(id)dictionary;
@end

@implementation WLKLocale

- (WLKLocale)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v14.receiver = self;
    v14.super_class = WLKLocale;
    v5 = [(WLKLocale *)&v14 init];
    if (v5)
    {
      v6 = [dictionaryCopy wlk_stringForKey:@"displayName"];
      displayName = v5->_displayName;
      v5->_displayName = v6;

      v8 = [dictionaryCopy wlk_stringForKey:@"locale"];
      if (v8)
      {
        v9 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v8];
        v10 = [v9 copy];
        locale = v5->_locale;
        v5->_locale = v10;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end