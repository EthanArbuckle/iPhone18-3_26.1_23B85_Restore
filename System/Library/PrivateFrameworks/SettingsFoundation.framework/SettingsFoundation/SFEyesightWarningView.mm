@interface SFEyesightWarningView
- (SFEyesightWarningView)init;
- (SFEyesightWarningView)initWithFrame:(CGRect)frame;
- (id)labelForString:(id)string;
- (void)render;
@end

@implementation SFEyesightWarningView

- (SFEyesightWarningView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SFEyesightWarningView;
  v3 = [(SFEyesightWarningView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFEyesightWarningView *)v3 render];
  }

  return v4;
}

- (SFEyesightWarningView)init
{
  v5.receiver = self;
  v5.super_class = SFEyesightWarningView;
  v2 = [(SFEyesightWarningView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SFEyesightWarningView *)v2 render];
  }

  return v3;
}

- (void)render
{
  v26[2] = *MEMORY[0x277D85DE8];
  subviews = [(SFEyesightWarningView *)self subviews];
  v4 = [subviews count];

  if (!v4)
  {
    [(SFEyesightWarningView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc(MEMORY[0x277D75A68]);
    v6 = [(SFEyesightWarningView *)self labelForString:@"國家通訊傳播委員會規定，應標示顯示器使用"];
    v26[0] = v6;
    v7 = [(SFEyesightWarningView *)self labelForString:@"相關警語。請參閱警語的簡介指南。"];
    v26[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v9 = [v5 initWithArrangedSubviews:v8];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setAxis:1];
    [v9 setAlignment:3];
    [(SFEyesightWarningView *)self addSubview:v9];
    v20 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(SFEyesightWarningView *)self leadingAnchor];
    leadingAnchor2 = [v9 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v22;
    trailingAnchor = [(SFEyesightWarningView *)self trailingAnchor];
    trailingAnchor2 = [v9 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v11;
    topAnchor = [v9 topAnchor];
    topAnchor2 = [(SFEyesightWarningView *)self topAnchor];
    v14 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v25[2] = v14;
    bottomAnchor = [(SFEyesightWarningView *)self bottomAnchor];
    bottomAnchor2 = [v9 bottomAnchor];
    v17 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v25[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [v20 activateConstraints:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)labelForString:(id)string
{
  v3 = MEMORY[0x277D756B8];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setText:stringCopy];

  v6 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
  [v5 setFont:v6];

  return v5;
}

@end