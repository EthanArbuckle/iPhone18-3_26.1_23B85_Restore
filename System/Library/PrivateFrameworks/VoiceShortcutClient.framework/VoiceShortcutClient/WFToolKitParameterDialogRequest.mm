@interface WFToolKitParameterDialogRequest
- (WFToolKitParameterDialogRequest)initWithCoder:(id)coder;
- (WFToolKitParameterDialogRequest)initWithParameterKey:(id)key attribution:(id)attribution prompt:(id)prompt;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFToolKitParameterDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFToolKitParameterDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFToolKitParameterDialogRequest *)self parameterKey:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"parameterKey"];
}

- (WFToolKitParameterDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WFToolKitParameterDialogRequest;
  v5 = [(WFDialogRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
    parameterKey = v5->_parameterKey;
    v5->_parameterKey = v6;
  }

  return v5;
}

- (WFToolKitParameterDialogRequest)initWithParameterKey:(id)key attribution:(id)attribution prompt:(id)prompt
{
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = WFToolKitParameterDialogRequest;
  v10 = [(WFDialogRequest *)&v14 initWithAttribution:attribution prompt:prompt];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parameterKey, key);
    v12 = v11;
  }

  return v11;
}

@end