@interface NCCheckmarkButton
+ (id)button;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)_init;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
@end

@implementation NCCheckmarkButton

+ (id)button
{
  _init = [[NCCheckmarkButton alloc] _init];

  return _init;
}

- (id)_init
{
  v37.receiver = self;
  v37.super_class = NCCheckmarkButton;
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  v6 = [(NCCheckmarkButton *)&v37 initWithFrame:*MEMORY[0x277CBF3A0], v3, v4, v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v2, v3, v4, v5}];
    backgroundView = v6->_backgroundView;
    v6->_backgroundView = v7;

    [(UIView *)v6->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v6->_backgroundView setUserInteractionEnabled:0];
    v9 = v6->_backgroundView;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIView *)v9 setBackgroundColor:systemBlueColor];

    [(UIView *)v6->_backgroundView _setCornerRadius:10.0];
    layer = [(UIView *)v6->_backgroundView layer];
    systemGray4Color = [MEMORY[0x277D75348] systemGray4Color];
    [layer setBorderColor:{objc_msgSend(systemGray4Color, "CGColor")}];

    [(NCCheckmarkButton *)v6 addSubview:v6->_backgroundView];
    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v2, v3, v4, v5}];
    checkmarkImageView = v6->_checkmarkImageView;
    v6->_checkmarkImageView = v13;

    [(UIImageView *)v6->_checkmarkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v6->_checkmarkImageView setUserInteractionEnabled:0];
    v15 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:10.0];
    v16 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v15];
    [(UIImageView *)v6->_checkmarkImageView setImage:v16];
    [(UIImageView *)v6->_checkmarkImageView setContentMode:4];
    v17 = v6->_checkmarkImageView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIImageView *)v17 setTintColor:systemBackgroundColor];

    [(UIView *)v6->_backgroundView addSubview:v6->_checkmarkImageView];
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    heightAnchor = [(UIView *)v6->_backgroundView heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:20.0];
    [v19 addObject:v21];

    widthAnchor = [(UIView *)v6->_backgroundView widthAnchor];
    v23 = [widthAnchor constraintEqualToConstant:20.0];
    [v19 addObject:v23];

    centerXAnchor = [(UIView *)v6->_backgroundView centerXAnchor];
    centerXAnchor2 = [(NCCheckmarkButton *)v6 centerXAnchor];
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v19 addObject:v26];

    centerYAnchor = [(UIView *)v6->_backgroundView centerYAnchor];
    centerYAnchor2 = [(NCCheckmarkButton *)v6 centerYAnchor];
    v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v19 addObject:v29];

    centerXAnchor3 = [(UIImageView *)v6->_checkmarkImageView centerXAnchor];
    centerXAnchor4 = [(UIView *)v6->_backgroundView centerXAnchor];
    v32 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v19 addObject:v32];

    centerYAnchor3 = [(UIImageView *)v6->_checkmarkImageView centerYAnchor];
    centerYAnchor4 = [(UIView *)v6->_backgroundView centerYAnchor];
    v35 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v19 addObject:v35];

    [MEMORY[0x277CCAAD0] activateConstraints:v19];
  }

  return v6;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = NCCheckmarkButton;
  [(NCCheckmarkButton *)&v9 layoutSubviews];
  isSelected = [(NCCheckmarkButton *)self isSelected];
  backgroundView = self->_backgroundView;
  if (isSelected)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIView *)backgroundView setBackgroundColor:systemBlueColor];

    layer = [(UIView *)self->_backgroundView layer];
    [layer setBorderWidth:0.0];
  }

  else
  {
    layer2 = [(UIView *)self->_backgroundView layer];
    [layer2 setBorderWidth:2.0];

    v8 = self->_backgroundView;
    layer = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v8 setBackgroundColor:layer];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  isSelected = [(NCCheckmarkButton *)self isSelected];
  v6.receiver = self;
  v6.super_class = NCCheckmarkButton;
  [(NCCheckmarkButton *)&v6 setSelected:selectedCopy];
  if (isSelected != [(NCCheckmarkButton *)self isSelected])
  {
    [(NCCheckmarkButton *)self setNeedsLayout];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  if (view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  numberOfTapsRequired = [beginCopy numberOfTapsRequired];

  if (numberOfTapsRequired != 1)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end