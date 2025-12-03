@interface CNVCardParsedParameter
+ (id)parameterWithName:(id)name values:(id)values;
- (CNVCardParsedParameter)initWithName:(id)name values:(id)values;
- (id)description;
@end

@implementation CNVCardParsedParameter

+ (id)parameterWithName:(id)name values:(id)values
{
  valuesCopy = values;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy values:valuesCopy];

  return v8;
}

- (CNVCardParsedParameter)initWithName:(id)name values:(id)values
{
  nameCopy = name;
  valuesCopy = values;
  v15.receiver = self;
  v15.super_class = CNVCardParsedParameter;
  v8 = [(CNVCardParsedParameter *)&v15 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [valuesCopy copy];
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
  name = [(CNVCardParsedParameter *)self name];
  values = [(CNVCardParsedParameter *)self values];
  v8 = [values componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"<%@ %p name='%@' values='%@'>", v5, self, name, v8];

  return v9;
}

@end