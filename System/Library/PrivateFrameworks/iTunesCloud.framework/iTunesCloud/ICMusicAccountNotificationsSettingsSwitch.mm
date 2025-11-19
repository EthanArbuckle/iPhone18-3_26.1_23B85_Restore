@interface ICMusicAccountNotificationsSettingsSwitch
- (BOOL)hasBeenPreviouslyToggled;
- (BOOL)isToggled;
- (ICMusicAccountNotificationsSettingsSwitch)initWithItemResponseDictionary:(id)a3;
- (ICMusicAccountNotificationsSettingsSwitch)initWithToggleState:(BOOL)a3 hasBeenToggled:(BOOL)a4 identifier:(id)a5;
- (NSString)identifier;
- (void)setHasBeenPreviouslyToggled:(BOOL)a3;
- (void)setIsToggled:(BOOL)a3;
@end

@implementation ICMusicAccountNotificationsSettingsSwitch

- (void)setHasBeenPreviouslyToggled:(BOOL)a3
{
  if (self->_valueDictionary)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [(NSMutableDictionary *)self->_valueDictionary setObject:v4 forKeyedSubscript:@"dataUpdated"];
  }
}

- (BOOL)hasBeenPreviouslyToggled
{
  valueDictionary = self->_valueDictionary;
  if (!valueDictionary)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)valueDictionary objectForKey:@"dataUpdated"];
  if (_NSIsNSNumber())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIsToggled:(BOOL)a3
{
  if (self->_valueDictionary)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [(NSMutableDictionary *)self->_valueDictionary setObject:v4 forKeyedSubscript:ICMusicAccountNotificationsSettingsSwitchIsToggledKey];
  }
}

- (BOOL)isToggled
{
  valueDictionary = self->_valueDictionary;
  if (!valueDictionary)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)valueDictionary objectForKey:ICMusicAccountNotificationsSettingsSwitchIsToggledKey];
  if (_NSIsNSNumber())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)identifier
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:ICMusicAccountNotificationsSettingsSwitchIdentifierKey];
  if (v2)
  {
    if (_NSIsNSString())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (ICMusicAccountNotificationsSettingsSwitch)initWithToggleState:(BOOL)a3 hasBeenToggled:(BOOL)a4 identifier:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v20.receiver = self;
  v20.super_class = ICMusicAccountNotificationsSettingsSwitch;
  v9 = [(ICMusicAccountNotificationsSettingsSwitch *)&v20 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF90]);
    v11 = MEMORY[0x1E695E0F8];
    v12 = [v10 initWithDictionary:MEMORY[0x1E695E0F8]];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    [(NSMutableDictionary *)v12 setObject:v13 forKeyedSubscript:ICMusicAccountNotificationsSettingsSwitchIsToggledKey];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    [(NSMutableDictionary *)v12 setObject:v14 forKeyedSubscript:@"dataUpdated"];

    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v11];
    [(NSDictionary *)v15 setObject:v8 forKeyedSubscript:ICMusicAccountNotificationsSettingsSwitchIdentifierKey];
    [(NSDictionary *)v15 setObject:v12 forKeyedSubscript:@"value"];
    itemResponseDictionary = v9->_itemResponseDictionary;
    v9->_itemResponseDictionary = v15;
    v17 = v15;

    valueDictionary = v9->_valueDictionary;
    v9->_valueDictionary = v12;
  }

  return v9;
}

- (ICMusicAccountNotificationsSettingsSwitch)initWithItemResponseDictionary:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ICMusicAccountNotificationsSettingsSwitch;
  v6 = [(ICMusicAccountNotificationsSettingsSwitch *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemResponseDictionary, a3);
    v8 = [(NSDictionary *)v7->_itemResponseDictionary objectForKey:@"value"];
    if (_NSIsNSDictionary())
    {
      v9 = [v8 mutableCopy];
      valueDictionary = v7->_valueDictionary;
      v7->_valueDictionary = v9;
    }
  }

  return v7;
}

@end