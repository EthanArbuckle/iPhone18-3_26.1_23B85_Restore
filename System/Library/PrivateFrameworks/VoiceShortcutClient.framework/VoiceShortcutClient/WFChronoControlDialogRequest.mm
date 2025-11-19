@interface WFChronoControlDialogRequest
- (WFChronoControlDialogRequest)initWithCoder:(id)a3;
- (WFChronoControlDialogRequest)initWithControlType:(unint64_t)a3 identity:(id)a4 attribution:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFChronoControlDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFChronoControlDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[WFChronoControlDialogRequest controlType](self forKey:{"controlType", v6.receiver, v6.super_class), @"controlType"}];
  v5 = [(WFChronoControlDialogRequest *)self controlIdentity];
  [v4 encodeObject:v5 forKey:@"controlIdentity"];
}

- (WFChronoControlDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFChronoControlDialogRequest;
  v5 = [(WFDialogRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_controlType = [v4 decodeIntegerForKey:@"controlType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"controlIdentity"];
    controlIdentity = v5->_controlIdentity;
    v5->_controlIdentity = v6;

    v8 = v5;
  }

  return v5;
}

- (WFChronoControlDialogRequest)initWithControlType:(unint64_t)a3 identity:(id)a4 attribution:(id)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = WFChronoControlDialogRequest;
  v10 = [(WFDialogRequest *)&v14 initWithAttribution:a5 prompt:0];
  v11 = v10;
  if (v10)
  {
    v10->_controlType = a3;
    objc_storeStrong(&v10->_controlIdentity, a4);
    v12 = v11;
  }

  return v11;
}

@end