@interface ISStoreAuthenticationChallenge
- (ISStoreAuthenticationChallenge)init;
- (void)dealloc;
@end

@implementation ISStoreAuthenticationChallenge

- (ISStoreAuthenticationChallenge)init
{
  v4.receiver = self;
  v4.super_class = ISStoreAuthenticationChallenge;
  v2 = [(ISStoreAuthenticationChallenge *)&v4 init];
  if (v2)
  {
    -[ISAuthenticationChallenge setLocalizedTitle:](v2, "setLocalizedTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ENTER_PASSWORD", &stru_2884BCFD0, 0}]);
    [(ISStoreAuthenticationChallenge *)v2 setUserNameIsEditable:1];
  }

  return v2;
}

- (void)dealloc
{
  [(ISStoreAuthenticationChallenge *)self setPassword:0];
  [(ISStoreAuthenticationChallenge *)self setUser:0];
  v3.receiver = self;
  v3.super_class = ISStoreAuthenticationChallenge;
  [(ISAuthenticationChallenge *)&v3 dealloc];
}

@end