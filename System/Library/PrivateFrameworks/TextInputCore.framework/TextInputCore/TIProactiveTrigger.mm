@interface TIProactiveTrigger
- (BOOL)isEqual:(id)equal;
- (TIProactiveTrigger)initWithSourceType:(unsigned __int8)type attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TIProactiveTrigger

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_triggerSourceType;
    v7 = [(NSDictionary *)self->_attributes copyWithZone:zone];
    v8 = v6[2];
    v6[2] = v7;
  }

  return v6;
}

- (TIProactiveTrigger)initWithSourceType:(unsigned __int8)type attributes:(id)attributes
{
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = TIProactiveTrigger;
  v7 = [(TIProactiveTrigger *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_triggerSourceType = type;
    v9 = [attributesCopy copy];
    attributes = v8->_attributes;
    v8->_attributes = v9;
  }

  return v8;
}

@end