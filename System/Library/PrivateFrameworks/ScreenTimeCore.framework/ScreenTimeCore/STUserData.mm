@interface STUserData
- (STUserData)initWithIdentifier:(id)identifier givenName:(id)name isParent:(BOOL)parent isRemote:(BOOL)remote hasPasscode:(BOOL)passcode screenTimeEnabled:(BOOL)enabled syncingEnabled:(BOOL)syncingEnabled checkForUnsafePhotos:(BOOL)self0 communicationSafetyNotificationEnabled:(BOOL)self1 communicationSafetyAnalyticsEnabled:(BOOL)self2 familyMemberType:(id)self3;
@end

@implementation STUserData

- (STUserData)initWithIdentifier:(id)identifier givenName:(id)name isParent:(BOOL)parent isRemote:(BOOL)remote hasPasscode:(BOOL)passcode screenTimeEnabled:(BOOL)enabled syncingEnabled:(BOOL)syncingEnabled checkForUnsafePhotos:(BOOL)self0 communicationSafetyNotificationEnabled:(BOOL)self1 communicationSafetyAnalyticsEnabled:(BOOL)self2 familyMemberType:(id)self3
{
  identifierCopy = identifier;
  nameCopy = name;
  typeCopy = type;
  v28.receiver = self;
  v28.super_class = STUserData;
  v23 = [(STUserData *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_identifier, identifier);
    objc_storeStrong(&v24->_givenName, name);
    v24->_isParent = parent;
    v24->_isRemote = remote;
    v24->_hasPasscode = passcode;
    v24->_screenTimeEnabled = enabled;
    v24->_syncingEnabled = syncingEnabled;
    v24->_checkForUnsafePhotos = photos;
    v24->_isCommunicationSafetyNotificationEnabled = notificationEnabled;
    v24->_isCommunicationSafetyAnalyticsEnabled = analyticsEnabled;
    v25 = [typeCopy copy];
    familyMemberType = v24->_familyMemberType;
    v24->_familyMemberType = v25;
  }

  return v24;
}

@end