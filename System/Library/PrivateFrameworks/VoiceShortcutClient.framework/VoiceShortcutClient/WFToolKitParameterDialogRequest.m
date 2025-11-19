@interface WFToolKitParameterDialogRequest
- (WFToolKitParameterDialogRequest)initWithCoder:(id)a3;
- (WFToolKitParameterDialogRequest)initWithParameterKey:(id)a3 attribution:(id)a4 prompt:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFToolKitParameterDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFToolKitParameterDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v6 encodeWithCoder:v4];
  v5 = [(WFToolKitParameterDialogRequest *)self parameterKey:v6.receiver];
  [v4 encodeObject:v5 forKey:@"parameterKey"];
}

- (WFToolKitParameterDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFToolKitParameterDialogRequest;
  v5 = [(WFDialogRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
    parameterKey = v5->_parameterKey;
    v5->_parameterKey = v6;
  }

  return v5;
}

- (WFToolKitParameterDialogRequest)initWithParameterKey:(id)a3 attribution:(id)a4 prompt:(id)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = WFToolKitParameterDialogRequest;
  v10 = [(WFDialogRequest *)&v14 initWithAttribution:a4 prompt:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parameterKey, a3);
    v12 = v11;
  }

  return v11;
}

@end