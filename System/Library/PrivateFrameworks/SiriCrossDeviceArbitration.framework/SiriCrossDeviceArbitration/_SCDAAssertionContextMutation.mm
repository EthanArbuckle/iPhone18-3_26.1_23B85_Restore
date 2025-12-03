@interface _SCDAAssertionContextMutation
- (_SCDAAssertionContextMutation)initWithBase:(id)base;
- (double)getExpirationDuration;
- (id)getEffectiveDate;
- (id)getReason;
- (id)getUserInfo;
- (unint64_t)getTimestamp;
@end

@implementation _SCDAAssertionContextMutation

- (id)getUserInfo
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    userInfo = self->_userInfo;
  }

  else
  {
    userInfo = [(SCDAAssertionContext *)self->_base userInfo];
  }

  return userInfo;
}

- (double)getExpirationDuration
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_expirationDuration;
  }

  [(SCDAAssertionContext *)self->_base expirationDuration];
  return result;
}

- (id)getEffectiveDate
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    effectiveDate = self->_effectiveDate;
  }

  else
  {
    effectiveDate = [(SCDAAssertionContext *)self->_base effectiveDate];
  }

  return effectiveDate;
}

- (id)getReason
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    reason = self->_reason;
  }

  else
  {
    reason = [(SCDAAssertionContext *)self->_base reason];
  }

  return reason;
}

- (unint64_t)getTimestamp
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_timestamp;
  }

  else
  {
    return [(SCDAAssertionContext *)self->_base timestamp];
  }
}

- (_SCDAAssertionContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SCDAAssertionContextMutation;
  v6 = [(_SCDAAssertionContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end