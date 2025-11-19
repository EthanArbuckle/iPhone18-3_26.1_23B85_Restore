@interface CNVCardParsedParameter
+ (id)parameterWithName:(id)a3 values:(id)a4;
- (CNVCardParsedParameter)initWithName:(id)a3 values:(id)a4;
- (id)description;
@end

@implementation CNVCardParsedParameter

+ (id)parameterWithName:(id)a3 values:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 values:v6];

  return v8;
}

- (CNVCardParsedParameter)initWithName:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNVCardParsedParameter;
  v8 = [(CNVCardParsedParameter *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    values = v8->_values;
    v8->_values = v11;

    v13 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CNVCardParsedParameter *)self name];
  v7 = [(CNVCardParsedParameter *)self values];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"<%@ %p name='%@' values='%@'>", v5, self, v6, v8];

  return v9;
}

@end