@interface ICDCloudPushNotificationAccountRegistrationState
- (ICDCloudPushNotificationAccountRegistrationState)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation ICDCloudPushNotificationAccountRegistrationState

- (id)dictionaryRepresentation
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:2];
  v4 = v3;
  APNSToken = self->_APNSToken;
  if (APNSToken)
  {
    [v3 setObject:APNSToken forKey:@"APNSToken"];
  }

  mediaKinds = self->_mediaKinds;
  if (mediaKinds)
  {
    [v4 setObject:mediaKinds forKey:@"mediaKinds"];
  }

  return v4;
}

- (ICDCloudPushNotificationAccountRegistrationState)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(ICDCloudPushNotificationAccountRegistrationState *)self init];
  if (v5)
  {
    v6 = [representationCopy ic_dataValueForKey:@"APNSToken"];
    APNSToken = v5->_APNSToken;
    v5->_APNSToken = v6;

    v8 = [representationCopy ic_arrayValueForKey:@"mediaKinds"];
    mediaKinds = v5->_mediaKinds;
    v5->_mediaKinds = v8;
  }

  return v5;
}

@end