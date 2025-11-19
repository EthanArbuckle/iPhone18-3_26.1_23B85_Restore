@interface NCSymbolButton
+ (id)button;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)_init;
- (void)clearSymbol;
- (void)setSymbolNamed:(id)a3 color:(id)a4 pointSize:(double)a5 backgroundDiameter:(double)a6;
@end

@implementation NCSymbolButton

+ (id)button
{
  v2 = [[NCSymbolButton alloc] _init];

  return v2;
}

- (id)_init
{
  v31.receiver = self;
  v31.super_class = NCSymbolButton;
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  v6 = [(NCSymbolButton *)&v31 initWithFrame:*MEMORY[0x277CBF3A0], v3, v4, v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v2, v3, v4, v5}];
    backgroundView = v6->_backgroundView;
    v6->_backgroundView = v7;

    [(UIView *)v6->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v6->_backgroundView setUserInteractionEnabled:0];
    [(NCSymbolButton *)v6 addSubview:v6->_backgroundView];
    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v2, v3, v4, v5}];
    symbolImageView = v6->_symbolImageView;
    v6->_symbolImageView = v9;

    [(UIImageView *)v6->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v6->_symbolImageView setUserInteractionEnabled:0];
    [(UIImageView *)v6->_symbolImageView setContentMode:4];
    [(NCSymbolButton *)v6 addSubview:v6->_symbolImageView];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [(UIView *)v6->_backgroundView widthAnchor];
    v13 = [v12 constraintEqualToConstant:0.0];
    backgroundWidthConstraint = v6->_backgroundWidthConstraint;
    v6->_backgroundWidthConstraint = v13;

    v15 = [(UIView *)v6->_backgroundView heightAnchor];
    v16 = [v15 constraintEqualToConstant:0.0];
    backgroundHeightConstraint = v6->_backgroundHeightConstraint;
    v6->_backgroundHeightConstraint = v16;

    [v11 addObject:v6->_backgroundWidthConstraint];
    [v11 addObject:v6->_backgroundHeightConstraint];
    v18 = [(UIView *)v6->_backgroundView centerXAnchor];
    v19 = [(NCSymbolButton *)v6 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v11 addObject:v20];

    v21 = [(UIView *)v6->_backgroundView centerYAnchor];
    v22 = [(NCSymbolButton *)v6 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v11 addObject:v23];

    v24 = [(UIImageView *)v6->_symbolImageView centerXAnchor];
    v25 = [(UIView *)v6->_backgroundView centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v11 addObject:v26];

    v27 = [(UIImageView *)v6->_symbolImageView centerYAnchor];
    v28 = [(UIView *)v6->_backgroundView centerYAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v11 addObject:v29];

    [MEMORY[0x277CCAAD0] activateConstraints:v11];
  }

  return v6;
}

- (void)setSymbolNamed:(id)a3 color:(id)a4 pointSize:(double)a5 backgroundDiameter:(double)a6
{
  v10 = a6 * 0.5;
  backgroundView = self->_backgroundView;
  v12 = a4;
  v13 = a3;
  [(UIView *)backgroundView _setCornerRadius:v10];
  [(NSLayoutConstraint *)self->_backgroundHeightConstraint setConstant:a6];
  [(NSLayoutConstraint *)self->_backgroundWidthConstraint setConstant:a6];
  [(NCSymbolButton *)self setNeedsUpdateConstraints];
  v17 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:a5];
  v14 = [MEMORY[0x277D755B8] systemImageNamed:v13 withConfiguration:v17];

  [(UIImageView *)self->_symbolImageView setImage:v14];
  [(UIImageView *)self->_symbolImageView setContentMode:4];
  symbolImageView = self->_symbolImageView;
  v16 = [MEMORY[0x277D75348] systemWhiteColor];
  [(UIImageView *)symbolImageView setTintColor:v16];

  [(UIView *)self->_backgroundView setBackgroundColor:v12];
  [(NCSymbolButton *)self setNeedsLayout];
}

- (void)clearSymbol
{
  [(UIImageView *)self->_symbolImageView setImage:0];
  [(NSLayoutConstraint *)self->_backgroundHeightConstraint setConstant:0.0];
  [(NSLayoutConstraint *)self->_backgroundWidthConstraint setConstant:0.0];
  [(NCSymbolButton *)self setNeedsUpdateConstraints];

  [(NCSymbolButton *)self setNeedsLayout];
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