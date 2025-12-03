@interface CLSSceneConfidenceThresholdHelper
- (CLSSceneConfidenceThresholdHelper)initWithSceneNames:(id)names thresholdType:(unint64_t)type;
- (id)confidenceThresholdBySceneIdentifierWithCurationModel:(id)model;
- (id)initForEntityNetWithSceneNames:(id)names thresholdType:(unint64_t)type;
- (void)_commonInitWithSceneNames:(id)names thresholdType:(unint64_t)type;
@end

@implementation CLSSceneConfidenceThresholdHelper

- (id)confidenceThresholdBySceneIdentifierWithCurationModel:(id)model
{
  modelCopy = model;
  os_unfair_lock_lock(&self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifierLock);
  if (self->_useEntityNet)
  {
    [modelCopy entityNetModel];
  }

  else
  {
    [modelCopy sceneModel];
  }
  v5 = ;

  identifier = [v5 identifier];
  if (identifier)
  {
    v7 = [(NSMutableDictionary *)self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:identifier];
    if (!v7)
    {
      v7 = [v5 confidenceThresholdBySceneIdentifierForSceneNames:self->_sceneNames withThresholdType:self->_thresholdType];
      [(NSMutableDictionary *)self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifier setObject:v7 forKeyedSubscript:identifier];
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  os_unfair_lock_unlock(&self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifierLock);

  return v7;
}

- (void)_commonInitWithSceneNames:(id)names thresholdType:(unint64_t)type
{
  objc_storeStrong(&self->_sceneNames, names);
  namesCopy = names;
  self->_thresholdType = type;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  confidenceThresholdBySceneIdentifierBySceneModelIdentifier = self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifier;
  self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifier = v8;

  self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifierLock._os_unfair_lock_opaque = 0;
}

- (id)initForEntityNetWithSceneNames:(id)names thresholdType:(unint64_t)type
{
  namesCopy = names;
  v10.receiver = self;
  v10.super_class = CLSSceneConfidenceThresholdHelper;
  v7 = [(CLSSceneConfidenceThresholdHelper *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CLSSceneConfidenceThresholdHelper *)v7 _commonInitWithSceneNames:namesCopy thresholdType:type];
    v8->_useEntityNet = 1;
  }

  return v8;
}

- (CLSSceneConfidenceThresholdHelper)initWithSceneNames:(id)names thresholdType:(unint64_t)type
{
  namesCopy = names;
  v10.receiver = self;
  v10.super_class = CLSSceneConfidenceThresholdHelper;
  v7 = [(CLSSceneConfidenceThresholdHelper *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CLSSceneConfidenceThresholdHelper *)v7 _commonInitWithSceneNames:namesCopy thresholdType:type];
    v8->_useEntityNet = 0;
  }

  return v8;
}

@end