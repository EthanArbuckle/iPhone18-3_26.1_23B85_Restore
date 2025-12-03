@interface SSVSubscriptionResponse
- (SSVSubscriptionResponse)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)subscriptionStatusForAccountUniqueIdentifier:(unint64_t)identifier;
- (void)setSubscriptionStatus:(id)status forAccountUniqueIdentifier:(unint64_t)identifier;
@end

@implementation SSVSubscriptionResponse

- (id)subscriptionStatusForAccountUniqueIdentifier:(unint64_t)identifier
{
  accountUniqueIdentifierToSubscriptionStatus = self->_accountUniqueIdentifierToSubscriptionStatus;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
  v5 = [(NSMutableDictionary *)accountUniqueIdentifierToSubscriptionStatus objectForKey:v4];

  return v5;
}

- (void)setSubscriptionStatus:(id)status forAccountUniqueIdentifier:(unint64_t)identifier
{
  statusCopy = status;
  accountUniqueIdentifierToSubscriptionStatus = self->_accountUniqueIdentifierToSubscriptionStatus;
  v12 = statusCopy;
  if (statusCopy)
  {
    if (!accountUniqueIdentifierToSubscriptionStatus)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      v9 = self->_accountUniqueIdentifierToSubscriptionStatus;
      self->_accountUniqueIdentifierToSubscriptionStatus = v8;

      accountUniqueIdentifierToSubscriptionStatus = self->_accountUniqueIdentifierToSubscriptionStatus;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
    [(NSMutableDictionary *)accountUniqueIdentifierToSubscriptionStatus setObject:v12 forKey:v10];
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
  [(NSMutableDictionary *)accountUniqueIdentifierToSubscriptionStatus removeObjectForKey:v11];

  if (![(NSMutableDictionary *)self->_accountUniqueIdentifierToSubscriptionStatus count])
  {
    v10 = self->_accountUniqueIdentifierToSubscriptionStatus;
    self->_accountUniqueIdentifierToSubscriptionStatus = 0;
LABEL_5:
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->_accountUniqueIdentifierToSubscriptionStatus mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (SSVSubscriptionResponse)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && (v6 = MEMORY[0x1DA6E0380](encodingCopy), v7 = MEMORY[0x1E69E9E80], v6 == MEMORY[0x1E69E9E80]))
  {
    v14.receiver = self;
    v14.super_class = SSVSubscriptionResponse;
    v8 = [(SSVSubscriptionResponse *)&v14 init];
    if (v8)
    {
      v10 = xpc_dictionary_get_value(v5, "0");
      v11 = v10;
      if (v10 && MEMORY[0x1DA6E0380](v10) == v7)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __47__SSVSubscriptionResponse_initWithXPCEncoding___block_invoke;
        applier[3] = &unk_1E84AFAC8;
        v13 = v8;
        xpc_dictionary_apply(v11, applier);
      }
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

uint64_t __47__SSVSubscriptionResponse_initWithXPCEncoding___block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = [[SSVFairPlaySubscriptionStatus alloc] initWithXPCEncoding:v5];

  if (v6)
  {
    [*(a1 + 32) setSubscriptionStatus:v6 forAccountUniqueIdentifier:{strtoull(a2, 0, 10)}];
  }

  return 1;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__25;
  v12 = __Block_byref_object_dispose__25;
  v13 = 0;
  accountUniqueIdentifierToSubscriptionStatus = self->_accountUniqueIdentifierToSubscriptionStatus;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SSVSubscriptionResponse_copyXPCEncoding__block_invoke;
  v7[3] = &unk_1E84AFAF0;
  v7[4] = &v8;
  [(NSMutableDictionary *)accountUniqueIdentifierToSubscriptionStatus enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v9[5];
  if (v5)
  {
    xpc_dictionary_set_value(v3, "0", v5);
  }

  _Block_object_dispose(&v8, 8);

  return v3;
}

void __42__SSVSubscriptionResponse_copyXPCEncoding__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = [v5 copyXPCEncoding];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lli", objc_msgSend(v11, "longLongValue")];
    xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), [v10 UTF8String], v9);
  }
}

@end