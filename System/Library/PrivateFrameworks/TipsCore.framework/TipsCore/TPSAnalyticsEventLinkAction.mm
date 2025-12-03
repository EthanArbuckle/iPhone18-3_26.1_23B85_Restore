@interface TPSAnalyticsEventLinkAction
+ (id)eventWithTipID:(id)d actionName:(id)name actionDirection:(id)direction;
- (TPSAnalyticsEventLinkAction)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d actionName:(id)name actionDirection:(id)direction;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventLinkAction

- (TPSAnalyticsEventLinkAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventLinkAction;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"link_action_name"];
    actionName = v5->_actionName;
    v5->_actionName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"link_action_direction"];
    actionDirection = v5->_actionDirection;
    v5->_actionDirection = v10;
  }

  return v5;
}

- (id)_initWithTipID:(id)d actionName:(id)name actionDirection:(id)direction
{
  dCopy = d;
  nameCopy = name;
  directionCopy = direction;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventLinkAction;
  v12 = [(TPSAnalyticsEvent *)&v15 initWithDate:0];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_tipID, d);
    objc_storeStrong(p_isa + 5, name);
    objc_storeStrong(p_isa + 6, direction);
  }

  return p_isa;
}

+ (id)eventWithTipID:(id)d actionName:(id)name actionDirection:(id)direction
{
  directionCopy = direction;
  nameCopy = name;
  dCopy = d;
  v11 = [[self alloc] _initWithTipID:dCopy actionName:nameCopy actionDirection:directionCopy];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventLinkAction;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_actionName forKey:@"link_action_name"];
  [coderCopy encodeObject:self->_actionDirection forKey:@"link_action_direction"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_actionName forKeyedSubscript:@"link_action_name"];
  [dictionary setObject:self->_actionDirection forKeyedSubscript:@"link_action_direction"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v4 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end