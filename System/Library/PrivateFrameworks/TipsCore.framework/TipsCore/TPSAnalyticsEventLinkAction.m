@interface TPSAnalyticsEventLinkAction
+ (id)eventWithTipID:(id)a3 actionName:(id)a4 actionDirection:(id)a5;
- (TPSAnalyticsEventLinkAction)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 actionName:(id)a4 actionDirection:(id)a5;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventLinkAction

- (TPSAnalyticsEventLinkAction)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventLinkAction;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"link_action_name"];
    actionName = v5->_actionName;
    v5->_actionName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"link_action_direction"];
    actionDirection = v5->_actionDirection;
    v5->_actionDirection = v10;
  }

  return v5;
}

- (id)_initWithTipID:(id)a3 actionName:(id)a4 actionDirection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventLinkAction;
  v12 = [(TPSAnalyticsEvent *)&v15 initWithDate:0];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_tipID, a3);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 6, a5);
  }

  return p_isa;
}

+ (id)eventWithTipID:(id)a3 actionName:(id)a4 actionDirection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithTipID:v10 actionName:v9 actionDirection:v8];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventLinkAction;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_actionName forKey:@"link_action_name"];
  [v4 encodeObject:self->_actionDirection forKey:@"link_action_direction"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_actionName forKeyedSubscript:@"link_action_name"];
  [v3 setObject:self->_actionDirection forKeyedSubscript:@"link_action_direction"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v4 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end