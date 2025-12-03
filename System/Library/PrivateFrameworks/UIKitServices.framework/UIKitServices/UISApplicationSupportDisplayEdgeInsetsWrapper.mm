@interface UISApplicationSupportDisplayEdgeInsetsWrapper
- (UISApplicationSupportDisplayEdgeInsetsWrapper)initWithTop:(double)top left:(double)left bottom:(double)bottom right:(double)right;
- (UISApplicationSupportDisplayEdgeInsetsWrapper)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation UISApplicationSupportDisplayEdgeInsetsWrapper

- (UISApplicationSupportDisplayEdgeInsetsWrapper)initWithTop:(double)top left:(double)left bottom:(double)bottom right:(double)right
{
  v11.receiver = self;
  v11.super_class = UISApplicationSupportDisplayEdgeInsetsWrapper;
  result = [(UISApplicationSupportDisplayEdgeInsetsWrapper *)&v11 init];
  if (result)
  {
    result->_topInset = top;
    result->_leftInset = left;
    result->_bottomInset = bottom;
    result->_rightInset = right;
  }

  return result;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  topInset = self->_topInset;
  dictionaryCopy = dictionary;
  MEMORY[0x19A8C5E30](topInset);
  MEMORY[0x19A8C5E30](dictionaryCopy, "UISApplicationSupportDisplayEdgeInsetsWrapperLeft", self->_leftInset);
  MEMORY[0x19A8C5E30](dictionaryCopy, "UISApplicationSupportDisplayEdgeInsetsWrapperBottom", self->_bottomInset);
  MEMORY[0x19A8C5E30](dictionaryCopy, "UISApplicationSupportDisplayEdgeInsetsWrapperRight", self->_rightInset);
}

- (UISApplicationSupportDisplayEdgeInsetsWrapper)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = UISApplicationSupportDisplayEdgeInsetsWrapper;
  v5 = [(UISApplicationSupportDisplayEdgeInsetsWrapper *)&v7 init];
  if (v5)
  {
    v5->_topInset = MEMORY[0x19A8C5D70](dictionaryCopy, "UISApplicationSupportDisplayEdgeInsetsWrapperTop");
    v5->_leftInset = MEMORY[0x19A8C5D70](dictionaryCopy, "UISApplicationSupportDisplayEdgeInsetsWrapperLeft");
    v5->_bottomInset = MEMORY[0x19A8C5D70](dictionaryCopy, "UISApplicationSupportDisplayEdgeInsetsWrapperBottom");
    v5->_rightInset = MEMORY[0x19A8C5D70](dictionaryCopy, "UISApplicationSupportDisplayEdgeInsetsWrapperRight");
  }

  return v5;
}

@end