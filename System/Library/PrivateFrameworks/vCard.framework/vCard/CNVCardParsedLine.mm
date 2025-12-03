@interface CNVCardParsedLine
- (CNVCardParsedLine)initWithName:(id)name;
- (id)description;
@end

@implementation CNVCardParsedLine

- (CNVCardParsedLine)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = CNVCardParsedLine;
  v5 = [(CNVCardParsedLine *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(CNVCardParsedLine *)self name];
  value = [(CNVCardParsedLine *)self value];
  v7 = [v3 stringWithFormat:@"<%@ %p %@='%@' primary=%d>", v4, self, name, value, -[CNVCardParsedLine isPrimary](self, "isPrimary")];

  return v7;
}

@end