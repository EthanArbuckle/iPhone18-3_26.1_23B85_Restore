@interface PCFxLightWrapOptions
- (PCFxLightWrapOptions)initWithLRBlendOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PCFxLightWrapOptions

- (PCFxLightWrapOptions)initWithLRBlendOptions:(id)a3
{
  v6.receiver = self;
  v6.super_class = PCFxLightWrapOptions;
  v4 = [(PCFxBlendOptions *)&v6 initWithBlendOptions:?];
  if (v4)
  {
    [a3 getAmount];
    [(PCFxLightWrapOptions *)v4 setAmount:?];
    [a3 getIntensity];
    [(PCFxLightWrapOptions *)v4 setIntensity:?];
    [a3 getIntensityScale];
    [(PCFxLightWrapOptions *)v4 setIntensityScale:?];
    [a3 getOpacity];
    [(PCFxLightWrapOptions *)v4 setOpacity:?];
    -[PCFxLightWrapOptions setLRBlendMode:](v4, "setLRBlendMode:", [a3 getLRBlendMode]);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PCFxLightWrapOptions allocWithZone:a3];

  return [(PCFxLightWrapOptions *)v4 initWithLRBlendOptions:self];
}

@end