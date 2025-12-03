@interface TSCH3DContext
- (id).cxx_construct;
- (void)setCurrentFramebufferAttributes:(const FramebufferAttributes *)attributes;
@end

@implementation TSCH3DContext

- (void)setCurrentFramebufferAttributes:(const FramebufferAttributes *)attributes
{
  v3 = *&attributes->type;
  *(&self->_currentFramebufferAttributes.samples + 7) = *(&attributes->samples + 7);
  *&self->_currentFramebufferAttributes.type = v3;
}

- (id).cxx_construct
{
  *(self + 2) = 3;
  *(self + 2) = 1;
  *(self + 3) = 0;
  *(self + 29) = 0;
  *(self + 37) = 1;
  return self;
}

@end