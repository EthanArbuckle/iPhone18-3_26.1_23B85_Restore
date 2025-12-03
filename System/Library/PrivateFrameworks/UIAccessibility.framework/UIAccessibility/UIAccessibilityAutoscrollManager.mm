@interface UIAccessibilityAutoscrollManager
+ (id)sharedInstance;
- (BOOL)_autoscroll;
- (BOOL)_scrollViewIsOnScreen;
- (BOOL)autoscrollInDirection:(unint64_t)direction;
- (UIAccessibilityAutoscrollManager)init;
- (void)decrementAutoscrollSpeed;
- (void)incrementAutoscrollSpeed;
- (void)pause;
- (void)scrollToBottom;
- (void)scrollToTop;
- (void)setAutoscrollSpeed:(double)speed;
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

- (BOOL)autoscrollInDirection:(unint64_t)direction
{
  [(UIAccessibilityAutoscrollManager *)self setScrollDirection:direction];
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

  scrollView = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [scrollView contentOffset];
  v6 = v3 + v5;
  scrollView2 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [scrollView2 contentOffset];
  v9 = v3 + v8;

  scrollView3 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [scrollView3 accessibilityApplyScrollContentOverride:0 sendScrollStatus:3 animateWithDuration:v6 animationCurve:{v9, 0.1}];
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

- (void)setAutoscrollSpeed:(double)speed
{
  self->_autoscrollSpeed = speed;
  if (self->_autoscrolling && [(UIAccessibilityAutoscrollManager *)self _scrollViewIsOnScreen])
  {
    scrollDirection = [(UIAccessibilityAutoscrollManager *)self scrollDirection];

    [(UIAccessibilityAutoscrollManager *)self autoscrollInDirection:scrollDirection];
  }
}

- (void)scrollToTop
{
  scrollView = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [scrollView _accessibilityVisibleContentInset];
  v5 = v4;
  v7 = v6;

  v8 = *MEMORY[0x1E695EFF8] - v7;
  v9 = *(MEMORY[0x1E695EFF8] + 8) - v5;
  scrollView2 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [scrollView2 setContentOffset:!self->_autoscrolling animated:{v8, v9}];
}

- (void)scrollToBottom
{
  scrollView = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [scrollView _accessibilityVisibleContentInset];
  v4 = v3;
  v6 = *MEMORY[0x1E695EFF8] - v5;
  [scrollView contentSize];
  v8 = v7;
  [scrollView bounds];
  v10 = v4 + v8 - v9;
  scrollView2 = [(UIAccessibilityAutoscrollManager *)self scrollView];
  [scrollView2 setContentOffset:1 animated:{v6, v10}];
}

- (BOOL)_scrollViewIsOnScreen
{
  scrollView = [(UIAccessibilityAutoscrollManager *)self scrollView];
  window = [scrollView window];
  if (window)
  {
    scrollView2 = [(UIAccessibilityAutoscrollManager *)self scrollView];
    if ([scrollView2 isHidden])
    {
      v6 = 0;
    }

    else
    {
      scrollView3 = [(UIAccessibilityAutoscrollManager *)self scrollView];
      [scrollView3 alpha];
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
  scrollView = [(UIAccessibilityAutoscrollManager *)self scrollView];
  if ([(UIAccessibilityAutoscrollManager *)self _scrollViewIsOnScreen])
  {
    if (self->_autoscrolling)
    {
      scrollDirection = [(UIAccessibilityAutoscrollManager *)self scrollDirection];
      [scrollView contentOffset];
      v6 = v5;
      v8 = v7;
      [scrollView contentSize];
      v10 = v9;
      v12 = v11;
      [scrollView bounds];
      v15 = __ROR8__(scrollDirection - 2, 1);
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
          [scrollView accessibilityApplyScrollContentOverride:0 sendScrollStatus:3 animateWithDuration:v6 animationCurve:{v8, v16 / (self->_autoscrollSpeed + self->_autoscrollSpeed)}];
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
      v22 = scrollView;
      _os_log_impl(&dword_1A9B83000, v17, OS_LOG_TYPE_INFO, "scroll view is not onscreen any longer. Stopping autoscroll: %@", &v21, 0xCu);
    }

    self->_autoscrolling = 0;
  }

  v18 = AXLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = scrollView;
    _os_log_impl(&dword_1A9B83000, v18, OS_LOG_TYPE_INFO, "stopping autoscroll now: %@", &v21, 0xCu);
  }

  v19 = 0;
LABEL_14:

  return v19;
}

@end