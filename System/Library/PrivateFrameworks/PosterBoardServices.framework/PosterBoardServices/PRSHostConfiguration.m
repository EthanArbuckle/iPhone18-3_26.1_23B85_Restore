@interface PRSHostConfiguration
+ (id)hostConfigurationWithConfigurationEntries:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRSHostConfiguration)initWithBSXPCCoder:(id)a3;
- (PRSHostConfiguration)initWithCoder:(id)a3;
- (PRSHostConfiguration)initWithConfigurationEntries:(id)a3;
- (unint64_t)hash;
@end

@implementation PRSHostConfiguration

+ (id)hostConfigurationWithConfigurationEntries:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithConfigurationEntries:v3];

  return v4;
}

- (PRSHostConfiguration)initWithConfigurationEntries:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PRSHostConfiguration;
  v5 = [(PRSHostConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PRSHostConfiguration *)v5 setEntries:v4];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9)
    {
      entries = self->_entries;
      v11 = [(PRSHostConfiguration *)v9 entries];
      v8 = BSEqualArrays();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E6B8] builder];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_entries;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 appendObject:{*(*(&v13 + 1) + 8 * v8++), v13}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 hash];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (PRSHostConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PRSHostConfiguration;
  v5 = [(PRSHostConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_entries"];
    if (v6)
    {
      [(PRSHostConfiguration *)v5 setEntries:v6];
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendArraySection:self->_entries withName:@"entries" skipIfEmpty:0];
  v4 = [v3 build];

  return v4;
}

- (PRSHostConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRSHostConfiguration;
  v5 = [(PRSHostConfiguration *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"_entries"];
    if (v7)
    {
      [(PRSHostConfiguration *)v5 setEntries:v7];
    }
  }

  return v5;
}

@end