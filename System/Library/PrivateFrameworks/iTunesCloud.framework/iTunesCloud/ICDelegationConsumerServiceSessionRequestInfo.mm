@interface ICDelegationConsumerServiceSessionRequestInfo
- (BOOL)isEqual:(id)a3;
- (ICDelegationConsumerServiceSessionRequestInfo)initWithAccountID:(unint64_t)a3 fairPlaySessionID:(unint64_t)a4;
@end

@implementation ICDelegationConsumerServiceSessionRequestInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_accountID == v4->_accountID && self->_fairPlaySessionID == v4->_fairPlaySessionID;
  }

  return v5;
}

- (ICDelegationConsumerServiceSessionRequestInfo)initWithAccountID:(unint64_t)a3 fairPlaySessionID:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = ICDelegationConsumerServiceSessionRequestInfo;
  result = [(ICDelegationConsumerServiceSessionRequestInfo *)&v7 init];
  if (result)
  {
    result->_accountID = a3;
    result->_fairPlaySessionID = a4;
  }

  return result;
}

@end