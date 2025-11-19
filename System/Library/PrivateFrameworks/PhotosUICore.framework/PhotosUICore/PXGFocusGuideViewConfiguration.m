@interface PXGFocusGuideViewConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXGFocusGuideViewConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PXGFocusGuideViewConfiguration *)v4 preferredFocusEnvironments];
      v6 = [(PXGFocusGuideViewConfiguration *)self preferredFocusEnvironments];
      v7 = [v5 isEqual:v6];
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
  v2 = [(PXGFocusGuideViewConfiguration *)self preferredFocusEnvironments];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXGFocusGuideViewConfiguration *)self preferredFocusEnvironments];
  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

@end