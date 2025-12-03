@interface SUIBRequestProgress
- (SUIBRequestProgress)initWithBuilder:(id)builder;
- (SUIBRequestProgress)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUIBRequestProgress

- (SUIBRequestProgress)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v17.receiver = self;
  v17.super_class = SUIBRequestProgress;
  v5 = [(SUIBRequestProgress *)&v17 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = objc_alloc_init(SUIBRequestProgressMutation);
    builderCopy[2](builderCopy, v7);
    v6->_progressType = [(SUIBRequestProgressMutation *)v7 progressType];
    nlRouterSummary = [(SUIBRequestProgressMutation *)v7 nlRouterSummary];
    nlRouterSummary = v6->_nlRouterSummary;
    v6->_nlRouterSummary = nlRouterSummary;

    intelligenceFlowActionSummary = [(SUIBRequestProgressMutation *)v7 intelligenceFlowActionSummary];
    intelligenceFlowActionSummary = v6->_intelligenceFlowActionSummary;
    v6->_intelligenceFlowActionSummary = intelligenceFlowActionSummary;

    intelligenceFlowProgressUpdate = [(SUIBRequestProgressMutation *)v7 intelligenceFlowProgressUpdate];
    intelligenceFlowProgressUpdate = v6->_intelligenceFlowProgressUpdate;
    v6->_intelligenceFlowProgressUpdate = intelligenceFlowProgressUpdate;

    intelligenceFlowStatusNotification = [(SUIBRequestProgressMutation *)v7 intelligenceFlowStatusNotification];
    intelligenceFlowStatusNotification = v6->_intelligenceFlowStatusNotification;
    v6->_intelligenceFlowStatusNotification = intelligenceFlowStatusNotification;
  }

  return v6;
}

- (SUIBRequestProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::progressType"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::nlRouterSummary"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::intelligenceFlowActionSummary"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::intelligenceFlowProgressUpdate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBRequestProgress::intelligenceFlowStatusNotification"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__SUIBRequestProgress_initWithCoder___block_invoke;
  v17[3] = &unk_2784BFE50;
  v21 = v10;
  v22 = unsignedIntegerValue;
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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  progressType = self->_progressType;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:progressType];
  [coderCopy encodeObject:v6 forKey:@"SUIBRequestProgress::progressType"];

  [coderCopy encodeObject:self->_nlRouterSummary forKey:@"SUIBRequestProgress::nlRouterSummary"];
  [coderCopy encodeObject:self->_intelligenceFlowActionSummary forKey:@"SUIBRequestProgress::intelligenceFlowActionSummary"];
  [coderCopy encodeObject:self->_intelligenceFlowProgressUpdate forKey:@"SUIBRequestProgress::intelligenceFlowProgressUpdate"];
  [coderCopy encodeObject:self->_intelligenceFlowStatusNotification forKey:@"SUIBRequestProgress::intelligenceFlowStatusNotification"];
}

@end