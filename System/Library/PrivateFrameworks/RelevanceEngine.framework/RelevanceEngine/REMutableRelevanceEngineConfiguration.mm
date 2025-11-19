@interface REMutableRelevanceEngineConfiguration
+ (id)defaultConfiguration;
+ (id)defaultUpNextConfiguration;
+ (id)sampleUpNextConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_indexOfInteractionWithName:(id)a3;
- (int64_t)_indexOfSectionWithName:(id)a3;
- (void)addInteractionWithDescriptor:(id)a3;
- (void)addSectionWithDescriptor:(id)a3;
- (void)insertInteractionWithDescriptor:(id)a3 atIndex:(unint64_t)a4;
- (void)insertSectionWithDescriptor:(id)a3 atIndex:(unint64_t)a4;
- (void)removeAllInteractions;
- (void)removeAllSections;
- (void)removeInteractionAtIndex:(unint64_t)a3;
- (void)removeSectionAtIndex:(unint64_t)a3;
- (void)removeSectionWithName:(id)a3;
- (void)setAllowsRemoteTraining:(BOOL)a3;
- (void)setBaseModelFileURL:(id)a3;
- (void)setDataSourceLoader:(id)a3;
- (void)setEngineQueue:(id)a3;
- (void)setFeatureToConditionMap:(id)a3;
- (void)setLocationManager:(id)a3;
- (void)setMetricsRecorder:(id)a3;
- (void)setModelFileURL:(id)a3;
- (void)setModelStorageBehavior:(unint64_t)a3;
- (void)setModelVersion:(unint64_t)a3;
- (void)setObserverQueue:(id)a3;
- (void)setPredictorManager:(id)a3;
- (void)setPreferenceDomain:(id)a3;
- (void)setPrimaryFeatures:(id)a3;
- (void)setRankingPropertiesFileURL:(id)a3;
- (void)setRankingTierFilteringRules:(id)a3;
- (void)setRelevanceProviderManagerLoader:(id)a3;
- (void)setTrainingBehavior:(unint64_t)a3;
@end

@implementation REMutableRelevanceEngineConfiguration

+ (id)defaultConfiguration
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___REMutableRelevanceEngineConfiguration;
  v2 = objc_msgSendSuper2(&v5, sel_defaultConfiguration);
  v3 = [v2 mutableCopy];

  return v3;
}

- (void)setEngineQueue:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_engineQueue);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:0];
}

- (void)setObserverQueue:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_observerQueue);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:0];
}

- (void)setModelFileURL:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_modelFileURL);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:objc_opt_class()];
}

- (void)setBaseModelFileURL:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_baseModelFileURL);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:objc_opt_class()];
}

- (void)setModelVersion:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v4 = NSStringFromSelector(sel_modelVersion);
  [(RERelevanceEngineConfiguration *)self setValue:v5 forKey:v4 ofClass:objc_opt_class()];
}

- (void)setDataSourceLoader:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_dataSourceLoader);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:objc_opt_class()];
}

- (void)setRelevanceProviderManagerLoader:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_relevanceProviderManagerLoader);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:objc_opt_class()];
}

- (void)setPredictorManager:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_predictorManager);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:objc_opt_class()];
}

- (void)setTrainingBehavior:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v4 = NSStringFromSelector(sel_trainingBehavior);
  [(RERelevanceEngineConfiguration *)self setValue:v5 forKey:v4 ofClass:objc_opt_class()];
}

- (void)setModelStorageBehavior:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v4 = NSStringFromSelector(sel_modelStorageBehavior);
  [(RERelevanceEngineConfiguration *)self setValue:v5 forKey:v4 ofClass:objc_opt_class()];
}

- (void)setLocationManager:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_locationManager);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:objc_opt_class()];
}

- (void)addSectionWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(RERelevanceEngineConfiguration *)self sectionDescriptors];
  -[REMutableRelevanceEngineConfiguration insertSectionWithDescriptor:atIndex:](self, "insertSectionWithDescriptor:atIndex:", v4, [v5 count]);
}

- (void)insertSectionWithDescriptor:(id)a3 atIndex:(unint64_t)a4
{
  v26 = a3;
  v6 = [v26 name];
  v7 = [v6 length];

  if (v7)
  {
    v14 = [v26 name];
    v15 = [(REMutableRelevanceEngineConfiguration *)self _indexOfSectionWithName:v14];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      values = self->super._values;
      v17 = NSStringFromSelector(sel_sectionDescriptors);
      v18 = [(NSMutableDictionary *)values objectForKeyedSubscript:v17];

      [v18 insertObject:v26 atIndex:a4];
    }

    else
    {
      v19 = *MEMORY[0x277CBE660];
      v18 = [v26 name];
      RERaiseInternalException(v19, @"Already contains section descriptor with name %@", v20, v21, v22, v23, v24, v25, v18);
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Section descriptor %@ must have name", v8, v9, v10, v11, v12, v13, v26);
  }
}

- (int64_t)_indexOfSectionWithName:(id)a3
{
  v4 = a3;
  v5 = [(RERelevanceEngineConfiguration *)self sectionDescriptors];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__REMutableRelevanceEngineConfiguration__indexOfSectionWithName___block_invoke;
  v9[3] = &unk_2785FBD50;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __65__REMutableRelevanceEngineConfiguration__indexOfSectionWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)removeSectionWithName:(id)a3
{
  v4 = [(REMutableRelevanceEngineConfiguration *)self _indexOfSectionWithName:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(REMutableRelevanceEngineConfiguration *)self removeSectionAtIndex:v4];
  }
}

- (void)removeSectionAtIndex:(unint64_t)a3
{
  values = self->super._values;
  v5 = NSStringFromSelector(sel_sectionDescriptors);
  v6 = [(NSMutableDictionary *)values objectForKeyedSubscript:v5];

  [v6 removeObjectAtIndex:a3];
}

- (void)removeAllSections
{
  for (i = self; ; self = i)
  {
    v3 = [(RERelevanceEngineConfiguration *)self sectionDescriptors];
    v4 = [v3 count];

    if (!v4)
    {
      break;
    }

    [(REMutableRelevanceEngineConfiguration *)i removeSectionAtIndex:0];
  }
}

- (void)addInteractionWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(RERelevanceEngineConfiguration *)self interactionDescriptors];
  -[REMutableRelevanceEngineConfiguration insertInteractionWithDescriptor:atIndex:](self, "insertInteractionWithDescriptor:atIndex:", v4, [v5 count]);
}

- (void)insertInteractionWithDescriptor:(id)a3 atIndex:(unint64_t)a4
{
  v26 = a3;
  v6 = [v26 name];
  v7 = [v6 length];

  if (v7)
  {
    v14 = [v26 name];
    v15 = [(REMutableRelevanceEngineConfiguration *)self _indexOfInteractionWithName:v14];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      values = self->super._values;
      v17 = NSStringFromSelector(sel_interactionDescriptors);
      v18 = [(NSMutableDictionary *)values objectForKeyedSubscript:v17];

      [v18 insertObject:v26 atIndex:a4];
    }

    else
    {
      v19 = *MEMORY[0x277CBE660];
      v18 = [v26 name];
      RERaiseInternalException(v19, @"Already contains interaction descriptor with name %@", v20, v21, v22, v23, v24, v25, v18);
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Interaction descriptor %@ must have name", v8, v9, v10, v11, v12, v13, v26);
  }
}

- (int64_t)_indexOfInteractionWithName:(id)a3
{
  v4 = a3;
  v5 = [(RERelevanceEngineConfiguration *)self interactionDescriptors];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__REMutableRelevanceEngineConfiguration__indexOfInteractionWithName___block_invoke;
  v9[3] = &unk_2785FBD78;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __69__REMutableRelevanceEngineConfiguration__indexOfInteractionWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)removeInteractionAtIndex:(unint64_t)a3
{
  values = self->super._values;
  v5 = NSStringFromSelector(sel_interactionDescriptors);
  v6 = [(NSMutableDictionary *)values objectForKeyedSubscript:v5];

  [v6 removeObjectAtIndex:a3];
}

- (void)removeAllInteractions
{
  for (i = self; ; self = i)
  {
    v3 = [(RERelevanceEngineConfiguration *)self interactionDescriptors];
    v4 = [v3 count];

    if (!v4)
    {
      break;
    }

    [(REMutableRelevanceEngineConfiguration *)i removeInteractionAtIndex:0];
  }
}

- (void)setRankingTierFilteringRules:(id)a3
{
  v6 = [a3 copy];
  values = self->super._values;
  v5 = NSStringFromSelector(sel_rankingTierFilteringRules);
  [(NSMutableDictionary *)values setObject:v6 forKeyedSubscript:v5];
}

- (void)setPrimaryFeatures:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_primaryFeatures);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:objc_opt_class()];
}

- (void)setPreferenceDomain:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_preferenceDomain);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:objc_opt_class()];
}

- (void)setAllowsRemoteTraining:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v6 = NSStringFromSelector(sel_allowsRemoteTraining);
  [(RERelevanceEngineConfiguration *)self setValue:v5 forKey:v6 ofClass:objc_opt_class()];

  if (v3)
  {
    v7 = +[RERemoteTrainingClientListener sharedTrainingClientListener];
  }
}

- (void)setMetricsRecorder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_metricsRecorder);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:0];
}

- (void)setRankingPropertiesFileURL:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_rankingPropertiesFileURL);
  [(RERelevanceEngineConfiguration *)self setValue:v4 forKey:v5 ofClass:objc_opt_class()];
}

- (void)setFeatureToConditionMap:(id)a3
{
  v6 = [a3 copy];
  values = self->super._values;
  v5 = NSStringFromSelector(sel_featureToConditionMap);
  [(NSMutableDictionary *)values setObject:v6 forKeyedSubscript:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RERelevanceEngineConfiguration alloc];
  values = self->super._values;

  return [(RERelevanceEngineConfiguration *)v4 initWithDictionary:values];
}

+ (id)defaultUpNextConfiguration
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___REMutableRelevanceEngineConfiguration;
  v2 = objc_msgSendSuper2(&v5, sel_defaultUpNextConfiguration);
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)sampleUpNextConfiguration
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___REMutableRelevanceEngineConfiguration;
  v2 = objc_msgSendSuper2(&v5, sel_sampleUpNextConfiguration);
  v3 = [v2 mutableCopy];

  return v3;
}

@end