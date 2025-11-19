@interface UPIntentWithSingleEntity
- (BOOL)isEqualToIntentWithSingleEntity:(id)a3;
- (UPIntentWithSingleEntity)initWithIntent:(id)a3 singleEntity:(id)a4;
@end

@implementation UPIntentWithSingleEntity

- (BOOL)isEqualToIntentWithSingleEntity:(id)a3
{
  v4 = a3;
  intent = self->_intent;
  v6 = [v4 intent];
  if ([(NSString *)intent isEqualToString:v6])
  {
    entity = self->_entity;
    v8 = [v4 entity];
    v9 = [(UPEntityWithValue *)entity isEqualToEntityWithValue:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UPIntentWithSingleEntity)initWithIntent:(id)a3 singleEntity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UPIntentWithSingleEntity;
  v9 = [(UPIntentWithSingleEntity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intent, a3);
    objc_storeStrong(&v10->_entity, a4);
  }

  return v10;
}

@end