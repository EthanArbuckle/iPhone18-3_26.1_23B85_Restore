@interface WebHTMLViewPrivate
- (id).cxx_construct;
- (void)clear;
- (void)dealloc;
@end

@implementation WebHTMLViewPrivate

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = WebHTMLViewPrivate;
    [(WebHTMLViewPrivate *)&v4 dealloc];
  }
}

- (void)clear
{
  m_ptr = self->mouseDownEvent.m_ptr;
  self->mouseDownEvent.m_ptr = 0;
  if (m_ptr)
  {
  }

  v4 = self->keyDownEvent.m_ptr;
  self->keyDownEvent.m_ptr = 0;
  if (v4)
  {
  }

  v5 = self->pluginController.m_ptr;
  self->pluginController.m_ptr = 0;
  if (v5)
  {
  }

  v6 = self->dataSource.m_ptr;
  self->dataSource.m_ptr = 0;
  if (v6)
  {
  }

  self->layerHostingView = 0;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 13) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end