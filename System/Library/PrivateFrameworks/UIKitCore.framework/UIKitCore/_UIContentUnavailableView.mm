@interface _UIContentUnavailableView
+ (_UIContentUnavailableView)allocWithZone:(_NSZone *)zone;
- (CGColor)_colorForButtonForStyle:(unint64_t)style controlState:(unint64_t)state;
- (CGSize)_buttonSize;
- (UIEdgeInsets)_buttonContentEdgeInsets;
- (_UIContentUnavailableView)initWithFrame:(CGRect)frame;
- (_UIContentUnavailableView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style includeBackdrop:(BOOL)backdrop;
- (double)_buttonAlpha;
- (double)_buttonVerticalSpacing;
- (double)_labelAlpha;
- (double)_labelVerticalSpacing;
- (id)_buttonBackgroundImageForStyle:(unint64_t)style controlState:(unint64_t)state;
- (id)_buttonFont;
- (void)_actionButtonPressed:(id)pressed;
- (void)_rebuildConstraints;
- (void)_updateForCurrentContentSizeCategory;
- (void)_updateViewHierarchy;
- (void)cleanupLingeringRotationState;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setButtonTitle:(id)title;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
- (void)setVibrantOptions:(unint64_t)options;
- (void)updateConstraints;
- (void)windowWillAnimateRotateNotification:(id)notification;
- (void)windowWillRotateNotification:(id)notification;
@end

@implementation _UIContentUnavailableView

- (double)_labelVerticalSpacing
{
  _messageTextStyle = [(_UIContentUnavailableView *)self _messageTextStyle];
  v3 = [UIFontMetrics metricsForTextStyle:_messageTextStyle];
  [v3 scaledValueForValue:35.0];
  v5 = v4;

  return v5;
}

- (void)didMoveToWindow
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIWindowWillRotateNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIWindowWillAnimateRotationNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIWindowDidRotateNotification" object:0];
    window = [(UIView *)self window];

    if (window)
    {
      window2 = [(UIView *)self window];
      [defaultCenter addObserver:self selector:sel_windowWillRotateNotification_ name:@"UIWindowWillRotateNotification" object:window2];

      window3 = [(UIView *)self window];
      [defaultCenter addObserver:self selector:sel_windowWillAnimateRotateNotification_ name:@"UIWindowWillAnimateRotationNotification" object:window3];

      window4 = [(UIView *)self window];
      [defaultCenter addObserver:self selector:sel_windowDidRotateNotification_ name:@"UIWindowDidRotateNotification" object:window4];
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
    traitCollection = [(UIView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
    _titleFont = [(_UIContentUnavailableView *)self _titleFont];
    [(UILabel *)self->_titleLabel setFont:_titleFont];

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
    _vibrantBaseColor = [(_UIContentUnavailableView *)self _vibrantBaseColor];
  }

  else
  {
    _vibrantBaseColor = [(_UIContentUnavailableView *)self _flatTextColor];
  }

  v13 = _vibrantBaseColor;
  [(UILabel *)self->_titleLabel setTextColor:_vibrantBaseColor];

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
      _vibrantBaseColor2 = [(_UIContentUnavailableView *)self _vibrantBaseColor];
      [(UIView *)self->_titleLabel setTintColor:_vibrantBaseColor2];
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
      _vibrantBaseColor3 = [(_UIContentUnavailableView *)self _vibrantBaseColor];
    }

    else
    {
      _vibrantBaseColor3 = [(_UIContentUnavailableView *)self _flatTextColor];
    }

    v27 = _vibrantBaseColor3;
    [(UILabel *)self->_messageLabel setTextColor:_vibrantBaseColor3];

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
        _vibrantBaseColor4 = [(_UIContentUnavailableView *)self _vibrantBaseColor];
        [(UIView *)self->_messageLabel setTintColor:_vibrantBaseColor4];
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
      _buttonFont = [(_UIContentUnavailableView *)self _buttonFont];
      titleLabel = [(UIButton *)self->_actionButton titleLabel];
      [titleLabel setFont:_buttonFont];

      titleLabel2 = [(UIButton *)self->_actionButton titleLabel];
      [titleLabel2 setNumberOfLines:0];

      titleLabel3 = [(UIButton *)self->_actionButton titleLabel];
      LODWORD(v40) = 1051931443;
      [titleLabel3 _setHyphenationFactor:v40];

      titleLabel4 = [(UIButton *)self->_actionButton titleLabel];
      [titleLabel4 setTextAlignment:1];

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
    _flatTextColor = [(_UIContentUnavailableView *)self _flatTextColor];
    v45 = +[UIColor blackColor];
    style = self->_style;
    if (style)
    {
      if (style == 1)
      {
        _hasVibrantButton = [(_UIContentUnavailableView *)self _hasVibrantButton];
        v48 = self->_actionButton;
        if (_hasVibrantButton)
        {
          [(UIView *)v48 _setDrawsAsBackdropOverlayWithBlendMode:3];
          v49 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D98]];
          titleLabel5 = [(UIButton *)self->_actionButton titleLabel];
          layer = [titleLabel5 layer];
          [layer setCompositingFilter:v49];

          _vibrantBaseColor5 = [(_UIContentUnavailableView *)self _vibrantBaseColor];
          [(UIButton *)self->_actionButton setTintColor:_vibrantBaseColor5];

          _vibrantBaseColor6 = [(_UIContentUnavailableView *)self _vibrantBaseColor];

          [(UIButton *)self->_actionButton setBackgroundImage:0 forState:1];
        }

        else
        {
          [(UIView *)v48 _setDrawsAsBackdropOverlayWithBlendMode:0];
          titleLabel6 = [(UIButton *)self->_actionButton titleLabel];
          layer2 = [titleLabel6 layer];
          [layer2 setCompositingFilter:0];

          [(UIButton *)self->_actionButton setTintColor:0];
          _vibrantBaseColor6 = +[UIColor whiteColor];

          v57 = self->_actionButton;
          v58 = [(_UIContentUnavailableView *)self _buttonBackgroundImageForStyle:self->_style controlState:1];
          [(UIButton *)v57 setBackgroundImage:v58 forState:1];
        }

        _flatTextColor = _vibrantBaseColor6;
      }
    }

    else
    {
      [(UIButton *)self->_actionButton setBackgroundImage:0 forState:1];
    }

    [(UIButton *)self->_actionButton setTitleColor:_flatTextColor forState:0];
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
    _hasVibrantText = [(_UIContentUnavailableView *)self _hasVibrantText];
    result = 1.0;
    if (_hasVibrantText)
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
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
    centerXAnchor = [(UIView *)v34 centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_containerView centerXAnchor];
    v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(NSMutableArray *)v35 addObject:v38];

    v39 = self->_containerViewContraints;
    leadingAnchor = [(UIView *)self->_actionButton leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_containerView leadingAnchor];
    v42 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    [(NSMutableArray *)v39 addObject:v42];

    v43 = self->_containerViewContraints;
    trailingAnchor = [(UIView *)self->_actionButton trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_containerView trailingAnchor];
    v46 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [(NSMutableArray *)v43 addObject:v46];

    [(_UIContentUnavailableView *)self _buttonSize];
    v48 = v47;
    v50 = v49;
    v51 = self->_containerViewContraints;
    widthAnchor = [(UIView *)self->_actionButton widthAnchor];
    v53 = [widthAnchor constraintGreaterThanOrEqualToConstant:v48];
    [(NSMutableArray *)v51 addObject:v53];

    v54 = self->_containerViewContraints;
    heightAnchor = [(UIView *)self->_actionButton heightAnchor];
    v56 = [heightAnchor constraintGreaterThanOrEqualToConstant:v50];
    [(NSMutableArray *)v54 addObject:v56];

    v25 = v73;
    if ([(UIButton *)self->_actionButton behavioralStyle]!= UIBehavioralStyleMac)
    {
      [(_UIContentUnavailableView *)self _buttonContentEdgeInsets];
      v59 = v57 + v58;
      v62 = v60 + v61;
      v63 = self->_containerViewContraints;
      widthAnchor2 = [(UIView *)self->_actionButton widthAnchor];
      titleLabel = [(UIButton *)self->_actionButton titleLabel];
      widthAnchor3 = [titleLabel widthAnchor];
      v67 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 constant:v59];
      [(NSMutableArray *)v63 addObject:v67];

      v68 = self->_containerViewContraints;
      heightAnchor2 = [(UIView *)self->_actionButton heightAnchor];
      titleLabel2 = [(UIButton *)self->_actionButton titleLabel];
      heightAnchor3 = [titleLabel2 heightAnchor];
      v72 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 constant:v62];
      [(NSMutableArray *)v68 addObject:v72];

      v25 = v73;
    }
  }

  [(UIView *)self _setNeedsUpdateConstraintsNeedingLayout:0];
}

+ (_UIContentUnavailableView)allocWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS____UIContentUnavailableView;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
}

- (_UIContentUnavailableView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentUnavailableView.m" lineNumber:129 description:@"-[_UIContentUnavailableView initWithFrame:] will not return a usable view"];

  return 0;
}

- (_UIContentUnavailableView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style includeBackdrop:(BOOL)backdrop
{
  backdropCopy = backdrop;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v99[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (!style && backdropCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentUnavailableView.m" lineNumber:138 description:@"UIContentUnavailableStyleAutomatic does not currently support backdrops"];
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
    v24->_style = style;
    v26 = [titleCopy copy];
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
    if (backdropCopy)
    {
      v34 = [[_UIBackdropView alloc] initWithPrivateStyle:2030];
      backdrop = v25->_backdrop;
      v25->_backdrop = v34;

      [(UIView *)v25->_backdrop setUserInteractionEnabled:1];
      [(UIView *)v25 addSubview:v25->_backdrop];
      topAnchor = [(UIView *)v25->_backdrop topAnchor];
      topAnchor2 = [(UIView *)v25 topAnchor];
      v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [(UIView *)v25 addConstraint:v38];

      leftAnchor = [(UIView *)v25->_backdrop leftAnchor];
      leftAnchor2 = [(UIView *)v25 leftAnchor];
      v41 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      [(UIView *)v25 addConstraint:v41];

      bottomAnchor = [(UIView *)v25->_backdrop bottomAnchor];
      bottomAnchor2 = [(UIView *)v25 bottomAnchor];
      v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [(UIView *)v25 addConstraint:v44];

      rightAnchor = [(UIView *)v25->_backdrop rightAnchor];
      rightAnchor2 = [(UIView *)v25 rightAnchor];
      v47 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      [(UIView *)v25 addConstraint:v47];

      contentView = [(_UIBackdropView *)v25->_backdrop contentView];
    }

    else
    {
      contentView = v25;
    }

    v49 = contentView;
    [(UIView *)contentView _setHostsLayoutEngine:1];
    [(UIView *)v49 addSubview:v25->_scrollView];
    topAnchor3 = [(UIView *)v25->_containerView topAnchor];
    topAnchor4 = [(UIView *)v25->_scrollView topAnchor];
    v52 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [(UIView *)v49 addConstraint:v52];

    bottomAnchor3 = [(UIView *)v25->_containerView bottomAnchor];
    bottomAnchor4 = [(UIView *)v25->_scrollView bottomAnchor];
    v55 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [(UIView *)v49 addConstraint:v55];

    leadingAnchor = [(UIView *)v25->_scrollView leadingAnchor];
    leadingAnchor2 = [(UIView *)v25->_containerView leadingAnchor];
    v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(UIView *)v49 addConstraint:v58];

    trailingAnchor = [(UIView *)v25->_scrollView trailingAnchor];
    trailingAnchor2 = [(UIView *)v25->_containerView trailingAnchor];
    v61 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(UIView *)v49 addConstraint:v61];

    centerXAnchor = [(UIView *)v25->_containerView centerXAnchor];
    centerXAnchor2 = [(UIView *)v25->_scrollView centerXAnchor];
    v64 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(UIView *)v49 addConstraint:v64];

    heightAnchor = [(UIView *)v25->_scrollView heightAnchor];
    heightAnchor2 = [(UIView *)v49 heightAnchor];
    v67 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    [(UIView *)v49 addConstraint:v67];

    heightAnchor3 = [(UIView *)v25->_scrollView heightAnchor];
    heightAnchor4 = [(UIView *)v25->_containerView heightAnchor];
    v70 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 constant:0.0];

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
    userInterfaceIdiom = [v76 userInterfaceIdiom];

    v78 = MEMORY[0x1E69977A0];
    v79 = v25->_scrollView;
    if (userInterfaceIdiom == 1)
    {
      v80 = _NSDictionaryOfVariableBindings(&cfstr_Scrollview.isa, v79, 0);
      v81 = [v78 constraintsWithVisualFormat:@"H:[_scrollView(>=124 options:<=418)]" metrics:0 views:0, v80];

      [(UIView *)v49 addConstraints:v81];
      v82 = MEMORY[0x1E69977A0];
      v83 = v25->_scrollView;
      safeAreaLayoutGuide = [(UIView *)v49 safeAreaLayoutGuide];
      v85 = [v82 constraintWithItem:v83 attribute:5 relatedBy:1 toItem:safeAreaLayoutGuide attribute:5 multiplier:1.0 constant:30.0];

      [(UIView *)v49 addConstraint:v85];
      v86 = MEMORY[0x1E69977A0];
      v87 = v25->_scrollView;
      safeAreaLayoutGuide2 = [(UIView *)v49 safeAreaLayoutGuide];
      v89 = [v86 constraintWithItem:v87 attribute:6 relatedBy:-1 toItem:safeAreaLayoutGuide2 attribute:6 multiplier:1.0 constant:-30.0];

      [(UIView *)v49 addConstraint:v89];
    }

    else
    {
      safeAreaLayoutGuide3 = [(UIView *)v49 safeAreaLayoutGuide];
      v91 = [v78 constraintWithItem:v79 attribute:5 relatedBy:0 toItem:safeAreaLayoutGuide3 attribute:5 multiplier:1.0 constant:29.0];

      [(UIView *)v49 addConstraint:v91];
      v92 = MEMORY[0x1E69977A0];
      v93 = v25->_scrollView;
      safeAreaLayoutGuide4 = [(UIView *)v49 safeAreaLayoutGuide];
      v89 = [v92 constraintWithItem:v93 attribute:6 relatedBy:0 toItem:safeAreaLayoutGuide4 attribute:6 multiplier:1.0 constant:-29.0];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIWindowWillRotateNotification";
  v6[1] = @"UIWindowWillAnimateRotationNotification";
  v6[2] = @"UIWindowDidRotateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIContentUnavailableView;
  [(UIView *)&v5 dealloc];
}

- (void)_updateForCurrentContentSizeCategory
{
  _titleFont = [(_UIContentUnavailableView *)self _titleFont];
  [(UILabel *)self->_titleLabel setFont:_titleFont];

  _messageTextStyle = [(_UIContentUnavailableView *)self _messageTextStyle];
  v5 = [off_1E70ECC18 preferredFontForTextStyle:_messageTextStyle];
  [(UILabel *)self->_messageLabel setFont:v5];

  _buttonFont = [(_UIContentUnavailableView *)self _buttonFont];
  titleLabel = [(UIButton *)self->_actionButton titleLabel];
  [titleLabel setFont:_buttonFont];

  if (self->_containerViewContraints)
  {

    [(_UIContentUnavailableView *)self _rebuildConstraints];
  }
}

- (CGColor)_colorForButtonForStyle:(unint64_t)style controlState:(unint64_t)state
{
  if (style == 1)
  {
    _hasVibrantButton = [(_UIContentUnavailableView *)self _hasVibrantButton];
    v6 = 0.6;
    v7 = 1.0;
    if (state)
    {
      v6 = 1.0;
    }

    if (!_hasVibrantButton)
    {
      v7 = v6;
    }

    v8 = [UIColor colorWithWhite:0.0 alpha:v7];
    cGColor = [v8 CGColor];
  }

  else
  {
    v8 = [UIColor labelColor:style];
    v10 = [v8 colorWithAlphaComponent:1.0];
    cGColor = [v10 CGColor];
  }

  return cGColor;
}

- (id)_buttonBackgroundImageForStyle:(unint64_t)style controlState:(unint64_t)state
{
  if (qword_1ED499DA8 != -1)
  {
    dispatch_once(&qword_1ED499DA8, &__block_literal_global_716);
  }

  v7 = [(_UIContentUnavailableView *)self _colorForButtonForStyle:style controlState:state];
  v8 = [[_UIContentUnavailableViewCacheKey alloc] initWithStyle:style color:v7];
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
    styleCopy = style;
    v16 = [(UIGraphicsImageRenderer *)v10 imageWithActions:v23];
    v9 = [v16 resizableImageWithCapInsets:{5.0, 5.0, 5.0, 5.0}];

    if (style == 1)
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  v11 = titleCopy;
  if (!titleCopy || (v6 = [titleCopy length], v7 = v11, !v6))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentUnavailableView.m" lineNumber:540 description:@"Title cannot be nil or empty"];

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

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (([messageCopy isEqualToString:self->_message] & 1) == 0)
  {
    v4 = [messageCopy copy];
    message = self->_message;
    self->_message = v4;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqualToString:self->_buttonTitle] & 1) == 0)
  {
    v4 = [titleCopy copy];
    buttonTitle = self->_buttonTitle;
    self->_buttonTitle = v4;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_actionButtonPressed:(id)pressed
{
  buttonAction = [(_UIContentUnavailableView *)self buttonAction];

  if (buttonAction)
  {
    buttonAction2 = [(_UIContentUnavailableView *)self buttonAction];
    buttonAction2[2]();
  }
}

- (void)windowWillRotateNotification:(id)notification
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

- (void)windowWillAnimateRotateNotification:(id)notification
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
  _buttonTextStyle = [(_UIContentUnavailableView *)self _buttonTextStyle];
  v3 = [off_1E70ECC18 preferredFontForTextStyle:_buttonTextStyle];

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
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
  _buttonTextStyle = [(_UIContentUnavailableView *)self _buttonTextStyle];
  v4 = [UIFontMetrics metricsForTextStyle:_buttonTextStyle];
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v8 = 35.0;
  if (IsAccessibilityCategory)
  {
    v8 = 8.0;
  }

  [v4 scaledValueForValue:v8];
  v10 = v9;

  return v10;
}

- (void)setVibrantOptions:(unint64_t)options
{
  if (self->_vibrantOptions != options)
  {
    self->_vibrantOptions = options;
    [(UIView *)self setNeedsLayout];
  }
}

@end