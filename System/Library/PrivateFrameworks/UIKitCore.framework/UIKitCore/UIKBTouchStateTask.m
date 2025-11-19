@interface UIKBTouchStateTask
+ (id)touchStateTaskForTouchState:(id)a3 andTask:(id)a4;
- (UIKBTouchStateTask)initWithTouchState:(id)a3 andTask:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
@end

@implementation UIKBTouchStateTask

+ (id)touchStateTaskForTouchState:(id)a3 andTask:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[UIKBTouchStateTask alloc] initWithTouchState:v6 andTask:v5];

  return v7;
}

- (UIKBTouchStateTask)initWithTouchState:(id)a3 andTask:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UIKBTouchStateTask;
  v9 = [(UIKBTouchStateTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_touchState, a3);
    v11 = [v8 copy];
    task = v10->_task;
    v10->_task = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UIKBTouchStateTask);
  objc_storeStrong(&v4->_touchState, self->_touchState);
  v5 = [self->_task copy];
  task = v4->_task;
  v4->_task = v5;

  return v4;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(UIKBTouchState *)self->_touchState phase];
  v6 = [v4 touchState];
  v7 = v5 - [v6 phase];

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
      v11 = [v4 touchState];
      [v11 timestamp];
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