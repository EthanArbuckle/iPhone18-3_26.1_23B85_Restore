@interface PMLPlanSerialization
+ (id)planFromData:(id)a3 store:(id)a4 trainingNetworkPath:(id)a5;
+ (id)planFromData:(id)a3 withArgs:(id)a4;
+ (id)planFromData:(id)a3 withStore:(id)a4;
+ (id)serializePlan:(id)a3;
@end

@implementation PMLPlanSerialization

+ (id)serializePlan:(id)a3
{
  v3 = a3;
  v4 = [[PMLPlanWrapper alloc] initWithPlan:v3];

  v5 = PMLBuildChunkFile(v4);

  return v5;
}

+ (id)planFromData:(id)a3 withArgs:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = PMLReadChunkData(v6, v7, v5);

  v9 = [v8 plan];

  return v9;
}

+ (id)planFromData:(id)a3 store:(id)a4 trainingNetworkPath:(id)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"TRAINING_STORE";
  v16[1] = @"PML_ESPRESSO_TRAINING_NETWORK_PATH";
  v17[0] = a4;
  v17[1] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = [a1 planFromData:v11 withArgs:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)planFromData:(id)a3 withStore:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"TRAINING_STORE";
  v14[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [a1 planFromData:v8 withArgs:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end