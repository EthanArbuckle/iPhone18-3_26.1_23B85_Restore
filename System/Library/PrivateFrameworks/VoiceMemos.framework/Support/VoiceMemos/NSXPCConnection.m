@interface NSXPCConnection
- (BOOL)rcs_isValid;
- (id)rc_userInfoForKey:(id)a3;
- (void)rc_setUserInfo:(id)a3 forKey:(id)a4;
@end

@implementation NSXPCConnection

- (BOOL)rcs_isValid
{
  v2 = objc_getAssociatedObject(self, "RCSNSXPCConnectionIsValidKey");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)rc_setUserInfo:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = objc_getAssociatedObject(self, "RCSNSXPCConnectionUserInfoDictionaryKey");
  v8 = v10;
  v9 = v7;
  if (v10 && !v7)
  {
    v9 = +[NSMutableDictionary dictionary];
    objc_setAssociatedObject(self, "RCSNSXPCConnectionUserInfoDictionaryKey", v9, 0x301);
    v8 = v10;
LABEL_5:
    [v9 setObject:v8 forKey:v6];
    goto LABEL_6;
  }

  if (v10)
  {
    goto LABEL_5;
  }

  [v7 removeObjectForKey:v6];
LABEL_6:
}

- (id)rc_userInfoForKey:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, "RCSNSXPCConnectionUserInfoDictionaryKey");
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end