@interface MicroPaymentProductsResponse
- (BOOL)loadFromDictionary:(id)dictionary error:(id *)error;
- (void)dealloc;
@end

@implementation MicroPaymentProductsResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MicroPaymentProductsResponse;
  [(MicroPaymentProductsResponse *)&v3 dealloc];
}

- (BOOL)loadFromDictionary:(id)dictionary error:(id *)error
{
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  if (self->_expectedIdentifiers)
  {
    v8 = [[NSMutableSet alloc] initWithArray:self->_expectedIdentifiers];
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionary objectForKey:@"available-subproducts"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[MicroPaymentProduct alloc] initWithDictionary:*(*(&v18 + 1) + 8 * v13)];
          if (v14)
          {
            v15 = v14;
            [v7 addObject:v14];
            [v8 removeObject:{-[MicroPaymentProduct productIdentifier](v15, "productIdentifier")}];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  if ([v8 count])
  {
    [v6 addObjectsFromArray:{objc_msgSend(v8, "allObjects")}];
  }

  self->_invalidIdentifiers = [v6 copy];
  self->_products = [v7 copy];

  if (error)
  {
    *error = 0;
  }

  return 1;
}

@end