@interface SASProximityMigrationTransferPreparationAction
+ (id)actionFromDictionary:(id)a3;
- (id)requestPayload;
@end

@implementation SASProximityMigrationTransferPreparationAction

+ (id)actionFromDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SASProximityMigrationTransferPreparationAction);
  v5 = [v3 objectForKeyedSubscript:@"deviceName"];

  [(SASProximityMigrationTransferPreparationAction *)v4 setDeviceName:v5];

  return v4;
}

- (id)requestPayload
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(SASProximityMigrationTransferPreparationAction *)self deviceName];

  if (v3)
  {
    v8 = @"deviceName";
    v4 = [(SASProximityMigrationTransferPreparationAction *)self deviceName];
    v9[0] = v4;
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