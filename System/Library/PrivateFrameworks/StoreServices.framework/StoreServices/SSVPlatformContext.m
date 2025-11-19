@interface SSVPlatformContext
- (NSDictionary)bagDictionary;
- (SSVPlatformContext)initWithBagDictionary:(id)a3;
- (SSVPlatformContext)initWithLookupURL:(id)a3 unpersonalizedLookupURL:(id)a4 signedHeaders:(id)a5 signedQueryParameters:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SSVPlatformContext

- (SSVPlatformContext)initWithLookupURL:(id)a3 unpersonalizedLookupURL:(id)a4 signedHeaders:(id)a5 signedQueryParameters:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v25.receiver = self;
    v25.super_class = SSVPlatformContext;
    v14 = [(SSVPlatformContext *)&v25 init];
    if (v14)
    {
      v15 = [v10 absoluteString];
      lookupURLString = v14->_lookupURLString;
      v14->_lookupURLString = v15;

      v17 = [v12 copy];
      signedHeaders = v14->_signedHeaders;
      v14->_signedHeaders = v17;

      v19 = [v13 copy];
      signedQueryParameters = v14->_signedQueryParameters;
      v14->_signedQueryParameters = v19;

      v21 = [v11 absoluteString];
      unpersonalizedLookupURLString = v14->_unpersonalizedLookupURLString;
      v14->_unpersonalizedLookupURLString = v21;
    }

    self = v14;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (SSVPlatformContext)initWithBagDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SSVPlatformContext;
  v5 = [(SSVPlatformContext *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"storeplatform-lookup-url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      lookupURLString = v5->_lookupURLString;
      v5->_lookupURLString = v7;

      v9 = [v4 objectForKey:@"storeplatform-lookup-url-unpersonalized"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 copy];
        unpersonalizedLookupURLString = v5->_unpersonalizedLookupURLString;
        v5->_unpersonalizedLookupURLString = v10;
      }

      v12 = [v4 objectForKey:@"signed-actions"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 objectForKey:@"MZStorePlatform"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 objectForKey:@"lookup"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 objectForKey:@"fields"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v15 copy];
              signedQueryParameters = v5->_signedQueryParameters;
              v5->_signedQueryParameters = v16;
            }

            v18 = [v14 objectForKey:@"headers"];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 copy];
              signedHeaders = v5->_signedHeaders;
              v5->_signedHeaders = v19;
            }
          }
        }
      }
    }

    else
    {
      v12 = v5;
      v9 = v6;
      v5 = 0;
    }
  }

  return v5;
}

- (NSDictionary)bagDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  lookupURLString = self->_lookupURLString;
  if (lookupURLString)
  {
    [v3 setObject:lookupURLString forKey:@"storeplatform-lookup-url"];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v6;
  signedHeaders = self->_signedHeaders;
  if (signedHeaders)
  {
    [v6 setObject:signedHeaders forKey:@"headers"];
  }

  signedQueryParameters = self->_signedQueryParameters;
  if (signedQueryParameters)
  {
    [v7 setObject:signedQueryParameters forKey:@"fields"];
  }

  if ([v7 count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"lookup", 0}];
    v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"MZStorePlatform", 0}];
    [v4 setObject:v11 forKey:@"signed-actions"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_lookupURLString copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  objc_storeStrong((v5 + 16), self->_sapContext);
  v8 = [(NSArray *)self->_signedHeaders copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSArray *)self->_signedQueryParameters copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_unpersonalizedLookupURLString copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  return v5;
}

@end