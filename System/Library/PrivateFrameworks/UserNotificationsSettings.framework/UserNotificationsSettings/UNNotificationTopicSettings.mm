@interface UNNotificationTopicSettings
- (UNNotificationTopicSettings)initWithCoder:(id)coder;
- (UNNotificationTopicSettings)initWithTopic:(id)topic settings:(id)settings muteAssertion:(id)assertion;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationTopicSettings

- (UNNotificationTopicSettings)initWithTopic:(id)topic settings:(id)settings muteAssertion:(id)assertion
{
  topicCopy = topic;
  settingsCopy = settings;
  assertionCopy = assertion;
  v19.receiver = self;
  v19.super_class = UNNotificationTopicSettings;
  v11 = [(UNNotificationTopicSettings *)&v19 init];
  if (v11)
  {
    v12 = [topicCopy copy];
    topic = v11->_topic;
    v11->_topic = v12;

    v14 = [settingsCopy copy];
    topicSettings = v11->_topicSettings;
    v11->_topicSettings = v14;

    v16 = [assertionCopy copy];
    muteAssertion = v11->_muteAssertion;
    v11->_muteAssertion = v16;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  topic = [(UNNotificationTopicSettings *)self topic];
  topicSettings = [(UNNotificationTopicSettings *)self topicSettings];
  muteAssertion = [(UNNotificationTopicSettings *)self muteAssertion];
  v8 = [v3 stringWithFormat:@"<%@: %p topic: %@, settings: %@, muteAssertion: %@>", v4, self, topic, topicSettings, muteAssertion];;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topic = [(UNNotificationTopicSettings *)self topic];
  [coderCopy encodeObject:topic forKey:@"topic"];

  topicSettings = [(UNNotificationTopicSettings *)self topicSettings];
  [coderCopy encodeObject:topicSettings forKey:@"topicSettings"];

  muteAssertion = [(UNNotificationTopicSettings *)self muteAssertion];
  [coderCopy encodeObject:muteAssertion forKey:@"muteAssertion"];
}

- (UNNotificationTopicSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topicSettings"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"muteAssertion"];

  v8 = [(UNNotificationTopicSettings *)self initWithTopic:v5 settings:v6 muteAssertion:v7];
  return v8;
}

@end