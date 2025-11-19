@interface UIPDFViewTouchHandler
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)delegateGesture:(id)a3 kind:(int)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)resignFirstResponder;
- (UIPDFViewTouchHandler)initWithView:(id)a3;
- (void)briefPressRecognized:(id)a3;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)disableRecognizers;
- (void)doubleTapRecognized:(id)a3;
- (void)enableRecognizers;
- (void)longPressRecognized:(id)a3;
- (void)selectAll:(id)a3;
- (void)showMenu;
- (void)singleTapRecognized:(id)a3;
- (void)twoFingerTapRecognized:(id)a3;
@end

@implementation UIPDFViewTouchHandler

- (UIPDFViewTouchHandler)initWithView:(id)a3
{
  v14.receiver = self;
  v14.super_class = UIPDFViewTouchHandler;
  v4 = [(UIPDFViewTouchHandler *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_pdfPageView = a3;
    v6 = objc_alloc_init(UIPDFSelectionController);
    v5->_selectionController = v6;
    [(UIPDFSelectionController *)v6 setPageView:a3];
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
    [(UIPDFMagnifierController *)v12 setPageView:a3];
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
  v3 = [(UIResponder *)self canResignFirstResponder];
  if (v3)
  {
    [(UIPDFSelectionController *)self->_selectionController clearSelection];
    v5.receiver = self;
    v5.super_class = UIPDFViewTouchHandler;
    LOBYTE(v3) = [(UIResponder *)&v5 resignFirstResponder];
  }

  return v3;
}

- (BOOL)delegateGesture:(id)a3 kind:(int)a4
{
  if (self->_useDelegateForLinks)
  {
    v7 = [(UIPDFPageView *)self->_pdfPageView annotationController];
    [a3 locationInView:self->_pdfPageView];
    v8 = [(UIPDFAnnotationController *)v7 isLinkAnnotationAt:?];
    if (v8)
    {
      if (a4)
      {
        if (a4 == 2)
        {
          v9 = [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pdfPageView annotationController] annotationLongPressRecognized:a3];
        }

        else
        {
          if (a4 != 1)
          {
LABEL_11:
            LOBYTE(v8) = 1;
            return v8;
          }

          v9 = [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pdfPageView annotationController] annotationBriefPressRecognized:a3];
        }
      }

      else
      {
        v9 = [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pdfPageView annotationController] annotationSingleTapRecognized:a3];
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

- (void)briefPressRecognized:(id)a3
{
  if ([(UIPDFViewTouchHandler *)self delegateGesture:a3 kind:1])
  {
    return;
  }

  [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
  [a3 locationInView:self->_pdfPageView];
  v6 = v5;
  v8 = v7;
  v9 = [a3 state];
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 != 4 || !self->_showMagnifier)
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
    if (v9 != 1)
    {
      if (v9 != 2)
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

- (void)longPressRecognized:(id)a3
{
  if ([(UIPDFMagnifierController *)self->_magnifyController visible]|| ![(UIPDFViewTouchHandler *)self delegateGesture:a3 kind:2])
  {
    [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
    [a3 locationInView:self->_pdfPageView];
    v6 = v5;
    v8 = v7;
    v11 = 0;
    [(UIPDFMagnifierController *)self->_magnifyController setPosition:v5 viewPoint:v7, v5, v7];
    v9 = [a3 state];
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        if (v9 != 4)
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
      if (v9 != 1)
      {
        if (v9 != 2)
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

- (void)doubleTapRecognized:(id)a3
{
  if ([a3 state] == 3)
  {
    [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
    [a3 locationInView:self->_pdfPageView];
    pdfPageView = self->_pdfPageView;

    [(UIPDFPageView *)pdfPageView doubleTapAt:?];
  }
}

- (void)singleTapRecognized:(id)a3
{
  if (!-[UIPDFViewTouchHandler delegateGesture:kind:](self, "delegateGesture:kind:", a3, 0) && [a3 state] == 3)
  {
    [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
    [a3 locationInView:self->_pdfPageView];
    pdfPageView = self->_pdfPageView;

    [(UIPDFPageView *)pdfPageView singleTapAt:?];
  }
}

- (void)twoFingerTapRecognized:(id)a3
{
  if ([a3 state] == 3)
  {
    [+[UIPDFViewManager sharedViewManager](UIPDFViewManager "sharedViewManager")];
    [(UIPDFPageView *)self->_pdfPageView clearSearchHighlights];
    [(UIPDFSelectionController *)self->_selectionController clearSelection];
    [a3 locationOfTouch:0 inView:self->_pdfPageView];
    v6 = v5;
    v8 = v7;
    [a3 locationOfTouch:1 inView:self->_pdfPageView];
    [(UIPDFSelectionController *)self->_selectionController startTracking:v6 andPoint:v8, v9, v10];
    selectionController = self->_selectionController;

    [(UIPDFSelectionController *)selectionController endTracking:v6, v8];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_firstTouch)
  {
    [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pdfPageView annotationController:a3] addLinkAnnotationViews];
    self->_firstTouch = 0;
    self->_useDelegateForLinks = 1;
  }

  return 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  [a3 locationInView:self->_pdfPageView];
  v6 = v5;
  v8 = v7;
  v9 = [(UIPDFPageView *)self->_pdfPageView annotationController];
  if ([(UIPDFAnnotationController *)v9 willHandleTouchGestureAtPoint:v6, v8])
  {
    if (self->_useDelegateForLinks)
    {
      v10 = [(UIPDFAnnotationController *)v9 isLinkAnnotationAt:v6, v8];
      if (v10)
      {

        LOBYTE(v10) = [(UIPDFAnnotationController *)v9 linkAnnotationShouldBegin:a3];
      }

      return v10;
    }

LABEL_14:
    LOBYTE(v10) = 0;
    return v10;
  }

  if (![(UIPDFPageView *)self->_pdfPageView allowSelection]&& (self->_briefPressRecognizer == a3 || self->_longPressRecognizer == a3))
  {
    goto LABEL_14;
  }

  if (self->_twoFingerTapRecognizer == a3)
  {
    pdfPageView = self->_pdfPageView;

    LOBYTE(v10) = [(UIPDFPageView *)pdfPageView allowTwoFingerSelection];
  }

  else if (self->_briefPressRecognizer == a3)
  {
    [a3 locationInView:self->_pdfPageView];
    selectionController = self->_selectionController;

    LOBYTE(v10) = [(UIPDFSelectionController *)selectionController shouldTrackAt:?];
  }

  else if (self->_singleTapRecognizer == a3)
  {
    [a3 locationInView:self->_pdfPageView];
    v13 = self->_pdfPageView;

    LOBYTE(v10) = [(UIPDFPageView *)v13 willDoSomethingWithTap:?];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (!self->_allowMenu)
  {
    return 0;
  }

  if (sel_copy_ == a3 && (v8 = [(UIPDFPageView *)self->_pdfPageView page], [(UIPDFPage *)v8 selection]))
  {
    Document = CGPDFPageGetDocument([(UIPDFPage *)v8 CGPage]);

    return CGPDFDocumentAllowsCopying(Document);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIPDFViewTouchHandler;
    return [(UIResponder *)&v10 canPerformAction:a3 withSender:a4];
  }
}

- (void)copy:(id)a3
{
  v3 = [[(UIPDFPageView *)self->_pdfPageView page] selection];

  [(UIPDFSelection *)v3 copyToPasteboard];
}

- (void)selectAll:(id)a3
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
  v3 = [[(UIPDFPageView *)self->_pdfPageView page] selection];
  if (v3)
  {
    v4 = v3;
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
      v17 = [(UIPDFPageView *)self->_pdfPageView delegate];
      [(UIMenuController *)self->_menuController setMenuItems:[v17 menuItems:MEMORY[0x1E695E0F0] forPage:self->_pdfPageView]];
    }

    if (![-[UIPDFSelection string](v4 "string")] || (v18 = -[UIPDFSelection string](v4, "string"), !objc_msgSend(objc_msgSend(v18, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), "length")))
    {
      v19 = [(UIMenuController *)self->_menuController menuItems];
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v26 objects:v32 count:16];
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
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v26 + 1) + 8 * i);
            if ([v25 action] != sel_lookupSelection_)
            {
              [v20 addObject:v25];
            }
          }

          v22 = [(NSArray *)v19 countByEnumeratingWithState:&v26 objects:v32 count:16];
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