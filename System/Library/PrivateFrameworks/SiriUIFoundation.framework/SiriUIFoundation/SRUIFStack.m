@interface SRUIFStack
- (NSArray)allObjects;
- (SRUIFStack)initWithArray:(id)a3;
- (SRUIFStack)initWithStack:(id)a3;
- (id)topObject;
@end

@implementation SRUIFStack

- (SRUIFStack)initWithArray:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SRUIFStack;
  v5 = [(SRUIFStack *)&v11 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB18] array];
    }

    elements = v5->_elements;
    v5->_elements = v8;
  }

  return v5;
}

- (SRUIFStack)initWithStack:(id)a3
{
  v4 = [a3 _elements];
  v5 = [(SRUIFStack *)self initWithArray:v4];

  return v5;
}

- (id)topObject
{
  v2 = [(SRUIFStack *)self _elements];
  v3 = [v2 lastObject];

  return v3;
}

- (NSArray)allObjects
{
  v2 = [(SRUIFStack *)self _elements];
  v3 = [v2 copy];

  return v3;
}

@end