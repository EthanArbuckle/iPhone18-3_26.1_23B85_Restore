@interface PXStoryBufferingStatusViewConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXStoryBufferingStatusViewConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXStoryBufferingStatusViewConfiguration);
  [(PXStoryBufferingStatusViewConfiguration *)v4 setWantsBackground:[(PXStoryBufferingStatusViewConfiguration *)self wantsBackground]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      wantsBackground = [(PXStoryBufferingStatusViewConfiguration *)equalCopy wantsBackground];
      v6 = wantsBackground ^ [(PXStoryBufferingStatusViewConfiguration *)self wantsBackground]^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

@end