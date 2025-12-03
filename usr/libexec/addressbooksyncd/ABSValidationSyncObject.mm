@interface ABSValidationSyncObject
+ (BOOL)validationEnabled;
+ (void)validateAgainst:(id)against;
- (ABSValidationSyncObject)init;
- (BOOL)isEqual:(id)equal;
- (id)createProtobufWithOptions:(id)options;
- (id)description;
@end

@implementation ABSValidationSyncObject

- (ABSValidationSyncObject)init
{
  v7.receiver = self;
  v7.super_class = ABSValidationSyncObject;
  v2 = [(ABSValidationSyncObject *)&v7 init];
  if (v2)
  {
    v3 = +[ABSContactsInterface sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100030968;
    v5[3] = &unk_10005D190;
    v6 = v2;
    [v3 accessSync:v5];
  }

  return v2;
}

+ (BOOL)validationEnabled
{
  v2 = +[SYDevice targetableDevice];
  systemBuildVersion = [v2 systemBuildVersion];

  v4 = [systemBuildVersion substringToIndex:3];
  if ([v4 compare:@"16R" options:64] == -1 || !+[NDTLog isInternalDevice](NDTLog, "isInternalDevice"))
  {
    v6 = 0;
  }

  else
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"cvEnabled", @"com.apple.Bridge.ContactsSyncDebug", &keyExistsAndHasValidFormat))
    {
      v5 = 1;
    }

    else
    {
      v5 = keyExistsAndHasValidFormat == 0;
    }

    v6 = v5;
  }

  return v6;
}

- (id)createProtobufWithOptions:(id)options
{
  v4 = [[ABSPBSyncObject alloc] initWithMemo:@"Validation"];
  v5 = objc_alloc_init(ABSPBCountValidationObject);
  [(ABSPBSyncObject *)v4 setCountValidationObject:v5];

  rawContactCount = self->_rawContactCount;
  if ((rawContactCount & 0x8000000000000000) == 0)
  {
    countValidationObject = [(ABSPBSyncObject *)v4 countValidationObject];
    [countValidationObject setRawCount:rawContactCount];
  }

  unifiedContactCount = self->_unifiedContactCount;
  if ((unifiedContactCount & 0x8000000000000000) == 0)
  {
    countValidationObject2 = [(ABSPBSyncObject *)v4 countValidationObject];
    [countValidationObject2 setUnifiedCount:unifiedContactCount];
  }

  favoritesCount = self->_favoritesCount;
  if ((favoritesCount & 0x8000000000000000) == 0)
  {
    countValidationObject3 = [(ABSPBSyncObject *)v4 countValidationObject];
    [countValidationObject3 setFavoritesCount:favoritesCount];
  }

  v12 = CFPreferencesGetAppBooleanValue(@"cvAlertEnabled", @"com.apple.Bridge.ContactsSyncDebug", 0) != 0;
  countValidationObject4 = [(ABSPBSyncObject *)v4 countValidationObject];
  [countValidationObject4 setShowAlert:v12];

  data = [(ABSPBSyncObject *)v4 data];

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = self->_rawContactCount == v5[2] && self->_unifiedContactCount == v5[3] && self->_favoritesCount == v5[4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  unifiedContactCount = self->_unifiedContactCount;
  v6 = [NSString stringWithFormat:@"<%@:%p raw:%d unified:%d favorites:%d>", v4, self, self->_rawContactCount, unifiedContactCount, self->_favoritesCount];

  return v6;
}

+ (void)validateAgainst:(id)against
{
  againstCopy = against;
  v4 = objc_alloc_init(ABSValidationSyncObject);
  if ([againstCopy hasRawCount])
  {
    v5 = [againstCopy rawCount] != v4->_rawContactCount;
  }

  else
  {
    v5 = 0;
  }

  if ([againstCopy hasUnifiedCount])
  {
    v6 = [againstCopy unifiedCount] != v4->_unifiedContactCount;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 || v5;
  if ([againstCopy hasFavoritesCount])
  {
    v8 = [againstCopy favoritesCount] != v4->_favoritesCount;
  }

  else
  {
    v8 = 0;
  }

  if (v7 | v8)
  {
    v9 = *(qword_100071D00 + 8);
    if (byte_100071CB4)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003BA3C();
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10003B9C4();
      }

      byte_100071CB4 = 1;
      if ([againstCopy showAlert])
      {
        v11 = [NSString stringWithFormat:@"Contact count mismatch. Please file a radar against AddressBookSync | watchOS"];
        CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"Sync validation failure", v11, @"OK");
      }
    }
  }

  else
  {
    v10 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = againstCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Census validation successful. Remote: %@", &v12, 0xCu);
    }

    byte_100071CB4 = 0;
  }
}

@end