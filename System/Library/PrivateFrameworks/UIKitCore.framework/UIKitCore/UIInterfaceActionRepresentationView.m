@interface UIInterfaceActionRepresentationView
- (BOOL)_canLoadContentsIntoHierarchy;
- (BOOL)_fittingContentViewHasItsOwnActiveMinimumSizeConstraintsWithSize:(CGSize)a3;
- (BOOL)_handleVisualFeedbackForPress:(id)a3 pressed:(BOOL)a4;
- (BOOL)_isVisibleWithinContainmentAncestor;
- (BOOL)_shouldShowPressFeedbackForEventWithPresses:(id)a3;
- (BOOL)_showsFocusForFocusedView:(id)a3;
- (BOOL)canBecomeFocused;
- (BOOL)isFocused;
- (CGRect)_fittingContentSizingViewFrameInBounds:(CGRect)a3;
- (CGSize)_fittingContentSizeWithFittingViewSize:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSString)description;
- (UIEdgeInsets)_fittingContentSizingViewMargins;
- (UIInterfaceActionRepresentationView)initWithAction:(id)a3;
- (UIInterfaceActionVisualStyle)visualStyle;
- (id)__fittingContentSizingViewAllowingSelf;
- (id)__fittingContentSizingViewIfNotSelf;
- (id)_actionViewState;
- (void)_addLoadedContentsToHierarchyFirstTime;
- (void)_addLoadedContentsToHierarchyIfAllowed;
- (void)_applyVisualStyle;
- (void)_applyVisualStyleToLayoutMargins;
- (void)_applyVisualStyleToMinimumSizeConstraints;
- (void)_enforceActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisible:(BOOL)a3;
- (void)_initializeHorizontalMarginsForAction;
- (void)_loadContentsIntoHierarchyAndPrepareIfNecessary;
- (void)_reloadBackgroundHighlightView;
- (void)_removeLoadedContentsFromHierarchyIfNotVisible;
- (void)_setContentsInsertedIntoViewHierarchy:(BOOL)a3;
- (void)_setHorizontalMargins:(UIEdgeInsets)a3 preservesSuperviewLayoutMargins:(BOOL)a4;
- (void)_showVisualFeedbackForPressed:(BOOL)a3;
- (void)_updateFittingContentSizingViewToFitSize;
- (void)_updateHighlightAndPressedFeedback;
- (void)_updateLoadedContentsHierarchyByInsertingOrRemovingIfNecessary;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4;
- (void)invalidateIntrinsicContentSize;
- (void)invokeInterfaceAction;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setCanRemoveContentFromHierarchyWhenNotVisible:(BOOL)enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue;
- (void)setHighlighted:(BOOL)a3;
- (void)setInteractionForSpringLoading:(id)a3;
- (void)setPressed:(BOOL)a3;
- (void)setSpringLoaded:(BOOL)a3;
- (void)setVisualCornerPosition:(unint64_t)a3;
- (void)updateConstraints;
@end

@implementation UIInterfaceActionRepresentationView

- (UIInterfaceActionRepresentationView)initWithAction:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = UIInterfaceActionRepresentationView;
  v6 = [(UIView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
    v7->_ownsActionContent = 1;
    sectionID = v7->_sectionID;
    v7->_sectionID = &stru_1EFB14550;

    [(UIInterfaceAction *)v7->_action _addActionDisplayPropertyObserver:v7];
    v7->_canRemoveContentFromHierarchyWhenNotVisible = 0;
    v9 = [(UIView *)v7 widthAnchor];
    v10 = [v9 constraintGreaterThanOrEqualToConstant:0.0];
    minimumWidthConstraint = v7->_minimumWidthConstraint;
    v7->_minimumWidthConstraint = v10;

    v12 = [(UIView *)v7 heightAnchor];
    v13 = [v12 constraintGreaterThanOrEqualToConstant:0.0];
    minimumHeightConstraint = v7->_minimumHeightConstraint;
    v7->_minimumHeightConstraint = v13;

    LODWORD(v15) = 1148829696;
    [(NSLayoutConstraint *)v7->_minimumHeightConstraint setPriority:v15];
    [(UIView *)v7 setFocusEffect:0];
    [(UIInterfaceActionRepresentationView *)v7 _initializeHorizontalMarginsForAction];
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = UIInterfaceActionRepresentationView;
  v4 = [(UIView *)&v8 description];
  v5 = [(UIInterfaceActionRepresentationView *)self action];
  v6 = [v3 stringWithFormat:@"%@ action = %@", v4, v5];

  return v6;
}

- (void)dealloc
{
  [(UIInterfaceAction *)self->_action _removeActionDisplayPropertyObserver:self];
  v3.receiver = self;
  v3.super_class = UIInterfaceActionRepresentationView;
  [(UIView *)&v3 dealloc];
}

- (void)_setContentsInsertedIntoViewHierarchy:(BOOL)a3
{
  if (self->_contentsInsertedIntoViewHierarchy != a3)
  {
    self->_contentsInsertedIntoViewHierarchy = a3;
    [(UIInterfaceActionRepresentationView *)self updateContentsInsertedIntoHierarchy];
  }
}

- (void)invokeInterfaceAction
{
  v2 = [(UIInterfaceActionRepresentationView *)self action];
  [v2 _invokeHandlerWithCompletionBlock:&__block_literal_global_12];
}

- (UIInterfaceActionVisualStyle)visualStyle
{
  v2 = [(UIInterfaceActionRepresentationView *)self action];
  v3 = [v2 _visualStyle];

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(UIInterfaceActionRepresentationView *)self _updateHighlightAndPressedFeedback];
  }
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    [(UIInterfaceActionRepresentationView *)self _updateHighlightAndPressedFeedback];
  }
}

- (void)setVisualCornerPosition:(unint64_t)a3
{
  if (self->_visualCornerPosition != a3)
  {
    self->_visualCornerPosition = a3;
    [(UIInterfaceActionRepresentationView *)self _applyVisualStyle];
  }
}

- (void)setCanRemoveContentFromHierarchyWhenNotVisible:(BOOL)enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue
{
  if (self->_enforcedCanRemoveContentFromHierarchyWhenNotVisible)
  {
    enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue = self->_enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue;
  }

  if (self->_canRemoveContentFromHierarchyWhenNotVisible != enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue)
  {
    self->_canRemoveContentFromHierarchyWhenNotVisible = enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue;
    if (enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue)
    {
      [(UIInterfaceActionRepresentationView *)self _removeLoadedContentsFromHierarchyIfNotVisible];
    }
  }
}

- (void)_enforceActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisible:(BOOL)a3
{
  self->_enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue = a3;
  self->_enforcedCanRemoveContentFromHierarchyWhenNotVisible = 1;
  [(UIInterfaceActionRepresentationView *)self setCanRemoveContentFromHierarchyWhenNotVisible:1];

  [(UIInterfaceActionRepresentationView *)self _updateLoadedContentsHierarchyByInsertingOrRemovingIfNecessary];
}

- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4
{
  v5 = a4;
  v9 = [(UIInterfaceActionRepresentationView *)self visualStyle];
  v6 = [v9 actionPropertiesAffectingActionRepresentationViewStyling];
  v7 = [UIInterfaceAction changedProperties:v5 containsAny:v6];

  if (v7)
  {
    v8 = [(UIInterfaceActionRepresentationView *)self _actionViewState];
    [v9 configureAttributesForActionRepresentationView:self actionViewState:v8];
  }
}

- (void)updateConstraints
{
  [(UIInterfaceActionRepresentationView *)self _updateFittingContentSizingViewToFitSize];
  v3.receiver = self;
  v3.super_class = UIInterfaceActionRepresentationView;
  [(UIView *)&v3 updateConstraints];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = UIInterfaceActionRepresentationView;
  [(UIView *)&v10 layoutSubviews];
  [(UIView *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__UIInterfaceActionRepresentationView_layoutSubviews__block_invoke;
  v9[3] = &unk_1E70F3DC8;
  v9[4] = self;
  *&v9[5] = x;
  *&v9[6] = y;
  *&v9[7] = width;
  *&v9[8] = height;
  *&v9[9] = MidX;
  *&v9[10] = MidY;
  [(UIView *)self _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v9];
}

uint64_t __53__UIInterfaceActionRepresentationView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadContentsIntoHierarchyAndPrepareIfNecessary];
  [*(a1 + 32) _updateFittingContentSizingViewToFitSize];
  [*(a1 + 32) sendSubviewToBack:*(*(a1 + 32) + 480)];
  [*(*(a1 + 32) + 480) setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 480);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);

  return [v2 setCenter:{v3, v4}];
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = UIInterfaceActionRepresentationView;
  [(UIView *)&v4 invalidateIntrinsicContentSize];
  v3 = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewIfNotSelf];
  [v3 invalidateIntrinsicContentSize];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = UIInterfaceActionRepresentationView;
  [(UIView *)&v3 layoutMarginsDidChange];
  [(UIView *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  [(UIInterfaceActionRepresentationView *)self _loadContentsIntoHierarchyAndPrepareIfNecessary];
  v3 = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewAllowingSelf];
  v4 = v3;
  if (v3 == self)
  {
    v11.receiver = self;
    v11.super_class = UIInterfaceActionRepresentationView;
    [(UIView *)&v11 intrinsicContentSize];
  }

  else
  {
    [(UIView *)v3 systemLayoutSizeFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  [(UIInterfaceActionRepresentationView *)self _fittingContentSizeWithFittingViewSize:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(UIInterfaceActionRepresentationView *)self _loadContentsIntoHierarchyAndPrepareIfNecessary];
  v10 = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewAllowingSelf];
  v13 = v10;
  if (v10 == self)
  {
    v20.receiver = self;
    v20.super_class = UIInterfaceActionRepresentationView;
    *&v11 = a4;
    *&v12 = a5;
    [(UIView *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  }

  else
  {
    *&v11 = a4;
    *&v12 = a5;
    [(UIInterfaceActionRepresentationView *)v10 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  }

  [(UIInterfaceActionRepresentationView *)self _fittingContentSizeWithFittingViewSize:?];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)_updateFittingContentSizingViewToFitSize
{
  v3 = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewIfNotSelf];
  if (v3)
  {
    v4 = v3;
    [(UIView *)self bounds];
    [(UIInterfaceActionRepresentationView *)self _fittingContentSizingViewFrameInBounds:?];
    [v4 setFrame:?];
    v3 = v4;
  }
}

- (id)__fittingContentSizingViewIfNotSelf
{
  v3 = [(UIInterfaceActionRepresentationView *)self _fittingContentSizingView];
  v4 = v3;
  if (v3 == self)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (id)__fittingContentSizingViewAllowingSelf
{
  v2 = self;
  v3 = [(UIInterfaceActionRepresentationView *)self _fittingContentSizingView];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (UIEdgeInsets)_fittingContentSizingViewMargins
{
  [(UIView *)self layoutMargins];
  v4 = 0.0;
  v5 = 0.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (CGSize)_fittingContentSizeWithFittingViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIInterfaceActionRepresentationView *)self _fittingContentSizingViewMargins];
  v7 = v6 + width + v5;
  v10 = v9 + height + v8;
  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

- (CGRect)_fittingContentSizingViewFrameInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIInterfaceActionRepresentationView *)self _fittingContentSizingViewMargins];
  v8 = y + v7;
  v11 = width - (v9 + v10);
  v13 = height - (v7 + v12);
  v14 = x + v9;
  v15 = v8;
  v16 = v11;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setSpringLoaded:(BOOL)a3
{
  if ([(UIInterfaceActionRepresentationView *)self isSpringLoaded]!= a3)
  {
    if (a3)
    {
      v5 = objc_opt_new();
      v6 = objc_opt_new();
      v7 = [[UISpringLoadedInteraction alloc] initWithInteractionBehavior:v5 interactionEffect:v6 activationHandler:&__block_literal_global_285];

      [(UIInterfaceActionRepresentationView *)self setInteractionForSpringLoading:v7];
    }

    else
    {

      [(UIInterfaceActionRepresentationView *)self setInteractionForSpringLoading:0];
    }
  }
}

- (void)setInteractionForSpringLoading:(id)a3
{
  v5 = a3;
  interactionForSpringLoading = self->_interactionForSpringLoading;
  v7 = v5;
  if (interactionForSpringLoading != v5)
  {
    if (interactionForSpringLoading)
    {
      [(UIView *)self removeInteraction:?];
    }

    objc_storeStrong(&self->_interactionForSpringLoading, a3);
    if (self->_interactionForSpringLoading)
    {
      [(UIView *)self addInteraction:?];
    }
  }
}

- (BOOL)_showsFocusForFocusedView:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(UIView *)self subviews];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)canBecomeFocused
{
  v2 = [(UIInterfaceActionRepresentationView *)self action];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v11.receiver = self;
  v11.super_class = UIInterfaceActionRepresentationView;
  v6 = a3;
  [(UIView *)&v11 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];
  v8 = [(UIInterfaceActionRepresentationView *)self _showsFocusForFocusedView:v7];

  v9 = [v6 previouslyFocusedView];

  LODWORD(v6) = [(UIInterfaceActionRepresentationView *)self _showsFocusForFocusedView:v9];
  if (v8 != v6)
  {
    [(UIInterfaceActionRepresentationView *)self setHighlighted:v8];
    v10 = [(UIInterfaceActionRepresentationView *)self action];
    [v10 _setIsFocused:v8];

    if (!v8)
    {
      [(UIInterfaceActionRepresentationView *)self _showVisualFeedbackForPressed:0];
    }
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UIInterfaceActionRepresentationView *)self _handleVisualFeedbackForPress:v6 pressed:1])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionRepresentationView;
    [(UIResponder *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UIInterfaceActionRepresentationView *)self _handleVisualFeedbackForPress:v6 pressed:1])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionRepresentationView;
    [(UIResponder *)&v8 pressesChanged:v6 withEvent:v7];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UIInterfaceActionRepresentationView *)self _handleVisualFeedbackForPress:v6 pressed:0])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionRepresentationView;
    [(UIResponder *)&v8 pressesEnded:v6 withEvent:v7];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UIInterfaceActionRepresentationView *)self _handleVisualFeedbackForPress:v6 pressed:0])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionRepresentationView;
    [(UIResponder *)&v8 pressesCancelled:v6 withEvent:v7];
  }
}

- (BOOL)_handleVisualFeedbackForPress:(id)a3 pressed:(BOOL)a4
{
  v4 = a4;
  v6 = [(UIInterfaceActionRepresentationView *)self _shouldShowPressFeedbackForEventWithPresses:a3];
  if (v6)
  {
    [(UIInterfaceActionRepresentationView *)self _showVisualFeedbackForPressed:v4];
  }

  return v6;
}

- (BOOL)_shouldShowPressFeedbackForEventWithPresses:(id)a3
{
  v4 = [a3 anyObject];
  v5 = [v4 type];
  if (v5 == 4)
  {
    v6 = 1;
  }

  else if ((v5 & 0xFFFFFFFFFFFFFFFDLL) == 5)
  {
    v7 = [(UIInterfaceActionRepresentationView *)self action];
    v6 = [v7 type] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_showVisualFeedbackForPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    [(UIInterfaceActionRepresentationView *)self _updateHighlightAndPressedFeedback];
  }
}

- (void)_applyVisualStyle
{
  [(UIInterfaceActionRepresentationView *)self _applyVisualStyleToMinimumSizeConstraints];
  [(UIInterfaceActionRepresentationView *)self _applyVisualStyleToLayoutMargins];

  [(UIInterfaceActionRepresentationView *)self _applyVisualStyleToBackgroundViewAndHighlighting];
}

- (void)_applyVisualStyleToMinimumSizeConstraints
{
  v3 = [(UIInterfaceActionRepresentationView *)self visualStyle];
  [v3 minimumActionContentSize];
  v5 = v4;
  v7 = v6;
  if ([(UIInterfaceActionRepresentationView *)self _fittingContentViewHasItsOwnActiveMinimumSizeConstraintsWithSize:?])
  {
    v8 = !self->_contentsInsertedIntoViewHierarchy;
  }

  else
  {
    v8 = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__UIInterfaceActionRepresentationView__applyVisualStyleToMinimumSizeConstraints__block_invoke;
  aBlock[3] = &__block_descriptor_33_e31_v24__0__NSLayoutConstraint_8d16l;
  v11 = v8;
  v9 = _Block_copy(aBlock);
  v9[2](v9, self->_minimumWidthConstraint, v5);
  v9[2](v9, self->_minimumHeightConstraint, v7);
}

void __80__UIInterfaceActionRepresentationView__applyVisualStyleToMinimumSizeConstraints__block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 > 0.0 && (*(a1 + 32) & 1) != 0)
  {
    [v5 setConstant:a3];
    [v6 setActive:1];
  }

  else
  {
    [v5 setActive:0];
    [v6 setConstant:0.0];
  }
}

- (BOOL)_fittingContentViewHasItsOwnActiveMinimumSizeConstraintsWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIInterfaceActionRepresentationView *)self _fittingContentSizingView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 hasActiveMinimumSizeConstraintsWithSize:{width, height}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setHorizontalMargins:(UIEdgeInsets)a3 preservesSuperviewLayoutMargins:(BOOL)a4
{
  v4 = a4;
  right = a3.right;
  left = a3.left;
  [(UIView *)self layoutMargins:a3.top];
  if (left != v11 || (v8 == 0.0 ? (v12 = right == v10) : (v12 = 0), !v12 || v9 != 0.0 || [(UIView *)self preservesSuperviewLayoutMargins]!= v4))
  {
    [(UIView *)self setPreservesSuperviewLayoutMargins:v4];
    [(UIView *)self setLayoutMargins:0.0, left, 0.0, right];

    [(UIInterfaceActionRepresentationView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_initializeHorizontalMarginsForAction
{
  v3 = [(UIInterfaceActionRepresentationView *)self visualStyle];

  if (v3)
  {

    [(UIInterfaceActionRepresentationView *)self _applyVisualStyleToLayoutMargins];
  }

  else
  {
    v4 = [(UIInterfaceActionRepresentationView *)self action];
    v5 = [v4 _typeForDeterminingViewRepresentation];

    if (v5 == 100)
    {

      [(UIInterfaceActionRepresentationView *)self _setHorizontalMargins:1 preservesSuperviewLayoutMargins:0.0, 0.0, 0.0, 0.0];
    }
  }
}

- (void)_applyVisualStyleToLayoutMargins
{
  v3 = [(UIInterfaceActionRepresentationView *)self action];
  v4 = [v3 _typeForDeterminingViewRepresentation];

  if (v4 == 100)
  {

    [(UIInterfaceActionRepresentationView *)self _setHorizontalMargins:1 preservesSuperviewLayoutMargins:0.0, 0.0, 0.0, 0.0];
  }

  else
  {
    v5 = [(UIInterfaceActionRepresentationView *)self visualStyle];
    [v5 contentMargin];
    [(UIInterfaceActionRepresentationView *)self _setHorizontalMargins:0 preservesSuperviewLayoutMargins:?];
  }
}

- (void)_reloadBackgroundHighlightView
{
  v3 = [(UIInterfaceActionRepresentationView *)self visualStyle];
  if (v3)
  {
    v41 = v3;
    v4 = [(UIInterfaceActionRepresentationView *)self _actionViewState];
    v5 = [v41 newActionBackgroundViewForViewState:v4];

    v6 = self->_backgroundHighlightView;
    v7 = v5;
    v8 = objc_opt_class();
    if (v8 == objc_opt_class() && (v7 == 0) != (v6 != 0))
    {
      [v7 alpha];
      v10 = v9;
      [(UIInterfaceActionVisualBackgroundDisplaying *)v6 alpha];
      if (vabdd_f64(v10, v11) <= 0.00000011920929)
      {
        v12 = [v7 backgroundColor];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = +[UIColor clearColor];
        }

        v15 = v14;

        v16 = [(UIInterfaceActionVisualBackgroundDisplaying *)v6 backgroundColor];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = +[UIColor clearColor];
        }

        v19 = v18;

        if ([v15 isEqual:v19])
        {
          if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || ([v7 fillColor], v20 = objc_claimAutoreleasedReturnValue(), -[UIInterfaceActionVisualBackgroundDisplaying fillColor](v6, "fillColor"), v21 = objc_claimAutoreleasedReturnValue(), v22 = _deferringTokenEqualToToken(v20, v21), v21, v20, v22))
          {
            v23 = [v7 layer];
            v24 = [v23 filters];
            v25 = v24;
            v26 = MEMORY[0x1E695E0F0];
            v27 = (v24 ? v24 : MEMORY[0x1E695E0F0]);
            v40 = v15;
            v28 = v27;

            v29 = [(UIInterfaceActionVisualBackgroundDisplaying *)v6 layer];
            v30 = [v29 filters];
            v31 = v30;
            v32 = (v30 ? v30 : v26);
            v33 = v32;

            v34 = [v28 isEqual:v33];
            v15 = v40;
            if (v34)
            {
              [v7 _cornerRadius];
              v36 = v35;
              [(UIInterfaceActionVisualBackgroundDisplaying *)v6 _cornerRadius];
              v38 = vabdd_f64(v36, v37);

              if (v38 <= 0.00000011920929)
              {
LABEL_28:
                self->_hasLoadedBackgroundView = 1;
                [(UIView *)self setNeedsLayout];

                v3 = v41;
                goto LABEL_29;
              }

LABEL_26:
              [(UIInterfaceActionVisualBackgroundDisplaying *)self->_backgroundHighlightView removeFromSuperview];
              backgroundHighlightView = self->_backgroundHighlightView;
              self->_backgroundHighlightView = 0;

              if (v7)
              {
                [(UIView *)self bounds];
                [v7 setFrame:?];
                [v7 setUserInteractionEnabled:0];
                [v7 setTranslatesAutoresizingMaskIntoConstraints:1];
                [v7 layoutBelowIfNeeded];
                [(UIView *)self insertSubview:v7 atIndex:0];
                objc_storeStrong(&self->_backgroundHighlightView, v5);
              }

              goto LABEL_28;
            }
          }
        }
      }
    }

    goto LABEL_26;
  }

LABEL_29:
}

- (BOOL)isFocused
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionRepresentationView;
  if ([(UIView *)&v6 isFocused])
  {
    return 1;
  }

  v4 = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewIfNotSelf];
  v3 = [v4 isFocused];

  return v3;
}

- (void)_updateHighlightAndPressedFeedback
{
  v19[3] = *MEMORY[0x1E69E9840];
  [(UIInterfaceActionRepresentationView *)self _reloadBackgroundHighlightView];
  [(UIInterfaceActionVisualBackgroundDisplaying *)self->_backgroundHighlightView setPressed:[(UIInterfaceActionRepresentationView *)self isPressed]];
  [(UIInterfaceActionVisualBackgroundDisplaying *)self->_backgroundHighlightView setHighlighted:[(UIInterfaceActionRepresentationView *)self isHighlighted]];
  v3 = [(UIInterfaceActionRepresentationView *)self visualStyle];
  v19[0] = 0x1EFB16350;
  v19[1] = 0x1EFB16370;
  v19[2] = 0x1EFB16330;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v5 = [v3 actionPropertiesAffectingActionRepresentationViewStyling];
  v6 = [UIInterfaceAction changedProperties:v4 containsAny:v5];

  if (v6)
  {
    v7 = [(UIInterfaceActionRepresentationView *)self _actionViewState];
    [v3 configureAttributesForActionRepresentationView:self actionViewState:v7];
  }

  v14 = 0u;
  v15 = 0u;
  if ([(UIInterfaceActionRepresentationView *)self isHighlighted])
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v16 = 0uLL;
  v17 = 0uLL;
  v9 = [(UIInterfaceActionRepresentationView *)self viewsToDisappearWhenHighlighted];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * i) setAlpha:v8];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_loadContentsIntoHierarchyAndPrepareIfNecessary
{
  if (self->_hasLoadedContentFirstTime || ![(UIInterfaceActionRepresentationView *)self _canLoadContentsIntoHierarchy])
  {

    [(UIInterfaceActionRepresentationView *)self _addLoadedContentsToHierarchyIfAllowed];
  }

  else
  {

    [(UIInterfaceActionRepresentationView *)self _addLoadedContentsToHierarchyFirstTime];
  }
}

- (void)_updateLoadedContentsHierarchyByInsertingOrRemovingIfNecessary
{
  if (self->_contentsInsertedIntoViewHierarchy)
  {
    [(UIInterfaceActionRepresentationView *)self _removeLoadedContentsFromHierarchyIfNotVisible];
  }

  else
  {
    [(UIInterfaceActionRepresentationView *)self _loadContentsIntoHierarchyAndPrepareIfNecessary];
  }
}

- (void)_addLoadedContentsToHierarchyFirstTime
{
  self->_hasLoadedContentFirstTime = 1;
  [(UIInterfaceActionRepresentationView *)self loadContents];
  [(UIInterfaceActionRepresentationView *)self _setContentsInsertedIntoViewHierarchy:1];
  [(UIInterfaceActionRepresentationView *)self interfaceAction:self->_action reloadDisplayedContentActionProperties:0];
  action = self->_action;
  v4 = [(UIInterfaceActionRepresentationView *)self visualStyle];
  [(UIInterfaceActionRepresentationView *)self interfaceAction:action reloadDisplayedContentVisualStyle:v4];
}

- (void)_addLoadedContentsToHierarchyIfAllowed
{
  if (!self->_contentsInsertedIntoViewHierarchy && [(UIInterfaceActionRepresentationView *)self _canLoadContentsIntoHierarchy])
  {

    [(UIInterfaceActionRepresentationView *)self _setContentsInsertedIntoViewHierarchy:1];
  }
}

- (void)_removeLoadedContentsFromHierarchyIfNotVisible
{
  if (self->_contentsInsertedIntoViewHierarchy && ![(UIInterfaceActionRepresentationView *)self _isVisibleWithinContainmentAncestor]&& self->_canRemoveContentFromHierarchyWhenNotVisible)
  {

    [(UIInterfaceActionRepresentationView *)self _setContentsInsertedIntoViewHierarchy:0];
  }
}

- (BOOL)_canLoadContentsIntoHierarchy
{
  if (!self->_ownsActionContent)
  {
    return 0;
  }

  if (self->_canRemoveContentFromHierarchyWhenNotVisible)
  {
    return [(UIInterfaceActionRepresentationView *)self _isVisibleWithinContainmentAncestor];
  }

  return 1;
}

- (BOOL)_isVisibleWithinContainmentAncestor
{
  v3 = [(UIView *)self _enclosingInterfaceActionGroupView];
  if (v3)
  {
    [(UIView *)self bounds];
    [v3 convertRect:self fromView:?];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    if (CGRectIsEmpty(v14))
    {
      v8 = 0;
    }

    else
    {
      [v3 bounds];
      v16.origin.x = v9;
      v16.origin.y = v10;
      v16.size.width = v11;
      v16.size.height = v12;
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      v8 = CGRectIntersectsRect(v15, v16);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_actionViewState
{
  v3 = [(UIInterfaceActionRepresentationView *)self action];
  v4 = [UIInterfaceActionViewState viewStateForActionRepresentationView:self action:v3];

  return v4;
}

@end