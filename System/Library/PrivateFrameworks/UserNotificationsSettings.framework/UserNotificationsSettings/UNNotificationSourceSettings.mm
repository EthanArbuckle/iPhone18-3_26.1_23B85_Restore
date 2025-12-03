@interface UNNotificationSourceSettings
- (UNNotificationSourceSettings)initWithCoder:(id)coder;
- (UNNotificationSourceSettings)initWithNotificationSettings:(id)settings topicSettings:(id)topicSettings muteAssertion:(id)assertion isRestricted:(BOOL)restricted;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationSourceSettings

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  notificationSettings = [(UNNotificationSourceSettings *)self notificationSettings];
  topicSettings = [(UNNotificationSourceSettings *)self topicSettings];
  muteAssertion = [(UNNotificationSourceSettings *)self muteAssertion];
  isRestricted = [(UNNotificationSourceSettings *)self isRestricted];
  v9 = @"NO";
  if (isRestricted)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p notification settings: %@ topic settings: %@, mute assertion: %@, isRestricted: %@", v4, self, notificationSettings, topicSettings, muteAssertion, v9];;

  return v10;
}

- (UNNotificationSourceSettings)initWithNotificationSettings:(id)settings topicSettings:(id)topicSettings muteAssertion:(id)assertion isRestricted:(BOOL)restricted
{
  settingsCopy = settings;
  topicSettingsCopy = topicSettings;
  assertionCopy = assertion;
  v21.receiver = self;
  v21.super_class = UNNotificationSourceSettings;
  v13 = [(UNNotificationSourceSettings *)&v21 init];
  if (v13)
  {
    v14 = [settingsCopy copy];
    notificationSettings = v13->_notificationSettings;
    v13->_notificationSettings = v14;

    v16 = [topicSettingsCopy copy];
    topicSettings = v13->_topicSettings;
    v13->_topicSettings = v16;

    v18 = [assertionCopy copy];
    muteAssertion = v13->_muteAssertion;
    v13->_muteAssertion = v18;

    v13->_isRestricted = restricted;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  notificationSettings = [(UNNotificationSourceSettings *)self notificationSettings];
  [coderCopy encodeObject:notificationSettings forKey:@"notificationSettings"];

  topicSettings = [(UNNotificationSourceSettings *)self topicSettings];
  [coderCopy encodeObject:topicSettings forKey:@"topicSettings"];

  muteAssertion = [(UNNotificationSourceSettings *)self muteAssertion];
  [coderCopy encodeObject:muteAssertion forKey:@"muteAssertion"];

  [coderCopy encodeBool:-[UNNotificationSourceSettings isRestricted](self forKey:{"isRestricted"), @"restricted"}];
}

- (UNNotificationSourceSettings)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationSettings"];
  v6 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"topicSettings"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"muteAssertion"];
  v11 = [coderCopy decodeBoolForKey:@"restricted"];

  v12 = [(UNNotificationSourceSettings *)self initWithNotificationSettings:v5 topicSettings:v9 muteAssertion:v10 isRestricted:v11];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end