@interface SUIBIntelligenceFlowStatusNotification
- (SUIBIntelligenceFlowStatusNotification)initWithBuilder:(id)a3;
- (SUIBIntelligenceFlowStatusNotification)initWithCoder:(id)a3;
@end

@implementation SUIBIntelligenceFlowStatusNotification

- (SUIBIntelligenceFlowStatusNotification)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUIBIntelligenceFlowStatusNotification;
  v5 = [(SUIBIntelligenceFlowStatusNotification *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SUIBIntelligenceFlowStatusNotificationMutation);
    v4[2](v4, v7);
    v8 = [(SUIBIntelligenceFlowStatusNotificationMutation *)v7 statusString];
    v9 = [v8 copy];
    statusString = v6->_statusString;
    v6->_statusString = v9;
  }

  return v6;
}

- (SUIBIntelligenceFlowStatusNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBIntelligenceFlowStatusStringNotification::statusString"];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SUIBIntelligenceFlowStatusNotification_initWithCoder___block_invoke;
  v9[3] = &unk_2784BFD78;
  v10 = v5;
  v6 = v5;
  v7 = [(SUIBIntelligenceFlowStatusNotification *)self initWithBuilder:v9];

  return v7;
}

@end