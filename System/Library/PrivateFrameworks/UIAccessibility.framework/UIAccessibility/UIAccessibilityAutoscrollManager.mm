@interface UIAccessibilityAutoscrollManager
+ (id)sharedInstance;
- (BOOL)_autoscroll;
- (BOOL)_scrollViewIsOnScreen;
- (BOOL)autoscrollInDirection:(unint64_t)a3;
- (UIAccessibilityAutoscrollManager)init;
- (void)decrementAutoscrollSpeed;
- (void)incrementAutoscrollSpeed;
- (void)pause;
- (void)scrollToBottom;
- (void)scrollToTop;
- (void)setAutoscrollSpeed:(double)a3;
@end

@implementation UIAccessibilityAutoscrollManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[UIAccessibilityAutoscrollManager sharedInstance];
  }

  v3 = sharedInstance__shared;

  return v3;
}

uint64_t __50__UIAccessibilityAutoscrollManager_sharedInstance__block_invoke()
{
  sharedInstance__shared = objc_alloc_init(UIAccessibilityAutoscrollManager);

  return MEMORY[0x1EEE66BB8]();
}

- (UIAccessibilityAutoscrollManager)init
{
  v6.receiver = self;
  v6.super_class = UIAccessibilityAutoscrollManager;
  v2 = [(UIAccessibilityAutoscrollManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(UIAccessibilityAutoscrollManager *)v2 setAutoscrollSpeed:20.0];
    [(UIAccessibilityAutoscrollManager *)v3 setScrollDirection:4];
    v4 = v3;
  }

  return v3;
}

- (BOOL)autoscrollInDirection:(unint64_t)a3
{
  [(UIAccessibilityAutoscrollManager *)self setScrollDirection:a3];
  if (self->_autoscrolling)
  {
    [(UIAccessibilityAutoscrollManager *)self pause];
  }

  self->_autoscrolling = 1;

  return [(UIAccessibilityAutoscrollManager *)self _autoscroll];
}

- (void)pause
{
  self->_autoscrolling = 0;
  if ([(UIAccessibilityAutoscrollManager *)self scrollDirection]== 4)
  {
    v3 = -0.01;
  }

  else
  {
    v3 = dbl_1A9BF3670[[(UIAccessibilityAutoscrollManager *)self scrollDirection]== 16];
  }

  v4 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [v4 contentOffset];
  v6 = v3 + v5;
  v7 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [v7 contentOffset];
  v9 = v3 + v8;

  v10 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [v10 accessibilityApplyScrollContentOverride:0 sendScrollStatus:3 animateWithDuration:v6 animationCurve:{v9, 0.1}];
}

- (void)incrementAutoscrollSpeed
{
  [(UIAccessibilityAutoscrollManager *)self autoscrollSpeed];
  v4 = v3 + 10.0;
  if (v4 > 100.0)
  {
    v4 = 100.0;
  }

  [(UIAccessibilityAutoscrollManager *)self setAutoscrollSpeed:v4];
}

- (void)decrementAutoscrollSpeed
{
  [(UIAccessibilityAutoscrollManager *)self autoscrollSpeed];
  v4 = v3 + -10.0;
  if (v4 < 10.0)
  {
    v4 = 10.0;
  }

  [(UIAccessibilityAutoscrollManager *)self setAutoscrollSpeed:v4];
}

- (void)setAutoscrollSpeed:(double)a3
{
  self->_autoscrollSpeed = a3;
  if (self->_autoscrolling && [(UIAccessibilityAutoscrollManager *)self _scrollViewIsOnScreen])
  {
    v4 = [(UIAccessibilityAutoscrollManager *)self scrollDirection];

    [(UIAccessibilityAutoscrollManager *)self autoscrollInDirection:v4];
  }
}

- (void)scrollToTop
{
  v3 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [v3 _accessibilityVisibleContentInset];
  v5 = v4;
  v7 = v6;

  v8 = *MEMORY[0x1E695EFF8] - v7;
  v9 = *(MEMORY[0x1E695EFF8] + 8) - v5;
  v10 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [v10 setContentOffset:!self->_autoscrolling animated:{v8, v9}];
}

- (void)scrollToBottom
{
  v12 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [v12 _accessibilityVisibleContentInset];
  v4 = v3;
  v6 = *MEMORY[0x1E695EFF8] - v5;
  [v12 contentSize];
  v8 = v7;
  [v12 bounds];
  v10 = v4 + v8 - v9;
  v11 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [v11 setContentOffset:1 animated:{v6, v10}];
}

- (BOOL)_scrollViewIsOnScreen
{
  v3 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  v4 = [v3 window];
  if (v4)
  {
    v5 = [(UIAccessibilityAutoscrollManager *)self scrollView];
    if ([v5 isHidden])
    {
      v6 = 0;
    }

    else
    {
      v7 = [(UIAccessibilityAutoscrollManager *)self scrollView];
      [v7 alpha];
      v6 = v8 > 0.0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_autoscroll
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  if ([(UIAccessibilityAutoscrollManager *)self _scrollViewIsOnScreen])
  {
    if (self->_autoscrolling)
    {
      v4 = [(UIAccessibilityAutoscrollManager *)self scrollDirection];
      [v3 contentOffset];
      v6 = v5;
      v8 = v7;
      [v3 contentSize];
      v10 = v9;
      v12 = v11;
      [v3 bounds];
      v15 = __ROR8__(v4 - 2, 1);
      v16 = 0.0;
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          if (v6 > 0.0)
          {
            v16 = fabs(v6);
            v6 = 0.0;
            goto LABEL_23;
          }
        }

        else
        {
          if (v15 != 7)
          {
            goto LABEL_23;
          }

          if (v6 + v13 <= v10)
          {
            v16 = vabdd_f64(v6, v10 - v13);
            v6 = v10 - v13;
            goto LABEL_23;
          }
        }
      }

      else if (v15)
      {
        if (v15 != 1)
        {
LABEL_23:
          [v3 accessibilityApplyScrollContentOverride:0 sendScrollStatus:3 animateWithDuration:v6 animationCurve:{v8, v16 / (self->_autoscrollSpeed + self->_autoscrollSpeed)}];
          v19 = 1;
          goto LABEL_14;
        }

        if (v8 + v14 <= v12)
        {
          v16 = vabdd_f64(v8, v12 - v14);
          v8 = v12 - v14;
          goto LABEL_23;
        }
      }

      else if (v8 > 0.0)
      {
        v16 = fabs(v8);
        v8 = 0.0;
        goto LABEL_23;
      }

      v19 = 0;
      self->_autoscrolling = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v17 = AXLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v3;
      _os_log_impl(&dword_1A9B83000, v17, OS_LOG_TYPE_INFO, "scroll view is not onscreen any longer. Stopping autoscroll: %@", &v21, 0xCu);
    }

    self->_autoscrolling = 0;
  }

  v18 = AXLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = v3;
    _os_log_impl(&dword_1A9B83000, v18, OS_LOG_TYPE_INFO, "stopping autoscroll now: %@", &v21, 0xCu);
  }

  v19 = 0;
LABEL_14:

  return v19;
}

@end