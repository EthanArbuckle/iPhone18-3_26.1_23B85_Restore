@interface UNNotificationTopicSettings
- (UNNotificationTopicSettings)initWithCoder:(id)a3;
- (UNNotificationTopicSettings)initWithTopic:(id)a3 settings:(id)a4 muteAssertion:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationTopicSettings

- (UNNotificationTopicSettings)initWithTopic:(id)a3 settings:(id)a4 muteAssertion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = UNNotificationTopicSettings;
  v11 = [(UNNotificationTopicSettings *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    topic = v11->_topic;
    v11->_topic = v12;

    v14 = [v9 copy];
    topicSettings = v11->_topicSettings;
    v11->_topicSettings = v14;

    v16 = [v10 copy];
    muteAssertion = v11->_muteAssertion;
    v11->_muteAssertion = v16;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(UNNotificationTopicSettings *)self topic];
  v6 = [(UNNotificationTopicSettings *)self topicSettings];
  v7 = [(UNNotificationTopicSettings *)self muteAssertion];
  v8 = [v3 stringWithFormat:@"<%@: %p topic: %@, settings: %@, muteAssertion: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationTopicSettings *)self topic];
  [v4 encodeObject:v5 forKey:@"topic"];

  v6 = [(UNNotificationTopicSettings *)self topicSettings];
  [v4 encodeObject:v6 forKey:@"topicSettings"];

  v7 = [(UNNotificationTopicSettings *)self muteAssertion];
  [v4 encodeObject:v7 forKey:@"muteAssertion"];
}

- (UNNotificationTopicSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topicSettings"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"muteAssertion"];

  v8 = [(UNNotificationTopicSettings *)self initWithTopic:v5 settings:v6 muteAssertion:v7];
  return v8;
}

@end