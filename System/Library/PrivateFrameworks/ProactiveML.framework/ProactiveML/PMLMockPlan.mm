@interface PMLMockPlan
+ (id)lastDeserializedPlanWithId:(id)a3;
+ (id)lastDeserializedPlansMap;
+ (void)clearLastDeserializedPlans;
+ (void)setLastDeserializedPlanWithId:(id)a3 toPlan:(id)a4;
- (PMLMockPlan)initWithPlanId:(id)a3 store:(id)a4 version:(unint64_t)a5 returningAfterRunning:(BOOL)a6;
- (PMLMockPlan)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)toPlistWithChunks:(id)a3;
@end

@implementation PMLMockPlan

- (PMLMockPlan)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:@"id"];
  v10 = [v7 objectForKeyedSubscript:@"TRAINING_STORE"];

  v11 = [v8 objectForKeyedSubscript:@"version"];
  v12 = [v11 unsignedIntegerValue];
  v13 = [v8 objectForKeyedSubscript:@"returnValue"];
  v14 = -[PMLMockPlan initWithPlanId:store:version:returningAfterRunning:](self, "initWithPlanId:store:version:returningAfterRunning:", v9, v10, v12, [v13 BOOLValue]);

  v15 = [v8 objectForKeyedSubscript:@"id"];

  [PMLMockPlan setLastDeserializedPlanWithId:v15 toPlan:v14];
  return v14;
}

- (id)toPlistWithChunks:(id)a3
{
  v10[3] = *MEMORY[0x277D85DE8];
  v10[0] = self->_planId;
  v9[0] = @"id";
  v9[1] = @"version";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PMLMockPlan version](self, "version", a3)}];
  v10[1] = v4;
  v9[2] = @"returnValue";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_returnValue];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (PMLMockPlan)initWithPlanId:(id)a3 store:(id)a4 version:(unint64_t)a5 returningAfterRunning:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = PMLMockPlan;
  v13 = [(PMLMockPlan *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_planId, a3);
    objc_storeStrong(&v14->_store, a4);
    v14->_version = a5;
    v14->_returnValue = a6;
    v14->_didRun = 0;
  }

  return v14;
}

+ (id)lastDeserializedPlansMap
{
  if (lastDeserializedPlansMap__pasOnceToken2 != -1)
  {
    dispatch_once(&lastDeserializedPlansMap__pasOnceToken2, &__block_literal_global_4830);
  }

  v3 = lastDeserializedPlansMap__pasExprOnceResult;

  return v3;
}

void __39__PMLMockPlan_lastDeserializedPlansMap__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = lastDeserializedPlansMap__pasExprOnceResult;
  lastDeserializedPlansMap__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (void)clearLastDeserializedPlans
{
  v2 = [a1 lastDeserializedPlansMap];
  [v2 removeAllObjects];
}

+ (void)setLastDeserializedPlanWithId:(id)a3 toPlan:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 lastDeserializedPlansMap];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

+ (id)lastDeserializedPlanWithId:(id)a3
{
  v4 = a3;
  v5 = [a1 lastDeserializedPlansMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

@end