@interface PXGFocusGuideViewConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXGFocusGuideViewConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      preferredFocusEnvironments = [(PXGFocusGuideViewConfiguration *)equalCopy preferredFocusEnvironments];
      preferredFocusEnvironments2 = [(PXGFocusGuideViewConfiguration *)self preferredFocusEnvironments];
      v7 = [preferredFocusEnvironments isEqual:preferredFocusEnvironments2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  preferredFocusEnvironments = [(PXGFocusGuideViewConfiguration *)self preferredFocusEnvironments];
  v3 = [preferredFocusEnvironments hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  preferredFocusEnvironments = [(PXGFocusGuideViewConfiguration *)self preferredFocusEnvironments];
  v6 = [preferredFocusEnvironments copy];
  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

@end