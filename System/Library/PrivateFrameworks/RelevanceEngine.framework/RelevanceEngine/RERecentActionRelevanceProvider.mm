@interface RERecentActionRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (RERecentActionRelevanceProvider)initWithBundleIdentifier:(id)a3 actionIdentifier:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)_hash;
@end

@implementation RERecentActionRelevanceProvider

- (RERecentActionRelevanceProvider)initWithBundleIdentifier:(id)a3 actionIdentifier:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RERecentActionRelevanceProvider;
  v7 = [(RERelevanceProvider *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v7->_actionIdentifier = a4;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = RERecentActionRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v6 copyWithZone:a3];
  *(v4 + 5) = self->_actionIdentifier;
  objc_storeStrong(v4 + 4, self->_bundleIdentifier);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = RERecentActionRelevanceProvider;
    if ([(RERelevanceProvider *)&v12 isEqual:v4])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        bundleIdentifier = v5->_bundleIdentifier;
        v7 = self->_bundleIdentifier;
        v8 = v7;
        if (v7 == bundleIdentifier)
        {
        }

        else
        {
          v9 = [(NSString *)v7 isEqual:bundleIdentifier];

          if (!v9)
          {
            v10 = 0;
LABEL_11:

            goto LABEL_12;
          }
        }

        v10 = self->_actionIdentifier == v5->_actionIdentifier;
        goto LABEL_11;
      }
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (unint64_t)_hash
{
  v5.receiver = self;
  v5.super_class = RERecentActionRelevanceProvider;
  v3 = [(RERelevanceProvider *)&v5 _hash];
  return [(NSString *)self->_bundleIdentifier hash]^ v3 ^ self->_actionIdentifier;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RERecentActionRelevanceProvider;
  v4 = [(RERecentActionRelevanceProvider *)&v8 description];
  bundleIdentifier = self->_bundleIdentifier;
  v6 = [v3 stringWithFormat:@"%@ bundleIdentifier=%@, actionIdentifier=%llu", v4, bundleIdentifier, self->_actionIdentifier];

  return v6;
}

@end