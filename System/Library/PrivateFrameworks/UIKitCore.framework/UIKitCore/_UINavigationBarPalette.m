@interface _UINavigationBarPalette
- (NSString)description;
- (UINavigationItem)owningNavigationItem;
- (_BYTE)_paletteForSearch;
- (_UINavigationBarPalette)init;
- (_UINavigationBarPalette)initWithContentView:(id)a3;
- (_UIPointerInteractionAssistant)assistant;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_clearAssistants;
- (void)_setAssistants;
- (void)addSubview:(id)a3;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setAssistant:(id)a3;
- (void)setAssistantIdentifier:(id)a3;
- (void)setMinimumHeight:(double)a3;
- (void)setPreferredHeight:(double)a3;
- (void)setTransitioning:(BOOL)a3;
- (void)updateLayoutData:(id)a3 layoutWidth:(double)a4;
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
  if (a1)
  {
    if (a1[418])
    {
      v2 = a1;
    }

    else
    {
      v2 = 0;
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

- (_UINavigationBarPalette)init
{
  v3 = objc_opt_new();
  v4 = [(_UINavigationBarPalette *)self initWithContentView:v3];

  return v4;
}

- (_UINavigationBarPalette)initWithContentView:(id)a3
{
  v5 = a3;
  [v5 frame];
  v9.receiver = self;
  v9.super_class = _UINavigationBarPalette;
  v6 = [(UIView *)&v9 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, a3);
    [v5 frame];
    v7->_preferredHeight = CGRectGetHeight(v10);
    v7->_minimumHeight = -1.0;
    [(_UINavigationBarPalette *)v7 addSubview:v7->_contentView];
    [(UIView *)v7 setClipsToBounds:1];
    [(UIView *)v7 _setSafeAreaCornerAdaptation:3];
  }

  return v7;
}

- (void)addSubview:(id)a3
{
  v4 = a3;
  contentView = self->_contentView;
  if (contentView == v4)
  {
    v6.receiver = self;
    v6.super_class = _UINavigationBarPalette;
    [(UIView *)&v6 addSubview:v4];
  }

  else
  {
    [(UIView *)contentView addSubview:v4];
    if (self->_preferredHeight == 0.0)
    {
      [(UIView *)v4 frame];
      self->_preferredHeight = CGRectGetHeight(v7);
    }
  }
}

- (void)setTransitioning:(BOOL)a3
{
  if (self->_transitioning != a3)
  {
    self->_transitioning = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)updateProperties
{
  v9.receiver = self;
  v9.super_class = _UINavigationBarPalette;
  [(UIView *)&v9 updateProperties];
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 _hasScrollPocketContainerModel];

  scrollPocketInteraction = self->_scrollPocketInteraction;
  if (v4)
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

- (void)setPreferredHeight:(double)a3
{
  if (self->_preferredHeight != a3)
  {
    self->_preferredHeight = a3;
    WeakRetained = objc_loadWeakRetained(&self->_owningNavigationItem);
    [WeakRetained _updatePalette:self];
  }
}

- (void)setMinimumHeight:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = -1.0;
  }

  if (self->_minimumHeight != a3)
  {
    self->_minimumHeight = a3;
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

- (void)setAssistantIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_assistantIdentifier;
  v6 = v4;
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

- (void)setAssistant:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_assistant);

  if (WeakRetained != obj)
  {
    [(_UINavigationBarPalette *)self _clearAssistants];
    objc_storeWeak(&self->_assistant, obj);
    [(_UINavigationBarPalette *)self _setAssistants];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 request:v8 locationInView:self];
    v9 = [(UIView *)self hitTest:0 withEvent:?];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isEnabled])
    {
      [v9 bounds];
      v14 = [v7 createRegionFromRect:v9 targetView:@"com.apple.UIKit.UINavigationBar.Palette.UIButton" identifier:objc_msgSend(v9 selected:{"isSelected"), v10, v11, v12, v13}];
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 targetViewAsButton];
    if (v7)
    {
      v8 = [v5 createStyleForButton:v7 shapeProvider:0];
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

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v6 = a5;
  v8 = [a4 targetViewAsButton];
  v7 = [v8 _visualProvider];
  [v7 pointerWillEnter:v6];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v6 = a5;
  v8 = [a4 targetViewAsButton];
  v7 = [v8 _visualProvider];
  [v7 pointerWillExit:v6];
}

- (void)updateLayoutData:(id)a3 layoutWidth:(double)a4
{
  v10 = a3;
  UICeilToViewScale(self);
  v6 = v5;
  if (self->_minimumHeight == -1.0)
  {
    [v10 setFixedHeight:v5];
  }

  else
  {
    UICeilToViewScale(self);
    v8 = v7;
    [v10 setMinimumHeight:?];
    if (v8 >= v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    [v10 setPreferredHeight:v9];
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