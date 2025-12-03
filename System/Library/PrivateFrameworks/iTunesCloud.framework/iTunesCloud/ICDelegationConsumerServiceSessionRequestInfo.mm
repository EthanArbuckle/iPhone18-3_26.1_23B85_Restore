@interface ICDelegationConsumerServiceSessionRequestInfo
- (BOOL)isEqual:(id)equal;
- (ICDelegationConsumerServiceSessionRequestInfo)initWithAccountID:(unint64_t)d fairPlaySessionID:(unint64_t)iD;
@end

@implementation ICDelegationConsumerServiceSessionRequestInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_accountID == equalCopy->_accountID && self->_fairPlaySessionID == equalCopy->_fairPlaySessionID;
  }

  return v5;
}

- (ICDelegationConsumerServiceSessionRequestInfo)initWithAccountID:(unint64_t)d fairPlaySessionID:(unint64_t)iD
{
  v7.receiver = self;
  v7.super_class = ICDelegationConsumerServiceSessionRequestInfo;
  result = [(ICDelegationConsumerServiceSessionRequestInfo *)&v7 init];
  if (result)
  {
    result->_accountID = d;
    result->_fairPlaySessionID = iD;
  }

  return result;
}

@end