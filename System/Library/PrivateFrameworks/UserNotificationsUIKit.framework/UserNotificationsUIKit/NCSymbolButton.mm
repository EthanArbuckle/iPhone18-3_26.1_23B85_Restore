@interface NCSymbolButton
+ (id)button;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)_init;
- (void)clearSymbol;
- (void)setSymbolNamed:(id)named color:(id)color pointSize:(double)size backgroundDiameter:(double)diameter;
@end

@implementation NCSymbolButton

+ (id)button
{
  _init = [[NCSymbolButton alloc] _init];

  return _init;
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
    widthAnchor = [(UIView *)v6->_backgroundView widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:0.0];
    backgroundWidthConstraint = v6->_backgroundWidthConstraint;
    v6->_backgroundWidthConstraint = v13;

    heightAnchor = [(UIView *)v6->_backgroundView heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:0.0];
    backgroundHeightConstraint = v6->_backgroundHeightConstraint;
    v6->_backgroundHeightConstraint = v16;

    [v11 addObject:v6->_backgroundWidthConstraint];
    [v11 addObject:v6->_backgroundHeightConstraint];
    centerXAnchor = [(UIView *)v6->_backgroundView centerXAnchor];
    centerXAnchor2 = [(NCSymbolButton *)v6 centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v11 addObject:v20];

    centerYAnchor = [(UIView *)v6->_backgroundView centerYAnchor];
    centerYAnchor2 = [(NCSymbolButton *)v6 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v11 addObject:v23];

    centerXAnchor3 = [(UIImageView *)v6->_symbolImageView centerXAnchor];
    centerXAnchor4 = [(UIView *)v6->_backgroundView centerXAnchor];
    v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v11 addObject:v26];

    centerYAnchor3 = [(UIImageView *)v6->_symbolImageView centerYAnchor];
    centerYAnchor4 = [(UIView *)v6->_backgroundView centerYAnchor];
    v29 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v11 addObject:v29];

    [MEMORY[0x277CCAAD0] activateConstraints:v11];
  }

  return v6;
}

- (void)setSymbolNamed:(id)named color:(id)color pointSize:(double)size backgroundDiameter:(double)diameter
{
  v10 = diameter * 0.5;
  backgroundView = self->_backgroundView;
  colorCopy = color;
  namedCopy = named;
  [(UIView *)backgroundView _setCornerRadius:v10];
  [(NSLayoutConstraint *)self->_backgroundHeightConstraint setConstant:diameter];
  [(NSLayoutConstraint *)self->_backgroundWidthConstraint setConstant:diameter];
  [(NCSymbolButton *)self setNeedsUpdateConstraints];
  v17 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:size];
  v14 = [MEMORY[0x277D755B8] systemImageNamed:namedCopy withConfiguration:v17];

  [(UIImageView *)self->_symbolImageView setImage:v14];
  [(UIImageView *)self->_symbolImageView setContentMode:4];
  symbolImageView = self->_symbolImageView;
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [(UIImageView *)symbolImageView setTintColor:systemWhiteColor];

  [(UIView *)self->_backgroundView setBackgroundColor:colorCopy];
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