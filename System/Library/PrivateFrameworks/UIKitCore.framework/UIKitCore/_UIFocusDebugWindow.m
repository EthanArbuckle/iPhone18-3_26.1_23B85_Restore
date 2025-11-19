@interface _UIFocusDebugWindow
+ (BOOL)hasAnyModules;
+ (id)moduleClasses;
- (_UIFocusDebugWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_update:(id)a3;
- (void)_updateTimer;
- (void)drag:(id)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation _UIFocusDebugWindow

+ (BOOL)hasAnyModules
{
  v2 = [a1 moduleClasses];
  v3 = [v2 count] != 0;

  return v3;
}

+ (id)moduleClasses
{
  if (qword_1ED49EFF0 != -1)
  {
    dispatch_once(&qword_1ED49EFF0, &__block_literal_global_347);
  }

  v3 = qword_1ED49EFE8;

  return v3;
}

- (_UIFocusDebugWindow)initWithWindowScene:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v64.receiver = self;
  v64.super_class = _UIFocusDebugWindow;
  v5 = [(UIWindow *)&v64 initWithWindowScene:v4];
  v6 = v5;
  if (v5)
  {
    v42 = v4;
    [(UIWindow *)v5 setWindowLevel:16000000.0];
    [(_UIFocusDebugWindow *)v6 _updateTimer];
    v7 = objc_opt_new();
    [(UIView *)v6 bounds];
    [v7 setFrame:{10.0, 30.0, 320.0, CGRectGetHeight(v69)}];
    [v7 setAutoresizingMask:16];
    [(UIView *)v6 addSubview:v7];
    objc_storeStrong(&v6->_scrollView, v7);
    v8 = objc_opt_new();
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v41 = v6;
    obj = [objc_opt_class() moduleClasses];
    v47 = v7;
    v48 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v48)
    {
      v46 = *v61;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v61 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v59 = objc_alloc_init(*(*(&v60 + 1) + 8 * i));
          v10 = [[_UIFocusDebugModuleContainer alloc] initWithModule:v59];
          [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v7 addSubview:v10];
          v11 = [(UIView *)v10 widthAnchor];
          v12 = [v7 widthAnchor];
          v13 = [v11 constraintEqualToAnchor:v12];

          LODWORD(v14) = 1140457472;
          [v13 setPriority:v14];
          v49 = MEMORY[0x1E69977A0];
          v58 = v13;
          v66[0] = v13;
          v15 = [(UIView *)v10 leadingAnchor];
          v56 = [v7 contentLayoutGuide];
          [v56 leadingAnchor];
          v55 = v57 = v15;
          v54 = [v15 constraintEqualToAnchor:?];
          v66[1] = v54;
          v16 = [(UIView *)v10 trailingAnchor];
          v52 = [v7 contentLayoutGuide];
          [v52 trailingAnchor];
          v51 = v53 = v16;
          v50 = [v16 constraintEqualToAnchor:?];
          v66[2] = v50;
          v17 = [(UIView *)v10 topAnchor];
          v18 = [v8 lastObject];
          v19 = [v18 superview];
          v20 = [v19 bottomAnchor];
          v21 = v20;
          if (!v20)
          {
            v45 = [v7 contentLayoutGuide];
            v21 = [v45 topAnchor];
            v44 = v21;
          }

          v22 = [v8 lastObject];
          if (v22)
          {
            v23 = 10.0;
          }

          else
          {
            v23 = 0.0;
          }

          v24 = [v17 constraintEqualToAnchor:v21 constant:v23];
          v66[3] = v24;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
          v26 = v25 = v8;
          [v49 activateConstraints:v26];

          if (!v20)
          {
          }

          [v25 addObject:v59];
          v7 = v47;
          v8 = v25;
        }

        v48 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
      }

      while (v48);
    }

    if ([v8 count])
    {
      v27 = v8;
      v28 = MEMORY[0x1E69977A0];
      v29 = [v27 lastObject];
      v30 = [v29 superview];
      v31 = [v30 bottomAnchor];
      v32 = [v7 contentLayoutGuide];
      v33 = [v32 bottomAnchor];
      v34 = [v31 constraintEqualToAnchor:v33];
      v65 = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      v36 = v28;
      v8 = v27;
      [v36 activateConstraints:v35];

      v7 = v47;
    }

    v37 = [v8 copy];
    v6 = v41;
    cacheModules = v41->_cacheModules;
    v41->_cacheModules = v37;

    v39 = [[UILongPressGestureRecognizer alloc] initWithTarget:v41 action:sel_drag_];
    [(UILongPressGestureRecognizer *)v39 setNumberOfTapsRequired:1];
    [(UILongPressGestureRecognizer *)v39 setMinimumPressDuration:0.2];
    [(UIView *)v41 addGestureRecognizer:v39];

    v4 = v42;
  }

  return v6;
}

- (void)drag:(id)a3
{
  v4 = a3;
  [v4 locationInView:self];
  v6 = v5;
  v8 = v7;
  v9 = [v4 state];

  if (v9 == 2)
  {
    v10 = v6 - self->_lastDragPoint.x;
    v11 = v8 - self->_lastDragPoint.y;
    [(UIView *)self->_scrollView frame];
    [(UIScrollView *)self->_scrollView setFrame:v10 + v12, v11 + v13];
  }

  self->_lastDragPoint.x = v6;
  self->_lastDragPoint.y = v8;
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIFocusDebugWindow;
  [(UIWindow *)&v4 setHidden:a3];
  [(_UIFocusDebugWindow *)self _updateTimer];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v13.receiver = self;
  v13.super_class = _UIFocusDebugWindow;
  v5 = [(UIView *)&v13 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v11 = 0;
  }

  else
  {
    v7 = v5;
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v10 = [v9 superview];

        v9 = v10;
        if (!v10)
        {
          v8 = 0;
          break;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v8;
  }

  return v11;
}

- (void)_updateTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_timer);
  [WeakRetained invalidate];

  if (![(UIView *)self isHidden])
  {
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__update_ selector:0 userInfo:1 repeats:1.0];
    objc_storeWeak(&self->_timer, v4);

    v5 = objc_loadWeakRetained(&self->_timer);
    [(_UIFocusDebugWindow *)self _update:v5];
  }
}

- (void)_update:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _UIKitProcessIsBeingDebugged() ^ 1;
  [(UIView *)self->_scrollView setHidden:v4];
  if ((v4 & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_cacheModules;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) update];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

@end