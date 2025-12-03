@interface TSKHideOnTouchOutsideViewGestureRecognizer
- (TSKHideOnTouchOutsideViewGestureRecognizer)initWithTarget:(id)target action:(SEL)action watchView:(id)view;
- (void)addTarget:(id)target action:(SEL)action;
- (void)dealloc;
- (void)removeTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation TSKHideOnTouchOutsideViewGestureRecognizer

- (TSKHideOnTouchOutsideViewGestureRecognizer)initWithTarget:(id)target action:(SEL)action watchView:(id)view
{
  v11.receiver = self;
  v11.super_class = TSKHideOnTouchOutsideViewGestureRecognizer;
  v8 = [(TSKHideOnTouchOutsideViewGestureRecognizer *)&v11 initWithTarget:0 action:0];
  v9 = v8;
  if (v8)
  {
    v8->mWatchView = view;
    v8->mTargets = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(TSKHideOnTouchOutsideViewGestureRecognizer *)v9 setDelegate:v9];
    [(TSKHideOnTouchOutsideViewGestureRecognizer *)v9 addTarget:target action:action];
  }

  return v9;
}

- (void)dealloc
{
  sGestureInFlight = 0;

  self->mTargets = 0;
  self->mWatchView = 0;
  v3.receiver = self;
  v3.super_class = TSKHideOnTouchOutsideViewGestureRecognizer;
  [(TSKHideOnTouchOutsideViewGestureRecognizer *)&v3 dealloc];
}

- (void)addTarget:(id)target action:(SEL)action
{
  v7 = objc_alloc_init(TSKHideOnTouchOutsideViewGestureRecognizerTarget);
  [(TSKHideOnTouchOutsideViewGestureRecognizerTarget *)v7 setTarget:target];
  [(TSKHideOnTouchOutsideViewGestureRecognizerTarget *)v7 setAction:action];
  [(NSMutableSet *)self->mTargets addObject:v7];
}

- (void)removeTarget:(id)target action:(SEL)action
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  mTargets = self->mTargets;
  v9 = [(NSMutableSet *)mTargets countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(mTargets);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ((!target || [*(*(&v22 + 1) + 8 * i) target] == target) && (!action || objc_msgSend(v13, "action") == action))
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(NSMutableSet *)mTargets countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v7);
        }

        [(NSMutableSet *)self->mTargets removeObject:*(*(&v18 + 1) + 8 * j)];
      }

      v15 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v49 = *MEMORY[0x277D85DE8];
  sGestureInFlight = 1;
  if (-[TSKHideOnTouchOutsideViewGestureRecognizer watchView](self, "watchView") && (-[UIView bounds](-[TSKHideOnTouchOutsideViewGestureRecognizer watchView](self, "watchView"), "bounds"), v8 = v7, v10 = v9, v12 = v11, v14 = v13, v42 = 0u, v43 = 0u, v44 = 0u, v45 = 0u, (v15 = [began countByEnumeratingWithState:&v42 objects:v48 count:16]) != 0))
  {
    v16 = v15;
    v17 = 0;
    v18 = *v43;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(began);
        }

        [*(*(&v42 + 1) + 8 * i) locationInView:{-[TSKHideOnTouchOutsideViewGestureRecognizer watchView](self, "watchView")}];
        v50.x = v20;
        v50.y = v21;
        v51.origin.x = v8;
        v51.origin.y = v10;
        v51.size.width = v12;
        v51.size.height = v14;
        v17 |= CGRectContainsPoint(v51, v50);
      }

      v16 = [began countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allTouches = [event allTouches];
  v23 = [allTouches countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v39;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(allTouches);
        }

        v25 |= [began containsObject:*(*(&v38 + 1) + 8 * j)] ^ 1;
      }

      v24 = [allTouches countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v24);
  }

  else
  {
    v25 = 0;
  }

  if (((v17 | v25) & 1) == 0)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    mTargets = self->mTargets;
    v29 = [(NSMutableSet *)mTargets countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v35;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(mTargets);
          }

          [objc_msgSend(*(*(&v34 + 1) + 8 * k) "target")];
        }

        v30 = [(NSMutableSet *)mTargets countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v30);
    }
  }

  if (v17 & 1 | ((v25 & 1) == 0))
  {
    v33 = 5;
  }

  else
  {
    v33 = 1;
  }

  [(TSKHideOnTouchOutsideViewGestureRecognizer *)self setState:v33];
}

@end