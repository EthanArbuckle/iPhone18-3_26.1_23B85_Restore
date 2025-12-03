@interface _UIVisualEffectLayerConfig
+ (id)layerWithFillColor:(id)color opacity:(double)opacity filterType:(id)type;
- (id)description;
- (void)configureLayerView:(id)view;
- (void)deconfigureLayerView:(id)view;
@end

@implementation _UIVisualEffectLayerConfig

+ (id)layerWithFillColor:(id)color opacity:(double)opacity filterType:(id)type
{
  colorCopy = color;
  typeCopy = type;
  v10 = objc_alloc_init(self);
  v11 = *(v10 + 1);
  *(v10 + 1) = typeCopy;
  v12 = typeCopy;

  v10[2] = opacity;
  v13 = *(v10 + 3);
  *(v10 + 3) = colorCopy;

  return v10;
}

- (void)configureLayerView:(id)view
{
  viewCopy = view;
  fillColor = [(_UIVisualEffectLayerConfig *)self fillColor];
  [viewCopy setBackgroundColor:fillColor];

  [(_UIVisualEffectLayerConfig *)self opacity];
  [viewCopy setAlpha:?];
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
  v4 = +[UIColor clearColor];
  [viewCopy setBackgroundColor:v4];

  [viewCopy setAlpha:1.0];
  layer = [viewCopy layer];

  [layer setCompositingFilter:0];
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