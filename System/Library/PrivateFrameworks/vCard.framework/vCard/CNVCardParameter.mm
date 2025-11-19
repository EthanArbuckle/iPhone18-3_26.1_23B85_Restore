@interface CNVCardParameter
+ (id)parameterWithName:(id)a3 value:(id)a4;
- (CNVCardParameter)initWithName:(id)a3 value:(id)a4;
@end

@implementation CNVCardParameter

+ (id)parameterWithName:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 value:v6];

  return v8;
}

- (CNVCardParameter)initWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) != 0 || (v14.receiver = self, v14.super_class = CNVCardParameter, (self = [(CNVCardParameter *)&v14 init]) == 0))
  {
    v12 = 0;
  }

  else
  {
    v8 = [v6 copy];
    name = self->_name;
    self->_name = v8;

    v10 = [v7 copy];
    value = self->_value;
    self->_value = v10;

    self = self;
    v12 = self;
  }

  return v12;
}

@end