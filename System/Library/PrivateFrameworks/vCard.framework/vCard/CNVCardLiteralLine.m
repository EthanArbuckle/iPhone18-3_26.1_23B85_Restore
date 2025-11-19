@interface CNVCardLiteralLine
+ (id)lineWithLiteralValue:(id)a3;
- (CNVCardLiteralLine)initWithLiteralValue:(id)a3;
@end

@implementation CNVCardLiteralLine

+ (id)lineWithLiteralValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithLiteralValue:v4];

  return v5;
}

- (CNVCardLiteralLine)initWithLiteralValue:(id)a3
{
  v4 = a3;
  v5 = [(CNVCardLiteralLine *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    literalValue = v5->_literalValue;
    v5->_literalValue = v6;

    v8 = v5;
  }

  return v5;
}

@end