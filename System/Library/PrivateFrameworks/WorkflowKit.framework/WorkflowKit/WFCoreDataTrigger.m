@interface WFCoreDataTrigger
+ (id)recordPropertyMap;
- (id)descriptor;
- (id)trigger;
@end

@implementation WFCoreDataTrigger

- (id)trigger
{
  v2 = [(WFCoreDataTrigger *)self data];
  v3 = [WFTrigger triggerWithSerializedData:v2];

  return v3;
}

- (id)descriptor
{
  v20 = [WFConfiguredTrigger alloc];
  v19 = [(WFCoreDataTrigger *)self identifier];
  v21 = [(WFCoreDataTrigger *)self shortcut];
  v3 = [v21 workflowID];
  v4 = [(WFCoreDataTrigger *)self trigger];
  v18 = [(WFCoreDataTrigger *)self shouldPrompt];
  v17 = [(WFCoreDataTrigger *)self shouldNotify];
  v5 = [(WFCoreDataTrigger *)self shouldRecur];
  v6 = [(WFCoreDataTrigger *)self potentialLoopDetected];
  v7 = [(WFCoreDataTrigger *)self enabled];
  v8 = [(WFCoreDataTrigger *)self disablementReason];
  v9 = [(WFCoreDataTrigger *)self source];
  v10 = [(WFCoreDataTrigger *)self notificationLevel];
  v11 = [(WFCoreDataTrigger *)self editableShortcut];
  v12 = [(WFCoreDataTrigger *)self selectedEntryMetadata];
  LOBYTE(v16) = v11;
  BYTE1(v15) = v7;
  LOBYTE(v15) = v6;
  v13 = [(WFConfiguredTrigger *)v20 initWithIdentifier:v19 workflowID:v3 trigger:v4 shouldPrompt:v18 shouldNotify:v17 shouldRecur:v5 potentialLoopDetected:v15 enabled:v8 disablementReason:__PAIR64__(v10 triggerSource:v9) notificationLevel:v16 editableShortcut:v12 selectedEntryMetadata:?];

  return v13;
}

+ (id)recordPropertyMap
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"triggerData";
  v6[0] = @"data";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end