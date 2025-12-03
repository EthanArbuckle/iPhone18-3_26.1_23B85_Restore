@interface _UIVisualEffectTintLayerConfig
+ (id)layerWithTintColor:(id)color filterType:(id)type;
- (id)description;
- (void)configureLayerView:(id)view;
- (void)deconfigureLayerView:(id)view;
@end

@implementation _UIVisualEffectTintLayerConfig

+ (id)layerWithTintColor:(id)color filterType:(id)type
{
  colorCopy = color;
  typeCopy = type;
  v8 = [self layerWithFillColor:0 opacity:typeCopy filterType:1.0];
  v9 = v8[4];
  v8[4] = colorCopy;
  v10 = colorCopy;

  v11 = v8[1];
  v8[1] = typeCopy;

  return v8;
}

- (void)configureLayerView:(id)view
{
  viewCopy = view;
  tintColor = [(_UIVisualEffectTintLayerConfig *)self tintColor];
  [viewCopy setTintColor:tintColor];

  filterType = [(_UIVisualEffectLayerConfig *)self filterType];
  if (filterType)
  {
    v6 = MEMORY[0x1E6979378];
    self = [(_UIVisualEffectLayerConfig *)self filterType];
    v7 = [v6 filterWithType:self];
  }

  else
  {
    v7 = 0;
  }

  layer = [viewCopy layer];
  [layer setCompositingFilter:v7];

  if (filterType)
  {
  }
}

- (void)deconfigureLayerView:(id)view
{
  viewCopy = view;
  [viewCopy setTintColor:0];
  layer = [viewCopy layer];

  [layer setCompositingFilter:0];
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