@interface UPEntityWithValue
- (BOOL)isEqualToEntityWithValue:(id)value;
- (UPEntityWithValue)initWithType:(id)type entityName:(id)name entityValue:(id)value;
@end

@implementation UPEntityWithValue

- (BOOL)isEqualToEntityWithValue:(id)value
{
  valueCopy = value;
  entityType = self->_entityType;
  entityType = [valueCopy entityType];
  if ([(NSString *)entityType isEqualToString:entityType])
  {
    entityName = self->_entityName;
    entityName = [valueCopy entityName];
    if ([(NSString *)entityName isEqualToString:entityName])
    {
      entityValue = self->_entityValue;
      entityValue = [valueCopy entityValue];
      v11 = [(NSString *)entityValue isEqualToString:entityValue];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UPEntityWithValue)initWithType:(id)type entityName:(id)name entityValue:(id)value
{
  typeCopy = type;
  nameCopy = name;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = UPEntityWithValue;
  v11 = [(UPEntityWithValue *)&v19 init];
  if (v11)
  {
    v12 = [typeCopy copy];
    entityType = v11->_entityType;
    v11->_entityType = v12;

    v14 = [nameCopy copy];
    entityName = v11->_entityName;
    v11->_entityName = v14;

    v16 = [valueCopy copy];
    entityValue = v11->_entityValue;
    v11->_entityValue = v16;
  }

  return v11;
}

@end