@interface _UIDirectTouchObserverGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation _UIDirectTouchObserverGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  beganCopy = began;
  v6 = [beganCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(beganCopy);
        }

        if ([*(*(&v12 + 1) + 8 * v9) _isPointerTouch])
        {
          [(UIGestureRecognizer *)self setState:5];

          return;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [beganCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = _systemGestureLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "DIRECT TOUCH DOWN", v11, 2u);
  }

  [(UIGestureRecognizer *)self setState:3];
}

@end