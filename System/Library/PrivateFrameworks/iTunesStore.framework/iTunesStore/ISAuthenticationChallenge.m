@interface ISAuthenticationChallenge
- (ISAuthenticationChallenge)initWithAuthenticationChallenge:(id)a3;
- (void)cancelAuthentication;
- (void)dealloc;
- (void)useCredential:(id)a3;
@end

@implementation ISAuthenticationChallenge

- (ISAuthenticationChallenge)initWithAuthenticationChallenge:(id)a3
{
  v4 = [(ISAuthenticationChallenge *)self init];
  if (v4)
  {
    v4->_challenge = a3;
  }

  return v4;
}

- (void)dealloc
{
  [(ISAuthenticationChallenge *)self setLocalizedMessage:0];
  [(ISAuthenticationChallenge *)self setLocalizedTitle:0];

  self->_challenge = 0;
  v3.receiver = self;
  v3.super_class = ISAuthenticationChallenge;
  [(ISAuthenticationChallenge *)&v3 dealloc];
}

- (void)cancelAuthentication
{
  v3 = [(ISAuthenticationChallenge *)self sender];
  challenge = self->_challenge;

  [(NSURLAuthenticationChallengeSender *)v3 cancelAuthenticationChallenge:challenge];
}

- (void)useCredential:(id)a3
{
  v5 = [(ISAuthenticationChallenge *)self sender];
  challenge = self->_challenge;

  [(NSURLAuthenticationChallengeSender *)v5 useCredential:a3 forAuthenticationChallenge:challenge];
}

@end