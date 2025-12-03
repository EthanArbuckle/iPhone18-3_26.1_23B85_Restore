@interface ICMusicAccountNotificationsSettingsSwitch
- (BOOL)hasBeenPreviouslyToggled;
- (BOOL)isToggled;
- (ICMusicAccountNotificationsSettingsSwitch)initWithItemResponseDictionary:(id)dictionary;
- (ICMusicAccountNotificationsSettingsSwitch)initWithToggleState:(BOOL)state hasBeenToggled:(BOOL)toggled identifier:(id)identifier;
- (NSString)identifier;
- (void)setHasBeenPreviouslyToggled:(BOOL)toggled;
- (void)setIsToggled:(BOOL)toggled;
@end

@implementation ICMusicAccountNotificationsSettingsSwitch

- (void)setHasBeenPreviouslyToggled:(BOOL)toggled
{
  if (self->_valueDictionary)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:toggled];
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
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setIsToggled:(BOOL)toggled
{
  if (self->_valueDictionary)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:toggled];
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
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
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

- (ICMusicAccountNotificationsSettingsSwitch)initWithToggleState:(BOOL)state hasBeenToggled:(BOOL)toggled identifier:(id)identifier
{
  toggledCopy = toggled;
  stateCopy = state;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = ICMusicAccountNotificationsSettingsSwitch;
  v9 = [(ICMusicAccountNotificationsSettingsSwitch *)&v20 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF90]);
    v11 = MEMORY[0x1E695E0F8];
    v12 = [v10 initWithDictionary:MEMORY[0x1E695E0F8]];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:stateCopy];
    [(NSMutableDictionary *)v12 setObject:v13 forKeyedSubscript:ICMusicAccountNotificationsSettingsSwitchIsToggledKey];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:toggledCopy];
    [(NSMutableDictionary *)v12 setObject:v14 forKeyedSubscript:@"dataUpdated"];

    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v11];
    [(NSDictionary *)v15 setObject:identifierCopy forKeyedSubscript:ICMusicAccountNotificationsSettingsSwitchIdentifierKey];
    [(NSDictionary *)v15 setObject:v12 forKeyedSubscript:@"value"];
    itemResponseDictionary = v9->_itemResponseDictionary;
    v9->_itemResponseDictionary = v15;
    v17 = v15;

    valueDictionary = v9->_valueDictionary;
    v9->_valueDictionary = v12;
  }

  return v9;
}

- (ICMusicAccountNotificationsSettingsSwitch)initWithItemResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ICMusicAccountNotificationsSettingsSwitch;
  v6 = [(ICMusicAccountNotificationsSettingsSwitch *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemResponseDictionary, dictionary);
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