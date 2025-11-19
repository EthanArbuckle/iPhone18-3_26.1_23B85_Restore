@interface _UIVisualEffectVibrantLayerConfig
+ (id)layerWithVibrantColor:(id)a3 tintColor:(id)a4 filterType:(id)a5 filterAttributes:(id)a6;
- (id)description;
- (void)configureLayerView:(id)a3;
- (void)deconfigureLayerView:(id)a3;
@end

@implementation _UIVisualEffectVibrantLayerConfig

+ (id)layerWithVibrantColor:(id)a3 tintColor:(id)a4 filterType:(id)a5 filterAttributes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [a1 layerWithFillColor:0 opacity:a5 filterType:1.0];
  v14 = v13[4];
  v13[4] = v10;
  v15 = v10;

  v16 = v13[5];
  v13[5] = v11;
  v17 = v11;

  v18 = [v12 copy];
  v19 = v13[6];
  v13[6] = v18;

  return v13;
}

- (void)configureLayerView:(id)a3
{
  v4 = a3;
  v5 = [(_UIVisualEffectLayerConfig *)self filterType];

  if (v5)
  {
    v6 = [v4 layer];
    v7 = [(_UIVisualEffectLayerConfig *)self filterType];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__13;
    v28 = __Block_byref_object_dispose__13;
    v29 = filterOfTypeOnLayer(v6, v7);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56___UIVisualEffectVibrantLayerConfig_configureLayerView___block_invoke;
    aBlock[3] = &unk_1E70F6B40;
    v8 = v4;
    v20 = v8;
    v21 = self;
    v9 = v6;
    v22 = v9;
    v10 = v7;
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
      v16 = self;
      v17 = v9;
      [UIView performWithoutAnimation:v13];
      v12[2](v12);
    }

    _Block_object_dispose(&v24, 8);
  }
}

- (void)deconfigureLayerView:(id)a3
{
  v4 = [a3 layer];
  v5 = [(_UIVisualEffectLayerConfig *)self filterType];
  v6 = filterOfTypeOnLayer(v4, v5);
  if (v6)
  {
    v7 = +[UIColor clearColor];
    v8 = [v7 CGColor];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", v5, @"inputColor0"];
    [v4 setValue:v8 forKeyPath:v9];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", v5, @"inputColor1"];
    [v4 setValue:v8 forKeyPath:v10];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58___UIVisualEffectVibrantLayerConfig_deconfigureLayerView___block_invoke;
    aBlock[3] = &unk_1E70F35B8;
    v16 = v4;
    v17 = v5;
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