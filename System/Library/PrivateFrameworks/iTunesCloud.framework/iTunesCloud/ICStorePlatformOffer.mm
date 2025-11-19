@interface ICStorePlatformOffer
- (ICStorePlatformOffer)initWithResponseDictionary:(id)a3;
- (NSArray)assets;
- (NSNumber)price;
- (NSString)buyParameters;
- (NSString)formattedPrice;
- (NSString)offerType;
@end

@implementation ICStorePlatformOffer

- (NSNumber)price
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"price"];
  if ((_NSIsNSNumber() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)offerType
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"type"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)formattedPrice
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"priceFormatted"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)buyParameters
{
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"buyParams"];
  if ((_NSIsNSString() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_responseDictionary objectForKey:@"action-params"];

    if (_NSIsNSString())
    {
      v3 = v4;
    }

    else
    {

      v3 = 0;
    }
  }

  return v3;
}

- (NSArray)assets
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"assets"];
  if (_NSIsNSArray())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v10 = [ICStorePlatformOfferAsset alloc];
            v11 = [(ICStorePlatformOfferAsset *)v10 initWithResponseDictionary:v9, v13];
            if (v11)
            {
              if (!v6)
              {
                v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
              }

              [v6 addObject:v11];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ICStorePlatformOffer)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICStorePlatformOffer;
  v5 = [(ICStorePlatformOffer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end