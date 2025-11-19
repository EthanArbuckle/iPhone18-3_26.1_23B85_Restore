@interface UPEntityWithValue
- (BOOL)isEqualToEntityWithValue:(id)a3;
- (UPEntityWithValue)initWithType:(id)a3 entityName:(id)a4 entityValue:(id)a5;
@end

@implementation UPEntityWithValue

- (BOOL)isEqualToEntityWithValue:(id)a3
{
  v4 = a3;
  entityType = self->_entityType;
  v6 = [v4 entityType];
  if ([(NSString *)entityType isEqualToString:v6])
  {
    entityName = self->_entityName;
    v8 = [v4 entityName];
    if ([(NSString *)entityName isEqualToString:v8])
    {
      entityValue = self->_entityValue;
      v10 = [v4 entityValue];
      v11 = [(NSString *)entityValue isEqualToString:v10];
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

- (UPEntityWithValue)initWithType:(id)a3 entityName:(id)a4 entityValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = UPEntityWithValue;
  v11 = [(UPEntityWithValue *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    entityType = v11->_entityType;
    v11->_entityType = v12;

    v14 = [v9 copy];
    entityName = v11->_entityName;
    v11->_entityName = v14;

    v16 = [v10 copy];
    entityValue = v11->_entityValue;
    v11->_entityValue = v16;
  }

  return v11;
}

@end