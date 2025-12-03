@interface UIInterfaceActionConcreteVisualStyle
- (CGSize)maximumActionGroupContentSize;
- (CGSize)minimumActionContentSize;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultScreen;
- (id)newRepresentationViewForAction:(id)action;
@end

@implementation UIInterfaceActionConcreteVisualStyle

id __109__UIInterfaceActionConcreteVisualStyle_ModernAppleTV__vibrancyStyleColorForUnfocusedTitleLabelWithTintColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInterfaceStyle];
  if (v4 == 1000 || v4 == 2)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v6 = ;
  v7 = v6;

  v8 = [v7 resolvedColorWithTraitCollection:v3];

  v9 = [*(a1 + 32) resolvedColorWithTraitCollection:v3];

  [v8 alphaComponent];
  v10 = [v9 colorWithAlphaComponent:?];

  return v10;
}

uint64_t __85__UIInterfaceActionConcreteVisualStyle_iOSSheet_newActionBackgroundViewForViewState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) isHighlighted];

  return [v1 setHighlighted:v2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return objc_opt_new();
}

- (id)defaultScreen
{
  v2 = objc_opt_self();

  return [v2 mainScreen];
}

- (CGSize)maximumActionGroupContentSize
{
  defaultScreen = [(UIInterfaceActionConcreteVisualStyle *)self defaultScreen];
  [defaultScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)contentMargin
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)minimumActionContentSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)actionSequenceEdgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)newRepresentationViewForAction:(id)action
{
  actionCopy = action;
  _typeForDeterminingViewRepresentation = [actionCopy _typeForDeterminingViewRepresentation];
  v6 = off_1E70EB9E8;
  if (_typeForDeterminingViewRepresentation != 100)
  {
    v6 = off_1E70EB9F0;
  }

  v7 = [objc_alloc(*v6) initWithAction:actionCopy];

  v8 = [(UIInterfaceActionConcreteVisualStyle *)self actionViewStateForAttachingToActionRepresentationView:v7];
  [v7 setActionViewStateContext:v8];

  return v7;
}

@end