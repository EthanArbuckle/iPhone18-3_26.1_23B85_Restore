@interface ICMusicAccountNotificationsSettingsResponse
+ (id)createResponseBodyWithSwitches:(id)switches;
- (ICMusicAccountNotificationsSettingsResponse)initWithResponseDictionary:(id)dictionary;
- (NSArray)settingsSwitches;
@end

@implementation ICMusicAccountNotificationsSettingsResponse

- (NSArray)settingsSwitches
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSDictionary *)self->_responseDictionary objectForKey:@"sections"];
  if (!_NSIsNSArray())
  {
    goto LABEL_18;
  }

  if (![v4 count])
  {
    goto LABEL_18;
  }

  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = _NSIsNSDictionary();

  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = [v4 objectAtIndexedSubscript:0];
  v8 = [v7 objectForKey:@"sectionId"];

  if (([v8 isEqualToString:@"com.apple.Music.main"] & 1) == 0)
  {

LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v9 = [v4 objectAtIndexedSubscript:0];
  v10 = [v9 objectForKey:@"settings"];

  if (v10 && _NSIsNSArray())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v10;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v16 = [ICMusicAccountNotificationsSettingsSwitch alloc];
            v17 = [(ICMusicAccountNotificationsSettingsSwitch *)v16 initWithItemResponseDictionary:v15, v19];
            [v3 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

LABEL_19:

  return v3;
}

- (ICMusicAccountNotificationsSettingsResponse)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ICMusicAccountNotificationsSettingsResponse;
  v6 = [(ICMusicAccountNotificationsSettingsResponse *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseDictionary, dictionary);
    v7->_wasSuccessful = 0;
    v8 = [dictionaryCopy objectForKey:@"status"];
    if (_NSIsNSString())
    {
      v7->_wasSuccessful = [v8 isEqualToString:@"success"];
    }
  }

  return v7;
}

+ (id)createResponseBodyWithSwitches:(id)switches
{
  v21 = *MEMORY[0x1E69E9840];
  switchesCopy = switches;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = switchesCopy;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        identifier = [v9 identifier];
        [v10 setObject:identifier forKeyedSubscript:ICMusicAccountNotificationsSettingsSwitchIdentifierKey];

        v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isToggled")}];
        [v10 setObject:v12 forKeyedSubscript:ICMusicAccountNotificationsSettingsSwitchIsToggledKey];

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v4, @"settings", 0}];

  return v13;
}

@end