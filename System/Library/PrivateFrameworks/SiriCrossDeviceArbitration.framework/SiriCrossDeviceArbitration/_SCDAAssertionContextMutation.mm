@interface _SCDAAssertionContextMutation
- (_SCDAAssertionContextMutation)initWithBase:(id)a3;
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
    v2 = self->_userInfo;
  }

  else
  {
    v2 = [(SCDAAssertionContext *)self->_base userInfo];
  }

  return v2;
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
    v2 = self->_effectiveDate;
  }

  else
  {
    v2 = [(SCDAAssertionContext *)self->_base effectiveDate];
  }

  return v2;
}

- (id)getReason
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_reason;
  }

  else
  {
    v2 = [(SCDAAssertionContext *)self->_base reason];
  }

  return v2;
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

- (_SCDAAssertionContextMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SCDAAssertionContextMutation;
  v6 = [(_SCDAAssertionContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end