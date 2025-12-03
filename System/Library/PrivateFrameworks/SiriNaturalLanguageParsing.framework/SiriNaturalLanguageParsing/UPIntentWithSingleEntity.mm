@interface UPIntentWithSingleEntity
- (BOOL)isEqualToIntentWithSingleEntity:(id)entity;
- (UPIntentWithSingleEntity)initWithIntent:(id)intent singleEntity:(id)entity;
@end

@implementation UPIntentWithSingleEntity

- (BOOL)isEqualToIntentWithSingleEntity:(id)entity
{
  entityCopy = entity;
  intent = self->_intent;
  intent = [entityCopy intent];
  if ([(NSString *)intent isEqualToString:intent])
  {
    entity = self->_entity;
    entity = [entityCopy entity];
    v9 = [(UPEntityWithValue *)entity isEqualToEntityWithValue:entity];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UPIntentWithSingleEntity)initWithIntent:(id)intent singleEntity:(id)entity
{
  intentCopy = intent;
  entityCopy = entity;
  v12.receiver = self;
  v12.super_class = UPIntentWithSingleEntity;
  v9 = [(UPIntentWithSingleEntity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intent, intent);
    objc_storeStrong(&v10->_entity, entity);
  }

  return v10;
}

@end