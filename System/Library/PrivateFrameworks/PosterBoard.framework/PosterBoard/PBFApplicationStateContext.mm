@interface PBFApplicationStateContext
+ (id)contextWithForegroundStateDescription:(id)a3 posterUUIDs:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation PBFApplicationStateContext

+ (id)contextWithForegroundStateDescription:(id)a3 posterUUIDs:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PBFApplicationStateContext);
  v8 = [v6 copy];

  foregroundStateDescription = v7->_foregroundStateDescription;
  v7->_foregroundStateDescription = v8;

  v10 = [v5 copy];
  posterUUIDs = v7->_posterUUIDs;
  v7->_posterUUIDs = v10;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSSet *)v4->_posterUUIDs isEqualToSet:self->_posterUUIDs];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_foregroundStateDescription withName:@"foregroundStateDescription" skipIfEmpty:1];
  v4 = [(NSSet *)self->_posterUUIDs allObjects];
  [v3 appendArraySection:v4 withName:@"posterUUIDs" skipIfEmpty:1];

  v5 = [v3 build];

  return v5;
}

@end