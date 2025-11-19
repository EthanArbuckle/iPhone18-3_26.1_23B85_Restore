@interface RCEndpointConfig
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RCEndpointConfig)initWithEnvironment:(unint64_t)a3 productionURL:(id)a4 stagingURL:(id)a5 qaURL:(id)a6 develURL:(id)a7 testURL:(id)a8;
- (id)dictionaryRepresentation;
- (id)environmentDescription;
- (unint64_t)hash;
@end

@implementation RCEndpointConfig

- (RCEndpointConfig)initWithEnvironment:(unint64_t)a3 productionURL:(id)a4 stagingURL:(id)a5 qaURL:(id)a6 develURL:(id)a7 testURL:(id)a8
{
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = RCEndpointConfig;
  v18 = [(RCEndpointConfig *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_environment = a3;
    objc_storeStrong(&v18->_productionURL, a4);
    objc_storeStrong(&v19->_stagingURL, a5);
    objc_storeStrong(&v19->_qaURL, a6);
    objc_storeStrong(&v19->_develURL, a7);
    objc_storeStrong(&v19->_testURL, a8);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RCEndpointConfig *)self environment];
    if (v6 == [v5 environment])
    {
      v7 = [(RCEndpointConfig *)self productionURL];
      v8 = [v5 productionURL];
      if ([v7 isEqual:v8])
      {
        v9 = [(RCEndpointConfig *)self stagingURL];
        v10 = [v5 stagingURL];
        if ([v9 isEqual:v10])
        {
          v11 = [(RCEndpointConfig *)self qaURL];
          v12 = [v5 qaURL];
          if ([v11 isEqual:v12])
          {
            v13 = [(RCEndpointConfig *)self develURL];
            v14 = [v5 develURL];
            v21 = v13;
            v15 = v13;
            v16 = v14;
            if ([v15 isEqual:v14])
            {
              v20 = [(RCEndpointConfig *)self testURL];
              v19 = [v5 testURL];
              v17 = [v20 isEqual:v19];
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCEndpointConfig environment](self, "environment")}];
  v4 = [v3 hash];
  v5 = [(RCEndpointConfig *)self productionURL];
  v6 = [v5 hash];
  v7 = [(RCEndpointConfig *)self stagingURL];
  v8 = v6 ^ [v7 hash];
  v9 = [(RCEndpointConfig *)self qaURL];
  v10 = v8 ^ [v9 hash];
  v11 = [(RCEndpointConfig *)self develURL];
  v12 = v10 ^ [v11 hash];
  v13 = [(RCEndpointConfig *)self testURL];
  v14 = v12 ^ [v13 hash];

  return v14 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(RCEndpointConfig *)self environmentDescription];
  v6 = [(RCEndpointConfig *)self productionURL];
  v7 = [(RCEndpointConfig *)self stagingURL];
  v8 = [(RCEndpointConfig *)self qaURL];
  v9 = [(RCEndpointConfig *)self develURL];
  v10 = [(RCEndpointConfig *)self testURL];
  v11 = [v3 stringWithFormat:@"<%@: %p environment: %@\n productionURL: %@\n stagingURL: %@\n qaURL: %@\n develURL: %@\n testURL: %@\n>", v4, self, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCEndpointConfig environment](self, "environment")}];
  [v3 rc_safelySetObjectAllowingNil:v4 forKey:@"environment"];

  v5 = [(RCEndpointConfig *)self productionURL];
  [v3 rc_safelySetObjectAllowingNil:v5 forKey:@"productionURL"];

  v6 = [(RCEndpointConfig *)self stagingURL];
  [v3 rc_safelySetObjectAllowingNil:v6 forKey:@"stagingURL"];

  v7 = [(RCEndpointConfig *)self qaURL];
  [v3 rc_safelySetObjectAllowingNil:v7 forKey:@"qaURL"];

  v8 = [(RCEndpointConfig *)self develURL];
  [v3 rc_safelySetObjectAllowingNil:v8 forKey:@"develURL"];

  v9 = [(RCEndpointConfig *)self testURL];
  [v3 rc_safelySetObjectAllowingNil:v9 forKey:@"testURL"];

  v10 = [v3 copy];

  return v10;
}

- (id)environmentDescription
{
  v2 = [(RCEndpointConfig *)self environment];
  if (v2 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_27822FF50[v2];
  }
}

@end