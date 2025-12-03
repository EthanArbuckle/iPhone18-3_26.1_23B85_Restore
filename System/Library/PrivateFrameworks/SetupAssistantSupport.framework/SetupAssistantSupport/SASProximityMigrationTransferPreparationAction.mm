@interface SASProximityMigrationTransferPreparationAction
+ (id)actionFromDictionary:(id)dictionary;
- (id)requestPayload;
@end

@implementation SASProximityMigrationTransferPreparationAction

+ (id)actionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SASProximityMigrationTransferPreparationAction);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"deviceName"];

  [(SASProximityMigrationTransferPreparationAction *)v4 setDeviceName:v5];

  return v4;
}

- (id)requestPayload
{
  v9[1] = *MEMORY[0x277D85DE8];
  deviceName = [(SASProximityMigrationTransferPreparationAction *)self deviceName];

  if (deviceName)
  {
    v8 = @"deviceName";
    deviceName2 = [(SASProximityMigrationTransferPreparationAction *)self deviceName];
    v9[0] = deviceName2;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end