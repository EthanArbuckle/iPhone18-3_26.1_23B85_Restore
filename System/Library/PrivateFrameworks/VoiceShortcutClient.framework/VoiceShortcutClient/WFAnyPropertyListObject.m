@interface WFAnyPropertyListObject
+ (id)objectWithPropertyListObject:(id)a3;
- (WFAnyPropertyListObject)initWithCoder:(id)a3;
- (WFAnyPropertyListObject)initWithPropertyListObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAnyPropertyListObject

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFAnyPropertyListObject *)self propertyListObject];
  [v4 encodeObject:v5 forKey:@"propertyListObject"];
}

- (WFAnyPropertyListObject)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"propertyListObject"];

  if (v12)
  {
    self = [(WFAnyPropertyListObject *)self initWithPropertyListObject:v12];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (WFAnyPropertyListObject)initWithPropertyListObject:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFPropertyListObject.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"propertyListObject"}];
  }

  v12.receiver = self;
  v12.super_class = WFAnyPropertyListObject;
  v6 = [(WFAnyPropertyListObject *)&v12 init];
  if (v6)
  {
    v7 = [v5 copyWithZone:0];
    propertyListObject = v6->_propertyListObject;
    v6->_propertyListObject = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)objectWithPropertyListObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[a1 alloc] initWithPropertyListObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end