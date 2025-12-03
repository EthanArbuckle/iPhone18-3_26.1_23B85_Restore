@interface SKGNameKeyNode
+ (id)nameKeyWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGNameKeyNode)initWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (SKGNameKeyNode)initWithNameKey:(id)key firstName:(id)name lastName:(id)lastName;
- (id)propertyDictionary;
@end

@implementation SKGNameKeyNode

+ (id)nameKeyWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGNameKeyNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [v6 propertyForKey:@"firstName"];
  v10 = [v6 propertyForKey:@"lastName"];
  v11 = [(SKGNameKeyNode *)v7 initWithNameKey:v8 firstName:v9 lastName:v10];

  return v11;
}

- (SKGNameKeyNode)initWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  propertiesCopy = properties;
  v8 = [propertiesCopy objectForKey:@"value"];
  if (v8)
  {
    v9 = [propertiesCopy objectForKey:@"firstName"];
    if (v9)
    {
      v10 = [propertiesCopy objectForKey:@"lastName"];
      if (v10)
      {
        self = [(SKGNameKeyNode *)self initWithNameKey:v8 firstName:v9 lastName:v10];
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
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SKGNameKeyNode)initWithNameKey:(id)key firstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  v14.receiver = self;
  v14.super_class = SKGNameKeyNode;
  v11 = [(SKGNode *)&v14 initWithValue:key];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_firstName, name);
    objc_storeStrong(&v12->_lastName, lastName);
  }

  return v12;
}

- (id)propertyDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"value";
  value = [(SKGNode *)self value];
  firstName = self->_firstName;
  v9[0] = value;
  v9[1] = firstName;
  v8[1] = @"firstName";
  v8[2] = @"lastName";
  v9[2] = self->_lastName;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end