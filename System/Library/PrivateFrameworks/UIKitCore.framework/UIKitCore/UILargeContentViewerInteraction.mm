@interface UILargeContentViewerInteraction
+ (void)initialize;
- (UIGestureRecognizer)gestureRecognizerForExclusionRelationship;
- (UILargeContentViewerInteraction)initWithDelegate:(id)delegate;
- (UIView)view;
- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point;
- (id)_itemAtPoint:(CGPoint)point;
- (id)_viewControllerForAccessibilityHUDGestureManager:(id)manager;
- (id)delegate;
- (void)_accessibilityHUDGestureManager:(id)manager gestureLiftedAtPoint:(CGPoint)point;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
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
  view = [(UILargeContentViewerInteraction *)self view];
  _largeContentViewerGestureManager = [view _largeContentViewerGestureManager];
  _recognizer = [_largeContentViewerGestureManager _recognizer];

  return _recognizer;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != viewCopy)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    _largeContentViewerGestureManager = [v6 _largeContentViewerGestureManager];
    [_largeContentViewerGestureManager _invalidate];

    v8 = objc_loadWeakRetained(&self->_view);
    [v8 _setLargeContentViewerGestureManager:0];
  }
}

- (void)didMoveToView:(id)view
{
  obj = view;
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

- (id)_itemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(UILargeContentViewerInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(UILargeContentViewerInteraction *)self delegate];
    view = [delegate2 largeContentViewerInteraction:self itemAtPoint:{x, y}];

    if ([view showsLargeContentViewer])
    {
      goto LABEL_6;
    }

    v10 = 0;
  }

  else
  {
    view = [(UILargeContentViewerInteraction *)self view];
    v10 = [view _largeContentViewerItemAtPoint:{x, y}];
  }

  view = v10;
LABEL_6:

  return view;
}

- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point
{
  v4 = [(UILargeContentViewerInteraction *)self _itemAtPoint:manager, point.x, point.y];
  if (objc_opt_respondsToSelector())
  {
    accessibilityHUDRepresentation = [v4 accessibilityHUDRepresentation];
    if (accessibilityHUDRepresentation)
    {
      goto LABEL_7;
    }
  }

  else
  {
    accessibilityHUDRepresentation = 0;
  }

  if (v4)
  {
    v6 = [UIAccessibilityHUDItem alloc];
    largeContentTitle = [v4 largeContentTitle];
    largeContentImage = [v4 largeContentImage];
    [v4 largeContentImageInsets];
    accessibilityHUDRepresentation = -[UIAccessibilityHUDItem initWithTitle:image:imageInsets:scaleImage:](v6, "initWithTitle:image:imageInsets:scaleImage:", largeContentTitle, largeContentImage, [v4 scalesLargeContentImage], v9, v10, v11, v12);
  }

LABEL_7:

  return accessibilityHUDRepresentation;
}

- (void)_accessibilityHUDGestureManager:(id)manager gestureLiftedAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  managerCopy = manager;
  v7 = [(UILargeContentViewerInteraction *)self _itemAtPoint:x, y];
  delegate = [(UILargeContentViewerInteraction *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(UILargeContentViewerInteraction *)self delegate];
    [delegate2 largeContentViewerInteraction:self didEndOnItem:v7 atPoint:{x, y}];
LABEL_3:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate2 = v7;
    if ([delegate2 isEnabled])
    {
      view = [managerCopy view];
      [delegate2 convertPoint:view fromView:{x, y}];
      [delegate2 _activateForAccessibilityHUDLiftAtPoint:?];
    }

    goto LABEL_3;
  }

LABEL_7:
}

- (id)_viewControllerForAccessibilityHUDGestureManager:(id)manager
{
  delegate = [(UILargeContentViewerInteraction *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(UILargeContentViewerInteraction *)self delegate];
    v8 = [delegate2 viewControllerForLargeContentViewerInteraction:self];

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