@interface BYTestingSurrogateBehavior
+ (id)updateWithDictionary:(id)a3;
- (BOOL)resultsAsBasicBoolean;
- (id)alternateUpdate;
- (id)preferredUpdate;
- (id)scanResults;
@end

@implementation BYTestingSurrogateBehavior

- (BOOL)resultsAsBasicBoolean
{
  v2 = [(BYTestingSurrogateBehavior *)self results];
  v3 = [v2 objectForKeyedSubscript:@"BOOLean"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)updateWithDictionary:(id)a3
{
  v3 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v4 = getSUDescriptorClass_softClass;
  v34 = getSUDescriptorClass_softClass;
  if (!getSUDescriptorClass_softClass)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __getSUDescriptorClass_block_invoke;
    v30[3] = &unk_1E7D02730;
    v30[4] = &v31;
    __getSUDescriptorClass_block_invoke(v30);
    v4 = v32[3];
  }

  v5 = v4;
  _Block_object_dispose(&v31, 8);
  v6 = objc_alloc_init(v4);
  v7 = [v3 objectForKeyedSubscript:@"productVersion"];
  [v6 setProductVersion:v7];

  v8 = [v3 objectForKeyedSubscript:@"productVersionExtra"];
  [v6 setProductVersionExtra:v8];

  v9 = [v3 objectForKeyedSubscript:@"productBuildVersion"];
  [v6 setProductBuildVersion:v9];

  v10 = [v3 objectForKeyedSubscript:@"productSystemName"];
  [v6 setProductSystemName:v10];

  v11 = [v3 objectForKeyedSubscript:@"updateType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 intValue];
  }

  else
  {
    v12 = 0;
  }

  [v6 setUpdateType:v12];
  v13 = [v3 objectForKeyedSubscript:@"publisher"];
  [v6 setPublisher:v13];

  v14 = [v3 objectForKeyedSubscript:@"humanReadableUpdateName"];
  [v6 setHumanReadableUpdateName:v14];

  v15 = [v3 objectForKeyedSubscript:@"downloadSize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 intValue];
  }

  else
  {
    v16 = 0;
  }

  [v6 setDownloadSize:v16];
  v17 = [v3 objectForKeyedSubscript:@"downloadable"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 BOOLValue];
  }

  else
  {
    v18 = 0;
  }

  [v6 setDownloadable:v18];
  v19 = [v3 objectForKeyedSubscript:@"downloadableOverCellular"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  [v6 setDownloadableOverCellular:v20];
  v21 = [v3 objectForKeyedSubscript:@"mandatoryUpdateEligible"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v21 BOOLValue];
  }

  else
  {
    v22 = 0;
  }

  [v6 setMandatoryUpdateEligible:v22];
  v23 = [v3 objectForKeyedSubscript:@"mandatoryUpdateVersionMin"];
  [v6 setMandatoryUpdateVersionMin:v23];

  v24 = [v3 objectForKeyedSubscript:@"mandatoryUpdateVersionMax"];
  [v6 setMandatoryUpdateVersionMax:v24];

  v25 = [v3 objectForKeyedSubscript:@"mandatoryUpdateOptional"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v25 BOOLValue];
  }

  else
  {
    v26 = 0;
  }

  [v6 setMandatoryUpdateOptional:v26];
  v27 = [v3 objectForKeyedSubscript:@"mandatoryUpdateRestrictedToOutOfTheBox"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v27 BOOLValue];
  }

  else
  {
    v28 = 0;
  }

  [v6 setMandatoryUpdateRestrictedToOutOfTheBox:v28];

  return v6;
}

- (id)preferredUpdate
{
  v2 = [(BYTestingSurrogateBehavior *)self results];
  v3 = [v2 objectForKeyedSubscript:@"preferredUpdate"];

  if (v3)
  {
    v4 = [objc_opt_class() updateWithDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)alternateUpdate
{
  v2 = [(BYTestingSurrogateBehavior *)self results];
  v3 = [v2 objectForKeyedSubscript:@"alternateUpdate"];

  if (v3)
  {
    v4 = [objc_opt_class() updateWithDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)scanResults
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getSUScanResultsClass_softClass;
  v14 = getSUScanResultsClass_softClass;
  if (!getSUScanResultsClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSUScanResultsClass_block_invoke;
    v10[3] = &unk_1E7D02730;
    v10[4] = &v11;
    __getSUScanResultsClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = [v3 alloc];
  v6 = [(BYTestingSurrogateBehavior *)self preferredUpdate];
  v7 = [(BYTestingSurrogateBehavior *)self alternateUpdate];
  v8 = [v5 initWithPreferredDescriptor:v6 alternateDescriptor:v7];

  return v8;
}

@end