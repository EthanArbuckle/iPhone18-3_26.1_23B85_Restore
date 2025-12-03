@interface VIObjectKnowledgeProperty
- (BOOL)isEqual:(id)equal;
- (VIObjectKnowledgeProperty)initWithName:(id)name value:(id)value;
@end

@implementation VIObjectKnowledgeProperty

- (VIObjectKnowledgeProperty)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = VIObjectKnowledgeProperty;
  v8 = [(VIObjectKnowledgeProperty *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    name = [(VIObjectKnowledgeProperty *)v6 name];
    if (VIObjectIsEqual(name, self->_name))
    {
      value = [(VIObjectKnowledgeProperty *)v6 value];
      IsEqual = VIObjectIsEqual(value, self->_value);
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

@end