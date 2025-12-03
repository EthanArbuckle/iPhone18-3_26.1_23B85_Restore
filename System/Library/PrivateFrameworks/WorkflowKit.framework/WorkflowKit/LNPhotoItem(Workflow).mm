@interface LNPhotoItem(Workflow)
- (id)initWithSerializedRepresentation:()Workflow;
- (id)serializedRepresentation;
@end

@implementation LNPhotoItem(Workflow)

- (id)serializedRepresentation
{
  v2 = objc_opt_new();
  identifier = [self identifier];
  [v2 setObject:identifier forKey:@"identifier"];

  type = [self type];
  [v2 setObject:type forKey:@"type"];

  return v2;
}

- (id)initWithSerializedRepresentation:()Workflow
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);

  if (v6)
  {
    v7 = [v6 objectForKey:@"identifier"];
    v8 = objc_opt_class();
    v9 = WFEnforceClass_1501(v7, v8);

    v10 = [v6 objectForKey:@"type"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);

    self = [self initWithIdentifier:v9 type:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end