@interface _RESectionDescriptor
- (_RESectionDescriptor)initWithHistoricSectionDescriptor:(id)a3;
- (_RESectionDescriptor)initWithSectionDescriptor:(id)a3;
@end

@implementation _RESectionDescriptor

- (_RESectionDescriptor)initWithSectionDescriptor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _RESectionDescriptor;
  v5 = [(_RESectionDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v5->_invertRanking = 0;
    v5->_maxElementCount = [v4 maxElementCount];
    v8 = [v4 orderedRules];
    rules = v5->_rules;
    v5->_rules = v8;

    v5->_allowsSubsections = 1;
  }

  return v5;
}

- (_RESectionDescriptor)initWithHistoricSectionDescriptor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _RESectionDescriptor;
  v5 = [(_RESectionDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v5->_invertRanking = [v4 invertsRanking];
    v5->_maxElementCount = [v4 maxElementCount];
    v8 = [v4 orderedRules];
    rules = v5->_rules;
    v5->_rules = v8;

    v5->_allowsSubsections = 1;
  }

  return v5;
}

@end