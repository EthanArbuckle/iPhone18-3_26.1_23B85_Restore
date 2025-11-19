@interface _UIVisualEffectTintLayerConfig
+ (id)layerWithTintColor:(id)a3 filterType:(id)a4;
- (id)description;
- (void)configureLayerView:(id)a3;
- (void)deconfigureLayerView:(id)a3;
@end

@implementation _UIVisualEffectTintLayerConfig

+ (id)layerWithTintColor:(id)a3 filterType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 layerWithFillColor:0 opacity:v7 filterType:1.0];
  v9 = v8[4];
  v8[4] = v6;
  v10 = v6;

  v11 = v8[1];
  v8[1] = v7;

  return v8;
}

- (void)configureLayerView:(id)a3
{
  v9 = a3;
  v4 = [(_UIVisualEffectTintLayerConfig *)self tintColor];
  [v9 setTintColor:v4];

  v5 = [(_UIVisualEffectLayerConfig *)self filterType];
  if (v5)
  {
    v6 = MEMORY[0x1E6979378];
    self = [(_UIVisualEffectLayerConfig *)self filterType];
    v7 = [v6 filterWithType:self];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v9 layer];
  [v8 setCompositingFilter:v7];

  if (v5)
  {
  }
}

- (void)deconfigureLayerView:(id)a3
{
  v3 = a3;
  [v3 setTintColor:0];
  v4 = [v3 layer];

  [v4 setCompositingFilter:0];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectTintLayerConfig;
  v3 = [(_UIVisualEffectLayerConfig *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" tintColor=%@", self->_tintColor];

  return v4;
}

@end