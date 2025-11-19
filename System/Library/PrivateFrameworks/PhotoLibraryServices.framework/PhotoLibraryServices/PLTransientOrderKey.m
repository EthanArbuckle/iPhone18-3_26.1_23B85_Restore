@interface PLTransientOrderKey
- (id)childManagedObject;
- (id)description;
- (id)secondaryOrderSortKey;
@end

@implementation PLTransientOrderKey

- (id)description
{
  v7.receiver = self;
  v7.super_class = PLTransientOrderKey;
  v3 = [(PLTransientOrderKey *)&v7 description];
  v4 = [(PLTransientOrderKey *)self objectID];
  v5 = [v3 stringByAppendingFormat:@"%@ %lld", v4, -[PLTransientOrderKey orderValue](self, "orderValue")];

  return v5;
}

- (id)secondaryOrderSortKey
{
  v2 = [(PLTransientOrderKey *)self objectID];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 URIRepresentation];
    v4 = [v3 absoluteString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)childManagedObject
{
  v3 = [(PLTransientOrderKey *)self moc];
  v4 = [(PLTransientOrderKey *)self objectID];
  v5 = [v3 existingObjectWithID:v4 error:0];

  return v5;
}

@end