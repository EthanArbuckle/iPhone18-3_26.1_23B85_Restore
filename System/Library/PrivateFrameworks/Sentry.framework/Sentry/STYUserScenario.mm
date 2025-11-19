@interface STYUserScenario
+ (id)scenarioFromSignpostEvent:(id)a3 error:(id *)a4;
+ (id)scenarioFromSignpostInterval:(id)a3 error:(id *)a4;
- (STYUserScenario)initWithConfiguration:(id)a3 scenarioGroup:(id)a4 kpi:(int64_t)a5 processBundleID:(id)a6 titleText:(id)a7 processName:(id)a8 processID:(int)a9;
- (STYUserScenario)initWithLifecycleScenarioCategoryAndModelName:(id)a3 modelName:(id)a4 titleText:(id)a5;
@end

@implementation STYUserScenario

- (STYUserScenario)initWithLifecycleScenarioCategoryAndModelName:(id)a3 modelName:(id)a4 titleText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = STYUserScenario;
  v12 = [(STYUserScenario *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scenarioGroup, a3);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v10, v9];
    scenarioID = v13->_scenarioID;
    v13->_scenarioID = v14;

    objc_storeStrong(&v13->_titleText, a5);
    v13->_kpi = -1000;
    v16 = v13;
  }

  return v13;
}

- (STYUserScenario)initWithConfiguration:(id)a3 scenarioGroup:(id)a4 kpi:(int64_t)a5 processBundleID:(id)a6 titleText:(id)a7 processName:(id)a8 processID:(int)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v24 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = STYUserScenario;
  v19 = [(STYUserScenario *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_scenarioID, a3);
    objc_storeStrong(&v20->_scenarioGroup, a4);
    v20->_kpi = a5;
    objc_storeStrong(&v20->_titleText, a7);
    objc_storeStrong(&v20->_appBundleId, a6);
    objc_storeStrong(&v20->_appName, a8);
    v20->_appProcessID = a9;
    v21 = v20;
  }

  return v20;
}

+ (id)scenarioFromSignpostEvent:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[STYUserScenarioCache sharedCache];
  v7 = [v6 scenarioFromSignpostEvent:v5 error:a4];

  return v7;
}

+ (id)scenarioFromSignpostInterval:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[STYUserScenarioCache sharedCache];
  v7 = [v6 scenarioFromSignpostInterval:v5 error:a4];

  return v7;
}

@end