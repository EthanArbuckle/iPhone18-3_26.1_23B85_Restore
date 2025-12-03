@interface WFAnyPropertyListObject
+ (id)objectWithPropertyListObject:(id)object;
- (WFAnyPropertyListObject)initWithCoder:(id)coder;
- (WFAnyPropertyListObject)initWithPropertyListObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAnyPropertyListObject

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  propertyListObject = [(WFAnyPropertyListObject *)self propertyListObject];
  [coderCopy encodeObject:propertyListObject forKey:@"propertyListObject"];
}

- (WFAnyPropertyListObject)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"propertyListObject"];

  if (v12)
  {
    self = [(WFAnyPropertyListObject *)self initWithPropertyListObject:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFAnyPropertyListObject)initWithPropertyListObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPropertyListObject.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"propertyListObject"}];
  }

  v12.receiver = self;
  v12.super_class = WFAnyPropertyListObject;
  v6 = [(WFAnyPropertyListObject *)&v12 init];
  if (v6)
  {
    v7 = [objectCopy copyWithZone:0];
    propertyListObject = v6->_propertyListObject;
    v6->_propertyListObject = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)objectWithPropertyListObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    v5 = [[self alloc] initWithPropertyListObject:objectCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end