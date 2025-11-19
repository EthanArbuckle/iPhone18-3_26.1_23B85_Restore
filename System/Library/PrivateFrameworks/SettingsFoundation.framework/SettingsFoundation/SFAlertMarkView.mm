@interface SFAlertMarkView
- (SFAlertMarkView)init;
- (SFAlertMarkView)initWithFrame:(CGRect)a3;
- (id)alertImage;
- (id)labelForString:(id)a3;
- (void)render;
@end

@implementation SFAlertMarkView

- (SFAlertMarkView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SFAlertMarkView;
  v3 = [(SFAlertMarkView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(SFAlertMarkView *)self subviews];
  v4 = [v3 count];

  if (!v4)
  {
    [(SFAlertMarkView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc(MEMORY[0x277D75A68]);
    v6 = [(SFAlertMarkView *)self alertImage];
    v27[0] = v6;
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
    v25 = [(SFAlertMarkView *)self leadingAnchor];
    v24 = [v10 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v26[0] = v23;
    v22 = [(SFAlertMarkView *)self trailingAnchor];
    v11 = [v10 trailingAnchor];
    v12 = [v22 constraintEqualToAnchor:v11];
    v26[1] = v12;
    v13 = [v10 topAnchor];
    v14 = [(SFAlertMarkView *)self topAnchor];
    v15 = [v13 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v14 multiplier:1.0];
    v26[2] = v15;
    v16 = [(SFAlertMarkView *)self bottomAnchor];
    v17 = [v10 bottomAnchor];
    v18 = [v16 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v17 multiplier:1.0];
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
  v6 = [MEMORY[0x277D75348] labelColor];
  [v5 setTintColor:v6];

  return v5;
}

- (id)labelForString:(id)a3
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setText:v4];

  v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
  [v5 setFont:v6];

  return v5;
}

@end