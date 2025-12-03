@interface UIKBTouchStateTask
+ (id)touchStateTaskForTouchState:(id)state andTask:(id)task;
- (UIKBTouchStateTask)initWithTouchState:(id)state andTask:(id)task;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
@end

@implementation UIKBTouchStateTask

+ (id)touchStateTaskForTouchState:(id)state andTask:(id)task
{
  taskCopy = task;
  stateCopy = state;
  v7 = [[UIKBTouchStateTask alloc] initWithTouchState:stateCopy andTask:taskCopy];

  return v7;
}

- (UIKBTouchStateTask)initWithTouchState:(id)state andTask:(id)task
{
  stateCopy = state;
  taskCopy = task;
  v14.receiver = self;
  v14.super_class = UIKBTouchStateTask;
  v9 = [(UIKBTouchStateTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_touchState, state);
    v11 = [taskCopy copy];
    task = v10->_task;
    v10->_task = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIKBTouchStateTask);
  objc_storeStrong(&v4->_touchState, self->_touchState);
  v5 = [self->_task copy];
  task = v4->_task;
  v4->_task = v5;

  return v4;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  phase = [(UIKBTouchState *)self->_touchState phase];
  touchState = [compareCopy touchState];
  v7 = phase - [touchState phase];

  if (v7 <= 0)
  {
    if (v7 < 0)
    {
      v8 = -1;
    }

    else
    {
      [(UIKBTouchState *)self->_touchState timestamp];
      v10 = v9;
      touchState2 = [compareCopy touchState];
      [touchState2 timestamp];
      v13 = v10 - v12;

      if (v13 >= 0.0)
      {
        v14 = 0;
      }

      else
      {
        v14 = -1;
      }

      if (v13 > 0.0)
      {
        v8 = 1;
      }

      else
      {
        v8 = v14;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end