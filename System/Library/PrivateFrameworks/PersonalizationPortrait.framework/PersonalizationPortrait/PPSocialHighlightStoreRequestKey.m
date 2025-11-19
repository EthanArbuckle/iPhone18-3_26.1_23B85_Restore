@interface PPSocialHighlightStoreRequestKey
+ (id)socialHighlightStoreRequestKeyWithLimit:(unint64_t)a3 client:(id)a4 variant:(id)a5 reason:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSocialHighlightStoreRequestKey:(id)a3;
- (PPSocialHighlightStoreRequestKey)initWithLimit:(unint64_t)a3 client:(id)a4 variant:(id)a5 reason:(id)a6;
- (id)copyWithReplacementClient:(id)a3;
- (id)copyWithReplacementLimit:(unint64_t)a3;
- (id)copyWithReplacementReason:(id)a3;
- (id)copyWithReplacementVariant:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPSocialHighlightStoreRequestKey *)self isEqualToSocialHighlightStoreRequestKey:v5];
  }

  return v6;
}

- (BOOL)isEqualToSocialHighlightStoreRequestKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  limit = self->_limit;
  if (limit != [v4 limit])
  {
    goto LABEL_12;
  }

  v7 = self->_client == 0;
  v8 = [v5 client];
  v9 = v8 != 0;

  if (v7 == v9)
  {
    goto LABEL_12;
  }

  client = self->_client;
  if (client)
  {
    v11 = [v5 client];
    v12 = [(NSString *)client isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  v13 = self->_variant == 0;
  v14 = [v5 variant];
  v15 = v14 != 0;

  if (v13 == v15)
  {
    goto LABEL_12;
  }

  variant = self->_variant;
  if (variant)
  {
    v17 = [v5 variant];
    v18 = [(NSString *)variant isEqual:v17];

    if (!v18)
    {
      goto LABEL_12;
    }
  }

  v19 = self->_reason == 0;
  v20 = [v5 reason];
  v21 = v20 != 0;

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
      v23 = [v5 reason];
      v24 = [(NSString *)reason isEqual:v23];
    }

    else
    {
      v24 = 1;
    }
  }

  return v24 & 1;
}

- (id)copyWithReplacementReason:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLimit:self->_limit client:self->_client variant:self->_variant reason:v4];

  return v5;
}

- (id)copyWithReplacementVariant:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLimit:self->_limit client:self->_client variant:v4 reason:self->_reason];

  return v5;
}

- (id)copyWithReplacementClient:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLimit:self->_limit client:v4 variant:self->_variant reason:self->_reason];

  return v5;
}

- (id)copyWithReplacementLimit:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  client = self->_client;
  variant = self->_variant;
  reason = self->_reason;

  return [v5 initWithLimit:a3 client:client variant:variant reason:reason];
}

- (PPSocialHighlightStoreRequestKey)initWithLimit:(unint64_t)a3 client:(id)a4 variant:(id)a5 reason:(id)a6
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PPSocialHighlightStore.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"client != nil"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"PPSocialHighlightStore.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"variant != nil"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = PPSocialHighlightStoreRequestKey;
  v15 = [(PPSocialHighlightStoreRequestKey *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_limit = a3;
    objc_storeStrong(&v15->_client, a4);
    objc_storeStrong(&v16->_variant, a5);
    objc_storeStrong(&v16->_reason, a6);
  }

  return v16;
}

+ (id)socialHighlightStoreRequestKeyWithLimit:(unint64_t)a3 client:(id)a4 variant:(id)a5 reason:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[a1 alloc] initWithLimit:a3 client:v12 variant:v11 reason:v10];

  return v13;
}

@end