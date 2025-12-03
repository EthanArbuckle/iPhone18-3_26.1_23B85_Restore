@interface ISAuthenticationChallenge
- (ISAuthenticationChallenge)initWithAuthenticationChallenge:(id)challenge;
- (void)cancelAuthentication;
- (void)dealloc;
- (void)useCredential:(id)credential;
@end

@implementation ISAuthenticationChallenge

- (ISAuthenticationChallenge)initWithAuthenticationChallenge:(id)challenge
{
  v4 = [(ISAuthenticationChallenge *)self init];
  if (v4)
  {
    v4->_challenge = challenge;
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
  sender = [(ISAuthenticationChallenge *)self sender];
  challenge = self->_challenge;

  [(NSURLAuthenticationChallengeSender *)sender cancelAuthenticationChallenge:challenge];
}

- (void)useCredential:(id)credential
{
  sender = [(ISAuthenticationChallenge *)self sender];
  challenge = self->_challenge;

  [(NSURLAuthenticationChallengeSender *)sender useCredential:credential forAuthenticationChallenge:challenge];
}

@end