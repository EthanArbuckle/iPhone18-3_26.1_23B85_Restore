@interface RETrainingContext
+ (BOOL)isTrainingSimulationActive;
- (BOOL)isCurrent;
- (RERelevanceEngine)relevanceEngine;
- (RETrainingContext)attributeContext;
- (RETrainingContext)init;
- (void)_configureForRelevanceEngine:(id)a3;
- (void)becomeCurrent;
- (void)dealloc;
- (void)flushTraining;
- (void)setAttribute:(id)a3 forKey:(id)a4;
- (void)setRemoteContext:(id)a3;
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
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  v4 = [WeakRetained trainingManager];
  v5 = [v4 currentTrainingContext];
  LOBYTE(v2) = v5 == v2;

  return v2;
}

- (void)becomeCurrent
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  v3 = [WeakRetained trainingManager];
  [v3 makeContextCurrent:self];
}

- (void)setAttribute:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(REConcurrentDictionary *)self->_attributes setObject:v7 forKeyedSubscript:v6];
  [(RETrainingContext *)self setCachedAttributeContext:0];
  if ([(RETrainingContext *)self _wantsAutomaticRemoteContextForwarding])
  {
    [(RERemoteTrainingContext *)self->_remoteContext setAttribute:v7 forKey:v6];
  }
}

- (RETrainingContext)attributeContext
{
  v3 = [(RETrainingContext *)self cachedAttributeContext];
  if (!v3)
  {
    v3 = objc_alloc_init(RETrainingContext);
    WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
    objc_storeWeak(&v3->_relevanceEngine, WeakRetained);

    v5 = [(REConcurrentDictionary *)self->_attributes copy];
    attributes = v3->_attributes;
    v3->_attributes = v5;

    [(RETrainingContext *)self setCachedAttributeContext:v3];
  }

  return v3;
}

- (void)_configureForRelevanceEngine:(id)a3
{
  v7 = a3;
  v4 = objc_storeWeak(&self->_relevanceEngine, v7);
  remoteContext = self->_remoteContext;
  v6 = v4;
  [(RETrainingContext *)remoteContext _configureForRelevanceEngine:v7];
}

- (void)flushTraining
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  v2 = [WeakRetained trainingManager];
  [v2 flushTraining];
}

- (void)setRemoteContext:(id)a3
{
  v4 = a3;
  [(RETrainingContext *)self->_remoteContext _configureForRelevanceEngine:0];
  remoteContext = self->_remoteContext;
  self->_remoteContext = v4;
  v6 = v4;

  v7 = self->_remoteContext;
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  [(RETrainingContext *)v7 _configureForRelevanceEngine:WeakRetained];
}

+ (BOOL)isTrainingSimulationActive
{
  v2 = +[(RESingleton *)RETrainingSimulationCoordinator];
  v3 = [v2 isActivelyTraining];

  return v3;
}

@end