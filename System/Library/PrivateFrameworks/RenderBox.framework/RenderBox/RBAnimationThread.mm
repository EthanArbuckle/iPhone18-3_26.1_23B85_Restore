@interface RBAnimationThread
- (id).cxx_construct;
- (uint64_t)initThread;
- (uint64_t)startThread;
- (void)dispatchHandlers:(id)handlers;
- (void)initWithScreen:(void *)screen;
- (void)thread:(id)thread;
@end

@implementation RBAnimationThread

- (void)thread:(id)thread
{
  [(RBAnimationThread *)self initThread];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [(CADisplayLink *)self->_link._p addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];
  self->_empty_ttl = 10;
  os_unfair_lock_lock(v5);
  os_unfair_lock_unlock(v5);
  [(CADisplayLink *)self->_link._p invalidate];

  self->_link._p = 0;
  self->_thread._p = 0;
}

- (void)dispatchHandlers:(id)handlers
{
  lock = v4;
  v22 = 1;
  os_unfair_lock_lock(v4);
  self->_pending_frame_rate = 48;
  v5 = v4 + 8;
  v6 = *(v4 + 272);
  if (*(v4 + 264))
  {
    v5 = *(v4 + 264);
  }

  if (v6)
  {
    v7 = (v5 + 24);
    v8 = 32 * v6;
    v9 = 48;
    while (1)
    {
      v10 = *v7;
      if (*v7 >= 320.0)
      {
        break;
      }

      if (v10 >= 160.0)
      {
        if (v9 <= 80)
        {
          v9 = 80;
        }

        goto LABEL_13;
      }

      if (v10 >= 100.0)
      {
        if (v9 <= 60)
        {
          v9 = 60;
        }

        goto LABEL_13;
      }

LABEL_14:
      v7 += 8;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    v9 = 120;
LABEL_13:
    self->_pending_frame_rate = v9;
    goto LABEL_14;
  }

LABEL_15:
  frame_rate = self->_frame_rate;
  [(CADisplayLink *)self->_link._p targetTimestamp];
  if (*(v4 + 272))
  {
    self->_empty_ttl = 10;
    pending_frame_rate = self->_pending_frame_rate;
    if (pending_frame_rate != self->_frame_rate)
    {
      self->_frame_rate = pending_frame_rate;
      LODWORD(v13) = 1117782016;
      LODWORD(v14) = 1117782016;
      v17 = 48.0;
      if (pending_frame_rate > 54)
      {
        v17 = 60.0;
      }

      if (pending_frame_rate <= 74)
      {
        *&v14 = 60.0;
      }

      else
      {
        v17 = 80.0;
      }

      if (pending_frame_rate > 114)
      {
        *&v14 = 120.0;
        v18 = 120.0;
      }

      else
      {
        *&v13 = v17;
        v18 = v17;
      }

      *&v15 = v18;
      [(CADisplayLink *)self->_link._p setPreferredFrameRateRange:v13, v14, v15];
      if (v18 > 60.0)
      {
        [(CADisplayLink *)self->_link._p setHighFrameRateReason:2555992];
      }
    }
  }

  else
  {
    v19 = self->_empty_ttl - 1;
    self->_empty_ttl = v19;
    if (!v19)
    {
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [(CADisplayLink *)self->_link._p removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];
      CFRunLoopStop([currentRunLoop getCFRunLoop]);
    }
  }

  if (v22 == 1)
  {
    os_unfair_lock_unlock(lock);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)initWithScreen:(void *)screen
{
  if (!screen)
  {
    return 0;
  }

  v8.receiver = screen;
  v8.super_class = RBAnimationThread;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  if (v3)
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = MEMORY[0x1E6979330];
    }

    v5 = [v4 displayLinkWithTarget:v3 selector:sel_dispatchHandlers_];
    v6 = v3[2];
    if (v6 != v5)
    {

      v5 = v5;
      v3[2] = v5;
    }

    if (v5)
    {
      *(v3 + 28) = 60;
      return v3;
    }

    return 0;
  }

  return v3;
}

- (uint64_t)startThread
{
  if (result)
  {
    v1 = result;
    v2 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:result selector:sel_thread_ object:0];

    *(v1 + 8) = v2;
    [v2 setQualityOfService:33];
    [*(v1 + 8) setName:@"com.apple.renderbox.animation-thread"];
    v3 = *(v1 + 8);

    return [v3 start];
  }

  return result;
}

- (uint64_t)initThread
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = pthread_self();
    result = pthread_mach_thread_np(v1);
    if (result)
    {
      v2 = result;
      policy_info = 0;
      thread_policy_set(result, 1u, &policy_info, 1u);
      v3 = getpid();
      result = proc_pidinfo(v3, 2, 0, buffer, 232);
      if (result >= 1)
      {
        v4 = 54 - v7;
        return thread_policy_set(v2, 3u, &v4, 1u);
      }
    }
  }

  return result;
}

@end