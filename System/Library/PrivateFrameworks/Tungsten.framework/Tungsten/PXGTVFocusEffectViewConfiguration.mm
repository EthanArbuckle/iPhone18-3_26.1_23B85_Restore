@interface PXGTVFocusEffectViewConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXGTVFocusEffectViewConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
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
      v7.receiver = self;
      v7.super_class = PXGTVFocusEffectViewConfiguration;
      v5 = [(PXGTVFocusEffectViewConfiguration *)&v7 isEqual:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = PXGTVFocusEffectViewConfiguration;
  return [(PXGTVFocusEffectViewConfiguration *)&v3 hash];
}

@end