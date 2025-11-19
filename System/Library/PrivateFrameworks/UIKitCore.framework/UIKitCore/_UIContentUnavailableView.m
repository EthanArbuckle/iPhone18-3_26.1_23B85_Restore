@interface _UIContentUnavailableView
+ (_UIContentUnavailableView)allocWithZone:(_NSZone *)a3;
- (CGColor)_colorForButtonForStyle:(unint64_t)a3 controlState:(unint64_t)a4;
- (CGSize)_buttonSize;
- (UIEdgeInsets)_buttonContentEdgeInsets;
- (_UIContentUnavailableView)initWithFrame:(CGRect)a3;
- (_UIContentUnavailableView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5 includeBackdrop:(BOOL)a6;
- (double)_buttonAlpha;
- (double)_buttonVerticalSpacing;
- (double)_labelAlpha;
- (double)_labelVerticalSpacing;
- (id)_buttonBackgroundImageForStyle:(unint64_t)a3 controlState:(unint64_t)a4;
- (id)_buttonFont;
- (void)_actionButtonPressed:(id)a3;
- (void)_rebuildConstraints;
- (void)_updateForCurrentContentSizeCategory;
- (void)_updateViewHierarchy;
- (void)cleanupLingeringRotationState;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setButtonTitle:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
- (void)setVibrantOptions:(unint64_t)a3;
- (void)updateConstraints;
- (void)windowWillAnimateRotateNotification:(id)a3;
- (void)windowWillRotateNotification:(id)a3;
@end

@implementation _UIContentUnavailableView

- (double)_labelVerticalSpacing
{
  v2 = [(_UIContentUnavailableView *)self _messageTextStyle];
  v3 = [UIFontMetrics metricsForTextStyle:v2];
  [v3 scaledValueForValue:35.0];
  v5 = v4;

  return v5;
}

- (void)didMoveToWindow
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:self name:@"UIWindowWillRotateNotification" object:0];
    [v9 removeObserver:self name:@"UIWindowWillAnimateRotationNotification" object:0];
    [v9 removeObserver:self name:@"UIWindowDidRotateNotification" object:0];
    v5 = [(UIView *)self window];

    if (v5)
    {
      v6 = [(UIView *)self window];
      [v9 addObserver:self selector:sel_windowWillRotateNotification_ name:@"UIWindowWillRotateNotification" object:v6];

      v7 = [(UIView *)self window];
      [v9 addObserver:self selector:sel_windowWillAnimateRotateNotification_ name:@"UIWindowWillAnimateRotationNotification" object:v7];

      v8 = [(UIView *)self window];
      [v9 addObserver:self selector:sel_windowDidRotateNotification_ name:@"UIWindowDidRotateNotification" object:v8];
    }

    else
    {
      [(_UIContentUnavailableView *)self cleanupLingeringRotationState];
    }
  }
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIContentUnavailableView;
  [(UIView *)&v3 updateConstraints];
  [MEMORY[0x1E69977A0] activateConstraints:self->_containerViewContraints];
}

- (void)layoutSubviews
{
  [(_UIContentUnavailableView *)self _updateViewHierarchy];
  v8.receiver = self;
  v8.super_class = _UIContentUnavailableView;
  [(UIView *)&v8 layoutSubviews];
  [(UIScrollView *)self->_scrollView contentSize];
  v4 = v3;
  [(UIView *)self->_scrollView bounds];
  if (v4 > CGRectGetHeight(v9))
  {
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

    if (IsAccessibilityCategory)
    {
      [(UIScrollView *)self->_scrollView flashScrollIndicators];
    }
  }
}

- (void)_updateViewHierarchy
{
  titleLabel = self->_titleLabel;
  v4 = titleLabel == 0;
  if (!titleLabel)
  {
    v5 = [UILabel alloc];
    [(UIView *)self->_scrollView bounds];
    v6 = [(UILabel *)v5 initWithFrame:0.0, 0.0, CGRectGetWidth(v60), 20.0];
    v7 = self->_titleLabel;
    self->_titleLabel = v6;

    LODWORD(v8) = 1148846080;
    [(UIView *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v8];
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v9 = +[UIColor clearColor];
    [(UIView *)self->_titleLabel setBackgroundColor:v9];

    [(UIView *)self->_titleLabel setOpaque:0];
    v10 = [(_UIContentUnavailableView *)self _titleFont];
    [(UILabel *)self->_titleLabel setFont:v10];

    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    LODWORD(v11) = 1051931443;
    [(UILabel *)self->_titleLabel _setHyphenationFactor:v11];
    [(UIView *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_containerView addSubview:self->_titleLabel];
    titleLabel = self->_titleLabel;
  }

  [(UILabel *)titleLabel setText:self->_title];
  if ([(_UIContentUnavailableView *)self _hasVibrantText]&& self->_style == 1)
  {
    v12 = [(_UIContentUnavailableView *)self _vibrantBaseColor];
  }

  else
  {
    v12 = [(_UIContentUnavailableView *)self _flatTextColor];
  }

  v13 = v12;
  [(UILabel *)self->_titleLabel setTextColor:v12];

  [(_UIContentUnavailableView *)self _labelAlpha];
  [(UIView *)self->_titleLabel setAlpha:?];
  if (self->_style == 1)
  {
    v14 = self->_titleLabel;
    if ([(_UIContentUnavailableView *)self _hasVibrantText])
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    [(UIView *)v14 _setDrawsAsBackdropOverlayWithBlendMode:v15];
    if ([(_UIContentUnavailableView *)self _hasVibrantText])
    {
      v16 = [(_UIContentUnavailableView *)self _vibrantBaseColor];
      [(UIView *)self->_titleLabel setTintColor:v16];
    }

    else
    {
      [(UIView *)self->_titleLabel setTintColor:0];
    }
  }

  v17 = [(NSString *)self->_message length];
  messageLabel = self->_messageLabel;
  if (v17)
  {
    if (!messageLabel)
    {
      v19 = [UILabel alloc];
      [(UIView *)self->_scrollView bounds];
      v20 = [(UILabel *)v19 initWithFrame:0.0, 0.0, CGRectGetWidth(v61), 20.0];
      v21 = self->_messageLabel;
      self->_messageLabel = v20;

      LODWORD(v22) = 1148846080;
      v4 = 1;
      [(UIView *)self->_messageLabel setContentCompressionResistancePriority:1 forAxis:v22];
      [(UILabel *)self->_messageLabel setTextAlignment:1];
      [(UIView *)self->_messageLabel setOpaque:0];
      v23 = +[UIColor clearColor];
      [(UIView *)self->_messageLabel setBackgroundColor:v23];

      v24 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
      [(UILabel *)self->_messageLabel setFont:v24];

      [(UILabel *)self->_messageLabel setNumberOfLines:0];
      LODWORD(v25) = 1051931443;
      [(UILabel *)self->_messageLabel _setHyphenationFactor:v25];
      [(UIView *)self->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_containerView addSubview:self->_messageLabel];
      messageLabel = self->_messageLabel;
    }

    [(UILabel *)messageLabel setText:self->_message];
    if ([(_UIContentUnavailableView *)self _hasVibrantText]&& self->_style == 1)
    {
      v26 = [(_UIContentUnavailableView *)self _vibrantBaseColor];
    }

    else
    {
      v26 = [(_UIContentUnavailableView *)self _flatTextColor];
    }

    v27 = v26;
    [(UILabel *)self->_messageLabel setTextColor:v26];

    [(_UIContentUnavailableView *)self _labelAlpha];
    [(UIView *)self->_messageLabel setAlpha:?];
    if (self->_style == 1)
    {
      v28 = self->_messageLabel;
      if ([(_UIContentUnavailableView *)self _hasVibrantText])
      {
        v29 = 3;
      }

      else
      {
        v29 = 0;
      }

      [(UIView *)v28 _setDrawsAsBackdropOverlayWithBlendMode:v29];
      if ([(_UIContentUnavailableView *)self _hasVibrantText])
      {
        v30 = [(_UIContentUnavailableView *)self _vibrantBaseColor];
        [(UIView *)self->_messageLabel setTintColor:v30];
      }

      else
      {
        [(UIView *)self->_messageLabel setTintColor:0];
      }
    }
  }

  else if (messageLabel)
  {
    [(UIView *)messageLabel removeFromSuperview];
    v31 = self->_messageLabel;
    self->_messageLabel = 0;

    v4 = 1;
  }

  v32 = [(NSString *)self->_buttonTitle length];
  actionButton = self->_actionButton;
  if (v32)
  {
    if (!actionButton)
    {
      v4 = 1;
      v34 = [UIButton buttonWithType:1];
      v35 = self->_actionButton;
      self->_actionButton = v34;

      [(UIControl *)self->_actionButton addTarget:self action:sel__actionButtonPressed_ forControlEvents:0x2000];
      [(UIButton *)self->_actionButton setFrame:0.0, 0.0, 124.0, 29.0];
      v36 = [(_UIContentUnavailableView *)self _buttonFont];
      v37 = [(UIButton *)self->_actionButton titleLabel];
      [v37 setFont:v36];

      v38 = [(UIButton *)self->_actionButton titleLabel];
      [v38 setNumberOfLines:0];

      v39 = [(UIButton *)self->_actionButton titleLabel];
      LODWORD(v40) = 1051931443;
      [v39 _setHyphenationFactor:v40];

      v41 = [(UIButton *)self->_actionButton titleLabel];
      [v41 setTextAlignment:1];

      [(UIView *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)self->_actionButton setContentHorizontalAlignment:0];
      [(UIView *)self->_containerView addSubview:self->_actionButton];
      actionButton = self->_actionButton;
    }

    [(UIButton *)actionButton setTitle:self->_buttonTitle forState:0];
    v42 = self->_actionButton;
    v43 = [(_UIContentUnavailableView *)self _buttonBackgroundImageForStyle:self->_style controlState:0];
    [(UIButton *)v42 setBackgroundImage:v43 forState:0];

    [(_UIContentUnavailableView *)self _buttonAlpha];
    [(UIView *)self->_actionButton setAlpha:?];
    v44 = [(_UIContentUnavailableView *)self _flatTextColor];
    v45 = +[UIColor blackColor];
    style = self->_style;
    if (style)
    {
      if (style == 1)
      {
        v47 = [(_UIContentUnavailableView *)self _hasVibrantButton];
        v48 = self->_actionButton;
        if (v47)
        {
          [(UIView *)v48 _setDrawsAsBackdropOverlayWithBlendMode:3];
          v49 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D98]];
          v50 = [(UIButton *)self->_actionButton titleLabel];
          v51 = [v50 layer];
          [v51 setCompositingFilter:v49];

          v52 = [(_UIContentUnavailableView *)self _vibrantBaseColor];
          [(UIButton *)self->_actionButton setTintColor:v52];

          v53 = [(_UIContentUnavailableView *)self _vibrantBaseColor];

          [(UIButton *)self->_actionButton setBackgroundImage:0 forState:1];
        }

        else
        {
          [(UIView *)v48 _setDrawsAsBackdropOverlayWithBlendMode:0];
          v55 = [(UIButton *)self->_actionButton titleLabel];
          v56 = [v55 layer];
          [v56 setCompositingFilter:0];

          [(UIButton *)self->_actionButton setTintColor:0];
          v53 = +[UIColor whiteColor];

          v57 = self->_actionButton;
          v58 = [(_UIContentUnavailableView *)self _buttonBackgroundImageForStyle:self->_style controlState:1];
          [(UIButton *)v57 setBackgroundImage:v58 forState:1];
        }

        v44 = v53;
      }
    }

    else
    {
      [(UIButton *)self->_actionButton setBackgroundImage:0 forState:1];
    }

    [(UIButton *)self->_actionButton setTitleColor:v44 forState:0];
    [(UIButton *)self->_actionButton setTitleColor:v45 forState:8];

LABEL_43:
    if (!v4 && self->_containerViewContraints)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!actionButton)
  {
    goto LABEL_43;
  }

  [(UIView *)actionButton removeFromSuperview];
  v54 = self->_actionButton;
  self->_actionButton = 0;

LABEL_45:

  [(_UIContentUnavailableView *)self _rebuildConstraints];
}

- (double)_labelAlpha
{
  style = self->_style;
  if (style == 1)
  {
    v4 = [(_UIContentUnavailableView *)self _hasVibrantText];
    result = 1.0;
    if (v4)
    {
      return result;
    }

    style = self->_style;
  }

  return dbl_18A683B40[style == 0];
}

- (void)_rebuildConstraints
{
  containerViewContraints = self->_containerViewContraints;
  if (!containerViewContraints)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_containerViewContraints;
    self->_containerViewContraints = v4;

    containerViewContraints = self->_containerViewContraints;
  }

  [MEMORY[0x1E69977A0] deactivateConstraints:containerViewContraints];
  [(NSMutableArray *)self->_containerViewContraints removeAllObjects];
  titleToMessageConstraint = self->titleToMessageConstraint;
  self->titleToMessageConstraint = 0;

  messageToButtonConstraint = self->messageToButtonConstraint;
  self->messageToButtonConstraint = 0;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48___UIContentUnavailableView__rebuildConstraints__block_invoke;
  aBlock[3] = &unk_1E712B978;
  aBlock[4] = self;
  v73 = _Block_copy(aBlock);
  v8 = [MEMORY[0x1E69977A0] constraintWithItem:self->_titleLabel attribute:3 relatedBy:0 toItem:self->_containerView attribute:3 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)self->_containerViewContraints addObject:v8];
  v9 = [(UIView *)self traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

  messageLabel = self->_messageLabel;
  if (messageLabel || (messageLabel = self->_actionButton) != 0)
  {
    v13 = messageLabel;
    [(_UIContentUnavailableView *)self _labelVerticalSpacing];
    v15 = v14;
    if (!self->_messageLabel)
    {
      [(_UIContentUnavailableView *)self _buttonVerticalSpacing];
      v15 = v15 + v16;
    }

    if (IsAccessibilityCategory)
    {
      if (self->_messageLabel)
      {
        v17 = 12;
      }

      else
      {
        v17 = 3;
      }
    }

    else
    {
      v17 = 12;
    }

    v18 = [MEMORY[0x1E69977A0] constraintWithItem:v13 attribute:v17 relatedBy:0 toItem:self->_titleLabel attribute:11 multiplier:1.0 constant:v15];

    objc_storeStrong(&self->titleToMessageConstraint, v18);
    if (self->_messageLabel)
    {
      v19 = @"UIContentUnavailable-title-to-message-spacing";
    }

    else
    {
      v19 = @"UIContentUnavailable-title-to-button-spacing";
    }

    [(NSLayoutConstraint *)self->titleToMessageConstraint setIdentifier:v19];
    [(NSMutableArray *)self->_containerViewContraints addObject:v18];
    v20 = self->_messageLabel;
    if (v20 && (actionButton = self->_actionButton) != 0)
    {
      if (IsAccessibilityCategory)
      {
        v22 = 3;
      }

      else
      {
        v22 = 12;
      }

      v23 = MEMORY[0x1E69977A0];
      [(_UIContentUnavailableView *)self _buttonVerticalSpacing];
      v8 = [v23 constraintWithItem:actionButton attribute:v22 relatedBy:0 toItem:v20 attribute:11 multiplier:1.0 constant:v24];

      objc_storeStrong(&self->messageToButtonConstraint, v8);
      [(NSLayoutConstraint *)self->messageToButtonConstraint setIdentifier:@"UIContentUnavailable-message-to-button-spacing"];
      [(NSMutableArray *)self->_containerViewContraints addObject:v8];
    }

    else
    {
      v8 = v18;
    }

    v25 = v73;
    v26 = self->_actionButton;
    if (!v26)
    {
      v26 = self->_messageLabel;
    }

    (*(v73 + 2))(v73, v26);
  }

  else
  {
    v25 = v73;
    (*(v73 + 2))(v73, self->_titleLabel);
  }

  v27 = MEMORY[0x1E69977A0];
  v28 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel_0.isa, self->_titleLabel, 0);
  v29 = [v27 constraintsWithVisualFormat:@"H:|[_titleLabel]|" options:0 metrics:0 views:v28];

  [(UIView *)self->_containerView addConstraints:v29];
  [(NSMutableArray *)self->_containerViewContraints addObjectsFromArray:v29];
  v30 = self->_messageLabel;
  if (v30)
  {
    v31 = MEMORY[0x1E69977A0];
    v32 = _NSDictionaryOfVariableBindings(&cfstr_Messagelabel.isa, v30, 0);
    v33 = [v31 constraintsWithVisualFormat:@"H:|[_messageLabel]|" options:0 metrics:0 views:v32];

    [(UIView *)self->_containerView addConstraints:v33];
    [(NSMutableArray *)self->_containerViewContraints addObjectsFromArray:v33];
    v29 = v33;
  }

  v34 = self->_actionButton;
  if (v34)
  {
    v35 = self->_containerViewContraints;
    v36 = [(UIView *)v34 centerXAnchor];
    v37 = [(UIView *)self->_containerView centerXAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [(NSMutableArray *)v35 addObject:v38];

    v39 = self->_containerViewContraints;
    v40 = [(UIView *)self->_actionButton leadingAnchor];
    v41 = [(UIView *)self->_containerView leadingAnchor];
    v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41];
    [(NSMutableArray *)v39 addObject:v42];

    v43 = self->_containerViewContraints;
    v44 = [(UIView *)self->_actionButton trailingAnchor];
    v45 = [(UIView *)self->_containerView trailingAnchor];
    v46 = [v44 constraintLessThanOrEqualToAnchor:v45];
    [(NSMutableArray *)v43 addObject:v46];

    [(_UIContentUnavailableView *)self _buttonSize];
    v48 = v47;
    v50 = v49;
    v51 = self->_containerViewContraints;
    v52 = [(UIView *)self->_actionButton widthAnchor];
    v53 = [v52 constraintGreaterThanOrEqualToConstant:v48];
    [(NSMutableArray *)v51 addObject:v53];

    v54 = self->_containerViewContraints;
    v55 = [(UIView *)self->_actionButton heightAnchor];
    v56 = [v55 constraintGreaterThanOrEqualToConstant:v50];
    [(NSMutableArray *)v54 addObject:v56];

    v25 = v73;
    if ([(UIButton *)self->_actionButton behavioralStyle]!= UIBehavioralStyleMac)
    {
      [(_UIContentUnavailableView *)self _buttonContentEdgeInsets];
      v59 = v57 + v58;
      v62 = v60 + v61;
      v63 = self->_containerViewContraints;
      v64 = [(UIView *)self->_actionButton widthAnchor];
      v65 = [(UIButton *)self->_actionButton titleLabel];
      v66 = [v65 widthAnchor];
      v67 = [v64 constraintEqualToAnchor:v66 constant:v59];
      [(NSMutableArray *)v63 addObject:v67];

      v68 = self->_containerViewContraints;
      v69 = [(UIView *)self->_actionButton heightAnchor];
      v70 = [(UIButton *)self->_actionButton titleLabel];
      v71 = [v70 heightAnchor];
      v72 = [v69 constraintEqualToAnchor:v71 constant:v62];
      [(NSMutableArray *)v68 addObject:v72];

      v25 = v73;
    }
  }

  [(UIView *)self _setNeedsUpdateConstraintsNeedingLayout:0];
}

+ (_UIContentUnavailableView)allocWithZone:(_NSZone *)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS____UIContentUnavailableView;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
}

- (_UIContentUnavailableView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIContentUnavailableView.m" lineNumber:129 description:@"-[_UIContentUnavailableView initWithFrame:] will not return a usable view"];

  return 0;
}

- (_UIContentUnavailableView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5 includeBackdrop:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v99[1] = *MEMORY[0x1E69E9840];
  v14 = a4;
  if (!a5 && v6)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIContentUnavailableView.m" lineNumber:138 description:@"UIContentUnavailableStyleAutomatic does not currently support backdrops"];
  }

  v16 = +[UIDevice currentDevice];
  if ([v16 userInterfaceIdiom] == 1)
  {
    v17 = 184.0;
  }

  else
  {
    v17 = 60.0;
  }

  [(_UIContentUnavailableView *)self _labelVerticalSpacing];
  v19 = v18;
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  v20 = CGRectGetWidth(v100);
  if (v20 >= v17)
  {
    v21 = v20;
  }

  else
  {
    v21 = v17;
  }

  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = v21;
  v101.size.height = height;
  v22 = CGRectGetHeight(v101);
  if (v22 >= v19)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  v98.receiver = self;
  v98.super_class = _UIContentUnavailableView;
  v24 = [(UIView *)&v98 initWithFrame:x, y, v21, v23];
  v25 = v24;
  if (v24)
  {
    v24->_style = a5;
    v26 = [v14 copy];
    title = v25->_title;
    v25->_title = v26;

    [(UIView *)v25 setAutoresizingMask:18];
    v28 = [UIScrollView alloc];
    [(UIView *)v25 bounds];
    v29 = [(UIScrollView *)v28 initWithFrame:0.0, 0.0, CGRectGetWidth(v102), 100.0];
    scrollView = v25->_scrollView;
    v25->_scrollView = v29;

    [(UIView *)v25->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v25->_scrollView setClipsToBounds:0];
    [(UIScrollView *)v25->_scrollView _setApplyVerticalSafeAreaInsetsToNonscrollingContent:1];
    v31 = [UIView alloc];
    [(UIView *)v25 bounds];
    v32 = [(UIView *)v31 initWithFrame:0.0, 0.0, CGRectGetWidth(v103), 100.0];
    containerView = v25->_containerView;
    v25->_containerView = v32;

    [(UIView *)v25->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v25->_scrollView addSubview:v25->_containerView];
    if (v6)
    {
      v34 = [[_UIBackdropView alloc] initWithPrivateStyle:2030];
      backdrop = v25->_backdrop;
      v25->_backdrop = v34;

      [(UIView *)v25->_backdrop setUserInteractionEnabled:1];
      [(UIView *)v25 addSubview:v25->_backdrop];
      v36 = [(UIView *)v25->_backdrop topAnchor];
      v37 = [(UIView *)v25 topAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];
      [(UIView *)v25 addConstraint:v38];

      v39 = [(UIView *)v25->_backdrop leftAnchor];
      v40 = [(UIView *)v25 leftAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      [(UIView *)v25 addConstraint:v41];

      v42 = [(UIView *)v25->_backdrop bottomAnchor];
      v43 = [(UIView *)v25 bottomAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      [(UIView *)v25 addConstraint:v44];

      v45 = [(UIView *)v25->_backdrop rightAnchor];
      v46 = [(UIView *)v25 rightAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];
      [(UIView *)v25 addConstraint:v47];

      v48 = [(_UIBackdropView *)v25->_backdrop contentView];
    }

    else
    {
      v48 = v25;
    }

    v49 = v48;
    [(UIView *)v48 _setHostsLayoutEngine:1];
    [(UIView *)v49 addSubview:v25->_scrollView];
    v50 = [(UIView *)v25->_containerView topAnchor];
    v51 = [(UIView *)v25->_scrollView topAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [(UIView *)v49 addConstraint:v52];

    v53 = [(UIView *)v25->_containerView bottomAnchor];
    v54 = [(UIView *)v25->_scrollView bottomAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];
    [(UIView *)v49 addConstraint:v55];

    v56 = [(UIView *)v25->_scrollView leadingAnchor];
    v57 = [(UIView *)v25->_containerView leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];
    [(UIView *)v49 addConstraint:v58];

    v59 = [(UIView *)v25->_scrollView trailingAnchor];
    v60 = [(UIView *)v25->_containerView trailingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    [(UIView *)v49 addConstraint:v61];

    v62 = [(UIView *)v25->_containerView centerXAnchor];
    v63 = [(UIView *)v25->_scrollView centerXAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    [(UIView *)v49 addConstraint:v64];

    v65 = [(UIView *)v25->_scrollView heightAnchor];
    v66 = [(UIView *)v49 heightAnchor];
    v67 = [v65 constraintLessThanOrEqualToAnchor:v66];
    [(UIView *)v49 addConstraint:v67];

    v68 = [(UIView *)v25->_scrollView heightAnchor];
    v69 = [(UIView *)v25->_containerView heightAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:0.0];

    LODWORD(v71) = 1144750080;
    [v70 setPriority:v71];
    [(UIView *)v49 addConstraint:v70];
    v72 = [MEMORY[0x1E69977A0] constraintWithItem:v25->_scrollView attribute:9 relatedBy:0 toItem:v49 attribute:9 multiplier:1.0 constant:0.0];

    LODWORD(v73) = 1144750080;
    [v72 setPriority:v73];
    [(UIView *)v49 addConstraint:v72];
    v74 = [MEMORY[0x1E69977A0] constraintWithItem:v25->_scrollView attribute:10 relatedBy:0 toItem:v49 attribute:10 multiplier:1.0 constant:0.0];

    LODWORD(v75) = 1144750080;
    [v74 setPriority:v75];
    [(UIView *)v49 addConstraint:v74];
    v76 = +[UIDevice currentDevice];
    v77 = [v76 userInterfaceIdiom];

    v78 = MEMORY[0x1E69977A0];
    v79 = v25->_scrollView;
    if (v77 == 1)
    {
      v80 = _NSDictionaryOfVariableBindings(&cfstr_Scrollview.isa, v79, 0);
      v81 = [v78 constraintsWithVisualFormat:@"H:[_scrollView(>=124 options:<=418)]" metrics:0 views:0, v80];

      [(UIView *)v49 addConstraints:v81];
      v82 = MEMORY[0x1E69977A0];
      v83 = v25->_scrollView;
      v84 = [(UIView *)v49 safeAreaLayoutGuide];
      v85 = [v82 constraintWithItem:v83 attribute:5 relatedBy:1 toItem:v84 attribute:5 multiplier:1.0 constant:30.0];

      [(UIView *)v49 addConstraint:v85];
      v86 = MEMORY[0x1E69977A0];
      v87 = v25->_scrollView;
      v88 = [(UIView *)v49 safeAreaLayoutGuide];
      v89 = [v86 constraintWithItem:v87 attribute:6 relatedBy:-1 toItem:v88 attribute:6 multiplier:1.0 constant:-30.0];

      [(UIView *)v49 addConstraint:v89];
    }

    else
    {
      v90 = [(UIView *)v49 safeAreaLayoutGuide];
      v91 = [v78 constraintWithItem:v79 attribute:5 relatedBy:0 toItem:v90 attribute:5 multiplier:1.0 constant:29.0];

      [(UIView *)v49 addConstraint:v91];
      v92 = MEMORY[0x1E69977A0];
      v93 = v25->_scrollView;
      v94 = [(UIView *)v49 safeAreaLayoutGuide];
      v89 = [v92 constraintWithItem:v93 attribute:6 relatedBy:0 toItem:v94 attribute:6 multiplier:1.0 constant:-29.0];

      [(UIView *)v49 addConstraint:v89];
    }

    if (v25->_style == 1)
    {
      v25->_vibrantOptions = 1;
    }

    [(UIView *)v25 setNeedsLayout];
    v99[0] = objc_opt_class();
    v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:1];
    v96 = [(UIView *)v25 registerForTraitChanges:v95 withAction:sel__updateForCurrentContentSizeCategory];
  }

  return v25;
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIWindowWillRotateNotification";
  v6[1] = @"UIWindowWillAnimateRotationNotification";
  v6[2] = @"UIWindowDidRotateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIContentUnavailableView;
  [(UIView *)&v5 dealloc];
}

- (void)_updateForCurrentContentSizeCategory
{
  v3 = [(_UIContentUnavailableView *)self _titleFont];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = [(_UIContentUnavailableView *)self _messageTextStyle];
  v5 = [off_1E70ECC18 preferredFontForTextStyle:v4];
  [(UILabel *)self->_messageLabel setFont:v5];

  v6 = [(_UIContentUnavailableView *)self _buttonFont];
  v7 = [(UIButton *)self->_actionButton titleLabel];
  [v7 setFont:v6];

  if (self->_containerViewContraints)
  {

    [(_UIContentUnavailableView *)self _rebuildConstraints];
  }
}

- (CGColor)_colorForButtonForStyle:(unint64_t)a3 controlState:(unint64_t)a4
{
  if (a3 == 1)
  {
    v5 = [(_UIContentUnavailableView *)self _hasVibrantButton];
    v6 = 0.6;
    v7 = 1.0;
    if (a4)
    {
      v6 = 1.0;
    }

    if (!v5)
    {
      v7 = v6;
    }

    v8 = [UIColor colorWithWhite:0.0 alpha:v7];
    v9 = [v8 CGColor];
  }

  else
  {
    v8 = [UIColor labelColor:a3];
    v10 = [v8 colorWithAlphaComponent:1.0];
    v9 = [v10 CGColor];
  }

  return v9;
}

- (id)_buttonBackgroundImageForStyle:(unint64_t)a3 controlState:(unint64_t)a4
{
  if (qword_1ED499DA8 != -1)
  {
    dispatch_once(&qword_1ED499DA8, &__block_literal_global_716);
  }

  v7 = [(_UIContentUnavailableView *)self _colorForButtonForStyle:a3 controlState:a4];
  v8 = [[_UIContentUnavailableViewCacheKey alloc] initWithStyle:a3 color:v7];
  v9 = [_MergedGlobals_9_15 objectForKey:v8];
  if (!v9)
  {
    v10 = [[UIGraphicsImageRenderer alloc] initWithSize:11.0, 11.0];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73___UIContentUnavailableView__buttonBackgroundImageForStyle_controlState___block_invoke_2;
    v23[3] = &__block_descriptor_88_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v23[5] = 0;
    v23[6] = 0;
    v23[4] = v7;
    __asm { FMOV            V0.2D, #11.0 }

    v24 = _Q0;
    v25 = 0x4008000000000000;
    v26 = a3;
    v16 = [(UIGraphicsImageRenderer *)v10 imageWithActions:v23];
    v9 = [v16 resizableImageWithCapInsets:{5.0, 5.0, 5.0, 5.0}];

    if (a3 == 1)
    {
      v17 = [v9 imageWithRenderingMode:2];

      v9 = v17;
    }

    if (v9)
    {
      v18 = _MergedGlobals_9_15;
      [v9 size];
      v20 = v19;
      [v9 size];
      [v18 setObject:v9 forKey:v8 cost:(v20 * v21)];
    }
  }

  return v9;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  v11 = v5;
  if (!v5 || (v6 = [v5 length], v7 = v11, !v6))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIContentUnavailableView.m" lineNumber:540 description:@"Title cannot be nil or empty"];

    v7 = v11;
  }

  if (([v7 isEqualToString:self->_title] & 1) == 0)
  {
    v8 = [v11 copy];
    title = self->_title;
    self->_title = v8;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setMessage:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_message] & 1) == 0)
  {
    v4 = [v6 copy];
    message = self->_message;
    self->_message = v4;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setButtonTitle:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_buttonTitle] & 1) == 0)
  {
    v4 = [v6 copy];
    buttonTitle = self->_buttonTitle;
    self->_buttonTitle = v4;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_actionButtonPressed:(id)a3
{
  v4 = [(_UIContentUnavailableView *)self buttonAction];

  if (v4)
  {
    v5 = [(_UIContentUnavailableView *)self buttonAction];
    v5[2]();
  }
}

- (void)windowWillRotateNotification:(id)a3
{
  [(UIView *)self->_containerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_buttonTitle)
  {
    [(UIView *)self->_actionButton frame];
    MinY = CGRectGetMinY(v18);
  }

  v11 = [(UIView *)self->_containerView resizableSnapshotViewFromRect:0 afterScreenUpdates:v6 withCapInsets:v8, v10, MinY, 0.0, 0.0, 0.0, 0.0];
  fromSnapshot = self->_fromSnapshot;
  self->_fromSnapshot = v11;

  [(UIView *)self->_fromSnapshot setAutoresizingMask:63];
  [(UIView *)self->_fromSnapshot bounds];
  self->_fromSnapshotSize.width = v13;
  self->_fromSnapshotSize.height = v14;
  containerView = self->_containerView;
  v16 = self->_fromSnapshot;

  [(UIView *)containerView addSubview:v16];
}

- (void)windowWillAnimateRotateNotification:(id)a3
{
  [(UIView *)self->_containerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_buttonTitle)
  {
    [(UIView *)self->_actionButton frame];
    MinY = CGRectGetMinY(v13);
  }

  else
  {
    MinY = v4;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___UIContentUnavailableView_windowWillAnimateRotateNotification___block_invoke;
  v12[3] = &unk_1E70F3B20;
  v12[4] = self;
  *&v12[5] = v6;
  *&v12[6] = v8;
  *&v12[7] = v10;
  *&v12[8] = MinY;
  [UIView performWithoutAnimation:v12];
  [(UIView *)self->_fromSnapshot setAlpha:0.0];
  [(UIView *)self->_toSnapshot setAlpha:1.0];
  [(UIView *)self->_toSnapshot setFrame:v6, v8, v10, MinY];
}

- (void)cleanupLingeringRotationState
{
  [(_UIContentUnavailableView *)self _labelAlpha];
  [(UIView *)self->_titleLabel setAlpha:?];
  [(_UIContentUnavailableView *)self _labelAlpha];
  [(UIView *)self->_messageLabel setAlpha:?];
  [(UIView *)self->_fromSnapshot removeFromSuperview];
  fromSnapshot = self->_fromSnapshot;
  self->_fromSnapshot = 0;

  [(UIView *)self->_toSnapshot removeFromSuperview];
  toSnapshot = self->_toSnapshot;
  self->_toSnapshot = 0;
}

- (double)_buttonAlpha
{
  if (self->_style != 1)
  {
    return 0.4;
  }

  v4 = [(_UIContentUnavailableView *)self _hasVibrantButton:v2];
  result = 0.6;
  if (!v4)
  {
    return 1.0;
  }

  return result;
}

- (id)_buttonFont
{
  v2 = [(_UIContentUnavailableView *)self _buttonTextStyle];
  v3 = [off_1E70ECC18 preferredFontForTextStyle:v2];

  return v3;
}

- (CGSize)_buttonSize
{
  v2 = 124.0;
  v3 = 29.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)_buttonContentEdgeInsets
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  v5 = 0.0;
  if (IsAccessibilityCategory)
  {
    v5 = 8.0;
  }

  v6 = 16.0;
  v7 = 16.0;
  v8 = v5;
  result.right = v7;
  result.bottom = v8;
  result.left = v6;
  result.top = v5;
  return result;
}

- (double)_buttonVerticalSpacing
{
  v3 = [(_UIContentUnavailableView *)self _buttonTextStyle];
  v4 = [UIFontMetrics metricsForTextStyle:v3];
  v5 = [(UIView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);
  v8 = 35.0;
  if (IsAccessibilityCategory)
  {
    v8 = 8.0;
  }

  [v4 scaledValueForValue:v8];
  v10 = v9;

  return v10;
}

- (void)setVibrantOptions:(unint64_t)a3
{
  if (self->_vibrantOptions != a3)
  {
    self->_vibrantOptions = a3;
    [(UIView *)self setNeedsLayout];
  }
}

@end