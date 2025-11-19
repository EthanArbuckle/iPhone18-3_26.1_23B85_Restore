@interface STUserData
- (STUserData)initWithIdentifier:(id)a3 givenName:(id)a4 isParent:(BOOL)a5 isRemote:(BOOL)a6 hasPasscode:(BOOL)a7 screenTimeEnabled:(BOOL)a8 syncingEnabled:(BOOL)a9 checkForUnsafePhotos:(BOOL)a10 communicationSafetyNotificationEnabled:(BOOL)a11 communicationSafetyAnalyticsEnabled:(BOOL)a12 familyMemberType:(id)a13;
@end

@implementation STUserData

- (STUserData)initWithIdentifier:(id)a3 givenName:(id)a4 isParent:(BOOL)a5 isRemote:(BOOL)a6 hasPasscode:(BOOL)a7 screenTimeEnabled:(BOOL)a8 syncingEnabled:(BOOL)a9 checkForUnsafePhotos:(BOOL)a10 communicationSafetyNotificationEnabled:(BOOL)a11 communicationSafetyAnalyticsEnabled:(BOOL)a12 familyMemberType:(id)a13
{
  v20 = a3;
  v21 = a4;
  v22 = a13;
  v28.receiver = self;
  v28.super_class = STUserData;
  v23 = [(STUserData *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_identifier, a3);
    objc_storeStrong(&v24->_givenName, a4);
    v24->_isParent = a5;
    v24->_isRemote = a6;
    v24->_hasPasscode = a7;
    v24->_screenTimeEnabled = a8;
    v24->_syncingEnabled = a9;
    v24->_checkForUnsafePhotos = a10;
    v24->_isCommunicationSafetyNotificationEnabled = a11;
    v24->_isCommunicationSafetyAnalyticsEnabled = a12;
    v25 = [v22 copy];
    familyMemberType = v24->_familyMemberType;
    v24->_familyMemberType = v25;
  }

  return v24;
}

@end