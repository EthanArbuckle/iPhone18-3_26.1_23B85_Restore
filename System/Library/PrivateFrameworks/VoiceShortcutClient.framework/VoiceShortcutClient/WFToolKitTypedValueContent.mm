@interface WFToolKitTypedValueContent
- (WFToolKitTypedValueContent)initWithCoder:(id)coder;
- (WFToolKitTypedValueContent)initWithEncodedTypedValue:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFToolKitTypedValueContent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodedTypedValue = [(WFToolKitTypedValueContent *)self encodedTypedValue];
  [coderCopy encodeObject:encodedTypedValue forKey:@"encodedTypedValue"];
}

- (WFToolKitTypedValueContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedTypedValue"];

  if (v5)
  {
    self = [(WFToolKitTypedValueContent *)self initWithEncodedTypedValue:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFToolKitTypedValueContent)initWithEncodedTypedValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = WFToolKitTypedValueContent;
  v5 = [(WFToolKitTypedValueContent *)&v10 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    encodedTypedValue = v5->_encodedTypedValue;
    v5->_encodedTypedValue = v6;

    v8 = v5;
  }

  return v5;
}

@end