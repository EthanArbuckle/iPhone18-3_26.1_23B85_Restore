@interface WebFramePrivate
- (id).cxx_construct;
- (void)setWebFrameView:(id)view;
@end

@implementation WebFramePrivate

- (void)setWebFrameView:(id)view
{
  if (view)
  {
    viewCopy = view;
  }

  m_ptr = self->webFrameView.m_ptr;
  self->webFrameView.m_ptr = view;
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