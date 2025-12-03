@interface REMutableRelevanceEngineConfiguration
+ (id)defaultConfiguration;
+ (id)defaultUpNextConfiguration;
+ (id)sampleUpNextConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_indexOfInteractionWithName:(id)name;
- (int64_t)_indexOfSectionWithName:(id)name;
- (void)addInteractionWithDescriptor:(id)descriptor;
- (void)addSectionWithDescriptor:(id)descriptor;
- (void)insertInteractionWithDescriptor:(id)descriptor atIndex:(unint64_t)index;
- (void)insertSectionWithDescriptor:(id)descriptor atIndex:(unint64_t)index;
- (void)removeAllInteractions;
- (void)removeAllSections;
- (void)removeInteractionAtIndex:(unint64_t)index;
- (void)removeSectionAtIndex:(unint64_t)index;
- (void)removeSectionWithName:(id)name;
- (void)setAllowsRemoteTraining:(BOOL)training;
- (void)setBaseModelFileURL:(id)l;
- (void)setDataSourceLoader:(id)loader;
- (void)setEngineQueue:(id)queue;
- (void)setFeatureToConditionMap:(id)map;
- (void)setLocationManager:(id)manager;
- (void)setMetricsRecorder:(id)recorder;
- (void)setModelFileURL:(id)l;
- (void)setModelStorageBehavior:(unint64_t)behavior;
- (void)setModelVersion:(unint64_t)version;
- (void)setObserverQueue:(id)queue;
- (void)setPredictorManager:(id)manager;
- (void)setPreferenceDomain:(id)domain;
- (void)setPrimaryFeatures:(id)features;
- (void)setRankingPropertiesFileURL:(id)l;
- (void)setRankingTierFilteringRules:(id)rules;
- (void)setRelevanceProviderManagerLoader:(id)loader;
- (void)setTrainingBehavior:(unint64_t)behavior;
@end

@implementation REMutableRelevanceEngineConfiguration

+ (id)defaultConfiguration
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___REMutableRelevanceEngineConfiguration;
  v2 = objc_msgSendSuper2(&v5, sel_defaultConfiguration);
  v3 = [v2 mutableCopy];

  return v3;
}

- (void)setEngineQueue:(id)queue
{
  queueCopy = queue;
  v5 = NSStringFromSelector(sel_engineQueue);
  [(RERelevanceEngineConfiguration *)self setValue:queueCopy forKey:v5 ofClass:0];
}

- (void)setObserverQueue:(id)queue
{
  queueCopy = queue;
  v5 = NSStringFromSelector(sel_observerQueue);
  [(RERelevanceEngineConfiguration *)self setValue:queueCopy forKey:v5 ofClass:0];
}

- (void)setModelFileURL:(id)l
{
  lCopy = l;
  v5 = NSStringFromSelector(sel_modelFileURL);
  [(RERelevanceEngineConfiguration *)self setValue:lCopy forKey:v5 ofClass:objc_opt_class()];
}

- (void)setBaseModelFileURL:(id)l
{
  lCopy = l;
  v5 = NSStringFromSelector(sel_baseModelFileURL);
  [(RERelevanceEngineConfiguration *)self setValue:lCopy forKey:v5 ofClass:objc_opt_class()];
}

- (void)setModelVersion:(unint64_t)version
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  v4 = NSStringFromSelector(sel_modelVersion);
  [(RERelevanceEngineConfiguration *)self setValue:v5 forKey:v4 ofClass:objc_opt_class()];
}

- (void)setDataSourceLoader:(id)loader
{
  loaderCopy = loader;
  v5 = NSStringFromSelector(sel_dataSourceLoader);
  [(RERelevanceEngineConfiguration *)self setValue:loaderCopy forKey:v5 ofClass:objc_opt_class()];
}

- (void)setRelevanceProviderManagerLoader:(id)loader
{
  loaderCopy = loader;
  v5 = NSStringFromSelector(sel_relevanceProviderManagerLoader);
  [(RERelevanceEngineConfiguration *)self setValue:loaderCopy forKey:v5 ofClass:objc_opt_class()];
}

- (void)setPredictorManager:(id)manager
{
  managerCopy = manager;
  v5 = NSStringFromSelector(sel_predictorManager);
  [(RERelevanceEngineConfiguration *)self setValue:managerCopy forKey:v5 ofClass:objc_opt_class()];
}

- (void)setTrainingBehavior:(unint64_t)behavior
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:behavior];
  v4 = NSStringFromSelector(sel_trainingBehavior);
  [(RERelevanceEngineConfiguration *)self setValue:v5 forKey:v4 ofClass:objc_opt_class()];
}

- (void)setModelStorageBehavior:(unint64_t)behavior
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:behavior];
  v4 = NSStringFromSelector(sel_modelStorageBehavior);
  [(RERelevanceEngineConfiguration *)self setValue:v5 forKey:v4 ofClass:objc_opt_class()];
}

- (void)setLocationManager:(id)manager
{
  managerCopy = manager;
  v5 = NSStringFromSelector(sel_locationManager);
  [(RERelevanceEngineConfiguration *)self setValue:managerCopy forKey:v5 ofClass:objc_opt_class()];
}

- (void)addSectionWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  sectionDescriptors = [(RERelevanceEngineConfiguration *)self sectionDescriptors];
  -[REMutableRelevanceEngineConfiguration insertSectionWithDescriptor:atIndex:](self, "insertSectionWithDescriptor:atIndex:", descriptorCopy, [sectionDescriptors count]);
}

- (void)insertSectionWithDescriptor:(id)descriptor atIndex:(unint64_t)index
{
  descriptorCopy = descriptor;
  name = [descriptorCopy name];
  v7 = [name length];

  if (v7)
  {
    name2 = [descriptorCopy name];
    v15 = [(REMutableRelevanceEngineConfiguration *)self _indexOfSectionWithName:name2];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      values = self->super._values;
      v17 = NSStringFromSelector(sel_sectionDescriptors);
      name3 = [(NSMutableDictionary *)values objectForKeyedSubscript:v17];

      [name3 insertObject:descriptorCopy atIndex:index];
    }

    else
    {
      v19 = *MEMORY[0x277CBE660];
      name3 = [descriptorCopy name];
      RERaiseInternalException(v19, @"Already contains section descriptor with name %@", v20, v21, v22, v23, v24, v25, name3);
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Section descriptor %@ must have name", v8, v9, v10, v11, v12, v13, descriptorCopy);
  }
}

- (int64_t)_indexOfSectionWithName:(id)name
{
  nameCopy = name;
  sectionDescriptors = [(RERelevanceEngineConfiguration *)self sectionDescriptors];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__REMutableRelevanceEngineConfiguration__indexOfSectionWithName___block_invoke;
  v9[3] = &unk_2785FBD50;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [sectionDescriptors indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __65__REMutableRelevanceEngineConfiguration__indexOfSectionWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)removeSectionWithName:(id)name
{
  v4 = [(REMutableRelevanceEngineConfiguration *)self _indexOfSectionWithName:name];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(REMutableRelevanceEngineConfiguration *)self removeSectionAtIndex:v4];
  }
}

- (void)removeSectionAtIndex:(unint64_t)index
{
  values = self->super._values;
  v5 = NSStringFromSelector(sel_sectionDescriptors);
  v6 = [(NSMutableDictionary *)values objectForKeyedSubscript:v5];

  [v6 removeObjectAtIndex:index];
}

- (void)removeAllSections
{
  for (i = self; ; self = i)
  {
    sectionDescriptors = [(RERelevanceEngineConfiguration *)self sectionDescriptors];
    v4 = [sectionDescriptors count];

    if (!v4)
    {
      break;
    }

    [(REMutableRelevanceEngineConfiguration *)i removeSectionAtIndex:0];
  }
}

- (void)addInteractionWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  interactionDescriptors = [(RERelevanceEngineConfiguration *)self interactionDescriptors];
  -[REMutableRelevanceEngineConfiguration insertInteractionWithDescriptor:atIndex:](self, "insertInteractionWithDescriptor:atIndex:", descriptorCopy, [interactionDescriptors count]);
}

- (void)insertInteractionWithDescriptor:(id)descriptor atIndex:(unint64_t)index
{
  descriptorCopy = descriptor;
  name = [descriptorCopy name];
  v7 = [name length];

  if (v7)
  {
    name2 = [descriptorCopy name];
    v15 = [(REMutableRelevanceEngineConfiguration *)self _indexOfInteractionWithName:name2];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      values = self->super._values;
      v17 = NSStringFromSelector(sel_interactionDescriptors);
      name3 = [(NSMutableDictionary *)values objectForKeyedSubscript:v17];

      [name3 insertObject:descriptorCopy atIndex:index];
    }

    else
    {
      v19 = *MEMORY[0x277CBE660];
      name3 = [descriptorCopy name];
      RERaiseInternalException(v19, @"Already contains interaction descriptor with name %@", v20, v21, v22, v23, v24, v25, name3);
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Interaction descriptor %@ must have name", v8, v9, v10, v11, v12, v13, descriptorCopy);
  }
}

- (int64_t)_indexOfInteractionWithName:(id)name
{
  nameCopy = name;
  interactionDescriptors = [(RERelevanceEngineConfiguration *)self interactionDescriptors];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__REMutableRelevanceEngineConfiguration__indexOfInteractionWithName___block_invoke;
  v9[3] = &unk_2785FBD78;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [interactionDescriptors indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __69__REMutableRelevanceEngineConfiguration__indexOfInteractionWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)removeInteractionAtIndex:(unint64_t)index
{
  values = self->super._values;
  v5 = NSStringFromSelector(sel_interactionDescriptors);
  v6 = [(NSMutableDictionary *)values objectForKeyedSubscript:v5];

  [v6 removeObjectAtIndex:index];
}

- (void)removeAllInteractions
{
  for (i = self; ; self = i)
  {
    interactionDescriptors = [(RERelevanceEngineConfiguration *)self interactionDescriptors];
    v4 = [interactionDescriptors count];

    if (!v4)
    {
      break;
    }

    [(REMutableRelevanceEngineConfiguration *)i removeInteractionAtIndex:0];
  }
}

- (void)setRankingTierFilteringRules:(id)rules
{
  v6 = [rules copy];
  values = self->super._values;
  v5 = NSStringFromSelector(sel_rankingTierFilteringRules);
  [(NSMutableDictionary *)values setObject:v6 forKeyedSubscript:v5];
}

- (void)setPrimaryFeatures:(id)features
{
  featuresCopy = features;
  v5 = NSStringFromSelector(sel_primaryFeatures);
  [(RERelevanceEngineConfiguration *)self setValue:featuresCopy forKey:v5 ofClass:objc_opt_class()];
}

- (void)setPreferenceDomain:(id)domain
{
  domainCopy = domain;
  v5 = NSStringFromSelector(sel_preferenceDomain);
  [(RERelevanceEngineConfiguration *)self setValue:domainCopy forKey:v5 ofClass:objc_opt_class()];
}

- (void)setAllowsRemoteTraining:(BOOL)training
{
  trainingCopy = training;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v6 = NSStringFromSelector(sel_allowsRemoteTraining);
  [(RERelevanceEngineConfiguration *)self setValue:v5 forKey:v6 ofClass:objc_opt_class()];

  if (trainingCopy)
  {
    v7 = +[RERemoteTrainingClientListener sharedTrainingClientListener];
  }
}

- (void)setMetricsRecorder:(id)recorder
{
  recorderCopy = recorder;
  v5 = NSStringFromSelector(sel_metricsRecorder);
  [(RERelevanceEngineConfiguration *)self setValue:recorderCopy forKey:v5 ofClass:0];
}

- (void)setRankingPropertiesFileURL:(id)l
{
  lCopy = l;
  v5 = NSStringFromSelector(sel_rankingPropertiesFileURL);
  [(RERelevanceEngineConfiguration *)self setValue:lCopy forKey:v5 ofClass:objc_opt_class()];
}

- (void)setFeatureToConditionMap:(id)map
{
  v6 = [map copy];
  values = self->super._values;
  v5 = NSStringFromSelector(sel_featureToConditionMap);
  [(NSMutableDictionary *)values setObject:v6 forKeyedSubscript:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RERelevanceEngineConfiguration alloc];
  values = self->super._values;

  return [(RERelevanceEngineConfiguration *)v4 initWithDictionary:values];
}

+ (id)defaultUpNextConfiguration
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___REMutableRelevanceEngineConfiguration;
  v2 = objc_msgSendSuper2(&v5, sel_defaultUpNextConfiguration);
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)sampleUpNextConfiguration
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___REMutableRelevanceEngineConfiguration;
  v2 = objc_msgSendSuper2(&v5, sel_sampleUpNextConfiguration);
  v3 = [v2 mutableCopy];

  return v3;
}

@end