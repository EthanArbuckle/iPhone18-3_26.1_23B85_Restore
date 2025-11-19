@interface PMLPlanWrapper
- (PMLPlanWrapper)initWithPlan:(id)a3;
- (PMLPlanWrapper)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)toPlistWithChunks:(id)a3;
@end

@implementation PMLPlanWrapper

- (PMLPlanWrapper)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v11 objectForKeyedSubscript:@"PLAN_CLASSNAME"];
  v13 = NSClassFromString(v12);
  if (!v13)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PMLPlanSerialization.m" lineNumber:55 description:{@"Invalid plan. Unknown class: %@", v12}];
  }

  v14 = [v13 alloc];
  v15 = [v11 objectForKeyedSubscript:@"PLAN"];

  v16 = [v14 initWithPlist:v15 chunks:v10 context:v9];
  if (v16)
  {
    self = [(PMLPlanWrapper *)self initWithPlan:v16];
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)toPlistWithChunks:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"PLAN_CLASSNAME";
  plan = self->_plan;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v12[1] = @"PLAN";
  v13[0] = v7;
  v8 = [(PMLPlanProtocol *)self->_plan toPlistWithChunks:v5];

  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PMLPlanWrapper)initWithPlan:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMLPlanWrapper;
  v6 = [(PMLPlanWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plan, a3);
  }

  return v7;
}

@end