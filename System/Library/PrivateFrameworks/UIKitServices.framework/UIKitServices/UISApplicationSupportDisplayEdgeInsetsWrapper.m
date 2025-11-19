@interface UISApplicationSupportDisplayEdgeInsetsWrapper
- (UISApplicationSupportDisplayEdgeInsetsWrapper)initWithTop:(double)a3 left:(double)a4 bottom:(double)a5 right:(double)a6;
- (UISApplicationSupportDisplayEdgeInsetsWrapper)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation UISApplicationSupportDisplayEdgeInsetsWrapper

- (UISApplicationSupportDisplayEdgeInsetsWrapper)initWithTop:(double)a3 left:(double)a4 bottom:(double)a5 right:(double)a6
{
  v11.receiver = self;
  v11.super_class = UISApplicationSupportDisplayEdgeInsetsWrapper;
  result = [(UISApplicationSupportDisplayEdgeInsetsWrapper *)&v11 init];
  if (result)
  {
    result->_topInset = a3;
    result->_leftInset = a4;
    result->_bottomInset = a5;
    result->_rightInset = a6;
  }

  return result;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  topInset = self->_topInset;
  v5 = a3;
  MEMORY[0x19A8C5E30](topInset);
  MEMORY[0x19A8C5E30](v5, "UISApplicationSupportDisplayEdgeInsetsWrapperLeft", self->_leftInset);
  MEMORY[0x19A8C5E30](v5, "UISApplicationSupportDisplayEdgeInsetsWrapperBottom", self->_bottomInset);
  MEMORY[0x19A8C5E30](v5, "UISApplicationSupportDisplayEdgeInsetsWrapperRight", self->_rightInset);
}

- (UISApplicationSupportDisplayEdgeInsetsWrapper)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UISApplicationSupportDisplayEdgeInsetsWrapper;
  v5 = [(UISApplicationSupportDisplayEdgeInsetsWrapper *)&v7 init];
  if (v5)
  {
    v5->_topInset = MEMORY[0x19A8C5D70](v4, "UISApplicationSupportDisplayEdgeInsetsWrapperTop");
    v5->_leftInset = MEMORY[0x19A8C5D70](v4, "UISApplicationSupportDisplayEdgeInsetsWrapperLeft");
    v5->_bottomInset = MEMORY[0x19A8C5D70](v4, "UISApplicationSupportDisplayEdgeInsetsWrapperBottom");
    v5->_rightInset = MEMORY[0x19A8C5D70](v4, "UISApplicationSupportDisplayEdgeInsetsWrapperRight");
  }

  return v5;
}

@end