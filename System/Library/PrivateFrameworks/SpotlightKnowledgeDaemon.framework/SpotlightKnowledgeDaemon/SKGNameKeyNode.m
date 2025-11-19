@interface SKGNameKeyNode
+ (id)nameKeyWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
- (SKGNameKeyNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 weight:(float)a5 properties:(id)a6;
- (SKGNameKeyNode)initWithNameKey:(id)a3 firstName:(id)a4 lastName:(id)a5;
- (id)propertyDictionary;
@end

@implementation SKGNameKeyNode

+ (id)nameKeyWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = [a4 graph];
  v6 = [v5 nodeForIdentifier:a3];

  v7 = [SKGNameKeyNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [v6 propertyForKey:@"firstName"];
  v10 = [v6 propertyForKey:@"lastName"];
  v11 = [(SKGNameKeyNode *)v7 initWithNameKey:v8 firstName:v9 lastName:v10];

  return v11;
}

- (SKGNameKeyNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 weight:(float)a5 properties:(id)a6
{
  v7 = a6;
  v8 = [v7 objectForKey:@"value"];
  if (v8)
  {
    v9 = [v7 objectForKey:@"firstName"];
    if (v9)
    {
      v10 = [v7 objectForKey:@"lastName"];
      if (v10)
      {
        self = [(SKGNameKeyNode *)self initWithNameKey:v8 firstName:v9 lastName:v10];
        v11 = self;
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
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SKGNameKeyNode)initWithNameKey:(id)a3 firstName:(id)a4 lastName:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SKGNameKeyNode;
  v11 = [(SKGNode *)&v14 initWithValue:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_firstName, a4);
    objc_storeStrong(&v12->_lastName, a5);
  }

  return v12;
}

- (id)propertyDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"value";
  v3 = [(SKGNode *)self value];
  firstName = self->_firstName;
  v9[0] = v3;
  v9[1] = firstName;
  v8[1] = @"firstName";
  v8[2] = @"lastName";
  v9[2] = self->_lastName;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end