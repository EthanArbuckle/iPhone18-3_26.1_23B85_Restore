@interface UIInterfaceActionRepresentationView
- (BOOL)_canLoadContentsIntoHierarchy;
- (BOOL)_fittingContentViewHasItsOwnActiveMinimumSizeConstraintsWithSize:(CGSize)size;
- (BOOL)_handleVisualFeedbackForPress:(id)press pressed:(BOOL)pressed;
- (BOOL)_isVisibleWithinContainmentAncestor;
- (BOOL)_shouldShowPressFeedbackForEventWithPresses:(id)presses;
- (BOOL)_showsFocusForFocusedView:(id)view;
- (BOOL)canBecomeFocused;
- (BOOL)isFocused;
- (CGRect)_fittingContentSizingViewFrameInBounds:(CGRect)bounds;
- (CGSize)_fittingContentSizeWithFittingViewSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSString)description;
- (UIEdgeInsets)_fittingContentSizingViewMargins;
- (UIInterfaceActionRepresentationView)initWithAction:(id)action;
- (UIInterfaceActionVisualStyle)visualStyle;
- (id)__fittingContentSizingViewAllowingSelf;
- (id)__fittingContentSizingViewIfNotSelf;
- (id)_actionViewState;
- (void)_addLoadedContentsToHierarchyFirstTime;
- (void)_addLoadedContentsToHierarchyIfAllowed;
- (void)_applyVisualStyle;
- (void)_applyVisualStyleToLayoutMargins;
- (void)_applyVisualStyleToMinimumSizeConstraints;
- (void)_enforceActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisible:(BOOL)visible;
- (void)_initializeHorizontalMarginsForAction;
- (void)_loadContentsIntoHierarchyAndPrepareIfNecessary;
- (void)_reloadBackgroundHighlightView;
- (void)_removeLoadedContentsFromHierarchyIfNotVisible;
- (void)_setContentsInsertedIntoViewHierarchy:(BOOL)hierarchy;
- (void)_setHorizontalMargins:(UIEdgeInsets)margins preservesSuperviewLayoutMargins:(BOOL)layoutMargins;
- (void)_showVisualFeedbackForPressed:(BOOL)pressed;
- (void)_updateFittingContentSizingViewToFitSize;
- (void)_updateHighlightAndPressedFeedback;
- (void)_updateLoadedContentsHierarchyByInsertingOrRemovingIfNecessary;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)interfaceAction:(id)action reloadDisplayedContentActionProperties:(id)properties;
- (void)invalidateIntrinsicContentSize;
- (void)invokeInterfaceAction;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setCanRemoveContentFromHierarchyWhenNotVisible:(BOOL)enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setInteractionForSpringLoading:(id)loading;
- (void)setPressed:(BOOL)pressed;
- (void)setSpringLoaded:(BOOL)loaded;
- (void)setVisualCornerPosition:(unint64_t)position;
- (void)updateConstraints;
@end

@implementation UIInterfaceActionRepresentationView

- (UIInterfaceActionRepresentationView)initWithAction:(id)action
{
  actionCopy = action;
  v17.receiver = self;
  v17.super_class = UIInterfaceActionRepresentationView;
  v6 = [(UIView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
    v7->_ownsActionContent = 1;
    sectionID = v7->_sectionID;
    v7->_sectionID = &stru_1EFB14550;

    [(UIInterfaceAction *)v7->_action _addActionDisplayPropertyObserver:v7];
    v7->_canRemoveContentFromHierarchyWhenNotVisible = 0;
    widthAnchor = [(UIView *)v7 widthAnchor];
    v10 = [widthAnchor constraintGreaterThanOrEqualToConstant:0.0];
    minimumWidthConstraint = v7->_minimumWidthConstraint;
    v7->_minimumWidthConstraint = v10;

    heightAnchor = [(UIView *)v7 heightAnchor];
    v13 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
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
  action = [(UIInterfaceActionRepresentationView *)self action];
  v6 = [v3 stringWithFormat:@"%@ action = %@", v4, action];

  return v6;
}

- (void)dealloc
{
  [(UIInterfaceAction *)self->_action _removeActionDisplayPropertyObserver:self];
  v3.receiver = self;
  v3.super_class = UIInterfaceActionRepresentationView;
  [(UIView *)&v3 dealloc];
}

- (void)_setContentsInsertedIntoViewHierarchy:(BOOL)hierarchy
{
  if (self->_contentsInsertedIntoViewHierarchy != hierarchy)
  {
    self->_contentsInsertedIntoViewHierarchy = hierarchy;
    [(UIInterfaceActionRepresentationView *)self updateContentsInsertedIntoHierarchy];
  }
}

- (void)invokeInterfaceAction
{
  action = [(UIInterfaceActionRepresentationView *)self action];
  [action _invokeHandlerWithCompletionBlock:&__block_literal_global_12];
}

- (UIInterfaceActionVisualStyle)visualStyle
{
  action = [(UIInterfaceActionRepresentationView *)self action];
  _visualStyle = [action _visualStyle];

  return _visualStyle;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(UIInterfaceActionRepresentationView *)self _updateHighlightAndPressedFeedback];
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    [(UIInterfaceActionRepresentationView *)self _updateHighlightAndPressedFeedback];
  }
}

- (void)setVisualCornerPosition:(unint64_t)position
{
  if (self->_visualCornerPosition != position)
  {
    self->_visualCornerPosition = position;
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

- (void)_enforceActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisible:(BOOL)visible
{
  self->_enforcedCanRemoveContentFromHierarchyWhenNotVisibleValue = visible;
  self->_enforcedCanRemoveContentFromHierarchyWhenNotVisible = 1;
  [(UIInterfaceActionRepresentationView *)self setCanRemoveContentFromHierarchyWhenNotVisible:1];

  [(UIInterfaceActionRepresentationView *)self _updateLoadedContentsHierarchyByInsertingOrRemovingIfNecessary];
}

- (void)interfaceAction:(id)action reloadDisplayedContentActionProperties:(id)properties
{
  propertiesCopy = properties;
  visualStyle = [(UIInterfaceActionRepresentationView *)self visualStyle];
  actionPropertiesAffectingActionRepresentationViewStyling = [visualStyle actionPropertiesAffectingActionRepresentationViewStyling];
  v7 = [UIInterfaceAction changedProperties:propertiesCopy containsAny:actionPropertiesAffectingActionRepresentationViewStyling];

  if (v7)
  {
    _actionViewState = [(UIInterfaceActionRepresentationView *)self _actionViewState];
    [visualStyle configureAttributesForActionRepresentationView:self actionViewState:_actionViewState];
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
  __fittingContentSizingViewIfNotSelf = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewIfNotSelf];
  [__fittingContentSizingViewIfNotSelf invalidateIntrinsicContentSize];
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
  __fittingContentSizingViewAllowingSelf = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewAllowingSelf];
  v4 = __fittingContentSizingViewAllowingSelf;
  if (__fittingContentSizingViewAllowingSelf == self)
  {
    v11.receiver = self;
    v11.super_class = UIInterfaceActionRepresentationView;
    [(UIView *)&v11 intrinsicContentSize];
  }

  else
  {
    [(UIView *)__fittingContentSizingViewAllowingSelf systemLayoutSizeFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(UIInterfaceActionRepresentationView *)self _loadContentsIntoHierarchyAndPrepareIfNecessary];
  __fittingContentSizingViewAllowingSelf = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewAllowingSelf];
  v13 = __fittingContentSizingViewAllowingSelf;
  if (__fittingContentSizingViewAllowingSelf == self)
  {
    v20.receiver = self;
    v20.super_class = UIInterfaceActionRepresentationView;
    *&v11 = priority;
    *&v12 = fittingPriority;
    [(UIView *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  }

  else
  {
    *&v11 = priority;
    *&v12 = fittingPriority;
    [(UIInterfaceActionRepresentationView *)__fittingContentSizingViewAllowingSelf systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
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
  __fittingContentSizingViewIfNotSelf = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewIfNotSelf];
  if (__fittingContentSizingViewIfNotSelf)
  {
    v4 = __fittingContentSizingViewIfNotSelf;
    [(UIView *)self bounds];
    [(UIInterfaceActionRepresentationView *)self _fittingContentSizingViewFrameInBounds:?];
    [v4 setFrame:?];
    __fittingContentSizingViewIfNotSelf = v4;
  }
}

- (id)__fittingContentSizingViewIfNotSelf
{
  _fittingContentSizingView = [(UIInterfaceActionRepresentationView *)self _fittingContentSizingView];
  v4 = _fittingContentSizingView;
  if (_fittingContentSizingView == self)
  {
    v5 = 0;
  }

  else
  {
    v5 = _fittingContentSizingView;
  }

  v6 = v5;

  return v5;
}

- (id)__fittingContentSizingViewAllowingSelf
{
  selfCopy = self;
  _fittingContentSizingView = [(UIInterfaceActionRepresentationView *)self _fittingContentSizingView];
  v4 = _fittingContentSizingView;
  if (_fittingContentSizingView)
  {
    selfCopy = _fittingContentSizingView;
  }

  v5 = selfCopy;

  return selfCopy;
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

- (CGSize)_fittingContentSizeWithFittingViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(UIInterfaceActionRepresentationView *)self _fittingContentSizingViewMargins];
  v7 = v6 + width + v5;
  v10 = v9 + height + v8;
  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

- (CGRect)_fittingContentSizingViewFrameInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setSpringLoaded:(BOOL)loaded
{
  if ([(UIInterfaceActionRepresentationView *)self isSpringLoaded]!= loaded)
  {
    if (loaded)
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

- (void)setInteractionForSpringLoading:(id)loading
{
  loadingCopy = loading;
  interactionForSpringLoading = self->_interactionForSpringLoading;
  v7 = loadingCopy;
  if (interactionForSpringLoading != loadingCopy)
  {
    if (interactionForSpringLoading)
    {
      [(UIView *)self removeInteraction:?];
    }

    objc_storeStrong(&self->_interactionForSpringLoading, loading);
    if (self->_interactionForSpringLoading)
    {
      [(UIView *)self addInteraction:?];
    }
  }
}

- (BOOL)_showsFocusForFocusedView:(id)view
{
  if (self == view)
  {
    return 1;
  }

  viewCopy = view;
  subviews = [(UIView *)self subviews];
  v6 = [subviews containsObject:viewCopy];

  return v6;
}

- (BOOL)canBecomeFocused
{
  action = [(UIInterfaceActionRepresentationView *)self action];
  isEnabled = [action isEnabled];

  return isEnabled;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v11.receiver = self;
  v11.super_class = UIInterfaceActionRepresentationView;
  contextCopy = context;
  [(UIView *)&v11 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];
  v8 = [(UIInterfaceActionRepresentationView *)self _showsFocusForFocusedView:nextFocusedView];

  previouslyFocusedView = [contextCopy previouslyFocusedView];

  LODWORD(contextCopy) = [(UIInterfaceActionRepresentationView *)self _showsFocusForFocusedView:previouslyFocusedView];
  if (v8 != contextCopy)
  {
    [(UIInterfaceActionRepresentationView *)self setHighlighted:v8];
    action = [(UIInterfaceActionRepresentationView *)self action];
    [action _setIsFocused:v8];

    if (!v8)
    {
      [(UIInterfaceActionRepresentationView *)self _showVisualFeedbackForPressed:0];
    }
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (![(UIInterfaceActionRepresentationView *)self _handleVisualFeedbackForPress:beganCopy pressed:1])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionRepresentationView;
    [(UIResponder *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  if (![(UIInterfaceActionRepresentationView *)self _handleVisualFeedbackForPress:changedCopy pressed:1])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionRepresentationView;
    [(UIResponder *)&v8 pressesChanged:changedCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![(UIInterfaceActionRepresentationView *)self _handleVisualFeedbackForPress:endedCopy pressed:0])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionRepresentationView;
    [(UIResponder *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (![(UIInterfaceActionRepresentationView *)self _handleVisualFeedbackForPress:cancelledCopy pressed:0])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionRepresentationView;
    [(UIResponder *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (BOOL)_handleVisualFeedbackForPress:(id)press pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v6 = [(UIInterfaceActionRepresentationView *)self _shouldShowPressFeedbackForEventWithPresses:press];
  if (v6)
  {
    [(UIInterfaceActionRepresentationView *)self _showVisualFeedbackForPressed:pressedCopy];
  }

  return v6;
}

- (BOOL)_shouldShowPressFeedbackForEventWithPresses:(id)presses
{
  anyObject = [presses anyObject];
  type = [anyObject type];
  if (type == 4)
  {
    v6 = 1;
  }

  else if ((type & 0xFFFFFFFFFFFFFFFDLL) == 5)
  {
    action = [(UIInterfaceActionRepresentationView *)self action];
    v6 = [action type] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_showVisualFeedbackForPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
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
  visualStyle = [(UIInterfaceActionRepresentationView *)self visualStyle];
  [visualStyle minimumActionContentSize];
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

- (BOOL)_fittingContentViewHasItsOwnActiveMinimumSizeConstraintsWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _fittingContentSizingView = [(UIInterfaceActionRepresentationView *)self _fittingContentSizingView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [_fittingContentSizingView hasActiveMinimumSizeConstraintsWithSize:{width, height}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setHorizontalMargins:(UIEdgeInsets)margins preservesSuperviewLayoutMargins:(BOOL)layoutMargins
{
  layoutMarginsCopy = layoutMargins;
  right = margins.right;
  left = margins.left;
  [(UIView *)self layoutMargins:margins.top];
  if (left != v11 || (v8 == 0.0 ? (v12 = right == v10) : (v12 = 0), !v12 || v9 != 0.0 || [(UIView *)self preservesSuperviewLayoutMargins]!= layoutMarginsCopy))
  {
    [(UIView *)self setPreservesSuperviewLayoutMargins:layoutMarginsCopy];
    [(UIView *)self setLayoutMargins:0.0, left, 0.0, right];

    [(UIInterfaceActionRepresentationView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_initializeHorizontalMarginsForAction
{
  visualStyle = [(UIInterfaceActionRepresentationView *)self visualStyle];

  if (visualStyle)
  {

    [(UIInterfaceActionRepresentationView *)self _applyVisualStyleToLayoutMargins];
  }

  else
  {
    action = [(UIInterfaceActionRepresentationView *)self action];
    _typeForDeterminingViewRepresentation = [action _typeForDeterminingViewRepresentation];

    if (_typeForDeterminingViewRepresentation == 100)
    {

      [(UIInterfaceActionRepresentationView *)self _setHorizontalMargins:1 preservesSuperviewLayoutMargins:0.0, 0.0, 0.0, 0.0];
    }
  }
}

- (void)_applyVisualStyleToLayoutMargins
{
  action = [(UIInterfaceActionRepresentationView *)self action];
  _typeForDeterminingViewRepresentation = [action _typeForDeterminingViewRepresentation];

  if (_typeForDeterminingViewRepresentation == 100)
  {

    [(UIInterfaceActionRepresentationView *)self _setHorizontalMargins:1 preservesSuperviewLayoutMargins:0.0, 0.0, 0.0, 0.0];
  }

  else
  {
    visualStyle = [(UIInterfaceActionRepresentationView *)self visualStyle];
    [visualStyle contentMargin];
    [(UIInterfaceActionRepresentationView *)self _setHorizontalMargins:0 preservesSuperviewLayoutMargins:?];
  }
}

- (void)_reloadBackgroundHighlightView
{
  visualStyle = [(UIInterfaceActionRepresentationView *)self visualStyle];
  if (visualStyle)
  {
    v41 = visualStyle;
    _actionViewState = [(UIInterfaceActionRepresentationView *)self _actionViewState];
    v5 = [v41 newActionBackgroundViewForViewState:_actionViewState];

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
        backgroundColor = [v7 backgroundColor];
        v13 = backgroundColor;
        if (backgroundColor)
        {
          v14 = backgroundColor;
        }

        else
        {
          v14 = +[UIColor clearColor];
        }

        v15 = v14;

        backgroundColor2 = [(UIInterfaceActionVisualBackgroundDisplaying *)v6 backgroundColor];
        v17 = backgroundColor2;
        if (backgroundColor2)
        {
          v18 = backgroundColor2;
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
            layer = [v7 layer];
            filters = [layer filters];
            v25 = filters;
            v26 = MEMORY[0x1E695E0F0];
            v27 = (filters ? filters : MEMORY[0x1E695E0F0]);
            v40 = v15;
            v28 = v27;

            layer2 = [(UIInterfaceActionVisualBackgroundDisplaying *)v6 layer];
            filters2 = [layer2 filters];
            v31 = filters2;
            v32 = (filters2 ? filters2 : v26);
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

                visualStyle = v41;
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

  __fittingContentSizingViewIfNotSelf = [(UIInterfaceActionRepresentationView *)self __fittingContentSizingViewIfNotSelf];
  isFocused = [__fittingContentSizingViewIfNotSelf isFocused];

  return isFocused;
}

- (void)_updateHighlightAndPressedFeedback
{
  v19[3] = *MEMORY[0x1E69E9840];
  [(UIInterfaceActionRepresentationView *)self _reloadBackgroundHighlightView];
  [(UIInterfaceActionVisualBackgroundDisplaying *)self->_backgroundHighlightView setPressed:[(UIInterfaceActionRepresentationView *)self isPressed]];
  [(UIInterfaceActionVisualBackgroundDisplaying *)self->_backgroundHighlightView setHighlighted:[(UIInterfaceActionRepresentationView *)self isHighlighted]];
  visualStyle = [(UIInterfaceActionRepresentationView *)self visualStyle];
  v19[0] = 0x1EFB16350;
  v19[1] = 0x1EFB16370;
  v19[2] = 0x1EFB16330;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  actionPropertiesAffectingActionRepresentationViewStyling = [visualStyle actionPropertiesAffectingActionRepresentationViewStyling];
  v6 = [UIInterfaceAction changedProperties:v4 containsAny:actionPropertiesAffectingActionRepresentationViewStyling];

  if (v6)
  {
    _actionViewState = [(UIInterfaceActionRepresentationView *)self _actionViewState];
    [visualStyle configureAttributesForActionRepresentationView:self actionViewState:_actionViewState];
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
  viewsToDisappearWhenHighlighted = [(UIInterfaceActionRepresentationView *)self viewsToDisappearWhenHighlighted];
  v10 = [viewsToDisappearWhenHighlighted countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(viewsToDisappearWhenHighlighted);
        }

        [*(*(&v14 + 1) + 8 * i) setAlpha:v8];
      }

      v11 = [viewsToDisappearWhenHighlighted countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  visualStyle = [(UIInterfaceActionRepresentationView *)self visualStyle];
  [(UIInterfaceActionRepresentationView *)self interfaceAction:action reloadDisplayedContentVisualStyle:visualStyle];
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
  _enclosingInterfaceActionGroupView = [(UIView *)self _enclosingInterfaceActionGroupView];
  if (_enclosingInterfaceActionGroupView)
  {
    [(UIView *)self bounds];
    [_enclosingInterfaceActionGroupView convertRect:self fromView:?];
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
      [_enclosingInterfaceActionGroupView bounds];
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
  action = [(UIInterfaceActionRepresentationView *)self action];
  v4 = [UIInterfaceActionViewState viewStateForActionRepresentationView:self action:action];

  return v4;
}

@end