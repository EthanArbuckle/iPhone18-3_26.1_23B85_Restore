@interface _UIVisualEffectVibrantLayerConfig
+ (id)layerWithVibrantColor:(id)color tintColor:(id)tintColor filterType:(id)type filterAttributes:(id)attributes;
- (id)description;
- (void)configureLayerView:(id)view;
- (void)deconfigureLayerView:(id)view;
@end

@implementation _UIVisualEffectVibrantLayerConfig

+ (id)layerWithVibrantColor:(id)color tintColor:(id)tintColor filterType:(id)type filterAttributes:(id)attributes
{
  colorCopy = color;
  tintColorCopy = tintColor;
  attributesCopy = attributes;
  v13 = [self layerWithFillColor:0 opacity:type filterType:1.0];
  v14 = v13[4];
  v13[4] = colorCopy;
  v15 = colorCopy;

  v16 = v13[5];
  v13[5] = tintColorCopy;
  v17 = tintColorCopy;

  v18 = [attributesCopy copy];
  v19 = v13[6];
  v13[6] = v18;

  return v13;
}

- (void)configureLayerView:(id)view
{
  viewCopy = view;
  filterType = [(_UIVisualEffectLayerConfig *)self filterType];

  if (filterType)
  {
    layer = [viewCopy layer];
    filterType2 = [(_UIVisualEffectLayerConfig *)self filterType];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__13;
    v28 = __Block_byref_object_dispose__13;
    v29 = filterOfTypeOnLayer(layer, filterType2);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56___UIVisualEffectVibrantLayerConfig_configureLayerView___block_invoke;
    aBlock[3] = &unk_1E70F6B40;
    v8 = viewCopy;
    v20 = v8;
    selfCopy = self;
    v9 = layer;
    v22 = v9;
    v10 = filterType2;
    v23 = v10;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (v25[5])
    {
      v11[2](v11);
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __56___UIVisualEffectVibrantLayerConfig_configureLayerView___block_invoke_3;
      v13[3] = &unk_1E70F6B90;
      v14 = v8;
      v18 = &v24;
      v15 = v10;
      selfCopy2 = self;
      v17 = v9;
      [UIView performWithoutAnimation:v13];
      v12[2](v12);
    }

    _Block_object_dispose(&v24, 8);
  }
}

- (void)deconfigureLayerView:(id)view
{
  layer = [view layer];
  filterType = [(_UIVisualEffectLayerConfig *)self filterType];
  v6 = filterOfTypeOnLayer(layer, filterType);
  if (v6)
  {
    v7 = +[UIColor clearColor];
    cGColor = [v7 CGColor];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", filterType, @"inputColor0"];
    [layer setValue:cGColor forKeyPath:v9];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", filterType, @"inputColor1"];
    [layer setValue:cGColor forKeyPath:v10];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58___UIVisualEffectVibrantLayerConfig_deconfigureLayerView___block_invoke;
    aBlock[3] = &unk_1E70F35B8;
    v16 = layer;
    v17 = filterType;
    v11 = _Block_copy(aBlock);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58___UIVisualEffectVibrantLayerConfig_deconfigureLayerView___block_invoke_3;
    v13[3] = &unk_1E70F3608;
    v12 = v11;
    v14 = v12;
    if (![UIView _addCompletion:v13])
    {
      v12[2](v12);
    }
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectVibrantLayerConfig;
  v3 = [(_UIVisualEffectLayerConfig *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" vibrantColor=%@ tintColor=%@ filterAttributes=%@", self->_vibrantColor, self->_tintColor, self->_filterAttributes];

  return v4;
}

@end