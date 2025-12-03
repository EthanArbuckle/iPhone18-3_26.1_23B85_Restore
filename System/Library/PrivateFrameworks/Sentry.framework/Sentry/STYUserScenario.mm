@interface STYUserScenario
+ (id)scenarioFromSignpostEvent:(id)event error:(id *)error;
+ (id)scenarioFromSignpostInterval:(id)interval error:(id *)error;
- (STYUserScenario)initWithConfiguration:(id)configuration scenarioGroup:(id)group kpi:(int64_t)kpi processBundleID:(id)d titleText:(id)text processName:(id)name processID:(int)iD;
- (STYUserScenario)initWithLifecycleScenarioCategoryAndModelName:(id)name modelName:(id)modelName titleText:(id)text;
@end

@implementation STYUserScenario

- (STYUserScenario)initWithLifecycleScenarioCategoryAndModelName:(id)name modelName:(id)modelName titleText:(id)text
{
  nameCopy = name;
  modelNameCopy = modelName;
  textCopy = text;
  v18.receiver = self;
  v18.super_class = STYUserScenario;
  v12 = [(STYUserScenario *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scenarioGroup, name);
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", modelNameCopy, nameCopy];
    scenarioID = v13->_scenarioID;
    v13->_scenarioID = nameCopy;

    objc_storeStrong(&v13->_titleText, text);
    v13->_kpi = -1000;
    v16 = v13;
  }

  return v13;
}

- (STYUserScenario)initWithConfiguration:(id)configuration scenarioGroup:(id)group kpi:(int64_t)kpi processBundleID:(id)d titleText:(id)text processName:(id)name processID:(int)iD
{
  configurationCopy = configuration;
  groupCopy = group;
  dCopy = d;
  textCopy = text;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = STYUserScenario;
  v19 = [(STYUserScenario *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_scenarioID, configuration);
    objc_storeStrong(&v20->_scenarioGroup, group);
    v20->_kpi = kpi;
    objc_storeStrong(&v20->_titleText, text);
    objc_storeStrong(&v20->_appBundleId, d);
    objc_storeStrong(&v20->_appName, name);
    v20->_appProcessID = iD;
    v21 = v20;
  }

  return v20;
}

+ (id)scenarioFromSignpostEvent:(id)event error:(id *)error
{
  eventCopy = event;
  v6 = +[STYUserScenarioCache sharedCache];
  v7 = [v6 scenarioFromSignpostEvent:eventCopy error:error];

  return v7;
}

+ (id)scenarioFromSignpostInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v6 = +[STYUserScenarioCache sharedCache];
  v7 = [v6 scenarioFromSignpostInterval:intervalCopy error:error];

  return v7;
}

@end