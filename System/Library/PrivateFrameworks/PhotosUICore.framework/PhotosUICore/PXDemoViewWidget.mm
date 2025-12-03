@interface PXDemoViewWidget
- (BOOL)hasContentForCurrentInput;
- (CGRect)_contentViewFrameForSize:(CGSize)size;
- (CGSize)_contentSize;
- (NSString)localizedDisclosureTitle;
- (PXDemoViewWidget)init;
- (PXWidgetDelegate)widgetDelegate;
- (UIView)contentView;
- (double)preferredContentHeightForWidth:(double)width;
- (void)_handleLongPressGestureRecognizer:(id)recognizer;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)_loadViews;
- (void)_setAnimationCount:(int64_t)count;
- (void)_setContentViewAnchoringType:(int64_t)type;
- (void)_setDidLoadContent:(BOOL)content;
- (void)_updateContentViewColor;
- (void)contentViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)setSpec:(id)spec;
- (void)userDidSelectDisclosureControl;
@end

@implementation PXDemoViewWidget

- (CGSize)_contentSize
{
  width = self->__contentSize.width;
  height = self->__contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (void)userDidSelectDisclosureControl
{
  isExpanded = self->_isExpanded;
  self->_isExpanded = !isExpanded;
  v4 = 300.0;
  if (isExpanded)
  {
    v4 = -300.0;
  }

  self->_height = self->_height + v4;
  [(PXDemoViewWidget *)self _setContentViewAnchoringType:1];
  widgetDelegate = [(PXDemoViewWidget *)self widgetDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PXDemoViewWidget_userDidSelectDisclosureControl__block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = widgetDelegate;
  selfCopy = self;
  v6 = widgetDelegate;
  [v6 widget:self animateChanges:v7 withAnimationOptions:0];
}

uint64_t __50__PXDemoViewWidget_userDidSelectDisclosureControl__block_invoke(uint64_t a1)
{
  [*(a1 + 32) widgetLocalizedDisclosureTitleDidChange:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 widgetPreferredContentHeightForWidthDidChange:v3];
}

- (NSString)localizedDisclosureTitle
{
  if (self->_isExpanded)
  {
    return @"Show Less";
  }

  else
  {
    return @"Show More";
  }
}

- (void)contentViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(PXDemoViewWidget *)self _contentViewFrameForSize:width, height];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(PXDemoViewWidget *)self _setAnimationCount:[(PXDemoViewWidget *)self _animationCount]+ 1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__PXDemoViewWidget_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v17[3] = &unk_1E7747168;
  v17[4] = self;
  v17[5] = v9;
  v17[6] = v11;
  v17[7] = v13;
  v17[8] = v15;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__PXDemoViewWidget_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v16[3] = &unk_1E774C648;
  v16[4] = self;
  [coordinatorCopy animateAlongsideTransition:v17 completion:v16];
}

void __78__PXDemoViewWidget_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentView];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

uint64_t __78__PXDemoViewWidget_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _animationCount] - 1;

  return [v1 _setAnimationCount:v2];
}

- (UIView)contentView
{
  [(PXDemoViewWidget *)self _loadViews];

  return [(PXDemoViewWidget *)self _containerView];
}

- (double)preferredContentHeightForWidth:(double)width
{
  spec = [(PXDemoViewWidget *)self spec];
  [spec contentGuideInsets];
  v6 = v5;
  v8 = v7;

  return v8 + v6 + self->_height;
}

- (BOOL)hasContentForCurrentInput
{
  v2 = +[PXPhotosDetailsSettings sharedInstance];
  showDemoViewWidget = [v2 showDemoViewWidget];

  return showDemoViewWidget;
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v7 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    widgetDelegate = [(PXDemoViewWidget *)self widgetDelegate];
    [widgetDelegate widgetPreferredContentHeightForWidthDidChange:self];

    specCopy = v7;
  }
}

- (void)_setAnimationCount:(int64_t)count
{
  if (self->__animationCount != count)
  {
    self->__animationCount = count;
    [(PXDemoViewWidget *)self _updateContentViewColor];
  }
}

- (void)_setDidLoadContent:(BOOL)content
{
  if (self->__didLoadContent != content)
  {
    self->__didLoadContent = content;
    [(PXDemoViewWidget *)self _updateContentViewColor];
  }
}

- (void)_setContentViewAnchoringType:(int64_t)type
{
  if (self->_contentViewAnchoringType != type)
  {
    self->_contentViewAnchoringType = type;
    widgetDelegate = [(PXDemoViewWidget *)self widgetDelegate];
    [widgetDelegate widgetInvalidateContentViewAnchoringType:self];
  }
}

- (void)_updateContentViewColor
{
  if ([(PXDemoViewWidget *)self _didLoadContent])
  {
    if ([(PXDemoViewWidget *)self _animationCount])
    {
      [MEMORY[0x1E69DC888] redColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] purpleColor];
    }
    yellowColor = ;
  }

  else
  {
    yellowColor = [MEMORY[0x1E69DC888] yellowColor];
  }

  v5 = yellowColor;
  _contentView = [(PXDemoViewWidget *)self _contentView];
  [_contentView setBackgroundColor:v5];
}

- (CGRect)_contentViewFrameForSize:(CGSize)size
{
  spec = [(PXDemoViewWidget *)self spec];
  [spec contentGuideInsets];

  _containerView = [(PXDemoViewWidget *)self _containerView];
  [_containerView bounds];

  PXEdgeInsetsInsetRect();
}

- (void)_handleLongPressGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3)
  {
    self->_isExpanded ^= 1u;
    widgetDelegate = [(PXDemoViewWidget *)self widgetDelegate];
    [widgetDelegate widgetLocalizedDisclosureTitleDidChange:self];
  }
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3)
  {
    v5 = objc_alloc_init(PXDemoViewWidgetUIViewController);
    widgetDelegate = [(PXDemoViewWidget *)self widgetDelegate];
    [widgetDelegate widget:self transitionToViewController:v5 withTransitionType:1];
  }
}

- (void)_loadViews
{
  if (!self->__containerView)
  {
    [(PXDemoViewWidget *)self _contentSize:v11];
    PXSizeIsNull();
  }
}

- (PXDemoViewWidget)init
{
  v3.receiver = self;
  v3.super_class = PXDemoViewWidget;
  result = [(PXDemoViewWidget *)&v3 init];
  if (result)
  {
    result->_isExpanded = 0;
    result->_height = 200.0;
    result->__contentSize = *off_1E7722230;
  }

  return result;
}

@end