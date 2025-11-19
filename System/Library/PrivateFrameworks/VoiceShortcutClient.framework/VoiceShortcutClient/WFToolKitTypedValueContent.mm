@interface WFToolKitTypedValueContent
- (WFToolKitTypedValueContent)initWithCoder:(id)a3;
- (WFToolKitTypedValueContent)initWithEncodedTypedValue:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFToolKitTypedValueContent

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFToolKitTypedValueContent *)self encodedTypedValue];
  [v4 encodeObject:v5 forKey:@"encodedTypedValue"];
}

- (WFToolKitTypedValueContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedTypedValue"];

  if (v5)
  {
    self = [(WFToolKitTypedValueContent *)self initWithEncodedTypedValue:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFToolKitTypedValueContent)initWithEncodedTypedValue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFToolKitTypedValueContent;
  v5 = [(WFToolKitTypedValueContent *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    encodedTypedValue = v5->_encodedTypedValue;
    v5->_encodedTypedValue = v6;

    v8 = v5;
  }

  return v5;
}

@end