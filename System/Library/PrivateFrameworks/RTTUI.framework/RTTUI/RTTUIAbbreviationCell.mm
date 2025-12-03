@interface RTTUIAbbreviationCell
- (RTTUIAbbreviationCell)initWithFrame:(CGRect)frame;
- (id)abbreviationText;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAbbreviationData:(id)data;
@end

@implementation RTTUIAbbreviationCell

- (RTTUIAbbreviationCell)initWithFrame:(CGRect)frame
{
  v56.receiver = self;
  v56.super_class = RTTUIAbbreviationCell;
  v3 = [(RTTUIAbbreviationCell *)&v56 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(RTTUIAbbreviationCell *)v3 setBackgroundColor:blackColor];
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x277D75D18]);
      [(RTTUIAbbreviationCell *)v3 bounds];
      blackColor = [v5 initWithFrame:?];
      [blackColor setAutoresizingMask:18];
      contentView = [(RTTUIAbbreviationCell *)v3 contentView];
      [contentView setAutoresizesSubviews:1];

      contentView2 = [(RTTUIAbbreviationCell *)v3 contentView];
      [contentView2 addSubview:blackColor];

      v8 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      [v8 setGroupName:@"RTTUIAbbreviationCell"];
      contentView3 = [(RTTUIAbbreviationCell *)v3 contentView];
      [contentView3 addSubview:v8];
    }

    v10 = objc_opt_new();
    abbreviationContainer = v3->_abbreviationContainer;
    v3->_abbreviationContainer = v10;

    [(UIView *)v3->_abbreviationContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView4 = [(RTTUIAbbreviationCell *)v3 contentView];
    [contentView4 addSubview:v3->_abbreviationContainer];

    v13 = objc_alloc(MEMORY[0x277D75D68]);
    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v15 = [v13 initWithEffect:controlCenterSecondaryVibrancyEffect];
    hintContainer = v3->_hintContainer;
    v3->_hintContainer = v15;

    [(UIVisualEffectView *)v3->_hintContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView5 = [(RTTUIAbbreviationCell *)v3 contentView];
    [contentView5 addSubview:v3->_hintContainer];

    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v18 setTextColor:whiteColor];

    [v18 setTextAlignment:1];
    v20 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [v18 setFont:v20];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v18 setBackgroundColor:clearColor];

    [(UIView *)v3->_abbreviationContainer addSubview:v18];
    [(RTTUIAbbreviationCell *)v3 setAbbreviation:v18];
    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [v22 setTextColor:whiteColor2];

    [v22 setTextAlignment:1];
    v24 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [v22 setFont:v24];

    [v22 setAdjustsFontSizeToFitWidth:1];
    [v22 setMinimumScaleFactor:0.800000012];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v22 setBackgroundColor:clearColor2];

    contentView6 = [(UIVisualEffectView *)v3->_hintContainer contentView];
    [contentView6 addSubview:v22];

    [(RTTUIAbbreviationCell *)v3 setHint:v22];
    v27 = v3->_abbreviationContainer;
    v28 = MEMORY[0x277CCAAD0];
    v29 = _NSDictionaryOfVariableBindings(&cfstr_Abbr.isa, v18, 0);
    v30 = [v28 constraintsWithVisualFormat:@"H:|[abbr]|" options:0 metrics:0 views:v29];
    [(UIView *)v27 addConstraints:v30];

    v31 = v3->_abbreviationContainer;
    v32 = MEMORY[0x277CCAAD0];
    v33 = _NSDictionaryOfVariableBindings(&cfstr_Abbr.isa, v18, 0);
    v34 = [v32 constraintsWithVisualFormat:@"V:|[abbr]|" options:0 metrics:0 views:v33];
    [(UIView *)v31 addConstraints:v34];

    v35 = v3->_hintContainer;
    v36 = MEMORY[0x277CCAAD0];
    v37 = _NSDictionaryOfVariableBindings(&cfstr_Hint.isa, v22, 0);
    v38 = [v36 constraintsWithVisualFormat:@"H:|[hint]|" options:0 metrics:0 views:v37];
    [(UIVisualEffectView *)v35 addConstraints:v38];

    v39 = v3->_hintContainer;
    v40 = MEMORY[0x277CCAAD0];
    v41 = _NSDictionaryOfVariableBindings(&cfstr_Hint.isa, v22, 0);
    v42 = [v40 constraintsWithVisualFormat:@"V:|[hint]|" options:0 metrics:0 views:v41];
    [(UIVisualEffectView *)v39 addConstraints:v42];

    contentView7 = [(RTTUIAbbreviationCell *)v3 contentView];
    v44 = MEMORY[0x277CCAAD0];
    v45 = _NSDictionaryOfVariableBindings(&cfstr_Abbreviationco.isa, v3->_abbreviationContainer, 0);
    v46 = [v44 constraintsWithVisualFormat:@"H:|[_abbreviationContainer]|" options:0 metrics:0 views:v45];
    [contentView7 addConstraints:v46];

    contentView8 = [(RTTUIAbbreviationCell *)v3 contentView];
    v48 = MEMORY[0x277CCAAD0];
    v49 = _NSDictionaryOfVariableBindings(&cfstr_Hintcontainer.isa, v3->_hintContainer, 0);
    v50 = [v48 constraintsWithVisualFormat:@"H:|[_hintContainer]|" options:0 metrics:0 views:v49];
    [contentView8 addConstraints:v50];

    contentView9 = [(RTTUIAbbreviationCell *)v3 contentView];
    v52 = MEMORY[0x277CCAAD0];
    v53 = _NSDictionaryOfVariableBindings(&cfstr_Abbreviationco_0.isa, v3->_abbreviationContainer, v3->_hintContainer, 0);
    v54 = [v52 constraintsWithVisualFormat:@"V:|-(5.0)-[_abbreviationContainer][_hintContainer]-(3.0)-|" options:0 metrics:0 views:v53];
    [contentView9 addConstraints:v54];
  }

  return v3;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = RTTUIAbbreviationCell;
  [(RTTUIAbbreviationCell *)&v2 layoutSubviews];
}

- (void)setAbbreviationData:(id)data
{
  dataCopy = data;
  v9 = [dataCopy objectForKey:@"abbr"];
  v5 = [dataCopy objectForKey:@"hint"];

  abbreviation = [(RTTUIAbbreviationCell *)self abbreviation];
  [abbreviation setText:v9];

  hint = [(RTTUIAbbreviationCell *)self hint];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v5];
  [hint setText:v8];
}

- (id)abbreviationText
{
  abbreviation = [(RTTUIAbbreviationCell *)self abbreviation];
  text = [abbreviation text];

  return text;
}

- (void)dealloc
{
  [(RTTUIAbbreviationCell *)self setAbbreviation:0];
  [(RTTUIAbbreviationCell *)self setHint:0];
  v3.receiver = self;
  v3.super_class = RTTUIAbbreviationCell;
  [(RTTUIAbbreviationCell *)&v3 dealloc];
}

- (id)accessibilityLabel
{
  abbreviation = [(RTTUIAbbreviationCell *)self abbreviation];
  hint = [(RTTUIAbbreviationCell *)self hint];
  v4 = __AXStringForVariables();

  return v4;
}

- (id)accessibilityIdentifier
{
  abbreviation = [(RTTUIAbbreviationCell *)self abbreviation];
  text = [abbreviation text];

  return text;
}

@end