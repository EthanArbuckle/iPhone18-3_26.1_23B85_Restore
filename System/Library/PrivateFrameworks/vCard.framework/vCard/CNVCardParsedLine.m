@interface CNVCardParsedLine
- (CNVCardParsedLine)initWithName:(id)a3;
- (id)description;
@end

@implementation CNVCardParsedLine

- (CNVCardParsedLine)initWithName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNVCardParsedLine;
  v5 = [(CNVCardParsedLine *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v5 = [(CNVCardParsedLine *)self name];
  v6 = [(CNVCardParsedLine *)self value];
  v7 = [v3 stringWithFormat:@"<%@ %p %@='%@' primary=%d>", v4, self, v5, v6, -[CNVCardParsedLine isPrimary](self, "isPrimary")];

  return v7;
}

@end