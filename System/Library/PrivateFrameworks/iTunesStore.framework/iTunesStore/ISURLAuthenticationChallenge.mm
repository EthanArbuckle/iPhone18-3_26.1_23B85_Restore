@interface ISURLAuthenticationChallenge
+ (id)_messageForProtectionSpace:(id)space;
+ (id)_titleForProtectionSpace:(id)space;
- (BOOL)hasPassword;
- (ISURLAuthenticationChallenge)initWithAuthenticationChallenge:(id)challenge;
- (id)password;
- (id)user;
- (void)cancelAuthentication;
- (void)useCredential:(id)credential;
@end

@implementation ISURLAuthenticationChallenge

- (ISURLAuthenticationChallenge)initWithAuthenticationChallenge:(id)challenge
{
  v7.receiver = self;
  v7.super_class = ISURLAuthenticationChallenge;
  v4 = [(ISAuthenticationChallenge *)&v7 initWithAuthenticationChallenge:?];
  if (v4)
  {
    protectionSpace = [challenge protectionSpace];
    v4->super._localizedMessage = [objc_opt_class() _messageForProtectionSpace:protectionSpace];
    v4->super._localizedTitle = [objc_opt_class() _titleForProtectionSpace:protectionSpace];
  }

  return v4;
}

- (void)cancelAuthentication
{
  sender = [(ISURLAuthenticationChallenge *)self sender];
  challenge = self->super._challenge;

  [sender cancelAuthenticationChallenge:challenge];
}

- (BOOL)hasPassword
{
  proposedCredential = [(NSURLAuthenticationChallenge *)self->super._challenge proposedCredential];

  return [(NSURLCredential *)proposedCredential hasPassword];
}

- (id)password
{
  proposedCredential = [(NSURLAuthenticationChallenge *)self->super._challenge proposedCredential];

  return [(NSURLCredential *)proposedCredential password];
}

- (id)user
{
  proposedCredential = [(NSURLAuthenticationChallenge *)self->super._challenge proposedCredential];

  return [(NSURLCredential *)proposedCredential user];
}

- (void)useCredential:(id)credential
{
  sender = [(ISURLAuthenticationChallenge *)self sender];
  challenge = self->super._challenge;

  [sender useCredential:credential forAuthenticationChallenge:challenge];
}

+ (id)_messageForProtectionSpace:(id)space
{
  string = [MEMORY[0x277CCAB68] string];
  host = [space host];
  port = [space port];
  if (port >= 1)
  {
    host = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%ld", host, port];
  }

  v7 = [space isProxy];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v7)
  {
    v9 = [v8 localizedStringForKey:@"PROXY_AUTHENTICATION_MESSAGE_%@_%@" value:&stru_2884BCFD0 table:0];
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, objc_msgSend(space, "protocol"), host];
  }

  else
  {
    v11 = [v8 localizedStringForKey:@"SERVER_AUTHENTICATION_MESSAGE_%@" value:&stru_2884BCFD0 table:0];
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, host, v14];
  }

  [string appendString:v10];
  if ([space receivesCredentialSecurely])
  {
    v12 = @"SECURE_AUTH";
  }

  else
  {
    v12 = @"INSECURE_AUTH";
  }

  [string appendFormat:@" %@", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", v12, &stru_2884BCFD0, 0)];
  return string;
}

+ (id)_titleForProtectionSpace:(id)space
{
  if ([space isProxy])
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