@interface _UIVisualEffectConfig
+ (_UIVisualEffectConfig)configWithContentConfig:(id)a3;
+ (_UIVisualEffectConfig)configWithLayerConfigs:(id)a3;
- (id)description;
- (void)addLayerConfig:(id)a3;
- (void)enumerateLayerConfigs:(id)a3;
@end

@implementation _UIVisualEffectConfig

+ (_UIVisualEffectConfig)configWithContentConfig:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UIVisualEffectConfig);
  contentConfig = v4->_contentConfig;
  v4->_contentConfig = v3;

  return v4;
}

+ (_UIVisualEffectConfig)configWithLayerConfigs:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UIVisualEffectConfig);
  v5 = [v3 mutableCopy];

  layerConfigs = v4->_layerConfigs;
  v4->_layerConfigs = v5;

  return v4;
}

- (void)addLayerConfig:(id)a3
{
  layerConfigs = self->_layerConfigs;
  if (layerConfigs)
  {
    v9 = a3;
    [(NSMutableArray *)layerConfigs addObject:v9];
    v4 = v9;
  }

  else
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = a3;
    v8 = [[v6 alloc] initWithObjects:{v7, 0}];

    v4 = self->_layerConfigs;
    self->_layerConfigs = v8;
  }
}

- (void)enumerateLayerConfigs:(id)a3
{
  v4 = a3;
  layerConfigs = self->_layerConfigs;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___UIVisualEffectConfig_enumerateLayerConfigs___block_invoke;
  v7[3] = &unk_1E70F6BB8;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)layerConfigs enumerateObjectsUsingBlock:v7];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UIVisualEffectConfig;
  v3 = [(_UIVisualEffectConfig *)&v8 description];
  contentConfig = self->_contentConfig;
  v5 = [(NSMutableArray *)self->_layerConfigs componentsJoinedByString:@", "];
  v6 = [v3 stringByAppendingFormat:@" contentConfig=%@ layerConfigs={%@}", contentConfig, v5];;

  return v6;
}

@end