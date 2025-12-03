@interface _UINavigationBarPalette
- (NSString)description;
- (UINavigationItem)owningNavigationItem;
- (_BYTE)_paletteForSearch;
- (_UINavigationBarPalette)init;
- (_UINavigationBarPalette)initWithContentView:(id)view;
- (_UIPointerInteractionAssistant)assistant;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_clearAssistants;
- (void)_setAssistants;
- (void)addSubview:(id)subview;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setAssistant:(id)assistant;
- (void)setAssistantIdentifier:(id)identifier;
- (void)setMinimumHeight:(double)height;
- (void)setPreferredHeight:(double)height;
- (void)setTransitioning:(BOOL)transitioning;
- (void)updateLayoutData:(id)data layoutWidth:(double)width;
- (void)updateProperties;
@end

@implementation _UINavigationBarPalette

- (void)_clearAssistants
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);
  if (WeakRetained)
  {
    assistantIdentifier = self->_assistantIdentifier;

    if (assistantIdentifier)
    {
      v5 = objc_loadWeakRetained(&self->_assistant);
      [v5 setAssistedView:0 identifier:self->_assistantIdentifier];
    }
  }
}

- (void)_setAssistants
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);
  if (WeakRetained)
  {
    assistantIdentifier = self->_assistantIdentifier;

    if (assistantIdentifier)
    {
      v5 = objc_loadWeakRetained(&self->_assistant);
      [v5 setAssistedView:self identifier:self->_assistantIdentifier];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarPalette;
  [(UIView *)&v3 layoutSubviews];
  if (!self->_transitioning)
  {
    [(UIView *)self bounds];
    [(UIView *)self->_contentView setFrame:?];
  }
}

- (_BYTE)_paletteForSearch
{
  if (self)
  {
    if (self[418])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    self = selfCopy;
    v1 = vars8;
  }

  return self;
}

- (_UINavigationBarPalette)init
{
  v3 = objc_opt_new();
  v4 = [(_UINavigationBarPalette *)self initWithContentView:v3];

  return v4;
}

- (_UINavigationBarPalette)initWithContentView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v9.receiver = self;
  v9.super_class = _UINavigationBarPalette;
  v6 = [(UIView *)&v9 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, view);
    [viewCopy frame];
    v7->_preferredHeight = CGRectGetHeight(v10);
    v7->_minimumHeight = -1.0;
    [(_UINavigationBarPalette *)v7 addSubview:v7->_contentView];
    [(UIView *)v7 setClipsToBounds:1];
    [(UIView *)v7 _setSafeAreaCornerAdaptation:3];
  }

  return v7;
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  contentView = self->_contentView;
  if (contentView == subviewCopy)
  {
    v6.receiver = self;
    v6.super_class = _UINavigationBarPalette;
    [(UIView *)&v6 addSubview:subviewCopy];
  }

  else
  {
    [(UIView *)contentView addSubview:subviewCopy];
    if (self->_preferredHeight == 0.0)
    {
      [(UIView *)subviewCopy frame];
      self->_preferredHeight = CGRectGetHeight(v7);
    }
  }
}

- (void)setTransitioning:(BOOL)transitioning
{
  if (self->_transitioning != transitioning)
  {
    self->_transitioning = transitioning;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)updateProperties
{
  v9.receiver = self;
  v9.super_class = _UINavigationBarPalette;
  [(UIView *)&v9 updateProperties];
  traitCollection = [(UIView *)self traitCollection];
  _hasScrollPocketContainerModel = [traitCollection _hasScrollPocketContainerModel];

  scrollPocketInteraction = self->_scrollPocketInteraction;
  if (_hasScrollPocketContainerModel)
  {
    if (!scrollPocketInteraction)
    {
      v6 = [[_UIScrollPocketInteraction alloc] initWithStyle:3];
      v7 = self->_scrollPocketInteraction;
      self->_scrollPocketInteraction = v6;

      [(UIView *)self addInteraction:self->_scrollPocketInteraction];
    }
  }

  else if (scrollPocketInteraction)
  {
    [(UIView *)self removeInteraction:?];
    v8 = self->_scrollPocketInteraction;
    self->_scrollPocketInteraction = 0;
  }

  [(UIView *)self safeAreaInsets];
  [(_UIScrollPocketInteraction *)self->_scrollPocketInteraction _setInsets:?];
}

- (void)setPreferredHeight:(double)height
{
  if (self->_preferredHeight != height)
  {
    self->_preferredHeight = height;
    WeakRetained = objc_loadWeakRetained(&self->_owningNavigationItem);
    [WeakRetained _updatePalette:self];
  }
}

- (void)setMinimumHeight:(double)height
{
  if (height < 0.0)
  {
    height = -1.0;
  }

  if (self->_minimumHeight != height)
  {
    self->_minimumHeight = height;
    WeakRetained = objc_loadWeakRetained(&self->_owningNavigationItem);
    [WeakRetained _updatePalette:self];
  }
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = _UINavigationBarPalette;
  v3 = [(UIView *)&v10 description];
  v4 = [v3 mutableCopy];

  if (self->_minimumHeight >= 0.0)
  {
    [v4 appendFormat:@" minimumHeight=%f", *&self->_minimumHeight];
  }

  else
  {
    [v4 appendString:@" minimumHeight=auto"];
  }

  [v4 appendFormat:@" preferredHeight=%f", *&self->_preferredHeight];
  if (self->__displaysWhenSearchActive)
  {
    [v4 appendString:@" displaysWhenSearchActive"];
  }

  contentViewMarginType = self->__contentViewMarginType;
  if (contentViewMarginType == 1)
  {
    v6 = @" marginsFollowBar";
  }

  else
  {
    if (contentViewMarginType != 2)
    {
      goto LABEL_11;
    }

    v6 = @" marginsFollowLargeTitle";
  }

  [v4 appendString:v6];
LABEL_11:
  layoutPriority = self->__layoutPriority;
  if (layoutPriority == 1)
  {
    v8 = @" priorityAfterSearch";
  }

  else
  {
    if (layoutPriority != 2)
    {
      goto LABEL_16;
    }

    v8 = @" priorityAfterLargeTitle";
  }

  [v4 appendString:v8];
LABEL_16:

  return v4;
}

- (void)setAssistantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_assistantIdentifier;
  v6 = identifierCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(_UINavigationBarPalette *)self _clearAssistants];
    v8 = [(NSString *)v10 copy];
    assistantIdentifier = self->_assistantIdentifier;
    self->_assistantIdentifier = v8;

    [(_UINavigationBarPalette *)self _setAssistants];
  }

LABEL_9:
}

- (void)setAssistant:(id)assistant
{
  obj = assistant;
  WeakRetained = objc_loadWeakRetained(&self->_assistant);

  if (WeakRetained != obj)
  {
    [(_UINavigationBarPalette *)self _clearAssistants];
    objc_storeWeak(&self->_assistant, obj);
    [(_UINavigationBarPalette *)self _setAssistants];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [interactionCopy request:requestCopy locationInView:self];
    v9 = [(UIView *)self hitTest:0 withEvent:?];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isEnabled])
    {
      [v9 bounds];
      v14 = [interactionCopy createRegionFromRect:v9 targetView:@"com.apple.UIKit.UINavigationBar.Palette.UIButton" identifier:objc_msgSend(v9 selected:{"isSelected"), v10, v11, v12, v13}];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    targetViewAsButton = [regionCopy targetViewAsButton];
    if (targetViewAsButton)
    {
      v8 = [interactionCopy createStyleForButton:targetViewAsButton shapeProvider:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  targetViewAsButton = [region targetViewAsButton];
  _visualProvider = [targetViewAsButton _visualProvider];
  [_visualProvider pointerWillEnter:animatorCopy];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  targetViewAsButton = [region targetViewAsButton];
  _visualProvider = [targetViewAsButton _visualProvider];
  [_visualProvider pointerWillExit:animatorCopy];
}

- (void)updateLayoutData:(id)data layoutWidth:(double)width
{
  dataCopy = data;
  UICeilToViewScale(self);
  v6 = v5;
  if (self->_minimumHeight == -1.0)
  {
    [dataCopy setFixedHeight:v5];
  }

  else
  {
    UICeilToViewScale(self);
    v8 = v7;
    [dataCopy setMinimumHeight:?];
    if (v8 >= v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    [dataCopy setPreferredHeight:v9];
  }
}

- (_UIPointerInteractionAssistant)assistant
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);

  return WeakRetained;
}

- (UINavigationItem)owningNavigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_owningNavigationItem);

  return WeakRetained;
}

@end