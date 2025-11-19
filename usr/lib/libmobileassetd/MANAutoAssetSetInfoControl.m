@interface MANAutoAssetSetInfoControl
- (MANAutoAssetSetInfoControl)initWithCoder:(id)a3;
- (id)_arrayStringsToString:(id)a3;
- (id)initClearingAfter:(BOOL)a3 limitedToClientDomains:(id)a4 limitedToSetIdentifiers:(id)a5;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetInfoControl

- (id)initClearingAfter:(BOOL)a3 limitedToClientDomains:(id)a4 limitedToSetIdentifiers:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MANAutoAssetSetInfoControl;
  v11 = [(MANAutoAssetSetInfoControl *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_clearingAfter = a3;
    objc_storeStrong(&v11->_limitedToClientDomains, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (MANAutoAssetSetInfoControl)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MANAutoAssetSetInfoControl;
  v5 = [(MANAutoAssetSetInfoControl *)&v17 init];
  if (v5)
  {
    v5->_clearingAfter = [v4 decodeBoolForKey:@"clearingAfter"];
    v6 = [NSSet alloc];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v19 count:2];
    v8 = [v6 initWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"limitedToClientDomains"];
    limitedToClientDomains = v5->_limitedToClientDomains;
    v5->_limitedToClientDomains = v9;

    v11 = [NSSet alloc];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v12 = [NSArray arrayWithObjects:v18 count:2];
    v13 = [v11 initWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"limitedToSetIdentifiers"];
    limitedToSetIdentifiers = v5->_limitedToSetIdentifiers;
    v5->_limitedToSetIdentifiers = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[MANAutoAssetSetInfoControl clearingAfter](self forKey:{"clearingAfter"), @"clearingAfter"}];
  v5 = [(MANAutoAssetSetInfoControl *)self limitedToClientDomains];
  [v4 encodeObject:v5 forKey:@"limitedToClientDomains"];

  v6 = [(MANAutoAssetSetInfoControl *)self limitedToSetIdentifiers];
  [v4 encodeObject:v6 forKey:@"limitedToSetIdentifiers"];
}

- (id)summary
{
  if ([(MANAutoAssetSetInfoControl *)self clearingAfter])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v5 = [(MANAutoAssetSetInfoControl *)self limitedToClientDomains];
  if (v5)
  {
    v2 = [(MANAutoAssetSetInfoControl *)self limitedToClientDomains];
    v6 = [(MANAutoAssetSetInfoControl *)self _arrayStringsToString:v2];
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MANAutoAssetSetInfoControl *)self limitedToSetIdentifiers];
  if (v7)
  {
    v8 = [(MANAutoAssetSetInfoControl *)self limitedToSetIdentifiers];
    v9 = [(MANAutoAssetSetInfoControl *)self _arrayStringsToString:v8];
    v10 = [NSString stringWithFormat:@"clearingAfter:%@, limitedToClientDomains:%@ limitedToSetIdentifiers:%@", v4, v6, v9];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"clearingAfter:%@, limitedToClientDomains:%@ limitedToSetIdentifiers:%@", v4, v6, @"N"];
  }

  if (v5)
  {
  }

  return v10;
}

- (id)_arrayStringsToString:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableString alloc] initWithCapacity:0];
  v5 = v4;
  if (v3)
  {
    [v4 appendString:@"["];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      v10 = &stru_4BD3F0;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 appendFormat:@"%@%@", v10, *(*(&v13 + 1) + 8 * i), v13];
          v10 = @",";
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v10 = @",";
      }

      while (v8);
    }

    [v5 appendString:@"]"];
  }

  return v5;
}

@end