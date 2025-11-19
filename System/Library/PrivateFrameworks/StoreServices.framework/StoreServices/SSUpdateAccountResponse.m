@interface SSUpdateAccountResponse
- (SSUpdateAccountResponse)initWithUpdatedAccount:(id)a3 credentialSource:(unint64_t)a4;
@end

@implementation SSUpdateAccountResponse

- (SSUpdateAccountResponse)initWithUpdatedAccount:(id)a3 credentialSource:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SSUpdateAccountResponse;
  v8 = [(SSUpdateAccountResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_credentialSource = a4;
    objc_storeStrong(&v8->_updatedAccount, a3);
  }

  return v9;
}

@end