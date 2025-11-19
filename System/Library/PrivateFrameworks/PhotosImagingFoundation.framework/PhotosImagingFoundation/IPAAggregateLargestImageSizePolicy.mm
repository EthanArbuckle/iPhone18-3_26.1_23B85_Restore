@interface IPAAggregateLargestImageSizePolicy
- (BOOL)isBestFitPolicy;
- (CGSize)transformSize:(CGSize)a3;
- (IPAAggregateLargestImageSizePolicy)initWithCoder:(id)a3;
- (IPAAggregateLargestImageSizePolicy)initWithPolicies:(id)a3;
- (double)transformScaleForSize:(CGSize)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IPAAggregateLargestImageSizePolicy

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IPAAggregateLargestImageSizePolicy;
  v4 = a3;
  [(IPAImageSizePolicy *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_policies forKey:{@"policies", v5.receiver, v5.super_class}];
}

- (IPAAggregateLargestImageSizePolicy)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = IPAAggregateLargestImageSizePolicy;
  v3 = a3;
  v4 = [(IPAImageSizePolicy *)&v8 initWithCoder:v3];
  v5 = [v3 decodeObjectForKey:{@"policies", v8.receiver, v8.super_class}];

  policies = v4->_policies;
  v4->_policies = v5;

  return v4;
}

- (double)transformScaleForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v18 = *MEMORY[0x277D85DE8];
  if (a3.width < 0.0 || a3.height < 0.0)
  {
    NSStringFromSize(a3);
    objc_claimAutoreleasedReturnValue();
    _PFAssertFailHandler();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_policies;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * i) transformScaleForSize:{width, height}];
        if (v11 > v9)
        {
          v9 = v11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (CGSize)transformSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v22 = *MEMORY[0x277D85DE8];
  if (a3.width < 0.0 || a3.height < 0.0)
  {
    NSStringFromSize(a3);
    objc_claimAutoreleasedReturnValue();
    _PFAssertFailHandler();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_policies;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v17 + 1) + 8 * i) transformSize:{width, height}];
        if (v13 * v14 > v9)
        {
          v9 = v13 * v14;
          v10 = v14;
          v11 = v13;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  v15 = v11;
  v16 = v10;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)isBestFitPolicy
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_policies;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) isBestFitPolicy])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (IPAAggregateLargestImageSizePolicy)initWithPolicies:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v12.receiver = self;
    v12.super_class = IPAAggregateLargestImageSizePolicy;
    v6 = [(IPAAggregateLargestImageSizePolicy *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_policies, a3);
    }

    return v7;
  }

  else
  {
    v9 = _PFAssertFailHandler();
    return [(IPAImageSizePolicy *)v9 bestFitPolicyWithEvenWidthTotalPixelCount:v10, v11];
  }
}

@end