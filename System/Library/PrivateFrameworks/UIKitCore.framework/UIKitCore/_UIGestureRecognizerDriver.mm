@interface _UIGestureRecognizerDriver
- (_UIGestureRecognizerDriver)init;
- (_UIGestureRecognizerDriverDelegate)delegate;
- (id)description;
- (void)_setState:(int)state notifyDelegate:;
- (void)fail;
- (void)reset;
@end

@implementation _UIGestureRecognizerDriver

- (_UIGestureRecognizerDriver)init
{
  v23.receiver = self;
  v23.super_class = _UIGestureRecognizerDriver;
  v2 = [(_UIGestureRecognizerDriver *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v3, sel_touchesBegan_withEvent_);
    v5 = objc_opt_class();
    *&v2->_flags |= MethodImplementation != class_getMethodImplementation(v5, sel_touchesBegan_withEvent_);
    v6 = objc_opt_class();
    v7 = class_getMethodImplementation(v6, sel_touchesMoved_withEvent_);
    v8 = objc_opt_class();
    *&v2->_flags |= v7 != class_getMethodImplementation(v8, sel_touchesMoved_withEvent_);
    v9 = objc_opt_class();
    v10 = class_getMethodImplementation(v9, sel_touchesEnded_withEvent_);
    v11 = objc_opt_class();
    *&v2->_flags |= v10 != class_getMethodImplementation(v11, sel_touchesEnded_withEvent_);
    v12 = objc_opt_class();
    v13 = class_getMethodImplementation(v12, sel_touchesCancelled_withEvent_);
    v14 = objc_opt_class();
    *&v2->_flags |= v13 != class_getMethodImplementation(v14, sel_touchesCancelled_withEvent_);
    v15 = objc_opt_class();
    v16 = class_getMethodImplementation(v15, sel_transformChangedWithEvent_);
    v17 = objc_opt_class();
    v18 = class_getMethodImplementation(v17, sel_transformChangedWithEvent_);
    flags = v2->_flags;
    v20 = (*&flags >> 1) & 1;
    if (v16 != v18)
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    *&v2->_flags = v21 | *&flags & 0xFD;
  }

  return v2;
}

- (void)reset
{
  if (self)
  {
    if (self->_state)
    {
      self->_state = 0;
      [(_UIGestureRecognizerDriver *)self didUpdateState:0 previousState:?];
    }
  }
}

- (void)_setState:(int)state notifyDelegate:
{
  if (self)
  {
    v5 = *(self + 8);
    if (v5 != a2 || v5 == 1)
    {
      *(self + 8) = a2;
      [self didUpdateState:a2 previousState:v5];
      if (state)
      {
        WeakRetained = objc_loadWeakRetained((self + 32));
        [WeakRetained _gestureRecognizerDriver:self didUpdateState:a2 previousState:v5];
      }
    }
  }
}

- (void)fail
{
  if (self)
  {
    if (self->_state != 3)
    {
      self->_state = 3;
      [(_UIGestureRecognizerDriver *)self didUpdateState:3 previousState:?];
    }
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UIGestureRecognizerDriver;
  v3 = [(_UIGestureRecognizerDriver *)&v8 description];
  v4 = [v3 mutableCopy];

  if ([v4 length])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    v5 = self->_state - 1;
    if (v5 > 2)
    {
      v6 = @"possible";
    }

    else
    {
      v6 = off_1E7118ED8[v5];
    }

    [v4 appendFormat:@"; state = %@>", v6];
  }

  return v4;
}

- (_UIGestureRecognizerDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end