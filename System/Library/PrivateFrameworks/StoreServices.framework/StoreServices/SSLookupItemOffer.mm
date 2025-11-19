@interface SSLookupItemOffer
- (NSNumber)price;
- (NSString)buyParameters;
- (NSString)formattedPrice;
- (NSString)offerType;
- (NSString)subscriptionType;
- (SSLookupItemOffer)initWithLookupDictionary:(id)a3;
- (id)actionTextForType:(id)a3;
- (void)dealloc;
@end

@implementation SSLookupItemOffer

- (SSLookupItemOffer)initWithLookupDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSLookupItemOffer;
  v4 = [(SSLookupItemOffer *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSLookupItemOffer;
  [(SSLookupItemOffer *)&v3 dealloc];
}

- (id)actionTextForType:(id)a3
{
  v4 = [(NSDictionary *)self->_dictionary objectForKey:@"actionText"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:a3];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (NSString)buyParameters
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:@"buyParams"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [(NSDictionary *)self->_dictionary objectForKey:@"action-params"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v3;

  return v4;
}

- (NSString)formattedPrice
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"priceFormatted"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSString)offerType
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSNumber)price
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"price"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSString)subscriptionType
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"subscription"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = v3;

  return v4;
}

@end