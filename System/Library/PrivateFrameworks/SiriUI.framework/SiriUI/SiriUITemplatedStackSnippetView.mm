@interface SiriUITemplatedStackSnippetView
- (SiriUITemplatedStackSnippetView)initWithFrame:(CGRect)frame;
- (SiriUITemplatedStackSnippetViewDataSource)dataSource;
- (SiriUITemplatedStackSnippetViewDelegate)delegate;
- (UIEdgeInsets)templatedContentMargins;
- (double)desiredHeight;
- (void)_handleTapGesture:(id)gesture;
- (void)_triggerLayoutAnimated:(BOOL)animated completion:(id)completion;
- (void)addTemplateSubview:(id)subview;
- (void)adjustAuxiliaryViewHeight:(double)height animated:(BOOL)animated completion:(id)completion;
- (void)layoutSubviews;
- (void)reloadData;
- (void)setAuxiliaryView:(id)view atIndex:(unint64_t)index initialHeight:(double)height animated:(BOOL)animated completion:(id)completion;
- (void)setDataSource:(id)source;
- (void)templateSubviewWantsToBeRemovedFromHierarchy:(id)hierarchy;
@end

@implementation SiriUITemplatedStackSnippetView

- (SiriUITemplatedStackSnippetView)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  Height = CGRectGetHeight(frame);
  if (Height >= 44.0)
  {
    v8 = Height;
  }

  else
  {
    v8 = 44.0;
  }

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = v8;
  v9 = CGRectGetWidth(v43);
  if (v9 >= 100.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 100.0;
  }

  v42.receiver = self;
  v42.super_class = SiriUITemplatedStackSnippetView;
  v11 = [(SiriUITemplatedStackSnippetView *)&v42 initWithFrame:x, y, v10, v8];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D75D18]);
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    v17 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
    sashOverlayView = v11->_sashOverlayView;
    v11->_sashOverlayView = v17;

    v19 = v11->_sashOverlayView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v19 setBackgroundColor:whiteColor];

    [(UIView *)v11->_sashOverlayView setAlpha:0.4];
    v21 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v13, v14, v15, v16}];
    sashImageView = v11->_sashImageView;
    v11->_sashImageView = v21;

    v23 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v13, v14, v15, v16}];
    sashTitleLabel = v11->_sashTitleLabel;
    v11->_sashTitleLabel = v23;

    v25 = v11->_sashTitleLabel;
    siriui_platterTextColor = [MEMORY[0x277D75348] siriui_platterTextColor];
    [(UILabel *)v25 setTextColor:siriui_platterTextColor];

    v27 = v11->_sashTitleLabel;
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v27 setFont:v28];

    v29 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v13, v14, v15, v16}];
    navigationTitleLabel = v11->_navigationTitleLabel;
    v11->_navigationTitleLabel = v29;

    v31 = v11->_navigationTitleLabel;
    siriui_platterTextColor2 = [MEMORY[0x277D75348] siriui_platterTextColor];
    [(UILabel *)v31 setTextColor:siriui_platterTextColor2];

    v33 = v11->_navigationTitleLabel;
    v34 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v33 setFont:v34];

    v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
    templateSubviews = v11->_templateSubviews;
    v11->_templateSubviews = v35;

    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackedSubviews = v11->_stackedSubviews;
    v11->_stackedSubviews = v37;

    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keylines = v11->_keylines;
    v11->_keylines = v39;

    v11->_auxiliaryViewHeight = 0.0;
    [(SiriUITemplatedStackSnippetView *)v11 addSubview:v11->_sashOverlayView];
    [(SiriUITemplatedStackSnippetView *)v11 addSubview:v11->_sashImageView];
    [(SiriUITemplatedStackSnippetView *)v11 addSubview:v11->_sashTitleLabel];
    [(SiriUITemplatedStackSnippetView *)v11 addSubview:v11->_navigationTitleLabel];
  }

  return v11;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = SiriUITemplatedStackSnippetView;
  [(SiriUITemplatedStackSnippetView *)&v34 layoutSubviews];
  [(SiriUITemplatedStackSnippetView *)self bounds];
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v8 = CGRectGetWidth(v35);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  text = [(UILabel *)self->_navigationTitleLabel text];

  if (text)
  {
    v31[3] = 24.0;
    [(UILabel *)self->_navigationTitleLabel sizeThatFits:width, height];
    UIRectCenteredXInRect();
    [(UILabel *)self->_navigationTitleLabel setFrame:?];
    [(UILabel *)self->_navigationTitleLabel _setLastLineBaselineFrameOriginY:v31[3]];
    v31[3] = v31[3] + 12.0;
    [(UILabel *)self->_sashTitleLabel setHidden:1];
    [(UIImageView *)self->_sashImageView setHidden:1];
    [(UILabel *)self->_navigationTitleLabel setHidden:0];
  }

  else
  {
    v31[3] = 8.0;
    [(UIImageView *)self->_sashImageView setFrame:8.0, 8.0, 20.0, 20.0];
    v31[3] = 23.0;
    [(UILabel *)self->_sashTitleLabel sizeToFit];
    [(UILabel *)self->_sashTitleLabel frame];
    v11 = v10;
    v13 = v12;
    v36.origin.x = 8.0;
    v36.origin.y = 8.0;
    v36.size.width = 20.0;
    v36.size.height = 20.0;
    [(UILabel *)self->_sashTitleLabel setFrame:CGRectGetMaxX(v36) + 8.0, 0.0, v11, v13];
    [(UILabel *)self->_sashTitleLabel _setLastLineBaselineFrameOriginY:v31[3]];
    v31[3] = v31[3] + 13.0;
    [(UILabel *)self->_sashTitleLabel setHidden:0];
    [(UIImageView *)self->_sashImageView setHidden:0];
    [(UILabel *)self->_navigationTitleLabel setHidden:1];
  }

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  [(UIView *)self->_sashOverlayView setFrame:0.0, 0.0, CGRectGetWidth(v37), v31[3]];
  v22 = 0;
  v23 = &v22;
  v24 = 0x4010000000;
  v26 = 0;
  v27 = 0;
  v25 = &unk_2694E53E7;
  v28 = v8;
  v29 = 0x3FF0000000000000;
  if ([(NSMutableArray *)self->_keylines count])
  {
    firstObject = [(NSMutableArray *)self->_keylines firstObject];
    [firstObject sizeThatFits:{v23[6], v23[7]}];
    v16 = v15;

    *(v23 + 7) = v16;
  }

  objc_initWeak(&location, self);
  stackedSubviews = self->_stackedSubviews;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __49__SiriUITemplatedStackSnippetView_layoutSubviews__block_invoke;
  v19[3] = &unk_279C5A8F0;
  objc_copyWeak(v20, &location);
  v19[4] = self;
  v19[5] = &v30;
  v20[2] = *&v8;
  v20[1] = a2;
  v19[6] = &v22;
  [(NSMutableArray *)stackedSubviews enumerateObjectsUsingBlock:v19];
  touchInterceptView = self->_touchInterceptView;
  [(UIView *)self->_auxiliaryView frame];
  [(UIView *)touchInterceptView setFrame:?];
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v30, 8);
}

void __49__SiriUITemplatedStackSnippetView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([v14 conformsToProtocol:&unk_287A246F0])
    {
      [v14 desiredHeight];
      v9 = v8;
      v10 = v14;
    }

    else
    {
      v10 = v14;
      if (*(WeakRetained + 63) == v14)
      {
        v9 = *(WeakRetained + 59);
      }

      else
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        [v11 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"SiriUITemplatedStackSnippetView.m" lineNumber:162 description:{@"Subview %@ must be a template view or be the auxiliary view.", v14}];

        v10 = v14;
        v9 = 0.0;
      }
    }

    [v10 setFrame:{0.0, *(*(*(a1 + 40) + 8) + 24), *(a1 + 72), v9}];
    *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);
    *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 40) + 8) + 24);
    v12 = [*(WeakRetained + 58) objectAtIndex:a3];
    [v12 setFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];

    if ([*(WeakRetained + 57) count] - 1 == a3)
    {
      v13 = [*(WeakRetained + 58) objectAtIndex:a3];
      [v13 removeFromSuperview];
    }
  }

  else
  {
    *a4 = 1;
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(SiriUITemplatedStackSnippetView *)self reloadData];
    v5 = obj;
  }
}

- (void)setAuxiliaryView:(id)view atIndex:(unint64_t)index initialHeight:(double)height animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  viewCopy = view;
  completionCopy = completion;
  if (self->_auxiliaryView != viewCopy)
  {
    [(NSMutableArray *)self->_stackedSubviews removeObject:?];
    [(UIView *)self->_auxiliaryView removeFromSuperview];
    self->_auxiliaryViewHeight = height;
    objc_storeStrong(&self->_auxiliaryView, view);
    if (self->_auxiliaryView)
    {
      if ([(NSMutableArray *)self->_stackedSubviews count]< index)
      {
        v15 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          [SiriUITemplatedStackSnippetView setAuxiliaryView:v15 atIndex:index initialHeight:? animated:? completion:?];
        }

        index = [(NSMutableArray *)self->_stackedSubviews count];
      }

      [(NSMutableArray *)self->_stackedSubviews insertObject:self->_auxiliaryView atIndex:index];
      v16 = *MEMORY[0x277CBF3A0];
      v17 = *(MEMORY[0x277CBF3A0] + 8);
      v18 = *(MEMORY[0x277CBF3A0] + 16);
      v19 = *(MEMORY[0x277CBF3A0] + 24);
      [(UIView *)self->_auxiliaryView setFrame:*MEMORY[0x277CBF3A0], v17, v18, v19];
      [(SiriUITemplatedStackSnippetView *)self addSubview:self->_auxiliaryView];
      v20 = [SiriUIKeyline keylineWithKeylineType:2 platterStyling:1];
      [(NSMutableArray *)self->_keylines addObject:v20];
      [(SiriUITemplatedStackSnippetView *)self addSubview:v20];
      if (!self->_touchInterceptView)
      {
        v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v16, v17, v18, v19}];
        [(UIView *)v21 setUserInteractionEnabled:1];
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UIView *)v21 setBackgroundColor:clearColor];

        layer = [(UIView *)v21 layer];
        [layer setAllowsHitTesting:1];

        layer2 = [(UIView *)v21 layer];
        [layer2 setHitTestsAsOpaque:1];

        [(SiriUITemplatedStackSnippetView *)self addSubview:v21];
        touchInterceptView = self->_touchInterceptView;
        self->_touchInterceptView = v21;
      }
    }

    else
    {
      v26 = self->_touchInterceptView;
      if (v26)
      {
        [(UIView *)v26 removeFromSuperview];
        v27 = self->_touchInterceptView;
        self->_touchInterceptView = 0;
      }
    }

    [(SiriUITemplatedStackSnippetView *)self _triggerLayoutAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)adjustAuxiliaryViewHeight:(double)height animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (self->_auxiliaryViewHeight == height)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    self->_auxiliaryViewHeight = height;
    [(SiriUITemplatedStackSnippetView *)self _triggerLayoutAnimated:animatedCopy completion:?];
  }

  MEMORY[0x2821F97C8]();
}

- (double)desiredHeight
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_templateSubviews;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) desiredHeight];
        v7 = v7 + v9;
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7 + self->_auxiliaryViewHeight + 36.0;
}

- (void)reloadData
{
  sashImageView = self->_sashImageView;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained sashImageForTemplatedStackSnippetView:self];
  [(UIImageView *)sashImageView setImage:v5];

  sashTitleLabel = self->_sashTitleLabel;
  v7 = objc_loadWeakRetained(&self->_dataSource);
  v8 = [v7 sashTitleForTemplatedStackSnippetView:self];
  uppercaseString = [v8 uppercaseString];
  [(UILabel *)sashTitleLabel setText:uppercaseString];

  navigationTitleLabel = self->_navigationTitleLabel;
  v11 = objc_loadWeakRetained(&self->_dataSource);
  v12 = [v11 navigationTitleForTemplatedStackSnippetView:self];
  [(UILabel *)navigationTitleLabel setText:v12];

  v13 = objc_loadWeakRetained(&self->_dataSource);
  v14 = [v13 hasDefaultTapActionForTemplatedStackSnippetView:self];

  tapRecognizer = self->_tapRecognizer;
  if (!v14 || tapRecognizer)
  {
    if (!((tapRecognizer == 0) | v14 & 1))
    {
      [(SiriUITemplatedStackSnippetView *)self removeGestureRecognizer:?];
      v18 = self->_tapRecognizer;
      self->_tapRecognizer = 0;
    }
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGesture_];
    v17 = self->_tapRecognizer;
    self->_tapRecognizer = v16;

    [(SiriUITemplatedStackSnippetView *)self addGestureRecognizer:self->_tapRecognizer];
  }

  [(SiriUITemplatedStackSnippetView *)self setNeedsLayout];
}

- (void)_triggerLayoutAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (animatedCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__SiriUITemplatedStackSnippetView__triggerLayoutAnimated_completion___block_invoke;
    v7[3] = &unk_279C59D78;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v7 usingSpringWithDamping:completionCopy initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.5];
  }

  else
  {
    [(SiriUITemplatedStackSnippetView *)self setNeedsLayout];
    [(SiriUITemplatedStackSnippetView *)self layoutIfNeeded];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

uint64_t __69__SiriUITemplatedStackSnippetView__triggerLayoutAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)addTemplateSubview:(id)subview
{
  if (subview)
  {
    templateSubviews = self->_templateSubviews;
    subviewCopy = subview;
    [(NSMutableSet *)templateSubviews addObject:subviewCopy];
    [(NSMutableArray *)self->_stackedSubviews addObject:subviewCopy];
    [(SiriUITemplatedStackSnippetView *)self addSubview:subviewCopy];
    [subviewCopy setTemplatedSuperview:self];

    v6 = [SiriUIKeyline keylineWithKeylineType:2 platterStyling:1];
    [(NSMutableArray *)self->_keylines addObject:v6];
    [(SiriUITemplatedStackSnippetView *)self addSubview:v6];
    [(SiriUITemplatedStackSnippetView *)self setNeedsLayout];
  }
}

- (void)templateSubviewWantsToBeRemovedFromHierarchy:(id)hierarchy
{
  stackedSubviews = self->_stackedSubviews;
  hierarchyCopy = hierarchy;
  v6 = [(NSMutableArray *)stackedSubviews indexOfObject:hierarchyCopy];
  [(NSMutableSet *)self->_templateSubviews removeObject:hierarchyCopy];
  [(NSMutableArray *)self->_stackedSubviews removeObject:hierarchyCopy];
  [hierarchyCopy removeFromSuperview];
  [hierarchyCopy setTemplatedSuperview:0];

  v7 = [(NSMutableArray *)self->_keylines objectAtIndex:v6];
  [(NSMutableArray *)self->_keylines removeObject:v7];
  [v7 removeFromSuperview];
  [(SiriUITemplatedStackSnippetView *)self setNeedsLayout];
}

- (UIEdgeInsets)templatedContentMargins
{
  v2 = 0.0;
  v3 = 16.0;
  v4 = 0.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_handleTapGesture:(id)gesture
{
  delegate = [(SiriUITemplatedStackSnippetView *)self delegate];
  [delegate viewWantsDefaultTapAction:self];
}

- (SiriUITemplatedStackSnippetViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SiriUITemplatedStackSnippetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAuxiliaryView:(uint64_t)a3 atIndex:initialHeight:animated:completion:.cold.1(id *a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = [v5 count];
  v8 = [*a1 count];
  v9 = 136315906;
  v10 = "[SiriUITemplatedStackSnippetView setAuxiliaryView:atIndex:initialHeight:animated:completion:]";
  v11 = 2048;
  v12 = a3;
  v13 = 2048;
  v14 = v7;
  v15 = 2048;
  v16 = v8;
  _os_log_error_impl(&dword_26948D000, v6, OS_LOG_TYPE_ERROR, "%s Requested index %lu is out bounds of our %lu subviews, changing index to %lu", &v9, 0x2Au);
}

@end