@interface SRUIFStack
- (NSArray)allObjects;
- (SRUIFStack)initWithArray:(id)array;
- (SRUIFStack)initWithStack:(id)stack;
- (id)topObject;
@end

@implementation SRUIFStack

- (SRUIFStack)initWithArray:(id)array
{
  arrayCopy = array;
  v11.receiver = self;
  v11.super_class = SRUIFStack;
  v5 = [(SRUIFStack *)&v11 init];
  if (v5)
  {
    v6 = [arrayCopy mutableCopy];
    v7 = v6;
    if (v6)
    {
      array = v6;
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    elements = v5->_elements;
    v5->_elements = array;
  }

  return v5;
}

- (SRUIFStack)initWithStack:(id)stack
{
  _elements = [stack _elements];
  v5 = [(SRUIFStack *)self initWithArray:_elements];

  return v5;
}

- (id)topObject
{
  _elements = [(SRUIFStack *)self _elements];
  lastObject = [_elements lastObject];

  return lastObject;
}

- (NSArray)allObjects
{
  _elements = [(SRUIFStack *)self _elements];
  v3 = [_elements copy];

  return v3;
}

@end