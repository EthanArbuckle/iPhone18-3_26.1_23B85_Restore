@interface CNVCardParameter
+ (id)parameterWithName:(id)name value:(id)value;
- (CNVCardParameter)initWithName:(id)name value:(id)value;
@end

@implementation CNVCardParameter

+ (id)parameterWithName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy value:valueCopy];

  return v8;
}

- (CNVCardParameter)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) != 0 || (v14.receiver = self, v14.super_class = CNVCardParameter, (self = [(CNVCardParameter *)&v14 init]) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    v8 = [nameCopy copy];
    name = self->_name;
    self->_name = v8;

    v10 = [valueCopy copy];
    value = self->_value;
    self->_value = v10;

    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

@end