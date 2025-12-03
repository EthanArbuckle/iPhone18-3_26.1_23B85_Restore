@interface _UIContextMenuStyle
+ (id)defaultStyle;
- ($9638EFF0CCCAFE90921E224CC361F7AC)_preferredAnchor;
- (CGPoint)_preferredMenuAttachmentPoint;
- (UIEdgeInsets)preferredBackgroundInsets;
- (UIEdgeInsets)preferredEdgeInsets;
- (_UITraitEnvironmentInternal)_parentTraitEnvironmentForUserInterfaceStyle;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAllowsBackgroundInteractionAcrossProccesses:(BOOL)proccesses;
- (void)setKeepsInputViewsVisible:(BOOL)visible;
- (void)setPreferredAttachmentEdge:(unint64_t)edge;
- (void)setPreferredMaximumMenuHeight:(double)height;
- (void)setPreferredMenuMaterial:(id)material;
- (void)setPreferredMenuWidth:(double)width;
- (void)setPrefersCenteredPreviewWhenActionsAreAbsent:(BOOL)absent;
- (void)setPrefersStackedHierarchy:(BOOL)hierarchy;
- (void)set_preferredAnchor:(id *)anchor;
@end

@implementation _UIContextMenuStyle

+ (id)defaultStyle
{
  v2 = objc_opt_new();
  [v2 setPreferredLayout:100];
  v11[0] = _UIContextMenuNullAnchor;
  v11[1] = unk_18A677630;
  v12 = 0;
  [v2 set_preferredAnchor:v11];
  [v2 set_preferredMenuAttachmentPoint:{1.79769313e308, 1.79769313e308}];
  [v2 set_wantsTypeSelect:1];
  v2[13] = 0x7FFFFFFFFFFFFFFFLL;
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v7 = v6;
    v9 = v8;

    [v2 setPreferredBackgroundInsets:{-v9, -v7, -v9, -v7}];
  }

  return v2;
}

- ($9638EFF0CCCAFE90921E224CC361F7AC)_preferredAnchor
{
  v3 = *&self[5].var3;
  *&retstr->var0 = *&self[5].var1;
  *&retstr->var2 = v3;
  retstr->var4 = self[6].var0;
  return self;
}

- (UIEdgeInsets)preferredEdgeInsets
{
  top = self->_preferredEdgeInsets.top;
  left = self->_preferredEdgeInsets.left;
  bottom = self->_preferredEdgeInsets.bottom;
  right = self->_preferredEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)preferredBackgroundInsets
{
  top = self->_preferredBackgroundInsets.top;
  left = self->_preferredBackgroundInsets.left;
  bottom = self->_preferredBackgroundInsets.bottom;
  right = self->_preferredBackgroundInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)_preferredMenuAttachmentPoint
{
  x = self->__preferredMenuAttachmentPoint.x;
  y = self->__preferredMenuAttachmentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_UITraitEnvironmentInternal)_parentTraitEnvironmentForUserInterfaceStyle
{
  WeakRetained = objc_loadWeakRetained(&self->__parentTraitEnvironmentForUserInterfaceStyle);

  return WeakRetained;
}

- (void)setPrefersCenteredPreviewWhenActionsAreAbsent:(BOOL)absent
{
  absentCopy = absent;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  [(_UIContextMenuStyle *)self _preferredAnchor];
  v5 = 1;
  if (absentCopy)
  {
    v5 = 2;
  }

  v10 = v5;
  v6[0] = v8;
  v6[1] = v9;
  v7 = v5;
  [(_UIContextMenuStyle *)self set_preferredAnchor:v6];
}

- (void)setPrefersStackedHierarchy:(BOOL)hierarchy
{
  hierarchyCopy = hierarchy;
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContextMenuStyle.m" lineNumber:70 description:@"This may only be used by SpringBoard."];
  }

  if (self->_prefersStackedHierarchy != hierarchyCopy)
  {
    self->_prefersStackedHierarchy = hierarchyCopy;
  }
}

- (void)setPreferredAttachmentEdge:(unint64_t)edge
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___UIContextMenuStyle_setPreferredAttachmentEdge___block_invoke;
  v5[3] = &unk_1E70F32F0;
  v5[4] = self;
  v5[5] = a2;
  if (setPreferredAttachmentEdge__onceToken != -1)
  {
    dispatch_once(&setPreferredAttachmentEdge__onceToken, v5);
  }

  if (self->_preferredAttachmentEdge != edge)
  {
    self->_preferredAttachmentEdge = edge;
  }
}

- (void)setPreferredMenuWidth:(double)width
{
  if (_UIContextMenuAssertIsSystemUI_onceToken != -1)
  {
    dispatch_once(&_UIContextMenuAssertIsSystemUI_onceToken, &__block_literal_global_1);
  }

  if (self->_preferredMenuWidth != width)
  {
    self->_preferredMenuWidth = width;
  }
}

- (void)setPreferredMaximumMenuHeight:(double)height
{
  if (_UIContextMenuAssertIsSystemUI_onceToken != -1)
  {
    dispatch_once(&_UIContextMenuAssertIsSystemUI_onceToken, &__block_literal_global_1);
  }

  self->_preferredMaximumMenuHeight = height;
}

- (void)setAllowsBackgroundInteractionAcrossProccesses:(BOOL)proccesses
{
  proccessesCopy = proccesses;
  if (!+[UIKeyboard isInputUIProcess])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContextMenuStyle.m" lineNumber:120 description:@"This may only be used by InputUI"];
  }

  if (((([(_UIContextMenuStyle *)self _backgroundInteractionStyle]!= 2) ^ proccessesCopy) & 1) == 0)
  {
    if (proccessesCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(_UIContextMenuStyle *)self set_backgroundInteractionStyle:v6];
  }
}

- (void)setKeepsInputViewsVisible:(BOOL)visible
{
  if (visible)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(_UIContextMenuStyle *)self setInputViewVisibility:v3];
}

- (void)setPreferredMenuMaterial:(id)material
{
  materialCopy = material;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48___UIContextMenuStyle_setPreferredMenuMaterial___block_invoke;
  v8[3] = &unk_1E70F32F0;
  v8[4] = self;
  v8[5] = a2;
  if (setPreferredMenuMaterial__onceToken != -1)
  {
    dispatch_once(&setPreferredMenuMaterial__onceToken, v8);
  }

  preferredMenuMaterial = self->_preferredMenuMaterial;
  self->_preferredMenuMaterial = materialCopy;
  v7 = materialCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  containerView = [(_UIContextMenuStyle *)self containerView];
  [v4 setContainerView:containerView];

  [v4 setPreferredLayout:{-[_UIContextMenuStyle preferredLayout](self, "preferredLayout")}];
  [v4 setHasInteractivePreview:{-[_UIContextMenuStyle hasInteractivePreview](self, "hasInteractivePreview")}];
  [v4 setPreventPreviewRasterization:{-[_UIContextMenuStyle preventPreviewRasterization](self, "preventPreviewRasterization")}];
  [v4 setPreviewOverlapsMenu:{-[_UIContextMenuStyle previewOverlapsMenu](self, "previewOverlapsMenu")}];
  [v4 setIgnoresContainerSizeChange:{-[_UIContextMenuStyle ignoresContainerSizeChange](self, "ignoresContainerSizeChange")}];
  [(_UIContextMenuStyle *)self preferredEdgeInsets];
  [v4 setPreferredEdgeInsets:?];
  preferredBackgroundEffects = [(_UIContextMenuStyle *)self preferredBackgroundEffects];
  v7 = [preferredBackgroundEffects copy];
  [v4 setPreferredBackgroundEffects:v7];

  preferredBackgroundColor = [(_UIContextMenuStyle *)self preferredBackgroundColor];
  v9 = [preferredBackgroundColor copy];
  [v4 setPreferredBackgroundColor:v9];

  [(_UIContextMenuStyle *)self preferredBackgroundInsets];
  [v4 setPreferredBackgroundInsets:?];
  [v4 setInputViewVisibility:{-[_UIContextMenuStyle inputViewVisibility](self, "inputViewVisibility")}];
  [v4 setIgnoresDefaultSizingRules:{-[_UIContextMenuStyle ignoresDefaultSizingRules](self, "ignoresDefaultSizingRules")}];
  [(_UIContextMenuStyle *)self _preferredAnchor];
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  [v4 set_preferredAnchor:v12];
  [(_UIContextMenuStyle *)self _preferredMenuAttachmentPoint];
  [v4 set_preferredMenuAttachmentPoint:?];
  [v4 set_allowsImmediateSelection:{-[_UIContextMenuStyle _allowsImmediateSelection](self, "_allowsImmediateSelection")}];
  [v4 setShouldMenuOverlapSourcePreview:{-[_UIContextMenuStyle shouldMenuOverlapSourcePreview](self, "shouldMenuOverlapSourcePreview")}];
  [v4 setShowsAccessoriesForCompactMenu:{-[_UIContextMenuStyle showsAccessoriesForCompactMenu](self, "showsAccessoriesForCompactMenu")}];
  [v4 set_shouldAvoidInputViews:{-[_UIContextMenuStyle _shouldAvoidInputViews](self, "_shouldAvoidInputViews")}];
  [v4 set_orderMenuBasedOnPriority:{-[_UIContextMenuStyle _orderMenuBasedOnPriority](self, "_orderMenuBasedOnPriority")}];
  [v4 set_backgroundInteractionStyle:{-[_UIContextMenuStyle _backgroundInteractionStyle](self, "_backgroundInteractionStyle")}];
  _parentTraitEnvironmentForUserInterfaceStyle = [(_UIContextMenuStyle *)self _parentTraitEnvironmentForUserInterfaceStyle];
  [v4 set_parentTraitEnvironmentForUserInterfaceStyle:_parentTraitEnvironmentForUserInterfaceStyle];

  [(_UIContextMenuStyle *)self _internalPreferredMenuWidth];
  [v4 set_internalPreferredMenuWidth:?];
  [v4 set_wantsTypeSelect:{-[_UIContextMenuStyle _wantsTypeSelect](self, "_wantsTypeSelect")}];
  *(v4 + 19) = [(_UIContextMenuStyle *)self prefersStackedHierarchy];
  *(v4 + 104) = [(_UIContextMenuStyle *)self preferredAttachmentEdge];
  *(v4 + 112) = self->_preferredMenuWidth;
  *(v4 + 120) = self->_preferredMaximumMenuHeight;
  objc_storeStrong((v4 + 72), self->_preferredMenuMaterial);
  return v4;
}

- (void)set_preferredAnchor:(id *)anchor
{
  v3 = *&anchor->var0;
  v4 = *&anchor->var2;
  self->gravity = anchor->var4;
  *&self->attachment = v3;
  *&self->attachmentOffset = v4;
}

@end