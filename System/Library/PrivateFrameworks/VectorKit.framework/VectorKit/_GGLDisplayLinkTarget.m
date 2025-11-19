@interface _GGLDisplayLinkTarget
- (_GGLDisplayLinkTarget)initWithCallbacker:(weak_ptr<ggl::RunLoop::_RunLoopCallbacker>)a3;
- (id).cxx_construct;
- (void)displayLinkFired:(id)a3;
@end

@implementation _GGLDisplayLinkTarget

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)displayLinkFired:(id)a3
{
  v8 = a3;
  cntrl = self->_callbacker.__cntrl_;
  if (cntrl)
  {
    v5 = std::__shared_weak_count::lock(cntrl);
    if (v5)
    {
      v6 = v5;
      ptr = self->_callbacker.__ptr_;
      if (ptr)
      {
        [v8 targetTimestamp];
        (*(**ptr + 40))();
        (*(**ptr + 24))();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

- (_GGLDisplayLinkTarget)initWithCallbacker:(weak_ptr<ggl::RunLoop::_RunLoopCallbacker>)a3
{
  ptr = a3.__ptr_;
  v11.receiver = self;
  v11.super_class = _GGLDisplayLinkTarget;
  v4 = [(_GGLDisplayLinkTarget *)&v11 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_callbacker.__cntrl_;
    v5->_callbacker.__ptr_ = v7;
    v5->_callbacker.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v9 = v5;
  }

  return v5;
}

@end