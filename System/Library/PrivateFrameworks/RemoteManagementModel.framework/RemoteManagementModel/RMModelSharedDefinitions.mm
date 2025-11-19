@interface RMModelSharedDefinitions
+ (BOOL)allowedValueType:(id)a3;
+ (int64_t)currentPlatform;
@end

@implementation RMModelSharedDefinitions

+ (int64_t)currentPlatform
{
  if ([MEMORY[0x277D03538] isSharediPad])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)allowedValueType:(id)a3
{
  v3 = allowedValueType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[RMModelSharedDefinitions allowedValueType:];
  }

  v5 = [allowedValueType__allowedValueTypes containsObject:v4];

  return v5;
}

void __45__RMModelSharedDefinitions_allowedValueType___block_invoke()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"BOOLean";
  v5[1] = @"integer";
  v5[2] = @"real";
  v5[3] = @"string";
  v5[4] = @"array";
  v5[5] = @"dictionary";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = allowedValueType__allowedValueTypes;
  allowedValueType__allowedValueTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end