@interface WebKitFullScreenListener
- (WebKitFullScreenListener)initWithElement:(void *)a3 initialCompletionHandler:(void *)a4 finalCompletionHandler:(void *)a5;
- (id).cxx_construct;
- (void)webkitDidEnterFullScreen;
- (void)webkitDidExitFullScreen;
- (void)webkitWillEnterFullScreen;
- (void)webkitWillExitFullScreen;
@end

@implementation WebKitFullScreenListener

- (WebKitFullScreenListener)initWithElement:(void *)a3 initialCompletionHandler:(void *)a4 finalCompletionHandler:(void *)a5
{
  v17.receiver = self;
  v17.super_class = WebKitFullScreenListener;
  v8 = [(WebKitFullScreenListener *)&v17 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  if (a3)
  {
    *(a3 + 7) += 2;
  }

  m_ptr = v8->_element.m_ptr;
  v9->_element.m_ptr = a3;
  if (!m_ptr)
  {
LABEL_7:
    v11 = *a4;
    *a4 = 0;
    ptr = v9->_initialCompletionHandler.m_function.m_callableWrapper.__ptr_;
    v9->_initialCompletionHandler.m_function.m_callableWrapper.__ptr_ = v11;
    if (!ptr)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(m_ptr + 7) != 2)
  {
    *(m_ptr + 7) -= 2;
    goto LABEL_7;
  }

  WebCore::Node::removedLastRef(m_ptr);
  v16 = *a4;
  *a4 = 0;
  ptr = v9->_initialCompletionHandler.m_function.m_callableWrapper.__ptr_;
  v9->_initialCompletionHandler.m_function.m_callableWrapper.__ptr_ = v16;
  if (ptr)
  {
LABEL_8:
    (*(*ptr + 8))(ptr);
  }

LABEL_9:
  v13 = *a5;
  *a5 = 0;
  v14 = v9->_finalCompletionHandler.m_function.m_callableWrapper.__ptr_;
  v9->_finalCompletionHandler.m_function.m_callableWrapper.__ptr_ = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  return v9;
}

- (void)webkitWillEnterFullScreen
{
  m_ptr = self->_element.m_ptr;
  if (m_ptr)
  {
    p_initialCompletionHandler = &self->_initialCompletionHandler;
    if (self->_initialCompletionHandler.m_function.m_callableWrapper.__ptr_)
    {
      v5 = WebCore::Document::fullscreen(*(*(m_ptr + 6) + 8));
      WebCore::DocumentFullscreen::willEnterFullscreen(v5, self->_element.m_ptr);
      WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)>::operator()(p_initialCompletionHandler, v8);
      if (v10 == 1)
      {
        v7 = v9;
        v9 = 0;
        if (v7)
        {
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v6);
          }
        }
      }
    }
  }
}

- (void)webkitDidEnterFullScreen
{
  ptr = self->_finalCompletionHandler.m_function.m_callableWrapper.__ptr_;
  if (ptr)
  {
    self->_finalCompletionHandler.m_function.m_callableWrapper.__ptr_ = 0;
    (*(*ptr + 16))(ptr, 1);
    v3 = *(*ptr + 8);

    v3(ptr);
  }
}

- (void)webkitWillExitFullScreen
{
  m_ptr = self->_element.m_ptr;
  if (m_ptr)
  {
    v3 = WebCore::Document::fullscreen(*(*(m_ptr + 6) + 8));

    MEMORY[0x1EEE56EB0](v3);
  }
}

- (void)webkitDidExitFullScreen
{
  ptr = self->_initialCompletionHandler.m_function.m_callableWrapper.__ptr_;
  p_initialCompletionHandler = &self->_initialCompletionHandler;
  if (ptr)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)>::operator()(p_initialCompletionHandler, &v6);
    if (v8 == 1)
    {
      v5 = v7;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {

          WTF::StringImpl::destroy(v5, v4);
        }
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end