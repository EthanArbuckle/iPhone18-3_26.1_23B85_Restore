@interface _RESectionDescriptor
- (_RESectionDescriptor)initWithHistoricSectionDescriptor:(id)descriptor;
- (_RESectionDescriptor)initWithSectionDescriptor:(id)descriptor;
@end

@implementation _RESectionDescriptor

- (_RESectionDescriptor)initWithSectionDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = _RESectionDescriptor;
  v5 = [(_RESectionDescriptor *)&v11 init];
  if (v5)
  {
    name = [descriptorCopy name];
    name = v5->_name;
    v5->_name = name;

    v5->_invertRanking = 0;
    v5->_maxElementCount = [descriptorCopy maxElementCount];
    orderedRules = [descriptorCopy orderedRules];
    rules = v5->_rules;
    v5->_rules = orderedRules;

    v5->_allowsSubsections = 1;
  }

  return v5;
}

- (_RESectionDescriptor)initWithHistoricSectionDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = _RESectionDescriptor;
  v5 = [(_RESectionDescriptor *)&v11 init];
  if (v5)
  {
    name = [descriptorCopy name];
    name = v5->_name;
    v5->_name = name;

    v5->_invertRanking = [descriptorCopy invertsRanking];
    v5->_maxElementCount = [descriptorCopy maxElementCount];
    orderedRules = [descriptorCopy orderedRules];
    rules = v5->_rules;
    v5->_rules = orderedRules;

    v5->_allowsSubsections = 1;
  }

  return v5;
}

@end