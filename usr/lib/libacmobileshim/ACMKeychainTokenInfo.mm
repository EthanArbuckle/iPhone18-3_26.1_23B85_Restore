@interface ACMKeychainTokenInfo
+ (id)keychainTokenInfoWithPrincipal:(id)principal;
+ (id)keychainTokenInfoWithPrincipal:(id)principal indicator:(id)indicator;
- (ACFPrincipal)principal;
- (ACMKeychainTokenInfo)init;
- (void)setPrincipal:(id)principal;
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

+ (id)keychainTokenInfoWithPrincipal:(id)principal
{
  keychainItemInfo = [self keychainItemInfo];
  if ([objc_msgSend(principal "realm")])
  {
    [keychainItemInfo setService:{objc_msgSend(principal, "realm")}];
    if ([objc_msgSend(principal "userName")])
    {
      if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 48, 0, "Creating info with principal %@", principal);
      }

      [keychainItemInfo setAccount:{objc_msgSend(principal, "principalString")}];
    }

    else if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 53, 0, "Creating info with %@ realm and any user", [principal realm]);
    }
  }

  else if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 58, 0, "Creating info for any user and realm");
  }

  return keychainItemInfo;
}

+ (id)keychainTokenInfoWithPrincipal:(id)principal indicator:(id)indicator
{
  keychainItemInfo = [self keychainItemInfo];
  v7 = keychainItemInfo;
  if (indicator)
  {
    [keychainItemInfo setService:indicator];
  }

  if ([objc_msgSend(principal "realm")])
  {
    if ([objc_msgSend(principal "userName")])
    {
      if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:indicator:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 77, 0, "Creating info with principal %@", principal);
      }

      [v7 setAccount:{objc_msgSend(principal, "principalString")}];
    }

    else if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:indicator:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 82, 0, "Creating info with %@ realm and any user", [principal realm]);
    }
  }

  else if (qword_2A1EB8F08 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "+[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:indicator:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTokenInfo.m", 87, 0, "Creating info for any user and realm");
  }

  return v7;
}

- (void)setPrincipal:(id)principal
{
  -[ACFKeychainItemInfo setService:](self, "setService:", [principal realm]);
  principalString = [principal principalString];

  [(ACFKeychainItemInfo *)self setAccount:principalString];
}

- (ACFPrincipal)principal
{
  account = [(ACFKeychainItemInfo *)self account];

  return [ACFPrincipal principalWithPrincipalString:account];
}

@end