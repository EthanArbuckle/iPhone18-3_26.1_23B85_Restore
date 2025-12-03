@interface SSUpdateAccountResponse
- (SSUpdateAccountResponse)initWithUpdatedAccount:(id)account credentialSource:(unint64_t)source;
@end

@implementation SSUpdateAccountResponse

- (SSUpdateAccountResponse)initWithUpdatedAccount:(id)account credentialSource:(unint64_t)source
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = SSUpdateAccountResponse;
  v8 = [(SSUpdateAccountResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_credentialSource = source;
    objc_storeStrong(&v8->_updatedAccount, account);
  }

  return v9;
}

@end