@interface PMLMockPlan
+ (id)lastDeserializedPlanWithId:(id)id;
+ (id)lastDeserializedPlansMap;
+ (void)clearLastDeserializedPlans;
+ (void)setLastDeserializedPlanWithId:(id)id toPlan:(id)plan;
- (PMLMockPlan)initWithPlanId:(id)id store:(id)store version:(unint64_t)version returningAfterRunning:(BOOL)running;
- (PMLMockPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLMockPlan

- (PMLMockPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  contextCopy = context;
  plistCopy = plist;
  v9 = [plistCopy objectForKeyedSubscript:@"id"];
  v10 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];

  v11 = [plistCopy objectForKeyedSubscript:@"version"];
  unsignedIntegerValue = [v11 unsignedIntegerValue];
  v13 = [plistCopy objectForKeyedSubscript:@"returnValue"];
  v14 = -[PMLMockPlan initWithPlanId:store:version:returningAfterRunning:](self, "initWithPlanId:store:version:returningAfterRunning:", v9, v10, unsignedIntegerValue, [v13 BOOLValue]);

  v15 = [plistCopy objectForKeyedSubscript:@"id"];

  [PMLMockPlan setLastDeserializedPlanWithId:v15 toPlan:v14];
  return v14;
}

- (id)toPlistWithChunks:(id)chunks
{
  v10[3] = *MEMORY[0x277D85DE8];
  v10[0] = self->_planId;
  v9[0] = @"id";
  v9[1] = @"version";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PMLMockPlan version](self, "version", chunks)}];
  v10[1] = v4;
  v9[2] = @"returnValue";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_returnValue];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (PMLMockPlan)initWithPlanId:(id)id store:(id)store version:(unint64_t)version returningAfterRunning:(BOOL)running
{
  idCopy = id;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = PMLMockPlan;
  v13 = [(PMLMockPlan *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_planId, id);
    objc_storeStrong(&v14->_store, store);
    v14->_version = version;
    v14->_returnValue = running;
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
  lastDeserializedPlansMap = [self lastDeserializedPlansMap];
  [lastDeserializedPlansMap removeAllObjects];
}

+ (void)setLastDeserializedPlanWithId:(id)id toPlan:(id)plan
{
  planCopy = plan;
  idCopy = id;
  lastDeserializedPlansMap = [self lastDeserializedPlansMap];
  [lastDeserializedPlansMap setObject:planCopy forKeyedSubscript:idCopy];
}

+ (id)lastDeserializedPlanWithId:(id)id
{
  idCopy = id;
  lastDeserializedPlansMap = [self lastDeserializedPlansMap];
  v6 = [lastDeserializedPlansMap objectForKeyedSubscript:idCopy];

  return v6;
}

@end