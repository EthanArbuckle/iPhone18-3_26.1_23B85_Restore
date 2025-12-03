@interface BYTestingSurrogateBehavior
+ (id)updateWithDictionary:(id)dictionary;
- (BOOL)resultsAsBasicBoolean;
- (id)alternateUpdate;
- (id)preferredUpdate;
- (id)scanResults;
@end

@implementation BYTestingSurrogateBehavior

- (BOOL)resultsAsBasicBoolean
{
  results = [(BYTestingSurrogateBehavior *)self results];
  v3 = [results objectForKeyedSubscript:@"BOOLean"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
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
  v7 = [dictionaryCopy objectForKeyedSubscript:@"productVersion"];
  [v6 setProductVersion:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"productVersionExtra"];
  [v6 setProductVersionExtra:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"productBuildVersion"];
  [v6 setProductBuildVersion:v9];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"productSystemName"];
  [v6 setProductSystemName:v10];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"updateType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v11 intValue];
  }

  else
  {
    intValue = 0;
  }

  [v6 setUpdateType:intValue];
  v13 = [dictionaryCopy objectForKeyedSubscript:@"publisher"];
  [v6 setPublisher:v13];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"humanReadableUpdateName"];
  [v6 setHumanReadableUpdateName:v14];

  v15 = [dictionaryCopy objectForKeyedSubscript:@"downloadSize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue2 = [v15 intValue];
  }

  else
  {
    intValue2 = 0;
  }

  [v6 setDownloadSize:intValue2];
  v17 = [dictionaryCopy objectForKeyedSubscript:@"downloadable"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v17 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [v6 setDownloadable:bOOLValue];
  v19 = [dictionaryCopy objectForKeyedSubscript:@"downloadableOverCellular"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue2 = [v19 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  [v6 setDownloadableOverCellular:bOOLValue2];
  v21 = [dictionaryCopy objectForKeyedSubscript:@"mandatoryUpdateEligible"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue3 = [v21 BOOLValue];
  }

  else
  {
    bOOLValue3 = 0;
  }

  [v6 setMandatoryUpdateEligible:bOOLValue3];
  v23 = [dictionaryCopy objectForKeyedSubscript:@"mandatoryUpdateVersionMin"];
  [v6 setMandatoryUpdateVersionMin:v23];

  v24 = [dictionaryCopy objectForKeyedSubscript:@"mandatoryUpdateVersionMax"];
  [v6 setMandatoryUpdateVersionMax:v24];

  v25 = [dictionaryCopy objectForKeyedSubscript:@"mandatoryUpdateOptional"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue4 = [v25 BOOLValue];
  }

  else
  {
    bOOLValue4 = 0;
  }

  [v6 setMandatoryUpdateOptional:bOOLValue4];
  v27 = [dictionaryCopy objectForKeyedSubscript:@"mandatoryUpdateRestrictedToOutOfTheBox"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue5 = [v27 BOOLValue];
  }

  else
  {
    bOOLValue5 = 0;
  }

  [v6 setMandatoryUpdateRestrictedToOutOfTheBox:bOOLValue5];

  return v6;
}

- (id)preferredUpdate
{
  results = [(BYTestingSurrogateBehavior *)self results];
  v3 = [results objectForKeyedSubscript:@"preferredUpdate"];

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
  results = [(BYTestingSurrogateBehavior *)self results];
  v3 = [results objectForKeyedSubscript:@"alternateUpdate"];

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
  preferredUpdate = [(BYTestingSurrogateBehavior *)self preferredUpdate];
  alternateUpdate = [(BYTestingSurrogateBehavior *)self alternateUpdate];
  v8 = [v5 initWithPreferredDescriptor:preferredUpdate alternateDescriptor:alternateUpdate];

  return v8;
}

@end