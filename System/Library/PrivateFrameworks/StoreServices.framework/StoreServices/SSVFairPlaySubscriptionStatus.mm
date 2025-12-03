@interface SSVFairPlaySubscriptionStatus
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SSVFairPlaySubscriptionStatus)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
@end

@implementation SSVFairPlaySubscriptionStatus

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"false";
  if (self->_hasSubscriptionLease)
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  if (self->_hasSubscriptionSlot)
  {
    v7 = @"true";
  }

  v9 = [v3 stringWithFormat:@"<%@ %p hasSubscriptionLease:%@ hasSubscriptionSlot:%@>", v5, self, v8, v7];

  return v9;
}

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_hasSubscriptionSlot == equalCopy->_hasSubscriptionSlot && self->_hasSubscriptionLease == equalCopy->_hasSubscriptionLease;
  }

  return v5;
}

- (SSVFairPlaySubscriptionStatus)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSVFairPlaySubscriptionStatus;
    v6 = [(SSVFairPlaySubscriptionStatus *)&v8 init];
    if (v6)
    {
      v6->_hasSubscriptionLease = xpc_dictionary_get_BOOL(v5, "0");
      v6->_hasSubscriptionSlot = xpc_dictionary_get_BOOL(v5, "1");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "0", self->_hasSubscriptionLease);
  xpc_dictionary_set_BOOL(v3, "1", self->_hasSubscriptionSlot);
  return v3;
}

@end