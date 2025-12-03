@interface _UIContextMenuSubmenuTitleView
- (UIEdgeInsets)backgroundShapeInsets;
- (_UIContextMenuSubmenuTitleView)initWithFrame:(CGRect)frame;
- (id)_platformMetrics;
- (int64_t)focusItemDeferralMode;
- (void)addObscuringMaterialViewWithGroupName:(id)name;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setBackgroundMaterialGroupName:(id)name;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _UIContextMenuSubmenuTitleView

- (_UIContextMenuSubmenuTitleView)initWithFrame:(CGRect)frame
{
  v66[4] = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = _UIContextMenuSubmenuTitleView;
  v3 = [(UICollectionReusableView *)&v64 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setFocusEffect:0];
    _platformMetrics = [(_UIContextMenuSubmenuTitleView *)v4 _platformMetrics];
    [_platformMetrics sectionInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    _shouldReverseLayoutDirection = [(UIView *)v4 _shouldReverseLayoutDirection];
    if (_shouldReverseLayoutDirection)
    {
      v15 = v13;
    }

    else
    {
      v15 = v9;
    }

    if (_shouldReverseLayoutDirection)
    {
      v16 = v9;
    }

    else
    {
      v16 = v13;
    }

    [(_UIContextMenuSubmenuTitleView *)v4 setBackgroundShapeInsets:v7, v15, v11, v16];
    traitCollection = [(UIView *)v4 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    v19 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    submenuTitleBackgroundProvider = [v19 submenuTitleBackgroundProvider];

    if (submenuTitleBackgroundProvider)
    {
      submenuTitleBackgroundProvider2 = [v19 submenuTitleBackgroundProvider];
      v22 = submenuTitleBackgroundProvider2[2]();
    }

    else
    {
      submenuTitleBackgroundProvider2 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      v23 = [UIVisualEffectView alloc];
      menuBackgroundEffect = [submenuTitleBackgroundProvider2 menuBackgroundEffect];
      v22 = [(UIVisualEffectView *)v23 initWithEffect:menuBackgroundEffect];

      menuBackgroundColor = [submenuTitleBackgroundProvider2 menuBackgroundColor];
      [(UIView *)v22 setBackgroundColor:menuBackgroundColor];
    }

    [(_UIContextMenuSubmenuTitleView *)v4 setBgView:v22];
    bgView = [(_UIContextMenuSubmenuTitleView *)v4 bgView];
    [(UIView *)v4 addSubview:bgView];
    [(UIView *)v4 _addBoundsMatchingConstraintsForView:bgView];

    v27 = objc_opt_new();
    contentView = v4->_contentView;
    v4->_contentView = v27;

    [_platformMetrics prefersLeadingImageCellLayout];
    [(_UIContextMenuCellContentView *)v4->_contentView setLayoutClass:objc_opt_class()];
    [(UIView *)v4->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v4->_contentView];
    v53 = MEMORY[0x1E69977A0];
    leadingAnchor = [(UIView *)v4->_contentView leadingAnchor];
    leadingAnchor2 = [(UIView *)v4 leadingAnchor];
    v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9];
    v66[0] = v57;
    trailingAnchor = [(UIView *)v4->_contentView trailingAnchor];
    [(UIView *)v4 trailingAnchor];
    v29 = v63 = _platformMetrics;
    v30 = [trailingAnchor constraintEqualToAnchor:v29 constant:-v13];
    v66[1] = v30;
    topAnchor = [(UIView *)v4->_contentView topAnchor];
    topAnchor2 = [(UIView *)v4 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v7];
    v66[2] = v33;
    bottomAnchor = [(UIView *)v4->_contentView bottomAnchor];
    bottomAnchor2 = [(UIView *)v4 bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v11];
    v66[3] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
    [v53 activateConstraints:v37];

    [v63 sectionSeparatorInsets];
    v39 = v38;
    v41 = v40;
    v42 = [_UIContextMenuSeparatorView alloc];
    v43 = [(_UIContextMenuSeparatorView *)v42 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v43];
    v54 = MEMORY[0x1E69977A0];
    leadingAnchor3 = [(UIView *)v43 leadingAnchor];
    leadingAnchor4 = [(UIView *)v4 leadingAnchor];
    v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v39];
    v65[0] = v58;
    trailingAnchor2 = [(UIView *)v43 trailingAnchor];
    trailingAnchor3 = [(UIView *)v4 trailingAnchor];
    v45 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v41];
    v65[1] = v45;
    topAnchor3 = [(UIView *)v43 topAnchor];
    bottomAnchor3 = [(UIView *)v4 bottomAnchor];
    v48 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
    v65[2] = v48;
    heightAnchor = [(UIView *)v43 heightAnchor];
    [v63 submenuTitleSeparatorHeight];
    v50 = [heightAnchor constraintEqualToConstant:?];
    v65[3] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
    [v54 activateConstraints:v51];
  }

  return v4;
}

- (void)setBackgroundMaterialGroupName:(id)name
{
  nameCopy = name;
  bgView = [(_UIContextMenuSubmenuTitleView *)self bgView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    bgView2 = [(_UIContextMenuSubmenuTitleView *)self bgView];
    [bgView2 _setGroupName:nameCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    if (highlighted)
    {
      highlightedBgView = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];

      if (!highlightedBgView)
      {
        highlightedBgView2 = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];

        if (!highlightedBgView2)
        {
          v8 = objc_alloc_init(UIVisualEffectView);
          [(_UIContextMenuSubmenuTitleView *)self setHighlightedBgView:v8];

          highlightedBgView3 = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];
          bgView = [(_UIContextMenuSubmenuTitleView *)self bgView];
          [(UIView *)self insertSubview:highlightedBgView3 aboveSubview:bgView];
        }

        highlightedBgView4 = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];
        contentView = [(_UIContextMenuSubmenuTitleView *)self contentView];
        contentShape = [contentView contentShape];
        v14 = contentShape;
        if (contentShape)
        {
          v15 = contentShape;
        }

        else
        {
          v15 = +[UIShape rectShape];
        }

        v16 = v15;

        traitCollection = [(UIView *)self traitCollection];
        userInterfaceIdiom = [traitCollection userInterfaceIdiom];
        v19 = v16;
        v20 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
        menuHighlightBackgroundDescriptorProvider = [v20 menuHighlightBackgroundDescriptorProvider];
        v22 = (menuHighlightBackgroundDescriptorProvider)[2](menuHighlightBackgroundDescriptorProvider, v19);

        [(UIView *)self bounds];
        [highlightedBgView4 setFrame:?];
        backgroundColor = [v22 backgroundColor];
        [highlightedBgView4 setBackgroundColor:backgroundColor];

        effect = [v22 effect];
        [highlightedBgView4 setEffect:effect];

        contentBackgroundColor = [v22 contentBackgroundColor];
        contentView2 = [highlightedBgView4 contentView];
        [contentView2 setBackgroundColor:contentBackgroundColor];

        backgroundShape = [v22 backgroundShape];

        if (backgroundShape)
        {
          backgroundShape2 = [v22 backgroundShape];
          [(_UIContextMenuSubmenuTitleView *)self backgroundShapeInsets];
          v29 = [backgroundShape2 shapeByApplyingInsets:?];

          [highlightedBgView4 _applyShape:v29];
        }
      }
    }

    highlightedBgView5 = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];
    [highlightedBgView5 setHidden:!highlightedCopy];
  }
}

- (void)addObscuringMaterialViewWithGroupName:(id)name
{
  nameCopy = name;
  obscuringMaterialView = [(_UIContextMenuSubmenuTitleView *)self obscuringMaterialView];

  if (!obscuringMaterialView)
  {
    traitCollection = [(UIView *)self traitCollection];
    v7 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    v8 = [UIVisualEffectView alloc];
    menuBackgroundEffect = [v7 menuBackgroundEffect];
    v10 = [(UIVisualEffectView *)v8 initWithEffect:menuBackgroundEffect];

    menuBackgroundColor = [v7 menuBackgroundColor];
    [(UIView *)v10 setBackgroundColor:menuBackgroundColor];

    bgView = [(_UIContextMenuSubmenuTitleView *)self bgView];
    if (self)
    {
      [(UIView *)self insertSubview:v10 aboveSubview:bgView];
      [(UIView *)self _addBoundsMatchingConstraintsForView:v10];
    }

    [(_UIContextMenuSubmenuTitleView *)self setObscuringMaterialView:v10];
  }

  obscuringMaterialView2 = [(_UIContextMenuSubmenuTitleView *)self obscuringMaterialView];
  [obscuringMaterialView2 _setGroupName:nameCopy];
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v9.receiver = self;
  v9.super_class = _UIContextMenuSubmenuTitleView;
  [(UIView *)&v9 setDirectionalLayoutMargins:?];
  contentView = [(_UIContextMenuSubmenuTitleView *)self contentView];
  [contentView setDirectionalLayoutMargins:{top, leading, bottom, trailing}];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuSubmenuTitleView;
  contextCopy = context;
  [(UIView *)&v8 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  [(_UIContextMenuSubmenuTitleView *)self setHighlighted:nextFocusedItem == self];
}

- (int64_t)focusItemDeferralMode
{
  if ([(_UIContextMenuSubmenuTitleView *)self highlighted])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)_platformMetrics
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  return v3;
}

- (UIEdgeInsets)backgroundShapeInsets
{
  top = self->_backgroundShapeInsets.top;
  left = self->_backgroundShapeInsets.left;
  bottom = self->_backgroundShapeInsets.bottom;
  right = self->_backgroundShapeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end