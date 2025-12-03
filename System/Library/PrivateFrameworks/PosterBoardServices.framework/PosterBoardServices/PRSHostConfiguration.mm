@interface PRSHostConfiguration
+ (id)hostConfigurationWithConfigurationEntries:(id)entries;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRSHostConfiguration)initWithBSXPCCoder:(id)coder;
- (PRSHostConfiguration)initWithCoder:(id)coder;
- (PRSHostConfiguration)initWithConfigurationEntries:(id)entries;
- (unint64_t)hash;
@end

@implementation PRSHostConfiguration

+ (id)hostConfigurationWithConfigurationEntries:(id)entries
{
  entriesCopy = entries;
  v4 = [objc_alloc(objc_opt_class()) initWithConfigurationEntries:entriesCopy];

  return v4;
}

- (PRSHostConfiguration)initWithConfigurationEntries:(id)entries
{
  entriesCopy = entries;
  v8.receiver = self;
  v8.super_class = PRSHostConfiguration;
  v5 = [(PRSHostConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PRSHostConfiguration *)v5 setEntries:entriesCopy];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
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
      entries = [(PRSHostConfiguration *)v9 entries];
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
  builder = [MEMORY[0x1E698E6B8] builder];
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

        v9 = [builder appendObject:{*(*(&v13 + 1) + 8 * v8++), v13}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [builder hash];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (PRSHostConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PRSHostConfiguration;
  v5 = [(PRSHostConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_entries"];
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
  build = [v3 build];

  return build;
}

- (PRSHostConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PRSHostConfiguration;
  v5 = [(PRSHostConfiguration *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"_entries"];
    if (v7)
    {
      [(PRSHostConfiguration *)v5 setEntries:v7];
    }
  }

  return v5;
}

@end