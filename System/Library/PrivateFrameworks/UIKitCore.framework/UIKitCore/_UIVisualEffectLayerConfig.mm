@interface _UIVisualEffectLayerConfig
+ (id)layerWithFillColor:(id)a3 opacity:(double)a4 filterType:(id)a5;
- (id)description;
- (void)configureLayerView:(id)a3;
- (void)deconfigureLayerView:(id)a3;
@end

@implementation _UIVisualEffectLayerConfig

+ (id)layerWithFillColor:(id)a3 opacity:(double)a4 filterType:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(a1);
  v11 = *(v10 + 1);
  *(v10 + 1) = v9;
  v12 = v9;

  v10[2] = a4;
  v13 = *(v10 + 3);
  *(v10 + 3) = v8;

  return v10;
}

- (void)configureLayerView:(id)a3
{
  v9 = a3;
  v4 = [(_UIVisualEffectLayerConfig *)self fillColor];
  [v9 setBackgroundColor:v4];

  [(_UIVisualEffectLayerConfig *)self opacity];
  [v9 setAlpha:?];
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
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setAlpha:1.0];
  v5 = [v3 layer];

  [v5 setCompositingFilter:0];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectLayerConfig;
  v3 = [(_UIVisualEffectLayerConfig *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" opacity=%f filterType=%@ fillColor=%@", *&self->_opacity, self->_filterType, self->_fillColor];

  return v4;
}

@end