@interface SUIBRequestProgress
- (SUIBRequestProgress)initWithBuilder:(id)a3;
- (SUIBRequestProgress)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUIBRequestProgress

- (SUIBRequestProgress)initWithBuilder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SUIBRequestProgress;
  v5 = [(SUIBRequestProgress *)&v17 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SUIBRequestProgressMutation);
    v4[2](v4, v7);
    v6->_progressType = [(SUIBRequestProgressMutation *)v7 progressType];
    v8 = [(SUIBRequestProgressMutation *)v7 nlRouterSummary];
    nlRouterSummary = v6->_nlRouterSummary;
    v6->_nlRouterSummary = v8;

    v10 = [(SUIBRequestProgressMutation *)v7 intelligenceFlowActionSummary];
    intelligenceFlowActionSummary = v6->_intelligenceFlowActionSummary;
    v6->_intelligenceFlowActionSummary = v10;

    v12 = [(SUIBRequestProgressMutation *)v7 intelligenceFlowProgressUpdate];
    intelligenceFlowProgressUpdate = v6->_intelligenceFlowProgressUpdate;
    v6->_intelligenceFlowProgressUpdate = v12;

    v14 = [(SUIBRequestProgressMutation *)v7 intelligenceFlowStatusNotification];
    intelligenceFlowStatusNotification = v6->_intelligenceFlowStatusNotification;
    v6->_intelligenceFlowStatusNotification = v14;
  }

  return v6;
}

- (SUIBRequestProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::progressType"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::nlRouterSummary"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::intelligenceFlowActionSummary"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::intelligenceFlowProgressUpdate"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::intelligenceFlowStatusNotification"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__SUIBRequestProgress_initWithCoder___block_invoke;
  v17[3] = &unk_2784BFE50;
  v21 = v10;
  v22 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = [(SUIBRequestProgress *)self initWithBuilder:v17];

  return v15;
}

void __37__SUIBRequestProgress_initWithCoder___block_invoke(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a2;
  [v4 setProgressType:v3];
  [v4 setNlRouterSummary:a1[4]];
  [v4 setIntelligenceFlowActionSummary:a1[5]];
  [v4 setIntelligenceFlowProgressUpdate:a1[6]];
  [v4 setIntelligenceFlowStatusNotification:a1[7]];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  progressType = self->_progressType;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInteger:progressType];
  [v7 encodeObject:v6 forKey:@"SUIBRequestProgress::progressType"];

  [v7 encodeObject:self->_nlRouterSummary forKey:@"SUIBRequestProgress::nlRouterSummary"];
  [v7 encodeObject:self->_intelligenceFlowActionSummary forKey:@"SUIBRequestProgress::intelligenceFlowActionSummary"];
  [v7 encodeObject:self->_intelligenceFlowProgressUpdate forKey:@"SUIBRequestProgress::intelligenceFlowProgressUpdate"];
  [v7 encodeObject:self->_intelligenceFlowStatusNotification forKey:@"SUIBRequestProgress::intelligenceFlowStatusNotification"];
}

@end