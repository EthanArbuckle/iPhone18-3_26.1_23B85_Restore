@interface PMLPlanWrapper
- (PMLPlanWrapper)initWithPlan:(id)plan;
- (PMLPlanWrapper)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLPlanWrapper

- (PMLPlanWrapper)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  contextCopy = context;
  chunksCopy = chunks;
  plistCopy = plist;
  v12 = [plistCopy objectForKeyedSubscript:@"PLAN_CLASSNAME"];
  v13 = NSClassFromString(v12);
  if (!v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPlanSerialization.m" lineNumber:55 description:{@"Invalid plan. Unknown class: %@", v12}];
  }

  v14 = [v13 alloc];
  v15 = [plistCopy objectForKeyedSubscript:@"PLAN"];

  v16 = [v14 initWithPlist:v15 chunks:chunksCopy context:contextCopy];
  if (v16)
  {
    self = [(PMLPlanWrapper *)self initWithPlan:v16];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)toPlistWithChunks:(id)chunks
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"PLAN_CLASSNAME";
  plan = self->_plan;
  chunksCopy = chunks;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v12[1] = @"PLAN";
  v13[0] = v7;
  v8 = [(PMLPlanProtocol *)self->_plan toPlistWithChunks:chunksCopy];

  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PMLPlanWrapper)initWithPlan:(id)plan
{
  planCopy = plan;
  v9.receiver = self;
  v9.super_class = PMLPlanWrapper;
  v6 = [(PMLPlanWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plan, plan);
  }

  return v7;
}

@end