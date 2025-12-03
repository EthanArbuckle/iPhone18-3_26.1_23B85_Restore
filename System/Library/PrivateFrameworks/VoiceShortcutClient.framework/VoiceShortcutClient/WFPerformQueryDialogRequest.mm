@interface WFPerformQueryDialogRequest
- (WFPerformQueryDialogRequest)initWithCoder:(id)coder;
- (WFPerformQueryDialogRequest)initWithParameterKey:(id)key attribution:(id)attribution prompt:(id)prompt;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPerformQueryDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFPerformQueryDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFPerformQueryDialogRequest *)self parameterKey:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"parameterKey"];
}

- (WFPerformQueryDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFPerformQueryDialogRequest;
  v5 = [(WFDialogRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
    parameterKey = v5->_parameterKey;
    v5->_parameterKey = v6;

    v8 = v5;
  }

  return v5;
}

- (WFPerformQueryDialogRequest)initWithParameterKey:(id)key attribution:(id)attribution prompt:(id)prompt
{
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = WFPerformQueryDialogRequest;
  v9 = [(WFDialogRequest *)&v14 initWithAttribution:attribution prompt:prompt];
  if (v9)
  {
    v10 = [keyCopy copy];
    parameterKey = v9->_parameterKey;
    v9->_parameterKey = v10;

    v12 = v9;
  }

  return v9;
}

@end