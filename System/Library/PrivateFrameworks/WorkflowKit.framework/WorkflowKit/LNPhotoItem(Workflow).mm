@interface LNPhotoItem(Workflow)
- (id)initWithSerializedRepresentation:()Workflow;
- (id)serializedRepresentation;
@end

@implementation LNPhotoItem(Workflow)

- (id)serializedRepresentation
{
  v2 = objc_opt_new();
  v3 = [a1 identifier];
  [v2 setObject:v3 forKey:@"identifier"];

  v4 = [a1 type];
  [v2 setObject:v4 forKey:@"type"];

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

    a1 = [a1 initWithIdentifier:v9 type:v12];
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end