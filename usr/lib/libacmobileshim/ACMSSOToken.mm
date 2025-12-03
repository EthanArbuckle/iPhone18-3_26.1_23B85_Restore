@interface ACMSSOToken
+ (id)tokenWithKeychainTokenInfo:(id)info;
+ (id)tokenWithToken:(id)token data:(id)data;
- (NSDictionary)tokenDictionary;
- (void)dealloc;
@end

@implementation ACMSSOToken

+ (id)tokenWithKeychainTokenInfo:(id)info
{
  generic = [info generic];
  if ([generic length])
  {
    v4 = objc_opt_new();
    [v4 setTokenData:generic];
  }

  else
  {
    if (qword_2A1EB8F10 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "+[ACMSSOToken tokenWithKeychainTokenInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMSSOToken.m", 56, 0, "Invalid keychain token info");
    }

    return 0;
  }

  return v4;
}

+ (id)tokenWithToken:(id)token data:(id)data
{
  v6 = objc_opt_new();
  [v6 setNonce:{objc_msgSend(token, "nonce")}];
  [v6 setSessionToken:{objc_msgSend(token, "sessionToken")}];
  [v6 setCreationDate:{objc_msgSend(token, "creationDate")}];
  [v6 setExpirationDate:{objc_msgSend(token, "expirationDate")}];
  [v6 setRecentAuthenticationDate:{objc_msgSend(token, "recentAuthenticationDate")}];
  [v6 setRecentUnlockDate:{objc_msgSend(token, "recentUnlockDate")}];
  [v6 setPrincipal:{objc_msgSend(token, "principal")}];
  [v6 setTokenData:data];
  return v6;
}

- (void)dealloc
{
  [(ACMSSOToken *)self setSessionToken:0];
  [(ACMSSOToken *)self setRecentAuthenticationDate:0];
  [(ACMSSOToken *)self setRecentUnlockDate:0];
  [(ACMSSOToken *)self setInitialRequest:0];
  [(ACMSSOToken *)self setPersonID:0];
  v3.receiver = self;
  v3.super_class = ACMSSOToken;
  [(ACMToken *)&v3 dealloc];
}

- (NSDictionary)tokenDictionary
{
  v3 = MEMORY[0x29EDB8DC0];
  userName = [(ACFPrincipal *)[(ACMToken *)self principal] userName];
  realm = [(ACFPrincipal *)[(ACMToken *)self principal] realm];
  v6 = MEMORY[0x29EDBA070];
  [(NSDate *)[(ACMToken *)self expirationDate] timeIntervalSince1970];
  return [v3 dictionaryWithObjectsAndKeys:{userName, @"b", realm, @"c", objc_msgSend(v6, "numberWithLongLong:", (v7 * 1000.0)), @"e", -[ACMToken nonce](self, "nonce"), @"o", -[ACMSSOToken sessionToken](self, "sessionToken"), @"q", 0}];
}

@end