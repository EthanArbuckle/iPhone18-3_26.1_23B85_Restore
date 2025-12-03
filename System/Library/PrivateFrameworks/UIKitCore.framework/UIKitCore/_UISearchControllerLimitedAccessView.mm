@interface _UISearchControllerLimitedAccessView
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (_UISearchControllerLimitedAccessView)initWithFrame:(CGRect)frame;
@end

@implementation _UISearchControllerLimitedAccessView

- (_UISearchControllerLimitedAccessView)initWithFrame:(CGRect)frame
{
  v56[9] = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = _UISearchControllerLimitedAccessView;
  v3 = [(UIView *)&v55 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v9;

    [(UIView *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = +[UIColor tableBackgroundColor];
    [(UIView *)v3->_backgroundView setBackgroundColor:v11];

    [(UIView *)v3 addSubview:v3->_backgroundView];
    v12 = [[UILabel alloc] initWithFrame:v5, v6, v7, v8];
    keyboardLimitedLabel = v3->_keyboardLimitedLabel;
    v3->_keyboardLimitedLabel = v12;

    [(UIView *)v3->_keyboardLimitedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [off_1E70ECC18 systemFontOfSize:28.0];
    [(UILabel *)v3->_keyboardLimitedLabel setFont:v14];

    v15 = +[UIColor labelColor];
    [(UILabel *)v3->_keyboardLimitedLabel setTextColor:v15];

    [(UILabel *)v3->_keyboardLimitedLabel setTextAlignment:1];
    [(UILabel *)v3->_keyboardLimitedLabel setNumberOfLines:0];
    [(UILabel *)v3->_keyboardLimitedLabel setLineBreakMode:0];
    v16 = _UINSLocalizedStringWithDefaultValue(@"Keyboard access is limited", @"Keyboard access is limited");
    [(UILabel *)v3->_keyboardLimitedLabel setText:v16];

    [(UIView *)v3->_keyboardLimitedLabel sizeToFit];
    [(UIView *)v3 addSubview:v3->_keyboardLimitedLabel];
    v17 = [UIButton buttonWithType:1];
    backButton = v3->_backButton;
    v3->_backButton = v17;

    [(UIView *)v3->_backButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = v3->_backButton;
    v20 = _UINSLocalizedStringWithDefaultValue(@"Back", @"Back");
    [(UIButton *)v19 setTitle:v20 forState:0];

    [(UIView *)v3->_backButton sizeToFit];
    [(UIView *)v3 addSubview:v3->_backButton];
    leftAnchor = [(UIView *)v3->_keyboardLimitedLabel leftAnchor];
    safeAreaLayoutGuide = [(UIView *)v3 safeAreaLayoutGuide];
    leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
    v51 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:5.0];
    v56[0] = v51;
    rightAnchor = [(UIView *)v3->_keyboardLimitedLabel rightAnchor];
    safeAreaLayoutGuide2 = [(UIView *)v3 safeAreaLayoutGuide];
    rightAnchor2 = [safeAreaLayoutGuide2 rightAnchor];
    v47 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-5.0];
    v56[1] = v47;
    bottomAnchor = [(UIView *)v3->_keyboardLimitedLabel bottomAnchor];
    safeAreaLayoutGuide3 = [(UIView *)v3 safeAreaLayoutGuide];
    centerYAnchor = [safeAreaLayoutGuide3 centerYAnchor];
    v43 = [bottomAnchor constraintEqualToAnchor:centerYAnchor constant:-5.0];
    v56[2] = v43;
    centerXAnchor = [(UIView *)v3->_backButton centerXAnchor];
    safeAreaLayoutGuide4 = [(UIView *)v3 safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide4 centerXAnchor];
    v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v56[3] = v39;
    topAnchor = [(UIView *)v3->_backButton topAnchor];
    safeAreaLayoutGuide5 = [(UIView *)v3 safeAreaLayoutGuide];
    centerYAnchor2 = [safeAreaLayoutGuide5 centerYAnchor];
    v35 = [topAnchor constraintEqualToAnchor:centerYAnchor2 constant:5.0];
    v56[4] = v35;
    leftAnchor3 = [(UIView *)v3->_backgroundView leftAnchor];
    leftAnchor4 = [(UIView *)v3 leftAnchor];
    v31 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v56[5] = v31;
    rightAnchor3 = [(UIView *)v3->_backgroundView rightAnchor];
    rightAnchor4 = [(UIView *)v3 rightAnchor];
    v23 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v56[6] = v23;
    topAnchor2 = [(UIView *)v3->_backgroundView topAnchor];
    topAnchor3 = [(UIView *)v3 topAnchor];
    v26 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v56[7] = v26;
    bottomAnchor2 = [(UIView *)v3->_backgroundView bottomAnchor];
    bottomAnchor3 = [(UIView *)v3 bottomAnchor];
    v29 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v56[8] = v29;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:9];

    [MEMORY[0x1E69977A0] activateConstraints:v34];
  }

  return v3;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  nextFocusedItem = [context nextFocusedItem];
  LOBYTE(self) = nextFocusedItem == self->_backButton;

  return self;
}

@end