@interface _UIContextMenuSubmenuTitleView
- (UIEdgeInsets)backgroundShapeInsets;
- (_UIContextMenuSubmenuTitleView)initWithFrame:(CGRect)a3;
- (id)_platformMetrics;
- (int64_t)focusItemDeferralMode;
- (void)addObscuringMaterialViewWithGroupName:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setBackgroundMaterialGroupName:(id)a3;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation _UIContextMenuSubmenuTitleView

- (_UIContextMenuSubmenuTitleView)initWithFrame:(CGRect)a3
{
  v66[4] = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = _UIContextMenuSubmenuTitleView;
  v3 = [(UICollectionReusableView *)&v64 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setFocusEffect:0];
    v5 = [(_UIContextMenuSubmenuTitleView *)v4 _platformMetrics];
    [v5 sectionInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(UIView *)v4 _shouldReverseLayoutDirection];
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = v9;
    }

    if (v14)
    {
      v16 = v9;
    }

    else
    {
      v16 = v13;
    }

    [(_UIContextMenuSubmenuTitleView *)v4 setBackgroundShapeInsets:v7, v15, v11, v16];
    v17 = [(UIView *)v4 traitCollection];
    v18 = [v17 userInterfaceIdiom];
    v19 = _UIContextMenuGetPlatformMetrics(v18);
    v20 = [v19 submenuTitleBackgroundProvider];

    if (v20)
    {
      v21 = [v19 submenuTitleBackgroundProvider];
      v22 = v21[2]();
    }

    else
    {
      v21 = _UIContextMenuGetPlatformMetrics(v18);
      v23 = [UIVisualEffectView alloc];
      v24 = [v21 menuBackgroundEffect];
      v22 = [(UIVisualEffectView *)v23 initWithEffect:v24];

      v25 = [v21 menuBackgroundColor];
      [(UIView *)v22 setBackgroundColor:v25];
    }

    [(_UIContextMenuSubmenuTitleView *)v4 setBgView:v22];
    v26 = [(_UIContextMenuSubmenuTitleView *)v4 bgView];
    [(UIView *)v4 addSubview:v26];
    [(UIView *)v4 _addBoundsMatchingConstraintsForView:v26];

    v27 = objc_opt_new();
    contentView = v4->_contentView;
    v4->_contentView = v27;

    [v5 prefersLeadingImageCellLayout];
    [(_UIContextMenuCellContentView *)v4->_contentView setLayoutClass:objc_opt_class()];
    [(UIView *)v4->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v4->_contentView];
    v53 = MEMORY[0x1E69977A0];
    v61 = [(UIView *)v4->_contentView leadingAnchor];
    v59 = [(UIView *)v4 leadingAnchor];
    v57 = [v61 constraintEqualToAnchor:v59 constant:v9];
    v66[0] = v57;
    v55 = [(UIView *)v4->_contentView trailingAnchor];
    [(UIView *)v4 trailingAnchor];
    v29 = v63 = v5;
    v30 = [v55 constraintEqualToAnchor:v29 constant:-v13];
    v66[1] = v30;
    v31 = [(UIView *)v4->_contentView topAnchor];
    v32 = [(UIView *)v4 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:v7];
    v66[2] = v33;
    v34 = [(UIView *)v4->_contentView bottomAnchor];
    v35 = [(UIView *)v4 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-v11];
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
    v62 = [(UIView *)v43 leadingAnchor];
    v60 = [(UIView *)v4 leadingAnchor];
    v58 = [v62 constraintEqualToAnchor:v60 constant:v39];
    v65[0] = v58;
    v56 = [(UIView *)v43 trailingAnchor];
    v44 = [(UIView *)v4 trailingAnchor];
    v45 = [v56 constraintEqualToAnchor:v44 constant:-v41];
    v65[1] = v45;
    v46 = [(UIView *)v43 topAnchor];
    v47 = [(UIView *)v4 bottomAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v65[2] = v48;
    v49 = [(UIView *)v43 heightAnchor];
    [v63 submenuTitleSeparatorHeight];
    v50 = [v49 constraintEqualToConstant:?];
    v65[3] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
    [v54 activateConstraints:v51];
  }

  return v4;
}

- (void)setBackgroundMaterialGroupName:(id)a3
{
  v7 = a3;
  v4 = [(_UIContextMenuSubmenuTitleView *)self bgView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(_UIContextMenuSubmenuTitleView *)self bgView];
    [v6 _setGroupName:v7];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v4 = a3;
    self->_highlighted = a3;
    if (a3)
    {
      v6 = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];

      if (!v6)
      {
        v7 = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];

        if (!v7)
        {
          v8 = objc_alloc_init(UIVisualEffectView);
          [(_UIContextMenuSubmenuTitleView *)self setHighlightedBgView:v8];

          v9 = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];
          v10 = [(_UIContextMenuSubmenuTitleView *)self bgView];
          [(UIView *)self insertSubview:v9 aboveSubview:v10];
        }

        v11 = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];
        v12 = [(_UIContextMenuSubmenuTitleView *)self contentView];
        v13 = [v12 contentShape];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = +[UIShape rectShape];
        }

        v16 = v15;

        v17 = [(UIView *)self traitCollection];
        v18 = [v17 userInterfaceIdiom];
        v19 = v16;
        v20 = _UIContextMenuGetPlatformMetrics(v18);
        v21 = [v20 menuHighlightBackgroundDescriptorProvider];
        v22 = (v21)[2](v21, v19);

        [(UIView *)self bounds];
        [v11 setFrame:?];
        v23 = [v22 backgroundColor];
        [v11 setBackgroundColor:v23];

        v24 = [v22 effect];
        [v11 setEffect:v24];

        v25 = [v22 contentBackgroundColor];
        v26 = [v11 contentView];
        [v26 setBackgroundColor:v25];

        v27 = [v22 backgroundShape];

        if (v27)
        {
          v28 = [v22 backgroundShape];
          [(_UIContextMenuSubmenuTitleView *)self backgroundShapeInsets];
          v29 = [v28 shapeByApplyingInsets:?];

          [v11 _applyShape:v29];
        }
      }
    }

    v30 = [(_UIContextMenuSubmenuTitleView *)self highlightedBgView];
    [v30 setHidden:!v4];
  }
}

- (void)addObscuringMaterialViewWithGroupName:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuSubmenuTitleView *)self obscuringMaterialView];

  if (!v5)
  {
    v6 = [(UIView *)self traitCollection];
    v7 = _UIContextMenuGetPlatformMetrics([v6 userInterfaceIdiom]);
    v8 = [UIVisualEffectView alloc];
    v9 = [v7 menuBackgroundEffect];
    v10 = [(UIVisualEffectView *)v8 initWithEffect:v9];

    v11 = [v7 menuBackgroundColor];
    [(UIView *)v10 setBackgroundColor:v11];

    v12 = [(_UIContextMenuSubmenuTitleView *)self bgView];
    if (self)
    {
      [(UIView *)self insertSubview:v10 aboveSubview:v12];
      [(UIView *)self _addBoundsMatchingConstraintsForView:v10];
    }

    [(_UIContextMenuSubmenuTitleView *)self setObscuringMaterialView:v10];
  }

  v13 = [(_UIContextMenuSubmenuTitleView *)self obscuringMaterialView];
  [v13 _setGroupName:v4];
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v9.receiver = self;
  v9.super_class = _UIContextMenuSubmenuTitleView;
  [(UIView *)&v9 setDirectionalLayoutMargins:?];
  v8 = [(_UIContextMenuSubmenuTitleView *)self contentView];
  [v8 setDirectionalLayoutMargins:{top, leading, bottom, trailing}];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuSubmenuTitleView;
  v6 = a3;
  [(UIView *)&v8 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];

  [(_UIContextMenuSubmenuTitleView *)self setHighlighted:v7 == self];
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
  v2 = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([v2 userInterfaceIdiom]);

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