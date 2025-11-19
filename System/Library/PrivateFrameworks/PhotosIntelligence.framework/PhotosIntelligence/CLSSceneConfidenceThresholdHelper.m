@interface CLSSceneConfidenceThresholdHelper
- (CLSSceneConfidenceThresholdHelper)initWithSceneNames:(id)a3 thresholdType:(unint64_t)a4;
- (id)confidenceThresholdBySceneIdentifierWithCurationModel:(id)a3;
- (id)initForEntityNetWithSceneNames:(id)a3 thresholdType:(unint64_t)a4;
- (void)_commonInitWithSceneNames:(id)a3 thresholdType:(unint64_t)a4;
@end

@implementation CLSSceneConfidenceThresholdHelper

- (id)confidenceThresholdBySceneIdentifierWithCurationModel:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifierLock);
  if (self->_useEntityNet)
  {
    [v4 entityNetModel];
  }

  else
  {
    [v4 sceneModel];
  }
  v5 = ;

  v6 = [v5 identifier];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = [v5 confidenceThresholdBySceneIdentifierForSceneNames:self->_sceneNames withThresholdType:self->_thresholdType];
      [(NSMutableDictionary *)self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifier setObject:v7 forKeyedSubscript:v6];
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  os_unfair_lock_unlock(&self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifierLock);

  return v7;
}

- (void)_commonInitWithSceneNames:(id)a3 thresholdType:(unint64_t)a4
{
  objc_storeStrong(&self->_sceneNames, a3);
  v7 = a3;
  self->_thresholdType = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  confidenceThresholdBySceneIdentifierBySceneModelIdentifier = self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifier;
  self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifier = v8;

  self->_confidenceThresholdBySceneIdentifierBySceneModelIdentifierLock._os_unfair_lock_opaque = 0;
}

- (id)initForEntityNetWithSceneNames:(id)a3 thresholdType:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CLSSceneConfidenceThresholdHelper;
  v7 = [(CLSSceneConfidenceThresholdHelper *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CLSSceneConfidenceThresholdHelper *)v7 _commonInitWithSceneNames:v6 thresholdType:a4];
    v8->_useEntityNet = 1;
  }

  return v8;
}

- (CLSSceneConfidenceThresholdHelper)initWithSceneNames:(id)a3 thresholdType:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CLSSceneConfidenceThresholdHelper;
  v7 = [(CLSSceneConfidenceThresholdHelper *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CLSSceneConfidenceThresholdHelper *)v7 _commonInitWithSceneNames:v6 thresholdType:a4];
    v8->_useEntityNet = 0;
  }

  return v8;
}

@end