@interface UIPDFViewTouchHandler
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)delegateGesture:(id)gesture kind:(int)kind;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)resignFirstResponder;
- (UIPDFViewTouchHandler)initWithView:(id)view;
- (void)briefPressRecognized:(id)recognized;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)disableRecognizers;
- (void)doubleTapRecognized:(id)recognized;
- (void)enableRecognizers;
- (void)longPressRecognized:(id)recognized;
- (void)selectAll:(id)all;
- (void)showMenu;
- (void)singleTapRecognized:(id)recognized;
- (void)twoFingerTapRecognized:(id)recognized;
@end

@implementation UIPDFViewTouchHandler

- (UIPDFViewTouchHandler)initWithView:(id)view
{
  v14.receiver = self;
  v14.super_class = UIPDFViewTouchHandler;
  v4 = [(UIPDFViewTouchHandler *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_pdfPageView = view;
    v6 = objc_alloc_init(UIPDFSelectionController);
    v5->_selectionController = v6;
    [(UIPDFSelectionController *)v6 setPageView:view];
    [(UIPDFPageView *)v5->_pdfPageView setSelectionController:v5->_selectionController];
    v7 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel_doubleTapRecognized_];
    v5->_doubleTapRecognizer = v7;
    [(UITapGestureRecognizer *)v7 setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)v5->_doubleTapRecognizer setNumberOfTouchesRequired:1];
    [(UIGestureRecognizer *)v5->_doubleTapRecognizer setDelegate:v5];
    v8 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel_singleTapRecognized_];
    v5->_singleTapRecognizer = v8;
    [(UITapGestureRecognizer *)v8 setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v5->_singleTapRecognizer setNumberOfTouchesRequired:1];
    [(UIGestureRecognizer *)v5->_singleTapRecognizer setDelegate:v5];
    [(UIGestureRecognizer *)v5->_singleTapRecognizer requireGestureRecognizerToFail:v5->_doubleTapRecognizer];
    v9 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel_twoFingerTapRecognized_];
    v5->_twoFingerTapRecognizer = v9;
    [(UITapGestureRecognizer *)v9 setNumberOfTouchesRequired:2];
    [(UIGestureRecognizer *)v5->_twoFingerTapRecognizer setDelegate:v5];
    [(UIGestureRecognizer *)v5->_singleTapRecognizer requireGestureRecognizerToFail:v5->_twoFingerTapRecognizer];
    v10 = [[UILongPressGestureRecognizer alloc] initWithTarget:v5 action:sel_briefPressRecognized_];
    v5->_briefPressRecognizer = v10;
    [(UILongPressGestureRecognizer *)v10 setMinimumPressDuration:0.2];
    [(UIGestureRecognizer *)v5->_briefPressRecognizer setDelegate:v5];
    v11 = [[UILongPressGestureRecognizer alloc] initWithTarget:v5 action:sel_longPressRecognized_];
    v5->_longPressRecognizer = v11;
    [(UIGestureRecognizer *)v11 setDelegate:v5];
    v5->_menuController = +[UIMenuController sharedMenuController];
    v12 = objc_alloc_init(UIPDFMagnifierController);
    v5->_magnifyController = v12;
    [(UIPDFMagnifierController *)v12 setPageView:view];
    v5->_showMagnifier = 0;
    v5->_showLoupe = 1;
    [(UIPDFViewTouchHandler *)v5 setFirstTouch];
  }

  return v5;
}

- (void)dealloc
{
  [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
  [(UIGestureRecognizer *)self->_doubleTapRecognizer removeTarget:self action:0];
  [(UIGestureRecognizer *)self->_doubleTapRecognizer setDelegate:0];

  [(UIGestureRecognizer *)self->_singleTapRecognizer removeTarget:self action:0];
  [(UIGestureRecognizer *)self->_singleTapRecognizer setDelegate:0];

  [(UIGestureRecognizer *)self->_twoFingerTapRecognizer removeTarget:self action:0];
  [(UIGestureRecognizer *)self->_twoFingerTapRecognizer setDelegate:0];

  [(UIGestureRecognizer *)self->_briefPressRecognizer removeTarget:self action:0];
  [(UIGestureRecognizer *)self->_briefPressRecognizer setDelegate:0];

  [(UIGestureRecognizer *)self->_longPressRecognizer removeTarget:self action:0];
  [(UIGestureRecognizer *)self->_longPressRecognizer setDelegate:0];

  [(UIPDFSelectionController *)self->_selectionController setPageView:0];
  [(UIPDFMagnifierController *)self->_magnifyController hide];

  v3.receiver = self;
  v3.super_class = UIPDFViewTouchHandler;
  [(UIResponder *)&v3 dealloc];
}

- (void)enableRecognizers
{
  [(UIView *)self->_pdfPageView addGestureRecognizer:self->_singleTapRecognizer];
  [(UIView *)self->_pdfPageView addGestureRecognizer:self->_doubleTapRecognizer];
  [(UIView *)self->_pdfPageView addGestureRecognizer:self->_briefPressRecognizer];
  [(UIView *)self->_pdfPageView addGestureRecognizer:self->_longPressRecognizer];
  pdfPageView = self->_pdfPageView;
  twoFingerTapRecognizer = self->_twoFingerTapRecognizer;

  [(UIView *)pdfPageView addGestureRecognizer:twoFingerTapRecognizer];
}

- (void)disableRecognizers
{
  [(UIView *)self->_pdfPageView removeGestureRecognizer:self->_singleTapRecognizer];
  [(UIView *)self->_pdfPageView removeGestureRecognizer:self->_doubleTapRecognizer];
  [(UIView *)self->_pdfPageView removeGestureRecognizer:self->_briefPressRecognizer];
  [(UIView *)self->_pdfPageView removeGestureRecognizer:self->_longPressRecognizer];
  pdfPageView = self->_pdfPageView;
  twoFingerTapRecognizer = self->_twoFingerTapRecognizer;

  [(UIView *)pdfPageView removeGestureRecognizer:twoFingerTapRecognizer];
}

- (BOOL)resignFirstResponder
{
  canResignFirstResponder = [(UIResponder *)self canResignFirstResponder];
  if (canResignFirstResponder)
  {
    [(UIPDFSelectionController *)self->_selectionController clearSelection];
    v5.receiver = self;
    v5.super_class = UIPDFViewTouchHandler;
    LOBYTE(canResignFirstResponder) = [(UIResponder *)&v5 resignFirstResponder];
  }

  return canResignFirstResponder;
}

- (BOOL)delegateGesture:(id)gesture kind:(int)kind
{
  if (self->_useDelegateForLinks)
  {
    annotationController = [(UIPDFPageView *)self->_pdfPageView annotationController];
    [gesture locationInView:self->_pdfPageView];
    v8 = [(UIPDFAnnotationController *)annotationController isLinkAnnotationAt:?];
    if (v8)
    {
      if (kind)
      {
        if (kind == 2)
        {
          v9 = [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pdfPageView annotationController] annotationLongPressRecognized:gesture];
        }

        else
        {
          if (kind != 1)
          {
LABEL_11:
            LOBYTE(v8) = 1;
            return v8;
          }

          v9 = [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pdfPageView annotationController] annotationBriefPressRecognized:gesture];
        }
      }

      else
      {
        v9 = [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pdfPageView annotationController] annotationSingleTapRecognized:gesture];
      }

      self->_useDelegateForLinks = v9;
      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)briefPressRecognized:(id)recognized
{
  if ([(UIPDFViewTouchHandler *)self delegateGesture:recognized kind:1])
  {
    return;
  }

  [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
  [recognized locationInView:self->_pdfPageView];
  v6 = v5;
  v8 = v7;
  state = [recognized state];
  if (state > 2)
  {
    if (state != 3)
    {
      if (state != 4 || !self->_showMagnifier)
      {
        return;
      }

LABEL_14:
      magnifyController = self->_magnifyController;

      [(UIPDFMagnifierController *)magnifyController hide];
      return;
    }

    if (self->_showMagnifier)
    {
      [(UIPDFMagnifierController *)self->_magnifyController hide];
    }

    [(UIPDFSelectionController *)self->_selectionController endTracking:v6, v8];

    [(UIPDFViewTouchHandler *)self showMenu];
  }

  else
  {
    if (state != 1)
    {
      if (state != 2)
      {
        return;
      }

      [(UIPDFSelectionController *)self->_selectionController tracking:&self->_showMagnifier showMagnifier:v6, v8];
      if (!self->_trackingSelection)
      {
        return;
      }

      if (self->_showMagnifier)
      {
        [(UIPDFSelectionController *)self->_selectionController currentSelectionPoint];
        [UIPDFMagnifierController setPosition:"setPosition:viewPoint:" viewPoint:?];
        v10 = self->_magnifyController;

        [(UIPDFMagnifierController *)v10 move];
        return;
      }

      goto LABEL_14;
    }

    [(UIPDFPageView *)self->_pdfPageView clearSearchHighlights];
    [(UIPDFSelectionController *)self->_selectionController startTracking:&self->_showMagnifier showMagnifier:v6, v8];
    if (self->_showMagnifier)
    {
      [(UIPDFSelectionController *)self->_selectionController initialSelectionPoint];
      [UIPDFMagnifierController setPosition:"setPosition:viewPoint:" viewPoint:?];
      [(UIPDFMagnifierController *)self->_magnifyController showMagnifier];
    }

    self->_trackingSelection = 1;
  }
}

- (void)longPressRecognized:(id)recognized
{
  if ([(UIPDFMagnifierController *)self->_magnifyController visible]|| ![(UIPDFViewTouchHandler *)self delegateGesture:recognized kind:2])
  {
    [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
    [recognized locationInView:self->_pdfPageView];
    v6 = v5;
    v8 = v7;
    v11 = 0;
    [(UIPDFMagnifierController *)self->_magnifyController setPosition:v5 viewPoint:v7, v5, v7];
    state = [recognized state];
    if (state > 2)
    {
      if (state != 3)
      {
        if (state != 4)
        {
          return;
        }

        magnifyController = self->_magnifyController;
        goto LABEL_11;
      }

      [(UIPDFMagnifierController *)self->_magnifyController hide];
      [(UIPDFSelectionController *)self->_selectionController endTracking:v6, v8];
      [(UIPDFViewTouchHandler *)self showMenu];
    }

    else
    {
      if (state != 1)
      {
        if (state != 2)
        {
          return;
        }

        [(UIPDFSelectionController *)self->_selectionController tracking:&self->_showLoupe showMagnifier:v6, v8];
        magnifyController = self->_magnifyController;
        if (self->_showLoupe)
        {
          [(UIPDFMagnifierController *)magnifyController move];
          return;
        }

LABEL_11:
        [(UIPDFMagnifierController *)magnifyController hide];
        return;
      }

      [(UIPDFPageView *)self->_pdfPageView clearSearchHighlights];
      [(UIPDFSelectionController *)self->_selectionController clearSelection];
      [(UIPDFSelectionController *)self->_selectionController startTracking:&v11 showMagnifier:v6, v8];
      if (v11 == 1)
      {
        [(UIPDFMagnifierController *)self->_magnifyController showLoupe];
      }
    }
  }
}

- (void)doubleTapRecognized:(id)recognized
{
  if ([recognized state] == 3)
  {
    [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
    [recognized locationInView:self->_pdfPageView];
    pdfPageView = self->_pdfPageView;

    [(UIPDFPageView *)pdfPageView doubleTapAt:?];
  }
}

- (void)singleTapRecognized:(id)recognized
{
  if (!-[UIPDFViewTouchHandler delegateGesture:kind:](self, "delegateGesture:kind:", recognized, 0) && [recognized state] == 3)
  {
    [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
    [recognized locationInView:self->_pdfPageView];
    pdfPageView = self->_pdfPageView;

    [(UIPDFPageView *)pdfPageView singleTapAt:?];
  }
}

- (void)twoFingerTapRecognized:(id)recognized
{
  if ([recognized state] == 3)
  {
    [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
    [(UIPDFPageView *)self->_pdfPageView clearSearchHighlights];
    [(UIPDFSelectionController *)self->_selectionController clearSelection];
    [recognized locationOfTouch:0 inView:self->_pdfPageView];
    v6 = v5;
    v8 = v7;
    [recognized locationOfTouch:1 inView:self->_pdfPageView];
    [(UIPDFSelectionController *)self->_selectionController startTracking:v6 andPoint:v8, v9, v10];
    selectionController = self->_selectionController;

    [(UIPDFSelectionController *)selectionController endTracking:v6, v8];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_firstTouch)
  {
    [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pdfPageView annotationController:recognizer] addLinkAnnotationViews];
    self->_firstTouch = 0;
    self->_useDelegateForLinks = 1;
  }

  return 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  [begin locationInView:self->_pdfPageView];
  v6 = v5;
  v8 = v7;
  annotationController = [(UIPDFPageView *)self->_pdfPageView annotationController];
  if ([(UIPDFAnnotationController *)annotationController willHandleTouchGestureAtPoint:v6, v8])
  {
    if (self->_useDelegateForLinks)
    {
      v10 = [(UIPDFAnnotationController *)annotationController isLinkAnnotationAt:v6, v8];
      if (v10)
      {

        LOBYTE(v10) = [(UIPDFAnnotationController *)annotationController linkAnnotationShouldBegin:begin];
      }

      return v10;
    }

LABEL_14:
    LOBYTE(v10) = 0;
    return v10;
  }

  if (![(UIPDFPageView *)self->_pdfPageView allowSelection]&& (self->_briefPressRecognizer == begin || self->_longPressRecognizer == begin))
  {
    goto LABEL_14;
  }

  if (self->_twoFingerTapRecognizer == begin)
  {
    pdfPageView = self->_pdfPageView;

    LOBYTE(v10) = [(UIPDFPageView *)pdfPageView allowTwoFingerSelection];
  }

  else if (self->_briefPressRecognizer == begin)
  {
    [begin locationInView:self->_pdfPageView];
    selectionController = self->_selectionController;

    LOBYTE(v10) = [(UIPDFSelectionController *)selectionController shouldTrackAt:?];
  }

  else if (self->_singleTapRecognizer == begin)
  {
    [begin locationInView:self->_pdfPageView];
    v13 = self->_pdfPageView;

    LOBYTE(v10) = [(UIPDFPageView *)v13 willDoSomethingWithTap:?];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (!self->_allowMenu)
  {
    return 0;
  }

  if (sel_copy_ == action && (v8 = [(UIPDFPageView *)self->_pdfPageView page], [(UIPDFPage *)v8 selection]))
  {
    Document = CGPDFPageGetDocument([(UIPDFPage *)v8 CGPage]);

    return CGPDFDocumentAllowsCopying(Document);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIPDFViewTouchHandler;
    return [(UIResponder *)&v10 canPerformAction:action withSender:sender];
  }
}

- (void)copy:(id)copy
{
  selection = [[(UIPDFPageView *)self->_pdfPageView page] selection];

  [(UIPDFSelection *)selection copyToPasteboard];
}

- (void)selectAll:(id)all
{
  [(UIPDFSelectionController *)self->_selectionController extendSelectionToParagraph];
  [(UIPDFPageView *)self->_pdfPageView setNeedsDisplay];
  [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_showMenu selector:0 userInfo:0 repeats:0.4];
  pdfPageView = self->_pdfPageView;

  [(UIPDFPageView *)pdfPageView setNeedsDisplay];
}

- (void)showMenu
{
  v33 = *MEMORY[0x1E69E9840];
  selection = [[(UIPDFPageView *)self->_pdfPageView page] selection];
  if (selection)
  {
    v4 = selection;
    [(UIResponder *)self becomeFirstResponder];
    [(UIPDFSelection *)v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    memset(&v31, 0, sizeof(v31));
    [(UIPDFSelection *)v4 transform];
    v30 = v31;
    v34.origin.x = v6;
    v34.origin.y = v8;
    v34.size.width = v10;
    v34.size.height = v12;
    v35 = CGRectApplyAffineTransform(v34, &v30);
    [(UIPDFPageView *)self->_pdfPageView convertRectFromPDFPageSpace:v35.origin.x, v35.origin.y, v35.size.width, v35.size.height];
    v37 = CGRectInset(v36, -2.0, -2.0);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    [(UIPDFPageView *)self->_pdfPageView delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(UIPDFPageView *)self->_pdfPageView delegate];
      [(UIMenuController *)self->_menuController setMenuItems:[delegate menuItems:MEMORY[0x1E695E0F0] forPage:self->_pdfPageView]];
    }

    if (![-[UIPDFSelection string](v4 "string")] || (v18 = -[UIPDFSelection string](v4, "string"), !objc_msgSend(objc_msgSend(v18, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), "length")))
    {
      menuItems = [(UIMenuController *)self->_menuController menuItems];
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = [(NSArray *)menuItems countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v27;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v27 != v23)
            {
              objc_enumerationMutation(menuItems);
            }

            v25 = *(*(&v26 + 1) + 8 * i);
            if ([v25 action] != sel_lookupSelection_)
            {
              [v20 addObject:v25];
            }
          }

          v22 = [(NSArray *)menuItems countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v22);
      }

      [(UIMenuController *)self->_menuController setMenuItems:v20];
    }

    [(UIMenuController *)self->_menuController setTargetRect:self->_pdfPageView inView:x, y, width, height];
    [(UIMenuController *)self->_menuController update];
    [(UIMenuController *)self->_menuController setMenuVisible:1 animated:1];
  }
}

@end