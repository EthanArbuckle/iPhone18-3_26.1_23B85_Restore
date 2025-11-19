@interface _UIButtonBarButtonVisualProvider
+ (id)visualProviderForIdiom:(int64_t)a3;
+ (void)registerPlatformVisualProviderClass:(Class)a3 forIdiom:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)menuAnchorPoint;
- (CGPoint)pointerPreviewCenter;
- (CGRect)accessoryViewAlignmentRect;
- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)a3 horizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CGSize)buttonBackgroundSize:(id)a3;
- (CGSize)buttonImageViewSize:(id)a3;
- (CGSize)buttonIntrinsicContentSize:(id)a3;
- (UIBarButtonItem)barButtonItem;
- (UIEdgeInsets)buttonAlignmentRectInsets:(id)a3;
- (_UIButtonBarButtonVisualProvider)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)focusEffect;
- (id)matchingPointerShapeForView:(id)a3 rect:(CGRect)a4 inContainer:(id)a5;
- (id)pointerPreviewParameters;
- (id)pointerShapeInContainer:(id)a3;
- (uint64_t)typedStorage;
- (unint64_t)hash;
- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5;
@end

@implementation _UIButtonBarButtonVisualProvider

- (UIBarButtonItem)barButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_barButtonItem);

  return WeakRetained;
}

+ (id)visualProviderForIdiom:(int64_t)a3
{
  v3 = _MergedGlobals_29;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v3 objectForKeyedSubscript:v4];
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (void)registerPlatformVisualProviderClass:(Class)a3 forIdiom:(int64_t)a4
{
  if (qword_1ED49B280 != -1)
  {
    dispatch_once(&qword_1ED49B280, &__block_literal_global_53);
  }

  v6 = _MergedGlobals_29;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v6 setObject:a3 forKeyedSubscript:v7];
}

- (_UIButtonBarButtonVisualProvider)init
{
  v6.receiver = self;
  v6.super_class = _UIButtonBarButtonVisualProvider;
  v2 = [(_UIButtonBarButtonVisualProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_UITypedStorage);
    typedStorage = v2->_typedStorage;
    v2->_typedStorage = v3;
  }

  return v2;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButton.m" lineNumber:180 description:{@"Failure attempting to configure a view for a UIBarButtonItem from visual style %@", self}];
}

- (CGSize)buttonIntrinsicContentSize:(id)a3
{
  v3 = -1.0;
  v4 = -1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)buttonAlignmentRectInsets:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)buttonBackgroundSize:(id)a3
{
  [a3 bounds];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (CGSize)buttonImageViewSize:(id)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)pointerPreviewParameters
{
  v2 = objc_opt_new();

  return v2;
}

- (CGPoint)pointerPreviewCenter
{
  [(UIView *)self->_button bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v8 = MidX;
  result.y = MidY;
  result.x = v8;
  return result;
}

- (id)pointerShapeInContainer:(id)a3
{
  button = self->_button;
  v4 = a3;
  [(UIView *)button bounds];
  [(UIView *)button convertRect:v4 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  return [UIPointerShape shapeWithRoundedRect:v6, v8, v10, v12];
}

- (id)matchingPointerShapeForView:(id)a3 rect:(CGRect)a4 inContainer:(id)a5
{
  [a3 convertRect:a5 toView:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];

  return [UIPointerShape shapeWithRoundedRect:?];
}

- (id)focusEffect
{
  v2 = [(_UIButtonBarButtonVisualProvider *)self pointerShapeInContainer:self->_button];
  [v2 rect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 cornerRadius];
  v12 = [UIBezierPath bezierPathWithRoundedRect:v4 cornerRadius:v6, v8, v10, v11];
  v13 = [UIFocusHaloEffect effectWithPath:v12];

  return v13;
}

- (CGPoint)menuAnchorPoint
{
  [(UIView *)self->_button bounds];
  v4 = v3 + v2 * 0.5;
  v7 = v6 + v5 * 0.5;
  result.y = v7;
  result.x = v4;
  return result;
}

- (CGRect)accessoryViewAlignmentRect
{
  v2 = [(_UIButtonBarButtonVisualProvider *)self button];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)a3 horizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(UIView *)self->_button systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (uint64_t)typedStorage
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

@end