@interface VIObjectKnowledgeProperty
- (BOOL)isEqual:(id)a3;
- (VIObjectKnowledgeProperty)initWithName:(id)a3 value:(id)a4;
@end

@implementation VIObjectKnowledgeProperty

- (VIObjectKnowledgeProperty)initWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VIObjectKnowledgeProperty;
  v8 = [(VIObjectKnowledgeProperty *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [(VIObjectKnowledgeProperty *)v6 name];
    if (VIObjectIsEqual(v7, self->_name))
    {
      v8 = [(VIObjectKnowledgeProperty *)v6 value];
      IsEqual = VIObjectIsEqual(v8, self->_value);
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

@end