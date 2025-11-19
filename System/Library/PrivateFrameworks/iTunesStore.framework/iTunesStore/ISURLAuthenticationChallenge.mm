@interface ISURLAuthenticationChallenge
+ (id)_messageForProtectionSpace:(id)a3;
+ (id)_titleForProtectionSpace:(id)a3;
- (BOOL)hasPassword;
- (ISURLAuthenticationChallenge)initWithAuthenticationChallenge:(id)a3;
- (id)password;
- (id)user;
- (void)cancelAuthentication;
- (void)useCredential:(id)a3;
@end

@implementation ISURLAuthenticationChallenge

- (ISURLAuthenticationChallenge)initWithAuthenticationChallenge:(id)a3
{
  v7.receiver = self;
  v7.super_class = ISURLAuthenticationChallenge;
  v4 = [(ISAuthenticationChallenge *)&v7 initWithAuthenticationChallenge:?];
  if (v4)
  {
    v5 = [a3 protectionSpace];
    v4->super._localizedMessage = [objc_opt_class() _messageForProtectionSpace:v5];
    v4->super._localizedTitle = [objc_opt_class() _titleForProtectionSpace:v5];
  }

  return v4;
}

- (void)cancelAuthentication
{
  v3 = [(ISURLAuthenticationChallenge *)self sender];
  challenge = self->super._challenge;

  [v3 cancelAuthenticationChallenge:challenge];
}

- (BOOL)hasPassword
{
  v2 = [(NSURLAuthenticationChallenge *)self->super._challenge proposedCredential];

  return [(NSURLCredential *)v2 hasPassword];
}

- (id)password
{
  v2 = [(NSURLAuthenticationChallenge *)self->super._challenge proposedCredential];

  return [(NSURLCredential *)v2 password];
}

- (id)user
{
  v2 = [(NSURLAuthenticationChallenge *)self->super._challenge proposedCredential];

  return [(NSURLCredential *)v2 user];
}

- (void)useCredential:(id)a3
{
  v5 = [(ISURLAuthenticationChallenge *)self sender];
  challenge = self->super._challenge;

  [v5 useCredential:a3 forAuthenticationChallenge:challenge];
}

+ (id)_messageForProtectionSpace:(id)a3
{
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [a3 host];
  v6 = [a3 port];
  if (v6 >= 1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%ld", v5, v6];
  }

  v7 = [a3 isProxy];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v7)
  {
    v9 = [v8 localizedStringForKey:@"PROXY_AUTHENTICATION_MESSAGE_%@_%@" value:&stru_2884BCFD0 table:0];
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, objc_msgSend(a3, "protocol"), v5];
  }

  else
  {
    v11 = [v8 localizedStringForKey:@"SERVER_AUTHENTICATION_MESSAGE_%@" value:&stru_2884BCFD0 table:0];
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v5, v14];
  }

  [v4 appendString:v10];
  if ([a3 receivesCredentialSecurely])
  {
    v12 = @"SECURE_AUTH";
  }

  else
  {
    v12 = @"INSECURE_AUTH";
  }

  [v4 appendFormat:@" %@", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", v12, &stru_2884BCFD0, 0)];
  return v4;
}

+ (id)_titleForProtectionSpace:(id)a3
{
  if ([a3 isProxy])
  {
    v3 = @"PROXY_AUTHENTICATION_TITLE";
  }

  else
  {
    v3 = @"SERVER_AUTHENTICATION_TITLE";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v4 localizedStringForKey:v3 value:&stru_2884BCFD0 table:0];
}

@end