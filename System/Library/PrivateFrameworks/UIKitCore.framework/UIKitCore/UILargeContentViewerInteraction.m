@interface UILargeContentViewerInteraction
+ (void)initialize;
- (UIGestureRecognizer)gestureRecognizerForExclusionRelationship;
- (UILargeContentViewerInteraction)initWithDelegate:(id)delegate;
- (UIView)view;
- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4;
- (id)_itemAtPoint:(CGPoint)a3;
- (id)_viewControllerForAccessibilityHUDGestureManager:(id)a3;
- (id)delegate;
- (void)_accessibilityHUDGestureManager:(id)a3 gestureLiftedAtPoint:(CGPoint)a4;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UILargeContentViewerInteraction

+ (void)initialize
{
  if (initialize_onceToken_1 != -1)
  {
    dispatch_once(&initialize_onceToken_1, &__block_literal_global_638);
  }
}

void __45__UILargeContentViewerInteraction_initialize__block_invoke()
{
  v0 = [UIApp preferredContentSizeCategory];
  _MergedGlobals_1341 = UIContentSizeCategoryIsAccessibilityCategory(v0);

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v4 addObserverForName:@"UIContentSizeCategoryDidChangeNotification" object:0 queue:v1 usingBlock:&__block_literal_global_93_4];
  v3 = qword_1ED4A24F8;
  qword_1ED4A24F8 = v2;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

void __45__UILargeContentViewerInteraction_initialize__block_invoke_2()
{
  v0 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v0);

  if (_MergedGlobals_1341 != IsAccessibilityCategory)
  {
    _MergedGlobals_1341 = IsAccessibilityCategory;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];
  }
}

- (UILargeContentViewerInteraction)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v8.receiver = self;
  v8.super_class = UILargeContentViewerInteraction;
  v5 = [(UILargeContentViewerInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (UIGestureRecognizer)gestureRecognizerForExclusionRelationship
{
  v2 = [(UILargeContentViewerInteraction *)self view];
  v3 = [v2 _largeContentViewerGestureManager];
  v4 = [v3 _recognizer];

  return v4;
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    v7 = [v6 _largeContentViewerGestureManager];
    [v7 _invalidate];

    v8 = objc_loadWeakRetained(&self->_view);
    [v8 _setLargeContentViewerGestureManager:0];
  }
}

- (void)didMoveToView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_view, obj);
    if (obj)
    {
      v5 = [[UIAccessibilityHUDGestureManager alloc] initWithView:obj delegate:self];
      [obj _setLargeContentViewerGestureManager:v5];
    }
  }
}

- (id)_itemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UILargeContentViewerInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UILargeContentViewerInteraction *)self delegate];
    v9 = [v8 largeContentViewerInteraction:self itemAtPoint:{x, y}];

    if ([v9 showsLargeContentViewer])
    {
      goto LABEL_6;
    }

    v10 = 0;
  }

  else
  {
    v9 = [(UILargeContentViewerInteraction *)self view];
    v10 = [v9 _largeContentViewerItemAtPoint:{x, y}];
  }

  v9 = v10;
LABEL_6:

  return v9;
}

- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4
{
  v4 = [(UILargeContentViewerInteraction *)self _itemAtPoint:a3, a4.x, a4.y];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 accessibilityHUDRepresentation];
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = [UIAccessibilityHUDItem alloc];
    v7 = [v4 largeContentTitle];
    v8 = [v4 largeContentImage];
    [v4 largeContentImageInsets];
    v5 = -[UIAccessibilityHUDItem initWithTitle:image:imageInsets:scaleImage:](v6, "initWithTitle:image:imageInsets:scaleImage:", v7, v8, [v4 scalesLargeContentImage], v9, v10, v11, v12);
  }

LABEL_7:

  return v5;
}

- (void)_accessibilityHUDGestureManager:(id)a3 gestureLiftedAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v7 = [(UILargeContentViewerInteraction *)self _itemAtPoint:x, y];
  v8 = [(UILargeContentViewerInteraction *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(UILargeContentViewerInteraction *)self delegate];
    [v10 largeContentViewerInteraction:self didEndOnItem:v7 atPoint:{x, y}];
LABEL_3:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    if ([v10 isEnabled])
    {
      v11 = [v12 view];
      [v10 convertPoint:v11 fromView:{x, y}];
      [v10 _activateForAccessibilityHUDLiftAtPoint:?];
    }

    goto LABEL_3;
  }

LABEL_7:
}

- (id)_viewControllerForAccessibilityHUDGestureManager:(id)a3
{
  v5 = [(UILargeContentViewerInteraction *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UILargeContentViewerInteraction *)self delegate];
    v8 = [v7 viewControllerForLargeContentViewerInteraction:self];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = NSStringFromSelector(a2);
    [v9 raise:v10 format:{@"A non-nil view controller must be returned from %@", v11}];
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end