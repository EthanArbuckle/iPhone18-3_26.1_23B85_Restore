@interface _UIContextMenuStyle
+ (id)defaultStyle;
- ($9638EFF0CCCAFE90921E224CC361F7AC)_preferredAnchor;
- (CGPoint)_preferredMenuAttachmentPoint;
- (UIEdgeInsets)preferredBackgroundInsets;
- (UIEdgeInsets)preferredEdgeInsets;
- (_UITraitEnvironmentInternal)_parentTraitEnvironmentForUserInterfaceStyle;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAllowsBackgroundInteractionAcrossProccesses:(BOOL)a3;
- (void)setKeepsInputViewsVisible:(BOOL)a3;
- (void)setPreferredAttachmentEdge:(unint64_t)a3;
- (void)setPreferredMaximumMenuHeight:(double)a3;
- (void)setPreferredMenuMaterial:(id)a3;
- (void)setPreferredMenuWidth:(double)a3;
- (void)setPrefersCenteredPreviewWhenActionsAreAbsent:(BOOL)a3;
- (void)setPrefersStackedHierarchy:(BOOL)a3;
- (void)set_preferredAnchor:(id *)a3;
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
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
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

- (void)setPrefersCenteredPreviewWhenActionsAreAbsent:(BOOL)a3
{
  v3 = a3;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  [(_UIContextMenuStyle *)self _preferredAnchor];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  v10 = v5;
  v6[0] = v8;
  v6[1] = v9;
  v7 = v5;
  [(_UIContextMenuStyle *)self set_preferredAnchor:v6];
}

- (void)setPrefersStackedHierarchy:(BOOL)a3
{
  v3 = a3;
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIContextMenuStyle.m" lineNumber:70 description:@"This may only be used by SpringBoard."];
  }

  if (self->_prefersStackedHierarchy != v3)
  {
    self->_prefersStackedHierarchy = v3;
  }
}

- (void)setPreferredAttachmentEdge:(unint64_t)a3
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

  if (self->_preferredAttachmentEdge != a3)
  {
    self->_preferredAttachmentEdge = a3;
  }
}

- (void)setPreferredMenuWidth:(double)a3
{
  if (_UIContextMenuAssertIsSystemUI_onceToken != -1)
  {
    dispatch_once(&_UIContextMenuAssertIsSystemUI_onceToken, &__block_literal_global_1);
  }

  if (self->_preferredMenuWidth != a3)
  {
    self->_preferredMenuWidth = a3;
  }
}

- (void)setPreferredMaximumMenuHeight:(double)a3
{
  if (_UIContextMenuAssertIsSystemUI_onceToken != -1)
  {
    dispatch_once(&_UIContextMenuAssertIsSystemUI_onceToken, &__block_literal_global_1);
  }

  self->_preferredMaximumMenuHeight = a3;
}

- (void)setAllowsBackgroundInteractionAcrossProccesses:(BOOL)a3
{
  v3 = a3;
  if (!+[UIKeyboard isInputUIProcess])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIContextMenuStyle.m" lineNumber:120 description:@"This may only be used by InputUI"];
  }

  if (((([(_UIContextMenuStyle *)self _backgroundInteractionStyle]!= 2) ^ v3) & 1) == 0)
  {
    if (v3)
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

- (void)setKeepsInputViewsVisible:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(_UIContextMenuStyle *)self setInputViewVisibility:v3];
}

- (void)setPreferredMenuMaterial:(id)a3
{
  v5 = a3;
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
  self->_preferredMenuMaterial = v5;
  v7 = v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(_UIContextMenuStyle *)self containerView];
  [v4 setContainerView:v5];

  [v4 setPreferredLayout:{-[_UIContextMenuStyle preferredLayout](self, "preferredLayout")}];
  [v4 setHasInteractivePreview:{-[_UIContextMenuStyle hasInteractivePreview](self, "hasInteractivePreview")}];
  [v4 setPreventPreviewRasterization:{-[_UIContextMenuStyle preventPreviewRasterization](self, "preventPreviewRasterization")}];
  [v4 setPreviewOverlapsMenu:{-[_UIContextMenuStyle previewOverlapsMenu](self, "previewOverlapsMenu")}];
  [v4 setIgnoresContainerSizeChange:{-[_UIContextMenuStyle ignoresContainerSizeChange](self, "ignoresContainerSizeChange")}];
  [(_UIContextMenuStyle *)self preferredEdgeInsets];
  [v4 setPreferredEdgeInsets:?];
  v6 = [(_UIContextMenuStyle *)self preferredBackgroundEffects];
  v7 = [v6 copy];
  [v4 setPreferredBackgroundEffects:v7];

  v8 = [(_UIContextMenuStyle *)self preferredBackgroundColor];
  v9 = [v8 copy];
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
  v10 = [(_UIContextMenuStyle *)self _parentTraitEnvironmentForUserInterfaceStyle];
  [v4 set_parentTraitEnvironmentForUserInterfaceStyle:v10];

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

- (void)set_preferredAnchor:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  self->gravity = a3->var4;
  *&self->attachment = v3;
  *&self->attachmentOffset = v4;
}

@end