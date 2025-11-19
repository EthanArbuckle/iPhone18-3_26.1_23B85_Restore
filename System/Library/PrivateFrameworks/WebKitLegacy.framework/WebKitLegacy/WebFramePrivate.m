@interface WebFramePrivate
- (id).cxx_construct;
- (void)setWebFrameView:(id)a3;
@end

@implementation WebFramePrivate

- (void)setWebFrameView:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->webFrameView.m_ptr;
  self->webFrameView.m_ptr = a3;
  if (m_ptr)
  {
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end