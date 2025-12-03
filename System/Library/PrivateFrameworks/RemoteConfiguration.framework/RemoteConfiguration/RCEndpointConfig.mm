@interface RCEndpointConfig
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RCEndpointConfig)initWithEnvironment:(unint64_t)environment productionURL:(id)l stagingURL:(id)rL qaURL:(id)uRL develURL:(id)develURL testURL:(id)testURL;
- (id)dictionaryRepresentation;
- (id)environmentDescription;
- (unint64_t)hash;
@end

@implementation RCEndpointConfig

- (RCEndpointConfig)initWithEnvironment:(unint64_t)environment productionURL:(id)l stagingURL:(id)rL qaURL:(id)uRL develURL:(id)develURL testURL:(id)testURL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  develURLCopy = develURL;
  testURLCopy = testURL;
  v23.receiver = self;
  v23.super_class = RCEndpointConfig;
  v18 = [(RCEndpointConfig *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_environment = environment;
    objc_storeStrong(&v18->_productionURL, l);
    objc_storeStrong(&v19->_stagingURL, rL);
    objc_storeStrong(&v19->_qaURL, uRL);
    objc_storeStrong(&v19->_develURL, develURL);
    objc_storeStrong(&v19->_testURL, testURL);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    environment = [(RCEndpointConfig *)self environment];
    if (environment == [v5 environment])
    {
      productionURL = [(RCEndpointConfig *)self productionURL];
      productionURL2 = [v5 productionURL];
      if ([productionURL isEqual:productionURL2])
      {
        stagingURL = [(RCEndpointConfig *)self stagingURL];
        stagingURL2 = [v5 stagingURL];
        if ([stagingURL isEqual:stagingURL2])
        {
          qaURL = [(RCEndpointConfig *)self qaURL];
          qaURL2 = [v5 qaURL];
          if ([qaURL isEqual:qaURL2])
          {
            develURL = [(RCEndpointConfig *)self develURL];
            develURL2 = [v5 develURL];
            v21 = develURL;
            v15 = develURL;
            v16 = develURL2;
            if ([v15 isEqual:develURL2])
            {
              testURL = [(RCEndpointConfig *)self testURL];
              testURL2 = [v5 testURL];
              v17 = [testURL isEqual:testURL2];
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
  productionURL = [(RCEndpointConfig *)self productionURL];
  v6 = [productionURL hash];
  stagingURL = [(RCEndpointConfig *)self stagingURL];
  v8 = v6 ^ [stagingURL hash];
  qaURL = [(RCEndpointConfig *)self qaURL];
  v10 = v8 ^ [qaURL hash];
  develURL = [(RCEndpointConfig *)self develURL];
  v12 = v10 ^ [develURL hash];
  testURL = [(RCEndpointConfig *)self testURL];
  v14 = v12 ^ [testURL hash];

  return v14 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  environmentDescription = [(RCEndpointConfig *)self environmentDescription];
  productionURL = [(RCEndpointConfig *)self productionURL];
  stagingURL = [(RCEndpointConfig *)self stagingURL];
  qaURL = [(RCEndpointConfig *)self qaURL];
  develURL = [(RCEndpointConfig *)self develURL];
  testURL = [(RCEndpointConfig *)self testURL];
  v11 = [v3 stringWithFormat:@"<%@: %p environment: %@\n productionURL: %@\n stagingURL: %@\n qaURL: %@\n develURL: %@\n testURL: %@\n>", v4, self, environmentDescription, productionURL, stagingURL, qaURL, develURL, testURL];;

  return v11;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCEndpointConfig environment](self, "environment")}];
  [dictionary rc_safelySetObjectAllowingNil:v4 forKey:@"environment"];

  productionURL = [(RCEndpointConfig *)self productionURL];
  [dictionary rc_safelySetObjectAllowingNil:productionURL forKey:@"productionURL"];

  stagingURL = [(RCEndpointConfig *)self stagingURL];
  [dictionary rc_safelySetObjectAllowingNil:stagingURL forKey:@"stagingURL"];

  qaURL = [(RCEndpointConfig *)self qaURL];
  [dictionary rc_safelySetObjectAllowingNil:qaURL forKey:@"qaURL"];

  develURL = [(RCEndpointConfig *)self develURL];
  [dictionary rc_safelySetObjectAllowingNil:develURL forKey:@"develURL"];

  testURL = [(RCEndpointConfig *)self testURL];
  [dictionary rc_safelySetObjectAllowingNil:testURL forKey:@"testURL"];

  v10 = [dictionary copy];

  return v10;
}

- (id)environmentDescription
{
  environment = [(RCEndpointConfig *)self environment];
  if (environment > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_27822FF50[environment];
  }
}

@end