@interface WebUndoStep
+ (id)stepWithUndoStep:(void *)a3;
- (WebUndoStep)initWithUndoStep:(void *)a3;
- (void)dealloc;
@end

@implementation WebUndoStep

- (WebUndoStep)initWithUndoStep:(void *)a3
{
  v8.receiver = self;
  v8.super_class = WebUndoStep;
  result = [(WebUndoStep *)&v8 init];
  if (result)
  {
    v5 = *a3;
    *a3 = 0;
    m_ptr = result->m_step.m_ptr;
    result->m_step.m_ptr = v5;
    if (m_ptr)
    {
      if (*(m_ptr + 2) == 1)
      {
        v7 = result;
        (*(*m_ptr + 8))(m_ptr);
        return v7;
      }

      else
      {
        --*(m_ptr + 2);
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = WebUndoStep;
    [(WebUndoStep *)&v4 dealloc];
  }
}

+ (id)stepWithUndoStep:(void *)a3
{
  result = [[WebUndoStep alloc] initWithUndoStep:a3];
  if (result)
  {
    v4 = result;
    v5 = result;
    return v4;
  }

  return result;
}

@end