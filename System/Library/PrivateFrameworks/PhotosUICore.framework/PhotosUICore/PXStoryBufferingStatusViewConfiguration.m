@interface PXStoryBufferingStatusViewConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXStoryBufferingStatusViewConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PXStoryBufferingStatusViewConfiguration);
  [(PXStoryBufferingStatusViewConfiguration *)v4 setWantsBackground:[(PXStoryBufferingStatusViewConfiguration *)self wantsBackground]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PXStoryBufferingStatusViewConfiguration *)v4 wantsBackground];
      v6 = v5 ^ [(PXStoryBufferingStatusViewConfiguration *)self wantsBackground]^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

@end