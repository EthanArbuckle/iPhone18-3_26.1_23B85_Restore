@interface PBFApplicationStateContext
+ (id)contextWithForegroundStateDescription:(id)description posterUUIDs:(id)ds;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation PBFApplicationStateContext

+ (id)contextWithForegroundStateDescription:(id)description posterUUIDs:(id)ds
{
  dsCopy = ds;
  descriptionCopy = description;
  v7 = objc_alloc_init(PBFApplicationStateContext);
  v8 = [descriptionCopy copy];

  foregroundStateDescription = v7->_foregroundStateDescription;
  v7->_foregroundStateDescription = v8;

  v10 = [dsCopy copy];
  posterUUIDs = v7->_posterUUIDs;
  v7->_posterUUIDs = v10;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSSet *)equalCopy->_posterUUIDs isEqualToSet:self->_posterUUIDs];
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
  allObjects = [(NSSet *)self->_posterUUIDs allObjects];
  [v3 appendArraySection:allObjects withName:@"posterUUIDs" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

@end