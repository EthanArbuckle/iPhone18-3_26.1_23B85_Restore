@interface UNCNotificationTopicRecordMapper
- (UNCNotificationTopicRecordMapper)initWithBundle:(id)bundle;
- (id)notificationTopicForNotificationTopicRecord:(id)record;
@end

@implementation UNCNotificationTopicRecordMapper

- (UNCNotificationTopicRecordMapper)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = UNCNotificationTopicRecordMapper;
  v6 = [(UNCNotificationTopicRecordMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, bundle);
  }

  return v7;
}

- (id)notificationTopicForNotificationTopicRecord:(id)record
{
  recordCopy = record;
  identifier = [recordCopy identifier];
  v6 = MEMORY[0x1E6983200];
  displayNameLocalizationKey = [recordCopy displayNameLocalizationKey];
  cfBundle = [(BSCFBundle *)self->_bundle cfBundle];
  displayName = [recordCopy displayName];
  v10 = [v6 localizedUserNotificationStringForKey:displayNameLocalizationKey arguments:0 cfBundle:cfBundle defaultValue:displayName];

  priority = [recordCopy priority];
  sortIdentifier = [recordCopy sortIdentifier];

  v13 = [MEMORY[0x1E69832C0] topicWithIdentifier:identifier displayName:v10 priority:priority sortIdentifier:sortIdentifier];

  return v13;
}

@end