@interface ABSValidationSyncObject
+ (BOOL)validationEnabled;
+ (void)validateAgainst:(id)a3;
- (ABSValidationSyncObject)init;
- (BOOL)isEqual:(id)a3;
- (id)createProtobufWithOptions:(id)a3;
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
  v3 = [v2 systemBuildVersion];

  v4 = [v3 substringToIndex:3];
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

- (id)createProtobufWithOptions:(id)a3
{
  v4 = [[ABSPBSyncObject alloc] initWithMemo:@"Validation"];
  v5 = objc_alloc_init(ABSPBCountValidationObject);
  [(ABSPBSyncObject *)v4 setCountValidationObject:v5];

  rawContactCount = self->_rawContactCount;
  if ((rawContactCount & 0x8000000000000000) == 0)
  {
    v7 = [(ABSPBSyncObject *)v4 countValidationObject];
    [v7 setRawCount:rawContactCount];
  }

  unifiedContactCount = self->_unifiedContactCount;
  if ((unifiedContactCount & 0x8000000000000000) == 0)
  {
    v9 = [(ABSPBSyncObject *)v4 countValidationObject];
    [v9 setUnifiedCount:unifiedContactCount];
  }

  favoritesCount = self->_favoritesCount;
  if ((favoritesCount & 0x8000000000000000) == 0)
  {
    v11 = [(ABSPBSyncObject *)v4 countValidationObject];
    [v11 setFavoritesCount:favoritesCount];
  }

  v12 = CFPreferencesGetAppBooleanValue(@"cvAlertEnabled", @"com.apple.Bridge.ContactsSyncDebug", 0) != 0;
  v13 = [(ABSPBSyncObject *)v4 countValidationObject];
  [v13 setShowAlert:v12];

  v14 = [(ABSPBSyncObject *)v4 data];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

+ (void)validateAgainst:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ABSValidationSyncObject);
  if ([v3 hasRawCount])
  {
    v5 = [v3 rawCount] != v4->_rawContactCount;
  }

  else
  {
    v5 = 0;
  }

  if ([v3 hasUnifiedCount])
  {
    v6 = [v3 unifiedCount] != v4->_unifiedContactCount;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 || v5;
  if ([v3 hasFavoritesCount])
  {
    v8 = [v3 favoritesCount] != v4->_favoritesCount;
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
      if ([v3 showAlert])
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
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Census validation successful. Remote: %@", &v12, 0xCu);
    }

    byte_100071CB4 = 0;
  }
}

@end