@interface RETrainingContext
+ (BOOL)isTrainingSimulationActive;
- (BOOL)isCurrent;
- (RERelevanceEngine)relevanceEngine;
- (RETrainingContext)attributeContext;
- (RETrainingContext)init;
- (void)_configureForRelevanceEngine:(id)engine;
- (void)becomeCurrent;
- (void)dealloc;
- (void)flushTraining;
- (void)setAttribute:(id)attribute forKey:(id)key;
- (void)setRemoteContext:(id)context;
@end

@implementation RETrainingContext

- (RETrainingContext)init
{
  v6.receiver = self;
  v6.super_class = RETrainingContext;
  v2 = [(RETrainingContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(REConcurrentDictionary);
    attributes = v2->_attributes;
    v2->_attributes = v3;
  }

  return v2;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  [WeakRetained removeTrainingContext:self];

  v4.receiver = self;
  v4.super_class = RETrainingContext;
  [(RETrainingContext *)&v4 dealloc];
}

- (RERelevanceEngine)relevanceEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);

  return WeakRetained;
}

- (BOOL)isCurrent
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  trainingManager = [WeakRetained trainingManager];
  currentTrainingContext = [trainingManager currentTrainingContext];
  LOBYTE(selfCopy) = currentTrainingContext == selfCopy;

  return selfCopy;
}

- (void)becomeCurrent
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  trainingManager = [WeakRetained trainingManager];
  [trainingManager makeContextCurrent:self];
}

- (void)setAttribute:(id)attribute forKey:(id)key
{
  attributeCopy = attribute;
  keyCopy = key;
  [(REConcurrentDictionary *)self->_attributes setObject:attributeCopy forKeyedSubscript:keyCopy];
  [(RETrainingContext *)self setCachedAttributeContext:0];
  if ([(RETrainingContext *)self _wantsAutomaticRemoteContextForwarding])
  {
    [(RERemoteTrainingContext *)self->_remoteContext setAttribute:attributeCopy forKey:keyCopy];
  }
}

- (RETrainingContext)attributeContext
{
  cachedAttributeContext = [(RETrainingContext *)self cachedAttributeContext];
  if (!cachedAttributeContext)
  {
    cachedAttributeContext = objc_alloc_init(RETrainingContext);
    WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
    objc_storeWeak(&cachedAttributeContext->_relevanceEngine, WeakRetained);

    v5 = [(REConcurrentDictionary *)self->_attributes copy];
    attributes = cachedAttributeContext->_attributes;
    cachedAttributeContext->_attributes = v5;

    [(RETrainingContext *)self setCachedAttributeContext:cachedAttributeContext];
  }

  return cachedAttributeContext;
}

- (void)_configureForRelevanceEngine:(id)engine
{
  engineCopy = engine;
  v4 = objc_storeWeak(&self->_relevanceEngine, engineCopy);
  remoteContext = self->_remoteContext;
  v6 = v4;
  [(RETrainingContext *)remoteContext _configureForRelevanceEngine:engineCopy];
}

- (void)flushTraining
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  trainingManager = [WeakRetained trainingManager];
  [trainingManager flushTraining];
}

- (void)setRemoteContext:(id)context
{
  contextCopy = context;
  [(RETrainingContext *)self->_remoteContext _configureForRelevanceEngine:0];
  remoteContext = self->_remoteContext;
  self->_remoteContext = contextCopy;
  v6 = contextCopy;

  v7 = self->_remoteContext;
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  [(RETrainingContext *)v7 _configureForRelevanceEngine:WeakRetained];
}

+ (BOOL)isTrainingSimulationActive
{
  v2 = +[(RESingleton *)RETrainingSimulationCoordinator];
  isActivelyTraining = [v2 isActivelyTraining];

  return isActivelyTraining;
}

@end