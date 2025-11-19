@interface TPPillView
- (NSString)badgeText;
- (NSString)title;
- (TPPillView)initWithTitle:(id)a3 frame:(CGRect)a4 theme:(unint64_t)a5;
- (TPPillViewDelegate)delegate;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)commonInit;
- (void)handleTap:(id)a3;
- (void)loadConstraints;
- (void)setBadgeSymbolName:(id)a3;
- (void)setBadgeText:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setTheme:(unint64_t)a3;
- (void)setTitle:(id)a3;
- (void)unloadConstraints;
- (void)updateFonts;
- (void)updateTheme;
@end

@implementation TPPillView

- (TPPillView)initWithTitle:(id)a3 frame:(CGRect)a4 theme:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = TPPillView;
  v12 = [(TPControl *)&v15 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    v12->_theme = a5;
    [(UILabel *)v12->_textLabel setText:v11];
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
  v3 = [(TPPillView *)self layer];
  [v3 setCornerRadius:12.5];

  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
  gestureRecognizer = self->_gestureRecognizer;
  self->_gestureRecognizer = v4;

  [(TPPillView *)self addGestureRecognizer:self->_gestureRecognizer];
  v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  badgeImageView = self->_badgeImageView;
  self->_badgeImageView = v6;

  v8 = [MEMORY[0x1E69DC888] labelColor];
  [(UIImageView *)self->_badgeImageView setTintColor:v8];

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

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = objc_opt_respondsToSelector();
    v6 = [(TPPillView *)self gestureRecognizer];
    [v6 setEnabled:(v5 & 1) == 0];

    [(TPPillView *)self setContextMenuEnabled:v5 & 1];
    [(TPPillView *)self setContextMenuIsPrimary:v5 & 1];
  }
}

- (void)loadConstraints
{
  v23.receiver = self;
  v23.super_class = TPPillView;
  [(TPControl *)&v23 loadConstraints];
  v3 = [(TPPillView *)self stackView];
  v4 = [v3 leftAnchor];
  v5 = [(TPPillView *)self leftAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  [v6 setActive:1];
  v7 = NSStringFromSelector(sel_stackViewLeftAnchorLayoutConstraint);
  [v6 setIdentifier:v7];

  [(TPPillView *)self setStackViewLeftAnchorLayoutConstraint:v6];
  v8 = [(TPPillView *)self rightAnchor];
  v9 = [(TPPillView *)self stackView];
  v10 = [v9 rightAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];

  [v11 setActive:1];
  v12 = NSStringFromSelector(sel_stackViewRightAnchorLayoutConstraint);
  [v11 setIdentifier:v12];

  [(TPPillView *)self setStackViewRightAnchorLayoutConstraint:v11];
  v13 = [(TPPillView *)self stackView];
  v14 = [v13 topAnchor];
  v15 = [(TPPillView *)self topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  [v16 setActive:1];
  v17 = NSStringFromSelector(sel_stackViewTopAnchorLayoutConstraint);
  [v16 setIdentifier:v17];

  [(TPPillView *)self setStackViewTopAnchorLayoutConstraint:v16];
  v18 = [(TPPillView *)self stackView];
  v19 = [v18 bottomAnchor];
  v20 = [(TPPillView *)self bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  [v21 setActive:1];
  v22 = NSStringFromSelector(sel_stackViewBottomAnchorLayoutConstraint);
  [v21 setIdentifier:v22];

  [(TPPillView *)self setStackViewBottomAnchorLayoutConstraint:v21];
}

- (void)unloadConstraints
{
  v3 = [(TPPillView *)self stackViewLeftAnchorLayoutConstraint];
  [v3 setActive:0];

  [(TPPillView *)self setStackViewLeftAnchorLayoutConstraint:0];
  v4 = [(TPPillView *)self stackViewRightAnchorLayoutConstraint];
  [v4 setActive:0];

  [(TPPillView *)self setStackViewRightAnchorLayoutConstraint:0];
  v5 = [(TPPillView *)self stackViewTopAnchorLayoutConstraint];
  [v5 setActive:0];

  [(TPPillView *)self setStackViewTopAnchorLayoutConstraint:0];
  v6 = [(TPPillView *)self stackViewBottomAnchorLayoutConstraint];
  [v6 setActive:0];

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
  v4 = [(TPPillView *)self textLabel];
  [v4 setFont:v3];
}

- (void)updateTheme
{
  v3 = [(TPPillView *)self theme];
  if (v3 <= 1)
  {
    if (!v3)
    {
      v20 = [MEMORY[0x1E69DC888] _tp_defaultPillColor];
      [(TPPillView *)self setBackgroundColor:v20];

      v21 = [(TPPillView *)self badgeView];
      [v21 setTheme:0];

      v22 = [MEMORY[0x1E69DC888] dynamicLabelColor];
LABEL_15:
      v24 = v22;
      v19 = [(TPPillView *)self textLabel];
      [v19 setTextColor:v24];
      goto LABEL_16;
    }

    if (v3 != 1)
    {
      return;
    }

    v4 = [MEMORY[0x1E69DC888] _tp_bluePillColor];
    [(TPPillView *)self setBackgroundColor:v4];

    v5 = [(TPPillView *)self badgeView];
    v6 = v5;
    v7 = 3;
LABEL_14:
    [v5 setTheme:v7];

    v22 = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_15;
  }

  if (v3 == 2)
  {
    v23 = [MEMORY[0x1E69DC888] _tp_greenPillColor];
    [(TPPillView *)self setBackgroundColor:v23];

    v5 = [(TPPillView *)self badgeView];
    v6 = v5;
    v7 = 4;
    goto LABEL_14;
  }

  if (v3 != 3)
  {
    return;
  }

  v8 = [MEMORY[0x1E69DC888] clearColor];
  [(TPPillView *)self setBackgroundColor:v8];

  v9 = [(TPPillView *)self badgeView];
  [v9 setTheme:8];

  v10 = [(TPPillView *)self badgeView];
  [v10 setSizeCategory:3];

  v11 = [(TPPillView *)self textLabel];
  [v11 setHidden:1];

  v12 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.up.chevron.down"];
  v24 = [v12 initWithImage:v13];

  v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v24 setTintColor:v14];

  v15 = [(TPPillView *)self stackView];
  [v15 insertArrangedSubview:v24 atIndex:1];

  v16 = [(TPPillView *)self stackView];
  v17 = [(TPPillView *)self badgeView];
  [v16 setCustomSpacing:v17 afterView:2.0];

  if (+[TPUIConfiguration screenSize])
  {
    v18 = 10.0;
  }

  else
  {
    v18 = 5.0;
  }

  v19 = [(TPPillView *)self stackView];
  [v19 setLayoutMargins:{v18, v18, v18, v18}];
LABEL_16:
}

- (void)handleTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(TPPillView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(TPPillView *)self delegate];
      [v6 pillViewWasTapped:self];
    }
  }
}

- (NSString)badgeText
{
  v2 = [(TPPillView *)self badgeView];
  v3 = [v2 title];

  return v3;
}

- (void)setBadgeText:(id)a3
{
  v9 = a3;
  v4 = [(TPPillView *)self badgeView];
  v5 = [v4 title];

  if (v5 != v9)
  {
    v6 = [(TPPillView *)self badgeView];
    [v6 setTitle:v9];
  }

  v7 = [v9 length] == 0;
  v8 = [(TPPillView *)self badgeView];
  [v8 setHidden:v7];
}

- (void)setBadgeSymbolName:(id)a3
{
  v10 = a3;
  if (self->_badgeSymbolName != v10)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD28] scale:1];
    v6 = [v4 systemImageNamed:v10 withConfiguration:v5];
    v7 = [(TPPillView *)self badgeImageView];
    [v7 setImage:v6];
  }

  v8 = [(NSString *)v10 length]== 0;
  v9 = [(TPPillView *)self badgeImageView];
  [v9 setHidden:v8];
}

- (void)setTheme:(unint64_t)a3
{
  if (self->_theme != a3)
  {
    self->_theme = a3;
    [(TPPillView *)self updateTheme];
  }
}

- (NSString)title
{
  v2 = [(TPPillView *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v9 = a3;
  v4 = [(TPPillView *)self textLabel];
  v5 = [v4 text];
  v6 = [v5 isEqualToString:v9];

  if ((v6 & 1) == 0)
  {
    v7 = [(TPPillView *)self textLabel];
    [v7 setText:v9];

    v8 = [(TPPillView *)self textLabel];
    [v8 sizeToFit];
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
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