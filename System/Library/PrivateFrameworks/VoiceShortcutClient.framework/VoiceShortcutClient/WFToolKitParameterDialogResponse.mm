@interface WFToolKitParameterDialogResponse
- (WFToolKitParameterDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFToolKitParameterDialogResponse)initWithCoder:(id)coder;
- (WFToolKitParameterDialogResponse)initWithEncodedTypedValue:(id)value;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFToolKitParameterDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFToolKitParameterDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFToolKitParameterDialogResponse *)self encodedTypedValue:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"encodedTypedValue"];
}

- (WFToolKitParameterDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WFToolKitParameterDialogResponse;
  v5 = [(WFDialogResponse *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedTypedValue"];
    encodedTypedValue = v5->_encodedTypedValue;
    v5->_encodedTypedValue = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFToolKitParameterDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFToolKitParameterDialogResponse *)self encodedTypedValue:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"encodedTypedValue"];
}

- (WFToolKitParameterDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WFToolKitParameterDialogResponse;
  v5 = [(WFDialogResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedTypedValue"];
    encodedTypedValue = v5->_encodedTypedValue;
    v5->_encodedTypedValue = v6;
  }

  return v5;
}

- (WFToolKitParameterDialogResponse)initWithEncodedTypedValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = WFToolKitParameterDialogResponse;
  v6 = [(WFDialogResponse *)&v10 initWithCancelled:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_encodedTypedValue, value);
    v8 = v7;
  }

  return v7;
}

@end