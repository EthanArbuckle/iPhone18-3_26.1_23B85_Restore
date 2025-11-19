@interface UNNotificationSourceSettings
- (UNNotificationSourceSettings)initWithCoder:(id)a3;
- (UNNotificationSourceSettings)initWithNotificationSettings:(id)a3 topicSettings:(id)a4 muteAssertion:(id)a5 isRestricted:(BOOL)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationSourceSettings

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(UNNotificationSourceSettings *)self notificationSettings];
  v6 = [(UNNotificationSourceSettings *)self topicSettings];
  v7 = [(UNNotificationSourceSettings *)self muteAssertion];
  v8 = [(UNNotificationSourceSettings *)self isRestricted];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p notification settings: %@ topic settings: %@, mute assertion: %@, isRestricted: %@", v4, self, v5, v6, v7, v9];;

  return v10;
}

- (UNNotificationSourceSettings)initWithNotificationSettings:(id)a3 topicSettings:(id)a4 muteAssertion:(id)a5 isRestricted:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = UNNotificationSourceSettings;
  v13 = [(UNNotificationSourceSettings *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    notificationSettings = v13->_notificationSettings;
    v13->_notificationSettings = v14;

    v16 = [v11 copy];
    topicSettings = v13->_topicSettings;
    v13->_topicSettings = v16;

    v18 = [v12 copy];
    muteAssertion = v13->_muteAssertion;
    v13->_muteAssertion = v18;

    v13->_isRestricted = a6;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(UNNotificationSourceSettings *)self notificationSettings];
  [v7 encodeObject:v4 forKey:@"notificationSettings"];

  v5 = [(UNNotificationSourceSettings *)self topicSettings];
  [v7 encodeObject:v5 forKey:@"topicSettings"];

  v6 = [(UNNotificationSourceSettings *)self muteAssertion];
  [v7 encodeObject:v6 forKey:@"muteAssertion"];

  [v7 encodeBool:-[UNNotificationSourceSettings isRestricted](self forKey:{"isRestricted"), @"restricted"}];
}

- (UNNotificationSourceSettings)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notificationSettings"];
  v6 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"topicSettings"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"muteAssertion"];
  v11 = [v4 decodeBoolForKey:@"restricted"];

  v12 = [(UNNotificationSourceSettings *)self initWithNotificationSettings:v5 topicSettings:v9 muteAssertion:v10 isRestricted:v11];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end