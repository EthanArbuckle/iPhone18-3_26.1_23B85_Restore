@interface WLKLocale
- (WLKLocale)initWithDictionary:(id)a3;
@end

@implementation WLKLocale

- (WLKLocale)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14.receiver = self;
    v14.super_class = WLKLocale;
    v5 = [(WLKLocale *)&v14 init];
    if (v5)
    {
      v6 = [v4 wlk_stringForKey:@"displayName"];
      displayName = v5->_displayName;
      v5->_displayName = v6;

      v8 = [v4 wlk_stringForKey:@"locale"];
      if (v8)
      {
        v9 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v8];
        v10 = [v9 copy];
        locale = v5->_locale;
        v5->_locale = v10;
      }
    }

    self = v5;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end