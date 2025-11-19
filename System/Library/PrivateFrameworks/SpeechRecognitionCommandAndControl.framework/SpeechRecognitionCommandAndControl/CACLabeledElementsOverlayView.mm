@interface CACLabeledElementsOverlayView
- (CACLabeledElementsOverlayView)initWithFrame:(CGRect)a3;
- (id)_viewShowingDebuggingRect:(CGRect)a3;
- (void)addLabeledElements:(id)a3;
- (void)clearLabeledElements;
@end

@implementation CACLabeledElementsOverlayView

- (CACLabeledElementsOverlayView)initWithFrame:(CGRect)a3
{
  v51[8] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = (v6 + -160.0) * 0.5;
  v10 = v8 + -160.0;
  v50.receiver = self;
  v50.super_class = CACLabeledElementsOverlayView;
  v11 = [(CACLabeledElementsOverlayView *)&v50 initWithFrame:v9, v10, 160.0, 160.0];
  if (v11)
  {
    v12 = [MEMORY[0x277D75348] clearColor];
    [(CACLabeledElementsOverlayView *)v11 setBackgroundColor:v12];

    v13 = [CACOverlayContainerView badgeViewContainerWithFrame:0 usingContrast:v9, v10, 160.0, 160.0];
    badgesContainer = v11->_badgesContainer;
    v11->_badgesContainer = v13;

    v15 = [CACOverlayContainerView badgeViewContainerWithFrame:1 usingContrast:v9, v10, 160.0, 160.0];
    contrastBadgesContainer = v11->_contrastBadgesContainer;
    v11->_contrastBadgesContainer = v15;

    v17 = [(CACLabeledElementsOverlayView *)v11 contrastBadgesContainer];
    [(CACLabeledElementsOverlayView *)v11 addSubview:v17];

    v18 = [(CACLabeledElementsOverlayView *)v11 badgesContainer];
    [(CACLabeledElementsOverlayView *)v11 addSubview:v18];

    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACShowElementRectanglesWithNumbers", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v20 = AppBooleanValue == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    [(CACLabeledElementsOverlayView *)v11 setDisplayElementRectangles:v21];
    v39 = MEMORY[0x277CCAAD0];
    v48 = [(UIView *)v11->_badgesContainer topAnchor];
    v47 = [(CACLabeledElementsOverlayView *)v11 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v51[0] = v46;
    v45 = [(UIView *)v11->_badgesContainer bottomAnchor];
    v44 = [(CACLabeledElementsOverlayView *)v11 bottomAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v51[1] = v43;
    v42 = [(UIView *)v11->_badgesContainer leadingAnchor];
    v41 = [(CACLabeledElementsOverlayView *)v11 leadingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v51[2] = v40;
    v38 = [(UIView *)v11->_badgesContainer trailingAnchor];
    v37 = [(CACLabeledElementsOverlayView *)v11 trailingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v51[3] = v36;
    v35 = [(UIView *)v11->_contrastBadgesContainer topAnchor];
    v34 = [(CACLabeledElementsOverlayView *)v11 topAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v51[4] = v33;
    v32 = [(UIView *)v11->_contrastBadgesContainer bottomAnchor];
    v22 = [(CACLabeledElementsOverlayView *)v11 bottomAnchor];
    v23 = [v32 constraintEqualToAnchor:v22];
    v51[5] = v23;
    v24 = [(UIView *)v11->_contrastBadgesContainer leadingAnchor];
    v25 = [(CACLabeledElementsOverlayView *)v11 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v51[6] = v26;
    v27 = [(UIView *)v11->_contrastBadgesContainer trailingAnchor];
    v28 = [(CACLabeledElementsOverlayView *)v11 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v51[7] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:8];
    [v39 activateConstraints:v30];
  }

  return v11;
}

- (void)clearLabeledElements
{
  v2 = self;
  objc_sync_enter(v2);
  labeledElements = v2->_labeledElements;
  if (labeledElements)
  {
    [(NSMutableArray *)labeledElements removeAllObjects];
  }

  else
  {
    v4 = objc_opt_new();
    v5 = v2->_labeledElements;
    v2->_labeledElements = v4;
  }

  objc_sync_exit(v2);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CACLabeledElementsOverlayView_clearLabeledElements__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__CACLabeledElementsOverlayView_clearLabeledElements__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) badgesContainer];
  v3 = [v2 subviews];

  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [*(a1 + 32) contrastBadgesContainer];
  v9 = [v8 subviews];

  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) removeFromSuperview];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)addLabeledElements:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 mutableCopy];
  [(NSMutableArray *)v5->_labeledElements addObjectsFromArray:v6];

  objc_sync_exit(v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CACLabeledElementsOverlayView_addLabeledElements___block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__CACLabeledElementsOverlayView_addLabeledElements___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = *(*(a1 + 32) + 408);
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v8 = [v7 numberedLabel];
        [v7 labelRectangle];
        v9 = [CACLabeledBadgeView alloc];
        [v7 labelRectangle];
        v14 = -[CACLabeledBadgeView initWithFrame:label:arrowOrientation:badgePresentation:badgeIndicator:](v9, "initWithFrame:label:arrowOrientation:badgePresentation:badgeIndicator:", v8, [v7 arrowOrientation], objc_msgSend(v7, "badgePresentation"), objc_msgSend(v7, "badgeIndicatorMask"), v10, v11, v12, v13);
        v15 = [*(a1 + 32) badgesContainer];
        [v15 addSubview:v14];

        [v25 addObject:v14];
        if ([*(a1 + 32) displayElementRectangles])
        {
          v16 = *(a1 + 32);
          [v7 interfaceOrientedRectangle];
          v17 = [v16 _viewShowingDebuggingRect:?];
          [v16 addSubview:v17];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v4);
  }

  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v25;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v26 + 1) + 8 * j) contrastedCopy];
          v24 = [*(a1 + 32) contrastBadgesContainer];
          [v24 addSubview:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }
  }
}

- (id)_viewShowingDebuggingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v9 = v8;
  v17.width = width;
  v17.height = height;
  UIGraphicsBeginImageContextWithOptions(v17, 0, v9);

  v10 = [MEMORY[0x277D75208] bezierPath];
  v11 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 0.0, width, height}];
  [v10 appendPath:v11];

  [v10 closePath];
  v12 = [MEMORY[0x277D75348] redColor];
  [v12 set];

  [v10 stroke];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v13];
  [v14 setFrame:{x, y, width, height}];

  return v14;
}

void __52__CACLabeledElementsOverlayView_addLabeledElements___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  [a2 labelRectangle];
  v7 = NSStringFromCGRect(v8);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_26B354000, a4, OS_LOG_TYPE_ERROR, "Frame for labeled element was invalid - %@", a1, 0xCu);
}

@end