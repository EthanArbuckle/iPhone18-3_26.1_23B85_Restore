@interface TPPillView
- (NSString)badgeText;
- (NSString)title;
- (TPPillView)initWithTitle:(id)title frame:(CGRect)frame theme:(unint64_t)theme;
- (TPPillViewDelegate)delegate;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)commonInit;
- (void)handleTap:(id)tap;
- (void)loadConstraints;
- (void)setBadgeSymbolName:(id)name;
- (void)setBadgeText:(id)text;
- (void)setDelegate:(id)delegate;
- (void)setTheme:(unint64_t)theme;
- (void)setTitle:(id)title;
- (void)unloadConstraints;
- (void)updateFonts;
- (void)updateTheme;
@end

@implementation TPPillView

- (TPPillView)initWithTitle:(id)title frame:(CGRect)frame theme:(unint64_t)theme
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = TPPillView;
  height = [(TPControl *)&v15 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    height->_theme = theme;
    [(UILabel *)height->_textLabel setText:titleCopy];
    [(TPPillView *)v13 updateTheme];
  }

  [(TPPillView *)v13 setAccessibilityIdentifier:@"TPPillView"];

  return v13;
}

- (void)commonInit
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = TPPillView;
  [(TPControl *)&v19 commonInit];
  layer = [(TPPillView *)self layer];
  [layer setCornerRadius:12.5];

  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
  gestureRecognizer = self->_gestureRecognizer;
  self->_gestureRecognizer = v4;

  [(TPPillView *)self addGestureRecognizer:self->_gestureRecognizer];
  v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  badgeImageView = self->_badgeImageView;
  self->_badgeImageView = v6;

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UIImageView *)self->_badgeImageView setTintColor:labelColor];

  [(UIImageView *)self->_badgeImageView setHidden:1];
  v9 = [[TPBadgeView alloc] initWithTitle:&stru_1F2CA8008];
  badgeView = self->_badgeView;
  self->_badgeView = v9;

  [(TPBadgeView *)self->_badgeView setSizeCategory:1];
  v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  textLabel = self->_textLabel;
  self->_textLabel = v11;

  [(UILabel *)self->_textLabel setLineBreakMode:5];
  v13 = objc_alloc(MEMORY[0x1E69DCF90]);
  v14 = self->_badgeImageView;
  v20[0] = self->_badgeView;
  v20[1] = v14;
  v20[2] = self->_textLabel;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v16 = [v13 initWithArrangedSubviews:v15];
  stackView = self->_stackView;
  self->_stackView = v16;

  [(UIStackView *)self->_stackView setAlignment:3];
  [(UIStackView *)self->_stackView setAxis:0];
  [(UIStackView *)self->_stackView setDistribution:3];
  [(UIStackView *)self->_stackView setLayoutMargins:4.0, 13.0, 4.0, 13.0];
  [(UIStackView *)self->_stackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_stackView setSpacing:6.0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TPPillView *)self addSubview:self->_stackView];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = objc_opt_respondsToSelector();
    gestureRecognizer = [(TPPillView *)self gestureRecognizer];
    [gestureRecognizer setEnabled:(v5 & 1) == 0];

    [(TPPillView *)self setContextMenuEnabled:v5 & 1];
    [(TPPillView *)self setContextMenuIsPrimary:v5 & 1];
  }
}

- (void)loadConstraints
{
  v23.receiver = self;
  v23.super_class = TPPillView;
  [(TPControl *)&v23 loadConstraints];
  stackView = [(TPPillView *)self stackView];
  leftAnchor = [stackView leftAnchor];
  leftAnchor2 = [(TPPillView *)self leftAnchor];
  v6 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

  [v6 setActive:1];
  v7 = NSStringFromSelector(sel_stackViewLeftAnchorLayoutConstraint);
  [v6 setIdentifier:v7];

  [(TPPillView *)self setStackViewLeftAnchorLayoutConstraint:v6];
  rightAnchor = [(TPPillView *)self rightAnchor];
  stackView2 = [(TPPillView *)self stackView];
  rightAnchor2 = [stackView2 rightAnchor];
  v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

  [v11 setActive:1];
  v12 = NSStringFromSelector(sel_stackViewRightAnchorLayoutConstraint);
  [v11 setIdentifier:v12];

  [(TPPillView *)self setStackViewRightAnchorLayoutConstraint:v11];
  stackView3 = [(TPPillView *)self stackView];
  topAnchor = [stackView3 topAnchor];
  topAnchor2 = [(TPPillView *)self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];

  [v16 setActive:1];
  v17 = NSStringFromSelector(sel_stackViewTopAnchorLayoutConstraint);
  [v16 setIdentifier:v17];

  [(TPPillView *)self setStackViewTopAnchorLayoutConstraint:v16];
  stackView4 = [(TPPillView *)self stackView];
  bottomAnchor = [stackView4 bottomAnchor];
  bottomAnchor2 = [(TPPillView *)self bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  [v21 setActive:1];
  v22 = NSStringFromSelector(sel_stackViewBottomAnchorLayoutConstraint);
  [v21 setIdentifier:v22];

  [(TPPillView *)self setStackViewBottomAnchorLayoutConstraint:v21];
}

- (void)unloadConstraints
{
  stackViewLeftAnchorLayoutConstraint = [(TPPillView *)self stackViewLeftAnchorLayoutConstraint];
  [stackViewLeftAnchorLayoutConstraint setActive:0];

  [(TPPillView *)self setStackViewLeftAnchorLayoutConstraint:0];
  stackViewRightAnchorLayoutConstraint = [(TPPillView *)self stackViewRightAnchorLayoutConstraint];
  [stackViewRightAnchorLayoutConstraint setActive:0];

  [(TPPillView *)self setStackViewRightAnchorLayoutConstraint:0];
  stackViewTopAnchorLayoutConstraint = [(TPPillView *)self stackViewTopAnchorLayoutConstraint];
  [stackViewTopAnchorLayoutConstraint setActive:0];

  [(TPPillView *)self setStackViewTopAnchorLayoutConstraint:0];
  stackViewBottomAnchorLayoutConstraint = [(TPPillView *)self stackViewBottomAnchorLayoutConstraint];
  [stackViewBottomAnchorLayoutConstraint setActive:0];

  [(TPPillView *)self setStackViewBottomAnchorLayoutConstraint:0];
  v7.receiver = self;
  v7.super_class = TPPillView;
  [(TPControl *)&v7 unloadConstraints];
}

- (void)updateFonts
{
  v5.receiver = self;
  v5.super_class = TPPillView;
  [(TPControl *)&v5 updateFonts];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
  textLabel = [(TPPillView *)self textLabel];
  [textLabel setFont:v3];
}

- (void)updateTheme
{
  theme = [(TPPillView *)self theme];
  if (theme <= 1)
  {
    if (!theme)
    {
      _tp_defaultPillColor = [MEMORY[0x1E69DC888] _tp_defaultPillColor];
      [(TPPillView *)self setBackgroundColor:_tp_defaultPillColor];

      badgeView = [(TPPillView *)self badgeView];
      [badgeView setTheme:0];

      dynamicLabelColor = [MEMORY[0x1E69DC888] dynamicLabelColor];
LABEL_15:
      v24 = dynamicLabelColor;
      textLabel = [(TPPillView *)self textLabel];
      [textLabel setTextColor:v24];
      goto LABEL_16;
    }

    if (theme != 1)
    {
      return;
    }

    _tp_bluePillColor = [MEMORY[0x1E69DC888] _tp_bluePillColor];
    [(TPPillView *)self setBackgroundColor:_tp_bluePillColor];

    badgeView2 = [(TPPillView *)self badgeView];
    v6 = badgeView2;
    v7 = 3;
LABEL_14:
    [badgeView2 setTheme:v7];

    dynamicLabelColor = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_15;
  }

  if (theme == 2)
  {
    _tp_greenPillColor = [MEMORY[0x1E69DC888] _tp_greenPillColor];
    [(TPPillView *)self setBackgroundColor:_tp_greenPillColor];

    badgeView2 = [(TPPillView *)self badgeView];
    v6 = badgeView2;
    v7 = 4;
    goto LABEL_14;
  }

  if (theme != 3)
  {
    return;
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(TPPillView *)self setBackgroundColor:clearColor];

  badgeView3 = [(TPPillView *)self badgeView];
  [badgeView3 setTheme:8];

  badgeView4 = [(TPPillView *)self badgeView];
  [badgeView4 setSizeCategory:3];

  textLabel2 = [(TPPillView *)self textLabel];
  [textLabel2 setHidden:1];

  v12 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.up.chevron.down"];
  v24 = [v12 initWithImage:v13];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v24 setTintColor:secondaryLabelColor];

  stackView = [(TPPillView *)self stackView];
  [stackView insertArrangedSubview:v24 atIndex:1];

  stackView2 = [(TPPillView *)self stackView];
  badgeView5 = [(TPPillView *)self badgeView];
  [stackView2 setCustomSpacing:badgeView5 afterView:2.0];

  if (+[TPUIConfiguration screenSize])
  {
    v18 = 10.0;
  }

  else
  {
    v18 = 5.0;
  }

  textLabel = [(TPPillView *)self stackView];
  [textLabel setLayoutMargins:{v18, v18, v18, v18}];
LABEL_16:
}

- (void)handleTap:(id)tap
{
  if ([tap state] == 3)
  {
    delegate = [(TPPillView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(TPPillView *)self delegate];
      [delegate2 pillViewWasTapped:self];
    }
  }
}

- (NSString)badgeText
{
  badgeView = [(TPPillView *)self badgeView];
  title = [badgeView title];

  return title;
}

- (void)setBadgeText:(id)text
{
  textCopy = text;
  badgeView = [(TPPillView *)self badgeView];
  title = [badgeView title];

  if (title != textCopy)
  {
    badgeView2 = [(TPPillView *)self badgeView];
    [badgeView2 setTitle:textCopy];
  }

  v7 = [textCopy length] == 0;
  badgeView3 = [(TPPillView *)self badgeView];
  [badgeView3 setHidden:v7];
}

- (void)setBadgeSymbolName:(id)name
{
  nameCopy = name;
  if (self->_badgeSymbolName != nameCopy)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD28] scale:1];
    v6 = [v4 systemImageNamed:nameCopy withConfiguration:v5];
    badgeImageView = [(TPPillView *)self badgeImageView];
    [badgeImageView setImage:v6];
  }

  v8 = [(NSString *)nameCopy length]== 0;
  badgeImageView2 = [(TPPillView *)self badgeImageView];
  [badgeImageView2 setHidden:v8];
}

- (void)setTheme:(unint64_t)theme
{
  if (self->_theme != theme)
  {
    self->_theme = theme;
    [(TPPillView *)self updateTheme];
  }
}

- (NSString)title
{
  textLabel = [(TPPillView *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textLabel = [(TPPillView *)self textLabel];
  text = [textLabel text];
  v6 = [text isEqualToString:titleCopy];

  if ((v6 & 1) == 0)
  {
    textLabel2 = [(TPPillView *)self textLabel];
    [textLabel2 setText:titleCopy];

    textLabel3 = [(TPPillView *)self textLabel];
    [textLabel3 sizeToFit];
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__TPPillView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E7C0C4C8;
  v6[4] = self;
  v4 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

id __68__TPPillView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0 || ([*(a1 + 32) delegate], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "menuForPillView:", *(a1 + 32)), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2CA8008 children:MEMORY[0x1E695E0F0]];
  }

  return v5;
}

- (TPPillViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end