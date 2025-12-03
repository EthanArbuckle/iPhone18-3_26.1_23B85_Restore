@interface RERelevanceEngineConfiguration
+ (id)_defaultModelFileURL;
+ (id)defaultConfiguration;
+ (id)defaultUpNextConfiguration;
+ (id)sampleUpNextConfiguration;
- (BOOL)allowsDiagnosticExtension;
- (BOOL)allowsRemoteTraining;
- (BOOL)allowsUpdatingModelFile;
- (BOOL)createDefaultRelevanceProviders;
- (BOOL)disableAutomaticContentManagement;
- (BOOL)elementsHiddenByDefault;
- (BOOL)ignoreDeviceLockState;
- (BOOL)ignoresInstalledApplications;
- (BOOL)isEqual:(id)equal;
- (BOOL)wantsBackup;
- (BOOL)wantsImmutableContent;
- (NSArray)interactionDescriptors;
- (NSArray)sectionDescriptors;
- (NSDictionary)featureToConditionMap;
- (NSDictionary)rankingTierFilteringRules;
- (NSString)preferenceDomain;
- (NSURL)baseModelFileURL;
- (NSURL)modelFileURL;
- (NSURL)rankingPropertiesFileURL;
- (OS_dispatch_queue)engineQueue;
- (OS_dispatch_queue)observerQueue;
- (REDataSourceLoader)dataSourceLoader;
- (REFeatureSet)primaryFeatures;
- (RELocationManager)locationManager;
- (REPredictorManager)predictorManager;
- (RERelevanceEngineConfiguration)initWithDictionary:(id)dictionary;
- (RERelevanceEngineMetricsRecorder)metricsRecorder;
- (RERelevanceProviderManagerLoader)relevanceProviderManagerLoader;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key ofClass:(Class)class defaultValue:(id)value;
- (unint64_t)modelStorageBehavior;
- (unint64_t)modelVersion;
- (unint64_t)trainingBehavior;
- (void)setValue:(id)value forKey:(id)key ofClass:(Class)class;
@end

@implementation RERelevanceEngineConfiguration

+ (id)defaultConfiguration
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(REInteractionDescriptor);
  [(REInteractionDescriptor *)v2 setName:@"tap"];
  v3 = NSStringFromSelector(sel_sectionDescriptors);
  v13[0] = v3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [RESectionDescriptor defaultSectionDescriptorForIdentifier:@"defaultSectionIdentifier"];
  v6 = [v4 arrayWithObject:v5];
  v14[0] = v6;
  v7 = NSStringFromSelector(sel_interactionDescriptors);
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:v2];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [[RERelevanceEngineConfiguration alloc] initWithDictionary:v9];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_defaultModelFileURL
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/RelevanceEngine/Model/model.mdl"];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  return v4;
}

- (RERelevanceEngineConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = RERelevanceEngineConfiguration;
  v5 = [(RERelevanceEngineConfiguration *)&v20 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    values = v5->_values;
    v5->_values = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    v9 = v5->_values;
    v10 = NSStringFromSelector(sel_sectionDescriptors);
    [(NSMutableDictionary *)v9 setObject:array forKeyedSubscript:v10];

    array2 = [MEMORY[0x277CBEB18] array];
    v12 = v5->_values;
    v13 = NSStringFromSelector(sel_interactionDescriptors);
    [(NSMutableDictionary *)v12 setObject:array2 forKeyedSubscript:v13];

    _defaultModelFileURL = [objc_opt_class() _defaultModelFileURL];
    v15 = v5->_values;
    v16 = NSStringFromSelector(sel_baseModelFileURL);
    [(NSMutableDictionary *)v15 setObject:_defaultModelFileURL forKeyedSubscript:v16];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__RERelevanceEngineConfiguration_initWithDictionary___block_invoke;
    v18[3] = &unk_2785F9940;
    v19 = v5;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v18];
  }

  return v5;
}

void __53__RERelevanceEngineConfiguration_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CBEB18];
LABEL_5:
    v7 = [[v6 alloc] initWithArray:v10 copyItems:1];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CBEA60];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CBEB38];
LABEL_13:
    v7 = [[v9 alloc] initWithDictionary:v10 copyItems:1];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CBEAC0];
    goto LABEL_13;
  }

  if ([v10 conformsToProtocol:&unk_283BBE6F8])
  {
    v7 = [v10 copy];
  }

  else
  {
    v7 = v10;
  }

LABEL_6:
  v8 = v7;

  [*(*(a1 + 32) + 8) setObject:v8 forKeyedSubscript:v5];
}

- (id)valueForKey:(id)key ofClass:(Class)class defaultValue:(id)value
{
  valueCopy = value;
  v9 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:key];
  if (class && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = valueCopy;
  }

  v11 = v10;

  return v10;
}

- (void)setValue:(id)value forKey:(id)key ofClass:(Class)class
{
  valueCopy = value;
  keyCopy = key;
  if (class && (objc_opt_isKindOfClass() & 1) == 0)
  {

    valueCopy = 0;
  }

  if (setValue_forKey_ofClass__onceToken != -1)
  {
    [RERelevanceEngineConfiguration setValue:forKey:ofClass:];
  }

  v9 = [setValue_forKey_ofClass__EmptyConfig valueForKey:keyCopy];
  v10 = [v9 isEqual:valueCopy];

  if (v10)
  {

    v11 = 0;
  }

  else
  {
    v11 = valueCopy;
  }

  v13 = v11;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

uint64_t __58__RERelevanceEngineConfiguration_setValue_forKey_ofClass___block_invoke()
{
  v0 = [[RERelevanceEngineConfiguration alloc] initWithDictionary:0];
  v1 = setValue_forKey_ofClass__EmptyConfig;
  setValue_forKey_ofClass__EmptyConfig = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      values = self->_values;
      v6 = equalCopy->_values;
      v7 = values;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSMutableDictionary *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [REMutableRelevanceEngineConfiguration alloc];
  values = self->_values;

  return [(RERelevanceEngineConfiguration *)v4 initWithDictionary:values];
}

- (OS_dispatch_queue)engineQueue
{
  v3 = NSStringFromSelector(sel_engineQueue);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:0 defaultValue:0];

  return v4;
}

- (OS_dispatch_queue)observerQueue
{
  v3 = NSStringFromSelector(sel_observerQueue);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:0 defaultValue:MEMORY[0x277D85CD0]];

  return v4;
}

- (NSURL)modelFileURL
{
  v3 = NSStringFromSelector(sel_modelFileURL);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (NSURL)baseModelFileURL
{
  v3 = NSStringFromSelector(sel_baseModelFileURL);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (unint64_t)modelVersion
{
  v3 = NSStringFromSelector(sel_modelVersion);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:&unk_283BBD4D0];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)allowsUpdatingModelFile
{
  v3 = NSStringFromSelector(sel_allowsUpdatingModelFile);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC38]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (REDataSourceLoader)dataSourceLoader
{
  v3 = NSStringFromSelector(sel_dataSourceLoader);
  v4 = objc_opt_class();
  v5 = +[REDataSourceLoader defaultDataSourceLoader];
  v6 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:v4 defaultValue:v5];

  return v6;
}

- (RERelevanceProviderManagerLoader)relevanceProviderManagerLoader
{
  v3 = NSStringFromSelector(sel_relevanceProviderManagerLoader);
  v4 = objc_opt_class();
  v5 = +[RERelevanceProviderManagerLoader disabledRelevanceProviderManagerLoader];
  v6 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:v4 defaultValue:v5];

  return v6;
}

- (REPredictorManager)predictorManager
{
  v3 = NSStringFromSelector(sel_predictorManager);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (unint64_t)trainingBehavior
{
  v3 = NSStringFromSelector(sel_trainingBehavior);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:&unk_283BBD4E8];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)modelStorageBehavior
{
  v3 = NSStringFromSelector(sel_modelStorageBehavior);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:&unk_283BBD500];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSArray)sectionDescriptors
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = NSStringFromSelector(sel_sectionDescriptors);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEBF8]];
  v6 = [v3 initWithArray:v5 copyItems:1];

  return v6;
}

- (NSArray)interactionDescriptors
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = NSStringFromSelector(sel_interactionDescriptors);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEBF8]];
  v6 = [v3 initWithArray:v5 copyItems:1];

  return v6;
}

- (NSDictionary)rankingTierFilteringRules
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = NSStringFromSelector(sel_rankingTierFilteringRules);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC10]];
  v6 = [v3 initWithDictionary:v5 copyItems:1];

  return v6;
}

- (RELocationManager)locationManager
{
  v3 = NSStringFromSelector(sel_locationManager);
  v4 = objc_opt_class();
  v5 = +[RELocationManager simulatedLocationManager];
  v6 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:v4 defaultValue:v5];

  return v6;
}

- (REFeatureSet)primaryFeatures
{
  v3 = NSStringFromSelector(sel_primaryFeatures);
  v4 = objc_opt_class();
  v5 = +[REFeatureSet featureSet];
  v6 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:v4 defaultValue:v5];

  return v6;
}

- (BOOL)wantsImmutableContent
{
  v3 = NSStringFromSelector(sel_wantsImmutableContent);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (NSString)preferenceDomain
{
  v3 = NSStringFromSelector(sel_preferenceDomain);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (BOOL)allowsRemoteTraining
{
  v3 = NSStringFromSelector(sel_allowsRemoteTraining);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)wantsBackup
{
  v3 = NSStringFromSelector(sel_wantsBackup);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)ignoreDeviceLockState
{
  v3 = NSStringFromSelector(sel_ignoreDeviceLockState);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)allowsDiagnosticExtension
{
  v3 = NSStringFromSelector(sel_allowsDiagnosticExtension);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (RERelevanceEngineMetricsRecorder)metricsRecorder
{
  v3 = NSStringFromSelector(sel_metricsRecorder);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:0 defaultValue:0];

  return v4;
}

- (BOOL)ignoresInstalledApplications
{
  v3 = NSStringFromSelector(sel_ignoresInstalledApplications);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)createDefaultRelevanceProviders
{
  v3 = NSStringFromSelector(sel_createDefaultRelevanceProviders);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC38]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)disableAutomaticContentManagement
{
  if (disableAutomaticContentManagement_onceToken != -1)
  {
    [RERelevanceEngineConfiguration disableAutomaticContentManagement];
  }

  if (disableAutomaticContentManagement_isHealthProcess)
  {
    return 1;
  }

  v4 = NSStringFromSelector(sel_disableAutomaticContentManagement);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

void __67__RERelevanceEngineConfiguration_disableAutomaticContentManagement__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  disableAutomaticContentManagement_isHealthProcess = [v0 isEqual:@"com.apple.healthappd"];
}

- (NSURL)rankingPropertiesFileURL
{
  v3 = NSStringFromSelector(sel_rankingPropertiesFileURL);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (NSDictionary)featureToConditionMap
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = NSStringFromSelector(sel_featureToConditionMap);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC10]];
  v6 = [v3 initWithDictionary:v5 copyItems:1];

  return v6;
}

- (BOOL)elementsHiddenByDefault
{
  v3 = NSStringFromSelector(sel_elementsHiddenByDefault);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)defaultUpNextConfiguration
{
  if (defaultUpNextConfiguration_onceToken != -1)
  {
    +[RERelevanceEngineConfiguration(REUpNextConfiguration) defaultUpNextConfiguration];
  }

  v3 = defaultUpNextConfiguration_defaultConfiguration;

  return v3;
}

void __83__RERelevanceEngineConfiguration_REUpNextConfiguration__defaultUpNextConfiguration__block_invoke()
{
  v379[1] = *MEMORY[0x277D85DE8];
  v0 = NSHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Library/RelevanceEngine/Model"];

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:0];

  v238 = v1;
  v230 = [v1 stringByAppendingPathComponent:@"model.mdl"];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [RESectionDescriptor defaultUpNextSectionDescriptorForIdentifier:@"allDaySectionIdentifier"];
  [v3 addObject:v4];

  v5 = [RESectionDescriptor defaultUpNextSectionDescriptorForIdentifier:@"defaultSectionIdentifier"];
  [v3 addObject:v5];

  v6 = [RESectionDescriptor defaultUpNextSectionDescriptorForIdentifier:@"tomorrowSectionIdentifier"];
  [v3 addObject:v6];

  v7 = [RESectionDescriptor defaultUpNextSectionDescriptorForIdentifier:@"upcomingSectionIdentifier"];
  v232 = v3;
  [v3 addObject:v7];

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = objc_alloc_init(REInteractionDescriptor);
  [(REInteractionDescriptor *)v9 setName:@"tap"];
  LODWORD(v10) = 4.0;
  [(REInteractionDescriptor *)v9 setWeight:v10];
  v237 = v9;
  [v8 addObject:v9];
  v11 = objc_alloc_init(REInteractionDescriptor);
  [(REInteractionDescriptor *)v11 setName:@"app-action"];
  LODWORD(v12) = 1.5;
  [(REInteractionDescriptor *)v11 setWeight:v12];
  [(REInteractionDescriptor *)v11 setEnableExploreExploit:0];
  v13 = +[REFeature dataSourceFeature];
  [(REInteractionDescriptor *)v11 setIdentificationFeature:v13];

  v236 = v11;
  [v8 addObject:v11];
  v14 = objc_alloc_init(REInteractionDescriptor);
  [(REInteractionDescriptor *)v14 setName:@"action"];
  LODWORD(v15) = 1.0;
  [(REInteractionDescriptor *)v14 setWeight:v15];
  [(REInteractionDescriptor *)v14 setEnableExploreExploit:0];
  v16 = +[REFeature dataSourceFeature];
  [(REInteractionDescriptor *)v14 setIdentificationFeature:v16];

  v233 = v8;
  v235 = v14;
  [v8 addObject:v14];
  v17 = +[REFeatureTransformer hashTransform];
  v18 = +[REFeature dataSourceFeature];
  v379[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v379 count:1];
  v20 = [REFeature transformedFeatureWithTransformer:v17 features:v19];

  v21 = [REFeatureTransformer maskTransformWithWidth:9];
  v378 = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v378 count:1];
  v305 = [REFeature transformedFeatureWithTransformer:v21 features:v22];

  v23 = [REFeatureTransformer maskTransformWithWidth:9];
  v24 = +[REFeature itemIdentifierFeature];
  v377 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v377 count:1];
  v26 = [REFeature transformedFeatureWithTransformer:v23 features:v25];

  v376[0] = v305;
  v376[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v376 count:2];
  v304 = [REFeature crossedFeatureWithFeatures:v27];

  v28 = [REFeatureValue featureValueWithDouble:0.0];
  v29 = [REFeatureValue featureValueWithDouble:1.0];
  v30 = [REFeatureTransformer bucketTransformerWithCount:10 minValue:v28 maxValue:v29];

  v31 = [REFeatureValue featureValueWithDouble:0.0];
  v32 = [REFeatureValue featureValueWithDouble:1.0];
  v33 = [REFeatureTransformer bucketTransformerWithCount:25 minValue:v31 maxValue:v32];

  v34 = +[REFeature dateFeature];
  v375 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v375 count:1];
  v234 = v33;
  v302 = [REFeature transformedFeatureWithTransformer:v33 features:v35];

  v36 = +[REFeature locationFeature];
  v374 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v374 count:1];
  v301 = [REFeature transformedFeatureWithTransformer:v30 features:v37];

  v38 = +[REFeature geofenceFeature];
  v373 = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v373 count:1];
  v300 = [REFeature transformedFeatureWithTransformer:v30 features:v39];

  v40 = +[REFeature priorityFeature];
  v372 = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v372 count:1];
  v303 = v30;
  v299 = [REFeature transformedFeatureWithTransformer:v30 features:v41];

  v42 = +[REFeatureTransformer hashTransform];
  v43 = +[REFeature locationOfInterestFeature];
  v371 = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v371 count:1];
  v45 = [REFeature transformedFeatureWithTransformer:v42 features:v44];

  v46 = [REFeatureTransformer maskTransformWithWidth:9];
  v231 = v45;
  v370 = v45;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v370 count:1];
  v298 = [REFeature transformedFeatureWithTransformer:v46 features:v47];

  v48 = [REFeatureTransformer maskTransformWithWidth:5];
  v49 = +[REFeature knownLocationOfInterestFeature];
  v369 = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v369 count:1];
  v297 = [REFeature transformedFeatureWithTransformer:v48 features:v50];

  v51 = +[REFeature appUsageFeature];
  v368 = v51;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v368 count:1];
  v296 = [REFeature transformedFeatureWithTransformer:v30 features:v52];

  v53 = [REFeatureValue featureValueWithDouble:0.0];
  v54 = [REFeatureValue featureValueWithDouble:1.0];
  v55 = [REFeatureTransformer bucketTransformerWithCount:24 minValue:v53 maxValue:v54];
  v56 = +[REFeature currentTimeFeature];
  v367 = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v367 count:1];
  v295 = [REFeature transformedFeatureWithTransformer:v55 features:v57];

  v58 = [REFeatureValue featureValueWithDouble:0.0];
  v59 = [REFeatureValue featureValueWithDouble:1.0];
  v60 = [REFeatureTransformer bucketTransformerWithCount:8 minValue:v58 maxValue:v59];
  v61 = +[REFeature currentTimeFeature];
  v366 = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v366 count:1];
  v294 = [REFeature transformedFeatureWithTransformer:v60 features:v62];

  v63 = [REFeatureValue featureValueWithDouble:0.0];
  v64 = [REFeatureValue featureValueWithDouble:1.0];
  v65 = [REFeatureTransformer bucketTransformerWithCount:2 minValue:v63 maxValue:v64];
  v66 = +[REFeature currentTimeFeature];
  v365 = v66;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v365 count:1];
  v293 = [REFeature transformedFeatureWithTransformer:v65 features:v67];

  v68 = [REFeatureTransformer maskTransformWithWidth:3];
  v69 = +[REFeature dayOfWeekFeature];
  v364 = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v364 count:1];
  v292 = [REFeature transformedFeatureWithTransformer:v68 features:v70];

  v71 = [REFeatureTransformer maskTransformWithWidth:1];
  v72 = +[REFeature isWeekendFeature];
  v363 = v72;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v363 count:1];
  v291 = [REFeature transformedFeatureWithTransformer:v71 features:v73];

  v362[0] = v305;
  v362[1] = v302;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v362 count:2];
  v290 = [REFeature crossedFeatureWithFeatures:v74];

  v361[0] = v305;
  v361[1] = v301;
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v361 count:2];
  v289 = [REFeature crossedFeatureWithFeatures:v75];

  v360[0] = v305;
  v360[1] = v300;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v360 count:2];
  v288 = [REFeature crossedFeatureWithFeatures:v76];

  v359[0] = v305;
  v359[1] = v299;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v359 count:2];
  v287 = [REFeature crossedFeatureWithFeatures:v77];

  v358[0] = v304;
  v358[1] = v302;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v358 count:2];
  v286 = [REFeature crossedFeatureWithFeatures:v78];

  v357[0] = v304;
  v357[1] = v301;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v357 count:2];
  v285 = [REFeature crossedFeatureWithFeatures:v79];

  v356[0] = v304;
  v356[1] = v300;
  v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v356 count:2];
  v284 = [REFeature crossedFeatureWithFeatures:v80];

  v355[0] = v304;
  v355[1] = v299;
  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v355 count:2];
  v283 = [REFeature crossedFeatureWithFeatures:v81];

  v354[0] = v305;
  v354[1] = v296;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v354 count:2];
  v282 = [REFeature crossedFeatureWithFeatures:v82];

  v353[0] = v305;
  v353[1] = v295;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v353 count:2];
  v281 = [REFeature crossedFeatureWithFeatures:v83];

  v352[0] = v305;
  v352[1] = v294;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v352 count:2];
  v280 = [REFeature crossedFeatureWithFeatures:v84];

  v351[0] = v305;
  v351[1] = v293;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v351 count:2];
  v279 = [REFeature crossedFeatureWithFeatures:v85];

  v350[0] = v305;
  v350[1] = v292;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v350 count:2];
  v278 = [REFeature crossedFeatureWithFeatures:v86];

  v349[0] = v305;
  v349[1] = v291;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v349 count:2];
  v277 = [REFeature crossedFeatureWithFeatures:v87];

  v348[0] = v304;
  v348[1] = v295;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v348 count:2];
  v276 = [REFeature crossedFeatureWithFeatures:v88];

  v347[0] = v304;
  v347[1] = v294;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v347 count:2];
  v275 = [REFeature crossedFeatureWithFeatures:v89];

  v346[0] = v304;
  v346[1] = v293;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v346 count:2];
  v274 = [REFeature crossedFeatureWithFeatures:v90];

  v345[0] = v304;
  v345[1] = v292;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v345 count:2];
  v273 = [REFeature crossedFeatureWithFeatures:v91];

  v344[0] = v304;
  v344[1] = v291;
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v344 count:2];
  v272 = [REFeature crossedFeatureWithFeatures:v92];

  v343[0] = v305;
  v343[1] = v298;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v343 count:2];
  v271 = [REFeature crossedFeatureWithFeatures:v93];

  v342[0] = v305;
  v342[1] = v297;
  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v342 count:2];
  v270 = [REFeature crossedFeatureWithFeatures:v94];

  v341[0] = v304;
  v341[1] = v298;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v341 count:2];
  v269 = [REFeature crossedFeatureWithFeatures:v95];

  v340[0] = v304;
  v340[1] = v297;
  v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v340 count:2];
  v268 = [REFeature crossedFeatureWithFeatures:v96];

  v97 = +[REFeature recentSiriActionFeature];
  v339 = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:&v339 count:1];
  v267 = [REFeature transformedFeatureWithTransformer:v303 features:v98];

  v99 = [REFeatureValue featureValueWithDouble:0.5];
  v100 = [REFeatureTransformer binaryTransformerWithThreshold:v99];
  v101 = +[REFeature siriActionDailyAveragePerformedCountFeature];
  v338 = v101;
  v102 = [MEMORY[0x277CBEA60] arrayWithObjects:&v338 count:1];
  v266 = [REFeature transformedFeatureWithTransformer:v100 features:v102];

  v103 = [REFeatureTransformer customCategoricalTransformerWithName:@"multipleBy7" block:&__block_literal_global_43_1];
  v104 = +[REFeature siriActionDailyAveragePerformedCountFeature];
  v337 = v104;
  v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v337 count:1];
  v106 = [REFeature transformedFeatureWithTransformer:v103 features:v105];

  v107 = [REFeatureTransformer maskTransformWithWidth:5];
  v336 = v106;
  v108 = [MEMORY[0x277CBEA60] arrayWithObjects:&v336 count:1];
  v265 = [REFeature transformedFeatureWithTransformer:v107 features:v108];

  v335[0] = v265;
  v335[1] = v305;
  v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v335 count:2];
  v264 = [REFeature crossedFeatureWithFeatures:v109];

  v110 = [REFeatureTransformer bucketTransformerWithBitWidth:3];
  v111 = +[REFeature siriActionPerformedCountFeature];
  v334 = v111;
  v112 = [MEMORY[0x277CBEA60] arrayWithObjects:&v334 count:1];
  v263 = [REFeature transformedFeatureWithTransformer:v110 features:v112];

  v333[0] = v263;
  v333[1] = v305;
  v113 = [MEMORY[0x277CBEA60] arrayWithObjects:v333 count:2];
  v262 = [REFeature crossedFeatureWithFeatures:v113];

  v114 = [REFeatureTransformer customCategoricalTransformerWithName:@"moreThanDailyAverage" featureCount:2 transformation:&__block_literal_global_49];
  v115 = +[REFeature siriActionPerformedCountFeature];
  v332[0] = v115;
  v116 = +[REFeature siriActionDailyAveragePerformedCountFeature];
  v332[1] = v116;
  v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v332 count:2];
  v118 = [REFeature transformedFeatureWithTransformer:v114 features:v117];

  v119 = [REFeatureTransformer maskTransformWithWidth:1];
  v261 = [v118 featureByUsingTransformer:v119];

  v331[0] = v261;
  v331[1] = v305;
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v331 count:2];
  v260 = [REFeature crossedFeatureWithFeatures:v120];

  v259 = +[REFeature currentlyPlayingFromAppFeature];
  v330[0] = v259;
  v330[1] = v305;
  v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v330 count:2];
  v258 = [REFeature crossedFeatureWithFeatures:v121];

  v257 = +[REFeature activeWorkoutFeature];
  v329[0] = v257;
  v329[1] = v305;
  v122 = [MEMORY[0x277CBEA60] arrayWithObjects:v329 count:2];
  v256 = [REFeature crossedFeatureWithFeatures:v122];

  v123 = [REFeatureValue featureValueWithDouble:0.0];
  v124 = [REFeatureValue featureValueWithDouble:3.0];
  v125 = [REFeatureTransformer bucketTransformerWithCount:18 minValue:v123 maxValue:v124];

  v126 = +[REFeature activeEnergyCompletionFeature];
  v255 = [v126 featureByUsingTransformer:v125];

  v127 = +[REFeature exerciseTimeCompletionFeature];
  v254 = [v127 featureByUsingTransformer:v125];

  v128 = +[REFeature standHourCompletionFeature];
  v229 = v125;
  v253 = [v128 featureByUsingTransformer:v125];

  v328[0] = v255;
  v328[1] = v305;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v328 count:2];
  v252 = [REFeature crossedFeatureWithFeatures:v129];

  v130 = [REFeatureTransformer customCategoricalTransformerWithName:@"ringClosed" featureCount:1 transformation:&__block_literal_global_54];
  v131 = +[REFeature activeEnergyCompletionFeature];
  v132 = [v131 featureByUsingTransformer:v130];
  v133 = [REFeatureTransformer maskTransformWithWidth:1];
  v251 = [v132 featureByUsingTransformer:v133];

  v134 = +[REFeature exerciseTimeCompletionFeature];
  v135 = [v134 featureByUsingTransformer:v130];
  v136 = [REFeatureTransformer maskTransformWithWidth:1];
  v250 = [v135 featureByUsingTransformer:v136];

  v137 = +[REFeature standHourCompletionFeature];
  v228 = v130;
  v138 = [v137 featureByUsingTransformer:v130];
  v139 = [REFeatureTransformer maskTransformWithWidth:1];
  v249 = [v138 featureByUsingTransformer:v139];

  v327[0] = v251;
  v327[1] = v305;
  v140 = [MEMORY[0x277CBEA60] arrayWithObjects:v327 count:2];
  v248 = [REFeature crossedFeatureWithFeatures:v140];

  v141 = [REFeatureTransformer customCategoricalTransformerWithName:@"allRingsClosed" featureCount:3 transformation:&__block_literal_global_59_0];
  v142 = +[REFeature activeEnergyCompletionFeature];
  v326[0] = v142;
  v143 = +[REFeature exerciseTimeCompletionFeature];
  v326[1] = v143;
  v144 = +[REFeature standHourCompletionFeature];
  v326[2] = v144;
  v145 = [MEMORY[0x277CBEA60] arrayWithObjects:v326 count:3];
  v146 = [REFeature transformedFeatureWithTransformer:v141 features:v145];

  v147 = [REFeatureTransformer maskTransformWithWidth:1];
  v247 = [v146 featureByUsingTransformer:v147];

  v325[0] = v247;
  v325[1] = v305;
  v148 = [MEMORY[0x277CBEA60] arrayWithObjects:v325 count:2];
  v246 = [REFeature crossedFeatureWithFeatures:v148];

  v149 = [REFeatureTransformer customCategoricalTransformerWithName:@"multipleBy7" block:&__block_literal_global_61];
  v150 = +[REFeature dailyAverageWorkoutCountFeature];
  v324 = v150;
  v151 = [MEMORY[0x277CBEA60] arrayWithObjects:&v324 count:1];
  v152 = [REFeature transformedFeatureWithTransformer:v149 features:v151];

  v153 = [REFeatureTransformer maskTransformWithWidth:3];
  v323 = v152;
  v154 = [MEMORY[0x277CBEA60] arrayWithObjects:&v323 count:1];
  v245 = [REFeature transformedFeatureWithTransformer:v153 features:v154];

  v322[0] = v245;
  v322[1] = v305;
  v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v322 count:2];
  v244 = [REFeature crossedFeatureWithFeatures:v155];

  v156 = [REFeatureTransformer bucketTransformerWithBitWidth:3];
  v157 = +[REFeature performedWorkoutCountFeature];
  v321 = v157;
  v158 = [MEMORY[0x277CBEA60] arrayWithObjects:&v321 count:1];
  v159 = [REFeature transformedFeatureWithTransformer:v156 features:v158];

  v320[0] = v159;
  v320[1] = v305;
  v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v320 count:2];
  v243 = [REFeature crossedFeatureWithFeatures:v160];

  v161 = [REFeatureValue featureValueWithDouble:0.0];
  v162 = [REFeatureValue featureValueWithDouble:1.0];
  v163 = [REFeatureTransformer bucketTransformerWithCount:15 minValue:v161 maxValue:v162];

  v164 = +[REFeature sentimentAnalysisFeature];
  v319 = v164;
  v165 = [MEMORY[0x277CBEA60] arrayWithObjects:&v319 count:1];
  v166 = [REFeature transformedFeatureWithTransformer:v163 features:v165];

  v167 = +[REFeature negativeSentimentAnalysisFeature];
  v318 = v167;
  v168 = [MEMORY[0x277CBEA60] arrayWithObjects:&v318 count:1];
  v169 = [REFeature transformedFeatureWithTransformer:v163 features:v168];

  v170 = +[REFeature sentimentAnalysisCertaintyFeature];
  v317 = v170;
  v171 = [MEMORY[0x277CBEA60] arrayWithObjects:&v317 count:1];
  v226 = v163;
  v172 = [REFeature transformedFeatureWithTransformer:v163 features:v171];

  v173 = +[REFeature coreBehaviorTimePredictionFeature];
  v242 = [v173 featureByUsingTransformer:v303];

  v174 = +[REFeature coreBehaviorTimeCoarsePredictionFeature];
  v241 = [v174 featureByUsingTransformer:v303];

  v175 = +[REFeature coreBehaviorDayPredictionFeature];
  v240 = [v175 featureByUsingTransformer:v303];

  v176 = +[REFeature coreBehaviorDayCoarsePredictionFeature];
  v239 = [v176 featureByUsingTransformer:v303];

  v177 = +[REFeature coreBehaviorLocationPredictionFeature];
  v178 = [v177 featureByUsingTransformer:v303];

  v179 = +[REFeature coreBehaviorLocationCoarsePredictionFeature];
  v180 = [v179 featureByUsingTransformer:v303];

  v217 = [REFeatureSet alloc];
  v316[0] = v305;
  v316[1] = v304;
  v316[2] = v302;
  v316[3] = v301;
  v316[4] = v300;
  v316[5] = v299;
  v316[6] = v298;
  v316[7] = v297;
  v316[8] = v290;
  v316[9] = v289;
  v316[10] = v288;
  v316[11] = v287;
  v316[12] = v286;
  v316[13] = v285;
  v316[14] = v284;
  v316[15] = v283;
  v220 = +[REFeature interactionFeature];
  v316[16] = v220;
  v219 = +[REFeature noContentFeature];
  v316[17] = v219;
  v218 = +[REFeature conditionalFeature];
  v316[18] = v218;
  v316[19] = v295;
  v316[20] = v294;
  v316[21] = v293;
  v316[22] = v292;
  v316[23] = v291;
  v316[24] = v281;
  v316[25] = v280;
  v316[26] = v279;
  v316[27] = v278;
  v316[28] = v277;
  v316[29] = v276;
  v316[30] = v275;
  v316[31] = v274;
  v316[32] = v273;
  v316[33] = v272;
  v316[34] = v271;
  v316[35] = v270;
  v316[36] = v269;
  v316[37] = v268;
  v316[38] = v296;
  v316[39] = v282;
  v216 = +[REFeature siriDomainFeature];
  v316[40] = v216;
  v215 = +[REFeature dailyRoutineFeature];
  v316[41] = v215;
  v214 = +[REFeature isInDailyRoutineFeature];
  v316[42] = v214;
  v213 = +[REFeature sessionFeature];
  v316[43] = v213;
  v316[44] = v267;
  v316[45] = v266;
  v316[46] = v265;
  v316[47] = v263;
  v316[48] = v261;
  v316[49] = v264;
  v316[50] = v262;
  v316[51] = v260;
  v224 = v169;
  v225 = v166;
  v316[52] = v166;
  v316[53] = v169;
  v223 = v172;
  v316[54] = v172;
  v212 = +[REFeature isSiriActionFeature];
  v316[55] = v212;
  v211 = +[REFeature isDeveloperDonationFeature];
  v316[56] = v211;
  v210 = +[REFeature nowPlayingStateFeature];
  v316[57] = v210;
  v316[58] = v259;
  v316[59] = v258;
  v316[60] = v257;
  v316[61] = v256;
  v209 = +[REFeature workoutStateFeature];
  v316[62] = v209;
  v316[63] = v245;
  v316[64] = v244;
  v227 = v159;
  v316[65] = v159;
  v316[66] = v243;
  v181 = +[REFeature deviceMotionFeature];
  v316[67] = v181;
  v182 = +[REFeature motionFeature];
  v316[68] = v182;
  v183 = +[REFeature isConnectedToCarFeature];
  v316[69] = v183;
  v184 = +[REFeature isConnectedToBluetoothSpeakerFeature];
  v316[70] = v184;
  v316[71] = v255;
  v316[72] = v254;
  v316[73] = v253;
  v316[74] = v252;
  v316[75] = v251;
  v316[76] = v250;
  v316[77] = v249;
  v316[78] = v248;
  v316[79] = v247;
  v316[80] = v246;
  v316[81] = v242;
  v316[82] = v241;
  v316[83] = v240;
  v316[84] = v239;
  v221 = v180;
  v222 = v178;
  v316[85] = v178;
  v316[86] = v180;
  v185 = +[REFeature coreBehaviorShortcutTypeFeature];
  v316[87] = v185;
  v186 = +[REFeature coreBehaviorEventIdentifierHashFeature];
  v316[88] = v186;
  v187 = +[REFeature coreBehaviorAppIdentifierHashFeature];
  v316[89] = v187;
  v188 = [MEMORY[0x277CBEA60] arrayWithObjects:v316 count:90];
  v189 = [(REFeatureSet *)v217 initWithFeatures:v188];

  v190 = objc_opt_new();
  v191 = [MEMORY[0x277CBEBC0] URLWithString:v230];
  [v190 setModelFileURL:v191];

  [v190 setPrimaryFeatures:v189];
  [v190 setModelVersion:9];
  [v190 setAllowsDiagnosticExtension:1];
  [v190 setAllowsRemoteTraining:1];
  v192 = REBundle();
  v193 = [v192 pathForResource:@"upnext_model" ofType:@"mdl"];

  if (v193)
  {
    v194 = [MEMORY[0x277CBEBC0] fileURLWithPath:v193];
    [v190 setBaseModelFileURL:v194];
  }

  [v190 setWantsBackup:1];
  v312 = 0u;
  v313 = 0u;
  v310 = 0u;
  v311 = 0u;
  v195 = v232;
  v196 = [v195 countByEnumeratingWithState:&v310 objects:v315 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v311;
    do
    {
      for (i = 0; i != v197; ++i)
      {
        if (*v311 != v198)
        {
          objc_enumerationMutation(v195);
        }

        [v190 addSectionWithDescriptor:*(*(&v310 + 1) + 8 * i)];
      }

      v197 = [v195 countByEnumeratingWithState:&v310 objects:v315 count:16];
    }

    while (v197);
  }

  v308 = 0u;
  v309 = 0u;
  v306 = 0u;
  v307 = 0u;
  v200 = v233;
  v201 = [v200 countByEnumeratingWithState:&v306 objects:v314 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v307;
    do
    {
      for (j = 0; j != v202; ++j)
      {
        if (*v307 != v203)
        {
          objc_enumerationMutation(v200);
        }

        [v190 addInteractionWithDescriptor:*(*(&v306 + 1) + 8 * j)];
      }

      v202 = [v200 countByEnumeratingWithState:&v306 objects:v314 count:16];
    }

    while (v202);
  }

  v205 = objc_opt_new();
  [v190 setMetricsRecorder:v205];

  v206 = [v190 copy];
  v207 = defaultUpNextConfiguration_defaultConfiguration;
  defaultUpNextConfiguration_defaultConfiguration = v206;

  v208 = *MEMORY[0x277D85DE8];
}

BOOL __83__RERelevanceEngineConfiguration_REUpNextConfiguration__defaultUpNextConfiguration__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  [v3 doubleValue];
  v5 = v4;
  v6 = [v2 objectAtIndexedSubscript:1];

  [v6 doubleValue];
  v8 = v5 > v7;

  return v8;
}

BOOL __83__RERelevanceEngineConfiguration_REUpNextConfiguration__defaultUpNextConfiguration__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:0];
  [v2 doubleValue];
  v4 = v3 >= 1.0;

  return v4;
}

BOOL __83__RERelevanceEngineConfiguration_REUpNextConfiguration__defaultUpNextConfiguration__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  [v3 doubleValue];
  v4 = 0;
  if (v5 >= 1.0)
  {
    v6 = [v2 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    if (v7 >= 1.0)
    {
      v8 = [v2 objectAtIndexedSubscript:2];
      [v8 doubleValue];
      v4 = v9 >= 1.0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)sampleUpNextConfiguration
{
  v39[2] = *MEMORY[0x277D85DE8];
  v2 = +[RERelevanceEngineConfiguration defaultUpNextConfiguration];
  v3 = [v2 mutableCopy];

  sectionDescriptors = [v3 sectionDescriptors];
  v5 = [sectionDescriptors count];

  v6 = 0x277CBE000uLL;
  v36 = v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      sectionDescriptors2 = [v3 sectionDescriptors];
      v9 = [sectionDescriptors2 objectAtIndexedSubscript:v7];

      v10 = RESampleFeature();
      v11 = [RECondition conditionHasValueForFeature:v10];

      v12 = [RERankingRule alloc];
      v13 = RESampleFeature();
      v14 = RESampleFeature();
      v15 = [REComparisonCondition conditionForLeftFeature:v13 relation:-2 rightFeature:v14];
      v16 = [(RERankingRule *)v12 initWithLeftCondition:v11 rightCondition:v11 comparisonCondition:v15 order:1];

      v17 = [REFilteringRule alloc];
      v18 = +[RECondition trueCondition];
      v19 = [(REFilteringRule *)v17 initWithCondition:v18 type:1];

      v20 = MEMORY[0x277CBEB98];
      v39[0] = v16;
      v39[1] = v19;
      v21 = [*(v6 + 2656) arrayWithObjects:v39 count:2];
      v22 = [v20 setWithArray:v21];
      [v9 setRules:v22];

      historicSectionDescriptor = [v9 historicSectionDescriptor];
      if (historicSectionDescriptor)
      {
        v24 = MEMORY[0x277CBEB98];
        v38[0] = v16;
        v38[1] = v19;
        [*(v6 + 2656) arrayWithObjects:v38 count:2];
        v26 = v25 = v6;
        v27 = [v24 setWithArray:v26];
        [historicSectionDescriptor setRules:v27];

        v6 = v25;
        [v9 setHistoricSectionDescriptor:historicSectionDescriptor];
      }

      [v3 removeSectionAtIndex:v7];
      [v3 insertSectionWithDescriptor:v9 atIndex:v7];

      ++v7;
    }

    while (v36 != v7);
  }

  [v3 setAllowsRemoteTraining:{0, v36}];
  [v3 setWantsImmutableContent:1];
  [v3 setAllowsUpdatingModelFile:0];
  [v3 setIgnoreDeviceLockState:1];
  [v3 setTrainingBehavior:0];
  v28 = [REFeatureSet alloc];
  v29 = RESampleFeature();
  v37[0] = v29;
  v30 = +[REFeature noContentFeature];
  v37[1] = v30;
  v31 = [*(v6 + 2656) arrayWithObjects:v37 count:2];
  v32 = [(REFeatureSet *)v28 initWithFeatures:v31];
  [v3 setPrimaryFeatures:v32];

  v33 = [v3 copy];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

@end