@interface MediaSocialAuthenticationResponse
- (MediaSocialAuthenticationResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addPostIdentifier:(int64_t)identifier;
- (void)addUploadIdentifier:(int64_t)identifier;
@end

@implementation MediaSocialAuthenticationResponse

- (MediaSocialAuthenticationResponse)init
{
  v8.receiver = self;
  v8.super_class = MediaSocialAuthenticationResponse;
  v2 = [(MediaSocialAuthenticationResponse *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableOrderedSet);
    postIdentifiers = v2->_postIdentifiers;
    v2->_postIdentifiers = v3;

    v5 = objc_alloc_init(NSMutableOrderedSet);
    uploadIdentifiers = v2->_uploadIdentifiers;
    v2->_uploadIdentifiers = v5;
  }

  return v2;
}

- (void)addPostIdentifier:(int64_t)identifier
{
  v4 = [[NSNumber alloc] initWithLongLong:identifier];
  [(NSMutableOrderedSet *)self->_postIdentifiers addObject:v4];
}

- (void)addUploadIdentifier:(int64_t)identifier
{
  v4 = [[NSNumber alloc] initWithLongLong:identifier];
  [(NSMutableOrderedSet *)self->_uploadIdentifiers addObject:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAccountIdentifier:self->_accountIdentifier];
  [v4 setAuthenticateResponse:self->_authenticateResponse];
  [v4 setPostIdentifiers:self->_postIdentifiers];
  [v4 setUploadIdentifiers:self->_uploadIdentifiers];
  return v4;
}

@end