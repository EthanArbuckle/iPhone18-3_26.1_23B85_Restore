@interface NSXPCConnection
- (BOOL)rcs_isValid;
- (id)rc_userInfoForKey:(id)key;
- (void)rc_setUserInfo:(id)info forKey:(id)key;
@end

@implementation NSXPCConnection

- (BOOL)rcs_isValid
{
  v2 = objc_getAssociatedObject(self, "RCSNSXPCConnectionIsValidKey");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)rc_setUserInfo:(id)info forKey:(id)key
{
  infoCopy = info;
  keyCopy = key;
  v7 = objc_getAssociatedObject(self, "RCSNSXPCConnectionUserInfoDictionaryKey");
  v8 = infoCopy;
  v9 = v7;
  if (infoCopy && !v7)
  {
    v9 = +[NSMutableDictionary dictionary];
    objc_setAssociatedObject(self, "RCSNSXPCConnectionUserInfoDictionaryKey", v9, 0x301);
    v8 = infoCopy;
LABEL_5:
    [v9 setObject:v8 forKey:keyCopy];
    goto LABEL_6;
  }

  if (infoCopy)
  {
    goto LABEL_5;
  }

  [v7 removeObjectForKey:keyCopy];
LABEL_6:
}

- (id)rc_userInfoForKey:(id)key
{
  keyCopy = key;
  v5 = objc_getAssociatedObject(self, "RCSNSXPCConnectionUserInfoDictionaryKey");
  v6 = [v5 objectForKey:keyCopy];

  return v6;
}

@end