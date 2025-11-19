@interface ACMSSOToken
+ (id)tokenWithKeychainTokenInfo:(id)a3;
+ (id)tokenWithToken:(id)a3 data:(id)a4;
- (NSDictionary)tokenDictionary;
- (void)dealloc;
@end

@implementation ACMSSOToken

+ (id)tokenWithKeychainTokenInfo:(id)a3
{
  v3 = [a3 generic];
  if ([v3 length])
  {
    v4 = objc_opt_new();
    [v4 setTokenData:v3];
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

+ (id)tokenWithToken:(id)a3 data:(id)a4
{
  v6 = objc_opt_new();
  [v6 setNonce:{objc_msgSend(a3, "nonce")}];
  [v6 setSessionToken:{objc_msgSend(a3, "sessionToken")}];
  [v6 setCreationDate:{objc_msgSend(a3, "creationDate")}];
  [v6 setExpirationDate:{objc_msgSend(a3, "expirationDate")}];
  [v6 setRecentAuthenticationDate:{objc_msgSend(a3, "recentAuthenticationDate")}];
  [v6 setRecentUnlockDate:{objc_msgSend(a3, "recentUnlockDate")}];
  [v6 setPrincipal:{objc_msgSend(a3, "principal")}];
  [v6 setTokenData:a4];
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
  v4 = [(ACFPrincipal *)[(ACMToken *)self principal] userName];
  v5 = [(ACFPrincipal *)[(ACMToken *)self principal] realm];
  v6 = MEMORY[0x29EDBA070];
  [(NSDate *)[(ACMToken *)self expirationDate] timeIntervalSince1970];
  return [v3 dictionaryWithObjectsAndKeys:{v4, @"b", v5, @"c", objc_msgSend(v6, "numberWithLongLong:", (v7 * 1000.0)), @"e", -[ACMToken nonce](self, "nonce"), @"o", -[ACMSSOToken sessionToken](self, "sessionToken"), @"q", 0}];
}

@end