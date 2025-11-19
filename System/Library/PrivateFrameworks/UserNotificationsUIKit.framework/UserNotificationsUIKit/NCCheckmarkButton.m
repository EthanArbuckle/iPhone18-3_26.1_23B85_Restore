@interface NCCheckmarkButton
+ (id)button;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)_init;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation NCCheckmarkButton

+ (id)button
{
  v2 = [[NCCheckmarkButton alloc] _init];

  return v2;
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
    v10 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIView *)v9 setBackgroundColor:v10];

    [(UIView *)v6->_backgroundView _setCornerRadius:10.0];
    v11 = [(UIView *)v6->_backgroundView layer];
    v12 = [MEMORY[0x277D75348] systemGray4Color];
    [v11 setBorderColor:{objc_msgSend(v12, "CGColor")}];

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
    v18 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIImageView *)v17 setTintColor:v18];

    [(UIView *)v6->_backgroundView addSubview:v6->_checkmarkImageView];
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = [(UIView *)v6->_backgroundView heightAnchor];
    v21 = [v20 constraintEqualToConstant:20.0];
    [v19 addObject:v21];

    v22 = [(UIView *)v6->_backgroundView widthAnchor];
    v23 = [v22 constraintEqualToConstant:20.0];
    [v19 addObject:v23];

    v24 = [(UIView *)v6->_backgroundView centerXAnchor];
    v25 = [(NCCheckmarkButton *)v6 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v19 addObject:v26];

    v27 = [(UIView *)v6->_backgroundView centerYAnchor];
    v28 = [(NCCheckmarkButton *)v6 centerYAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v19 addObject:v29];

    v30 = [(UIImageView *)v6->_checkmarkImageView centerXAnchor];
    v31 = [(UIView *)v6->_backgroundView centerXAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v19 addObject:v32];

    v33 = [(UIImageView *)v6->_checkmarkImageView centerYAnchor];
    v34 = [(UIView *)v6->_backgroundView centerYAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
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
  v3 = [(NCCheckmarkButton *)self isSelected];
  backgroundView = self->_backgroundView;
  if (v3)
  {
    v5 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIView *)backgroundView setBackgroundColor:v5];

    v6 = [(UIView *)self->_backgroundView layer];
    [v6 setBorderWidth:0.0];
  }

  else
  {
    v7 = [(UIView *)self->_backgroundView layer];
    [v7 setBorderWidth:2.0];

    v8 = self->_backgroundView;
    v6 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v8 setBackgroundColor:v6];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCCheckmarkButton *)self isSelected];
  v6.receiver = self;
  v6.super_class = NCCheckmarkButton;
  [(NCCheckmarkButton *)&v6 setSelected:v3];
  if (v5 != [(NCCheckmarkButton *)self isSelected])
  {
    [(NCCheckmarkButton *)self setNeedsLayout];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  if (v5 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  v6 = [v4 numberOfTapsRequired];

  if (v6 != 1)
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