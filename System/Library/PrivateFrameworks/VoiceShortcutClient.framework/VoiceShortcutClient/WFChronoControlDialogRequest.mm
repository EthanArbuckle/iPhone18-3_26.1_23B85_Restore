@interface WFChronoControlDialogRequest
- (WFChronoControlDialogRequest)initWithCoder:(id)coder;
- (WFChronoControlDialogRequest)initWithControlType:(unint64_t)type identity:(id)identity attribution:(id)attribution;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFChronoControlDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFChronoControlDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[WFChronoControlDialogRequest controlType](self forKey:{"controlType", v6.receiver, v6.super_class), @"controlType"}];
  controlIdentity = [(WFChronoControlDialogRequest *)self controlIdentity];
  [coderCopy encodeObject:controlIdentity forKey:@"controlIdentity"];
}

- (WFChronoControlDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFChronoControlDialogRequest;
  v5 = [(WFDialogRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_controlType = [coderCopy decodeIntegerForKey:@"controlType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"controlIdentity"];
    controlIdentity = v5->_controlIdentity;
    v5->_controlIdentity = v6;

    v8 = v5;
  }

  return v5;
}

- (WFChronoControlDialogRequest)initWithControlType:(unint64_t)type identity:(id)identity attribution:(id)attribution
{
  identityCopy = identity;
  v14.receiver = self;
  v14.super_class = WFChronoControlDialogRequest;
  v10 = [(WFDialogRequest *)&v14 initWithAttribution:attribution prompt:0];
  v11 = v10;
  if (v10)
  {
    v10->_controlType = type;
    objc_storeStrong(&v10->_controlIdentity, identity);
    v12 = v11;
  }

  return v11;
}

@end