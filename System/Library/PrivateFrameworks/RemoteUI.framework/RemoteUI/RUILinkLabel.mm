@interface RUILinkLabel
- (RUILinkLabel)initWithFrame:(CGRect)frame;
- (UIButton)linkButton;
- (void)_linkPressed;
- (void)setAction:(id)action;
- (void)setButtonConfiguration:(id)configuration;
- (void)setEnabled:(BOOL)enabled;
- (void)setFont:(id)font;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)updateConstraints;
@end

@implementation RUILinkLabel

- (RUILinkLabel)initWithFrame:(CGRect)frame
{
  v24[4] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = RUILinkLabel;
  v3 = [(RUILinkLabel *)&v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v3)
  {
    v4 = objc_opt_new();
    textLabel = v3->_textLabel;
    v3->_textLabel = v4;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v3->_textLabel setBackgroundColor:clearColor];

    [(UILabel *)v3->_textLabel setNumberOfLines:0];
    [(UILabel *)v3->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RUILinkLabel *)v3 addSubview:v3->_textLabel];
    topAnchor = [(UILabel *)v3->_textLabel topAnchor];
    topAnchor2 = [(RUILinkLabel *)v3 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[0] = v20;
    bottomAnchor = [(UILabel *)v3->_textLabel bottomAnchor];
    bottomAnchor2 = [(RUILinkLabel *)v3 bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[1] = v9;
    leadingAnchor = [(UILabel *)v3->_textLabel leadingAnchor];
    leadingAnchor2 = [(RUILinkLabel *)v3 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[2] = v12;
    trailingAnchor = [(UILabel *)v3->_textLabel trailingAnchor];
    trailingAnchor2 = [(RUILinkLabel *)v3 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    textLabelContraints = v3->_textLabelContraints;
    v3->_textLabelContraints = v16;

    linkButtonContraints = v3->_linkButtonContraints;
    v3->_linkButtonContraints = MEMORY[0x277CBEBF8];

    v3->_enabled = 1;
  }

  return v3;
}

- (void)setButtonConfiguration:(id)configuration
{
  objc_storeStrong(&self->_buttonConfiguration, configuration);
  configurationCopy = configuration;
  [(UIButton *)self->_linkButton setConfiguration:configurationCopy];
  linkButton = self->_linkButton;
  configuration = [(UIButton *)linkButton configuration];
  baseForegroundColor = [configuration baseForegroundColor];
  [(UIButton *)linkButton setTitleColor:baseForegroundColor forState:0];
}

- (void)updateConstraints
{
  v16.receiver = self;
  v16.super_class = RUILinkLabel;
  [(RUILinkLabel *)&v16 updateConstraints];
  action = self->_action;
  if (action)
  {
    linkButton = [(RUILinkLabel *)self linkButton];
  }

  else
  {
    linkButton = self->_textLabel;
  }

  v5 = linkButton;
  [(UILabel *)linkButton setNeedsLayout];
  LODWORD(v6) = 1144750080;
  [(UILabel *)self->_textLabel setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1144750080;
  [(UILabel *)self->_textLabel setContentHuggingPriority:1 forAxis:v7];
  LODWORD(v8) = 1144750080;
  [(UIButton *)self->_linkButton setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [(UIButton *)self->_linkButton setContentHuggingPriority:1 forAxis:v9];
  textLabel = self->_textLabel;
  if (action)
  {
    [(UILabel *)textLabel setHidden:1];
    [(UIButton *)self->_linkButton setHidden:0];
    [MEMORY[0x277CCAAD0] activateConstraints:self->_linkButtonContraints];
    v11 = MEMORY[0x277CCAAD0];
    v12 = 424;
  }

  else
  {
    text = [(UILabel *)textLabel text];
    v14 = [text length];

    v15 = self->_textLabel;
    if (!v14)
    {
      [(UILabel *)v15 setHidden:1];
      [(UIButton *)self->_linkButton setHidden:1];
      goto LABEL_9;
    }

    [(UILabel *)v15 setHidden:0];
    [(UIButton *)self->_linkButton setHidden:1];
    [MEMORY[0x277CCAAD0] activateConstraints:self->_textLabelContraints];
    v11 = MEMORY[0x277CCAAD0];
    v12 = 432;
  }

  [v11 deactivateConstraints:*(&self->super.super.super.isa + v12)];
LABEL_9:
}

- (void)setText:(id)text
{
  textLabel = self->_textLabel;
  textCopy = text;
  [(UILabel *)textLabel setText:textCopy];
  [(UIButton *)self->_linkButton setTitle:textCopy forState:0];

  [(RUILinkLabel *)self setNeedsUpdateConstraints];
}

- (void)setFont:(id)font
{
  textLabel = self->_textLabel;
  fontCopy = font;
  [(UILabel *)textLabel setFont:fontCopy];
  titleLabel = [(UIButton *)self->_linkButton titleLabel];
  [titleLabel setFont:fontCopy];
}

- (void)setNumberOfLines:(int64_t)lines
{
  if ([(UILabel *)self->_textLabel numberOfLines]!= lines)
  {
    [(UILabel *)self->_textLabel setNumberOfLines:lines];
    titleLabel = [(UIButton *)self->_linkButton titleLabel];
    [titleLabel setNumberOfLines:lines];
  }
}

- (void)setLineBreakMode:(int64_t)mode
{
  if ([(UILabel *)self->_textLabel lineBreakMode]!= mode)
  {
    [(UILabel *)self->_textLabel setLineBreakMode:mode];
    titleLabel = [(UIButton *)self->_linkButton titleLabel];
    [titleLabel setLineBreakMode:mode];
  }
}

- (void)setAction:(id)action
{
  if (self->_action != action)
  {
    v5 = [action copy];
    action = self->_action;
    self->_action = v5;

    linkButton = [(RUILinkLabel *)self linkButton];
    [linkButton setHidden:action == 0];

    [(UILabel *)self->_textLabel setHidden:action != 0];

    [(RUILinkLabel *)self setNeedsUpdateConstraints];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(UIButton *)self->_linkButton setEnabled:?];
  }
}

- (UIButton)linkButton
{
  v30[4] = *MEMORY[0x277D85DE8];
  linkButton = self->_linkButton;
  if (!linkButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = self->_linkButton;
    self->_linkButton = v4;

    buttonConfiguration = [(RUILinkLabel *)self buttonConfiguration];

    if (buttonConfiguration)
    {
      buttonConfiguration2 = [(RUILinkLabel *)self buttonConfiguration];
      [(UIButton *)self->_linkButton setConfiguration:buttonConfiguration2];
    }

    [(UIButton *)self->_linkButton setExclusiveTouch:1];
    [(UIButton *)self->_linkButton addTarget:self action:sel__linkPressed forControlEvents:0x2000];
    [(UIButton *)self->_linkButton setHidden:self->_action == 0];
    [(UIButton *)self->_linkButton setEnabled:self->_enabled];
    titleLabel = [(UIButton *)self->_linkButton titleLabel];
    v9 = self->_linkButton;
    text = [(UILabel *)self->_textLabel text];
    [(UIButton *)v9 setTitle:text forState:0];

    v11 = self->_linkButton;
    linkColor = [MEMORY[0x277D75348] linkColor];
    [(UIButton *)v11 setTitleColor:linkColor forState:0];

    [titleLabel setLineBreakMode:{-[UILabel lineBreakMode](self->_textLabel, "lineBreakMode")}];
    [titleLabel setNumberOfLines:{-[UILabel numberOfLines](self->_textLabel, "numberOfLines")}];
    font = [(UILabel *)self->_textLabel font];
    v29 = titleLabel;
    [titleLabel setFont:font];

    [titleLabel setTextAlignment:{-[UILabel textAlignment](self->_textLabel, "textAlignment")}];
    [(RUILinkLabel *)self addSubview:self->_linkButton];
    [(UIButton *)self->_linkButton setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(UIButton *)self->_linkButton topAnchor];
    topAnchor2 = [(RUILinkLabel *)self topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v26;
    bottomAnchor = [(UIButton *)self->_linkButton bottomAnchor];
    bottomAnchor2 = [(RUILinkLabel *)self bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[1] = v15;
    leadingAnchor = [(UIButton *)self->_linkButton leadingAnchor];
    leadingAnchor2 = [(RUILinkLabel *)self leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[2] = v18;
    trailingAnchor = [(UIButton *)self->_linkButton trailingAnchor];
    trailingAnchor2 = [(RUILinkLabel *)self trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    linkButtonContraints = self->_linkButtonContraints;
    self->_linkButtonContraints = v22;

    linkButton = self->_linkButton;
  }

  return linkButton;
}

- (void)setTextAlignment:(int64_t)alignment
{
  if ([(UILabel *)self->_textLabel textAlignment]!= alignment)
  {
    [(UILabel *)self->_textLabel setTextAlignment:alignment];
    titleLabel = [(UIButton *)self->_linkButton titleLabel];
    [titleLabel setTextAlignment:alignment];

    if (alignment <= 4)
    {
      [(UIButton *)self->_linkButton setContentHorizontalAlignment:qword_21BA91F18[alignment]];
    }

    [(RUILinkLabel *)self setNeedsLayout];
  }
}

- (void)_linkPressed
{
  action = self->_action;
  if (action)
  {
    action[2]();
  }
}

@end