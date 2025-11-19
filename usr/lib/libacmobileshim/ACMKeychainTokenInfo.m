@interface ACMKeychainTokenInfo
+ (id)keychainTokenInfoWithPrincipal:(id)a3;
+ (id)keychainTokenInfoWithPrincipal:(id)a3 indicator:(id)a4;
- (ACFPrincipal)principal;
- (ACMKeychainTokenInfo)init;
- (void)setPrincipal:(id)a3;
@end

@implementation ACMKeychainTokenInfo

- (ACMKeychainTokenInfo)init
{
  v4.receiver = self;
  v4.super_class = ACMKeychainTokenInfo;
  v2 = [(ACFKeychainItemInfo *)&v4 init];
  if (v2)
  {
    [(ACFKeychainItemInfo *)v2 setClassCode:+[ACMKeychainTokenInfo classCode]];
  }

  return v2;
}

+ (id)keychainTokenInfoWithPrincipal:(id)a3
{
  v4 = [a1 keychainItemInfo];
  if ([objc_msgSend(a3 "realm")])
  {
    [v4 setService:{objc_msgSend(a3, "realm")}];
    if ([objc_msgSend(a3 "userName")])
    {
      if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 48, 0, "Creating info with principal %@", a3);
      }

      [v4 setAccount:{objc_msgSend(a3, "principalString")}];
    }

    else if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 53, 0, "Creating info with %@ realm and any user", [a3 realm]);
    }
  }

  else if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 58, 0, "Creating info for any user and realm");
  }

  return v4;
}

+ (id)keychainTokenInfoWithPrincipal:(id)a3 indicator:(id)a4
{
  v6 = [a1 keychainItemInfo];
  v7 = v6;
  if (a4)
  {
    [v6 setService:a4];
  }

  if ([objc_msgSend(a3 "realm")])
  {
    if ([objc_msgSend(a3 "userName")])
    {
      if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:indicator:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 77, 0, "Creating info with principal %@", a3);
      }

      [v7 setAccount:{objc_msgSend(a3, "principalString")}];
    }

    else if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:indicator:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 82, 0, "Creating info with %@ realm and any user", [a3 realm]);
    }
  }

  else if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:indicator:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 87, 0, "Creating info for any user and realm");
  }

  return v7;
}

- (void)setPrincipal:(id)a3
{
  -[ACFKeychainItemInfo setService:](self, "setService:", [a3 realm]);
  v5 = [a3 principalString];

  [(ACFKeychainItemInfo *)self setAccount:v5];
}

- (ACFPrincipal)principal
{
  v2 = [(ACFKeychainItemInfo *)self account];

  return [ACFPrincipal principalWithPrincipalString:v2];
}

@end