@interface PCFxLightWrapOptions
- (PCFxLightWrapOptions)initWithLRBlendOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PCFxLightWrapOptions

- (PCFxLightWrapOptions)initWithLRBlendOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = PCFxLightWrapOptions;
  v4 = [(PCFxBlendOptions *)&v6 initWithBlendOptions:?];
  if (v4)
  {
    [options getAmount];
    [(PCFxLightWrapOptions *)v4 setAmount:?];
    [options getIntensity];
    [(PCFxLightWrapOptions *)v4 setIntensity:?];
    [options getIntensityScale];
    [(PCFxLightWrapOptions *)v4 setIntensityScale:?];
    [options getOpacity];
    [(PCFxLightWrapOptions *)v4 setOpacity:?];
    -[PCFxLightWrapOptions setLRBlendMode:](v4, "setLRBlendMode:", [options getLRBlendMode]);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PCFxLightWrapOptions allocWithZone:zone];

  return [(PCFxLightWrapOptions *)v4 initWithLRBlendOptions:self];
}

@end