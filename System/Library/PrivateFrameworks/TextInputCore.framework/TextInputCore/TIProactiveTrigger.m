@interface TIProactiveTrigger
- (BOOL)isEqual:(id)a3;
- (TIProactiveTrigger)initWithSourceType:(unsigned __int8)a3 attributes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TIProactiveTrigger

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self->_triggerSourceType == *(v6 + 8))
    {
      attributes = self->_attributes;
      if (attributes == v6[2])
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSDictionary *)attributes isEqual:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_triggerSourceType;
    v7 = [(NSDictionary *)self->_attributes copyWithZone:a3];
    v8 = v6[2];
    v6[2] = v7;
  }

  return v6;
}

- (TIProactiveTrigger)initWithSourceType:(unsigned __int8)a3 attributes:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TIProactiveTrigger;
  v7 = [(TIProactiveTrigger *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_triggerSourceType = a3;
    v9 = [v6 copy];
    attributes = v8->_attributes;
    v8->_attributes = v9;
  }

  return v8;
}

@end