@interface CNVCardLiteralLine
+ (id)lineWithLiteralValue:(id)value;
- (CNVCardLiteralLine)initWithLiteralValue:(id)value;
@end

@implementation CNVCardLiteralLine

+ (id)lineWithLiteralValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithLiteralValue:valueCopy];

  return v5;
}

- (CNVCardLiteralLine)initWithLiteralValue:(id)value
{
  valueCopy = value;
  v5 = [(CNVCardLiteralLine *)self init];
  if (v5)
  {
    v6 = [valueCopy copy];
    literalValue = v5->_literalValue;
    v5->_literalValue = v6;

    v8 = v5;
  }

  return v5;
}

@end