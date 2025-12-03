@interface PPSocialHighlightStoreRequestKey
+ (id)socialHighlightStoreRequestKeyWithLimit:(unint64_t)limit client:(id)client variant:(id)variant reason:(id)reason;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSocialHighlightStoreRequestKey:(id)key;
- (PPSocialHighlightStoreRequestKey)initWithLimit:(unint64_t)limit client:(id)client variant:(id)variant reason:(id)reason;
- (id)copyWithReplacementClient:(id)client;
- (id)copyWithReplacementLimit:(unint64_t)limit;
- (id)copyWithReplacementReason:(id)reason;
- (id)copyWithReplacementVariant:(id)variant;
- (id)description;
- (unint64_t)hash;
@end

@implementation PPSocialHighlightStoreRequestKey

- (unint64_t)hash
{
  limit = self->_limit;
  v4 = [(NSString *)self->_client hash]- limit + 32 * limit;
  v5 = [(NSString *)self->_variant hash]- v4 + 32 * v4;
  return [(NSString *)self->_reason hash]- v5 + 32 * v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_limit];
  v5 = [v3 initWithFormat:@"<PPSocialHighlightStoreRequestKey | limit:%@ client:%@ variant:%@ reason:%@>", v4, self->_client, self->_variant, self->_reason];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPSocialHighlightStoreRequestKey *)self isEqualToSocialHighlightStoreRequestKey:v5];
  }

  return v6;
}

- (BOOL)isEqualToSocialHighlightStoreRequestKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (!keyCopy)
  {
    goto LABEL_12;
  }

  limit = self->_limit;
  if (limit != [keyCopy limit])
  {
    goto LABEL_12;
  }

  v7 = self->_client == 0;
  client = [v5 client];
  v9 = client != 0;

  if (v7 == v9)
  {
    goto LABEL_12;
  }

  client = self->_client;
  if (client)
  {
    client2 = [v5 client];
    v12 = [(NSString *)client isEqual:client2];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  v13 = self->_variant == 0;
  variant = [v5 variant];
  v15 = variant != 0;

  if (v13 == v15)
  {
    goto LABEL_12;
  }

  variant = self->_variant;
  if (variant)
  {
    variant2 = [v5 variant];
    v18 = [(NSString *)variant isEqual:variant2];

    if (!v18)
    {
      goto LABEL_12;
    }
  }

  v19 = self->_reason == 0;
  reason = [v5 reason];
  v21 = reason != 0;

  if (v19 == v21)
  {
LABEL_12:
    v24 = 0;
  }

  else
  {
    reason = self->_reason;
    if (reason)
    {
      reason2 = [v5 reason];
      v24 = [(NSString *)reason isEqual:reason2];
    }

    else
    {
      v24 = 1;
    }
  }

  return v24 & 1;
}

- (id)copyWithReplacementReason:(id)reason
{
  reasonCopy = reason;
  v5 = [objc_alloc(objc_opt_class()) initWithLimit:self->_limit client:self->_client variant:self->_variant reason:reasonCopy];

  return v5;
}

- (id)copyWithReplacementVariant:(id)variant
{
  variantCopy = variant;
  v5 = [objc_alloc(objc_opt_class()) initWithLimit:self->_limit client:self->_client variant:variantCopy reason:self->_reason];

  return v5;
}

- (id)copyWithReplacementClient:(id)client
{
  clientCopy = client;
  v5 = [objc_alloc(objc_opt_class()) initWithLimit:self->_limit client:clientCopy variant:self->_variant reason:self->_reason];

  return v5;
}

- (id)copyWithReplacementLimit:(unint64_t)limit
{
  v5 = objc_alloc(objc_opt_class());
  client = self->_client;
  variant = self->_variant;
  reason = self->_reason;

  return [v5 initWithLimit:limit client:client variant:variant reason:reason];
}

- (PPSocialHighlightStoreRequestKey)initWithLimit:(unint64_t)limit client:(id)client variant:(id)variant reason:(id)reason
{
  clientCopy = client;
  variantCopy = variant;
  reasonCopy = reason;
  if (clientCopy)
  {
    if (variantCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSocialHighlightStore.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"client != nil"}];

    if (variantCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPSocialHighlightStore.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"variant != nil"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = PPSocialHighlightStoreRequestKey;
  v15 = [(PPSocialHighlightStoreRequestKey *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_limit = limit;
    objc_storeStrong(&v15->_client, client);
    objc_storeStrong(&v16->_variant, variant);
    objc_storeStrong(&v16->_reason, reason);
  }

  return v16;
}

+ (id)socialHighlightStoreRequestKeyWithLimit:(unint64_t)limit client:(id)client variant:(id)variant reason:(id)reason
{
  reasonCopy = reason;
  variantCopy = variant;
  clientCopy = client;
  v13 = [[self alloc] initWithLimit:limit client:clientCopy variant:variantCopy reason:reasonCopy];

  return v13;
}

@end