@interface SFAlertMarkView
- (SFAlertMarkView)init;
- (SFAlertMarkView)initWithFrame:(CGRect)frame;
- (id)alertImage;
- (id)labelForString:(id)string;
- (void)render;
@end

@implementation SFAlertMarkView

- (SFAlertMarkView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SFAlertMarkView;
  v3 = [(SFAlertMarkView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFAlertMarkView *)v3 render];
  }

  return v4;
}

- (SFAlertMarkView)init
{
  v5.receiver = self;
  v5.super_class = SFAlertMarkView;
  v2 = [(SFAlertMarkView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SFAlertMarkView *)v2 render];
  }

  return v3;
}

- (void)render
{
  v27[3] = *MEMORY[0x277D85DE8];
  subviews = [(SFAlertMarkView *)self subviews];
  v4 = [subviews count];

  if (!v4)
  {
    [(SFAlertMarkView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc(MEMORY[0x277D75A68]);
    alertImage = [(SFAlertMarkView *)self alertImage];
    v27[0] = alertImage;
    v7 = [(SFAlertMarkView *)self labelForString:@"Lihat Panduan Pengguna untuk"];
    v27[1] = v7;
    v8 = [(SFAlertMarkView *)self labelForString:@"Penggunaan Yang Tepat"];
    v27[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    v10 = [v5 initWithArrangedSubviews:v9];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAxis:1];
    [v10 setAlignment:3];
    [(SFAlertMarkView *)self addSubview:v10];
    v21 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(SFAlertMarkView *)self leadingAnchor];
    leadingAnchor2 = [v10 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v23;
    trailingAnchor = [(SFAlertMarkView *)self trailingAnchor];
    trailingAnchor2 = [v10 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v12;
    topAnchor = [v10 topAnchor];
    topAnchor2 = [(SFAlertMarkView *)self topAnchor];
    v15 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v26[2] = v15;
    bottomAnchor = [(SFAlertMarkView *)self bottomAnchor];
    bottomAnchor2 = [v10 bottomAnchor];
    v18 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v26[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v21 activateConstraints:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)alertImage
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:3 weight:3 scale:42.0];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle" withConfiguration:v2];
  v4 = [v3 imageWithRenderingMode:2];

  v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v4];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v5 setTintColor:labelColor];

  return v5;
}

- (id)labelForString:(id)string
{
  v3 = MEMORY[0x277D756B8];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setText:stringCopy];

  v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
  [v5 setFont:v6];

  return v5;
}

@end