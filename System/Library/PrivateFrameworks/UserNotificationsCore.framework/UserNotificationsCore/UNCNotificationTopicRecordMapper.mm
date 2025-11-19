@interface UNCNotificationTopicRecordMapper
- (UNCNotificationTopicRecordMapper)initWithBundle:(id)a3;
- (id)notificationTopicForNotificationTopicRecord:(id)a3;
@end

@implementation UNCNotificationTopicRecordMapper

- (UNCNotificationTopicRecordMapper)initWithBundle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UNCNotificationTopicRecordMapper;
  v6 = [(UNCNotificationTopicRecordMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, a3);
  }

  return v7;
}

- (id)notificationTopicForNotificationTopicRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = MEMORY[0x1E6983200];
  v7 = [v4 displayNameLocalizationKey];
  v8 = [(BSCFBundle *)self->_bundle cfBundle];
  v9 = [v4 displayName];
  v10 = [v6 localizedUserNotificationStringForKey:v7 arguments:0 cfBundle:v8 defaultValue:v9];

  v11 = [v4 priority];
  v12 = [v4 sortIdentifier];

  v13 = [MEMORY[0x1E69832C0] topicWithIdentifier:v5 displayName:v10 priority:v11 sortIdentifier:v12];

  return v13;
}

@end