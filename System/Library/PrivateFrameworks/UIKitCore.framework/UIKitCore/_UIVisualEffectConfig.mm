@interface _UIVisualEffectConfig
+ (_UIVisualEffectConfig)configWithContentConfig:(id)config;
+ (_UIVisualEffectConfig)configWithLayerConfigs:(id)configs;
- (id)description;
- (void)addLayerConfig:(id)config;
- (void)enumerateLayerConfigs:(id)configs;
@end

@implementation _UIVisualEffectConfig

+ (_UIVisualEffectConfig)configWithContentConfig:(id)config
{
  configCopy = config;
  v4 = objc_alloc_init(_UIVisualEffectConfig);
  contentConfig = v4->_contentConfig;
  v4->_contentConfig = configCopy;

  return v4;
}

+ (_UIVisualEffectConfig)configWithLayerConfigs:(id)configs
{
  configsCopy = configs;
  v4 = objc_alloc_init(_UIVisualEffectConfig);
  v5 = [configsCopy mutableCopy];

  layerConfigs = v4->_layerConfigs;
  v4->_layerConfigs = v5;

  return v4;
}

- (void)addLayerConfig:(id)config
{
  layerConfigs = self->_layerConfigs;
  if (layerConfigs)
  {
    configCopy = config;
    [(NSMutableArray *)layerConfigs addObject:configCopy];
    v4 = configCopy;
  }

  else
  {
    v6 = MEMORY[0x1E695DF70];
    configCopy2 = config;
    v8 = [[v6 alloc] initWithObjects:{configCopy2, 0}];

    v4 = self->_layerConfigs;
    self->_layerConfigs = v8;
  }
}

- (void)enumerateLayerConfigs:(id)configs
{
  configsCopy = configs;
  layerConfigs = self->_layerConfigs;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___UIVisualEffectConfig_enumerateLayerConfigs___block_invoke;
  v7[3] = &unk_1E70F6BB8;
  v8 = configsCopy;
  v6 = configsCopy;
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