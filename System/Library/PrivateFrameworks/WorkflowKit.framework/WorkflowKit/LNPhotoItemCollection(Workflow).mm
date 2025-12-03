@interface LNPhotoItemCollection(Workflow)
- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:;
- (id)serializedRepresentation;
@end

@implementation LNPhotoItemCollection(Workflow)

- (id)serializedRepresentation
{
  v2 = objc_opt_new();
  items = [self items];
  v4 = [items if_map:&__block_literal_global_178_29777];

  [v2 setObject:v4 forKey:@"items"];

  return v2;
}

- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);

  if (v6)
  {
    v7 = [v6 objectForKey:@"items"];
    v8 = objc_opt_class();
    v9 = WFEnforceClass_1501(v7, v8);

    if (v9)
    {
      v10 = [v9 if_map:&__block_literal_global_29783];
      self = [self initWithItems:v10];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end