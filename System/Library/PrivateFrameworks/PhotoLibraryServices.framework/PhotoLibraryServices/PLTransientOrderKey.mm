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
  objectID = [(PLTransientOrderKey *)self objectID];
  v5 = [v3 stringByAppendingFormat:@"%@ %lld", objectID, -[PLTransientOrderKey orderValue](self, "orderValue")];

  return v5;
}

- (id)secondaryOrderSortKey
{
  objectID = [(PLTransientOrderKey *)self objectID];
  if (objectID && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uRIRepresentation = [objectID URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  return absoluteString;
}

- (id)childManagedObject
{
  v3 = [(PLTransientOrderKey *)self moc];
  objectID = [(PLTransientOrderKey *)self objectID];
  v5 = [v3 existingObjectWithID:objectID error:0];

  return v5;
}

@end