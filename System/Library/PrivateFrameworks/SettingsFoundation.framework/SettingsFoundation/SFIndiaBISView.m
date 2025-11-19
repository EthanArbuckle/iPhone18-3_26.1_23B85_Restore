@interface SFIndiaBISView
- (SFIndiaBISView)init;
- (SFIndiaBISView)initWithFrame:(CGRect)a3;
- (void)render;
@end

@implementation SFIndiaBISView

- (SFIndiaBISView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SFIndiaBISView;
  v3 = [(SFIndiaBISView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFIndiaBISView *)v3 render];
  }

  return v4;
}

- (SFIndiaBISView)init
{
  v5.receiver = self;
  v5.super_class = SFIndiaBISView;
  v2 = [(SFIndiaBISView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SFIndiaBISView *)v2 render];
  }

  return v3;
}

- (void)render
{
  v33[4] = *MEMORY[0x277D85DE8];
  v3 = [(SFIndiaBISView *)self subviews];
  v4 = [v3 count];

  if (!v4)
  {
    [(SFIndiaBISView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setAxis:1];
    [v5 setAlignment:3];
    [(SFIndiaBISView *)self addSubview:v5];
    v6 = SFIndiaBISRegulatoryImage();
    v7 = [v6 imageWithRenderingMode:2];

    v32 = v7;
    v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D75348] labelColor];
    [v8 setTintColor:v9];

    v31 = v8;
    [v5 addArrangedSubview:v8];
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = SFIndiaBISNumber();
    [v10 setText:v11];

    v12 = [v10 text];

    if (!v12)
    {
      [v10 setText:@"Unknown"];
    }

    v13 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [v10 setFont:v13];

    [v5 addArrangedSubview:v10];
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setText:@"www.bis.gov.in"];
    v15 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [v14 setFont:v15];

    [v5 addArrangedSubview:v14];
    v25 = MEMORY[0x277CCAAD0];
    v30 = [(SFIndiaBISView *)self leadingAnchor];
    v29 = [v5 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v33[0] = v28;
    v27 = [(SFIndiaBISView *)self trailingAnchor];
    v26 = [v5 trailingAnchor];
    v16 = [v27 constraintEqualToAnchor:v26];
    v33[1] = v16;
    v17 = [v5 topAnchor];
    v18 = [(SFIndiaBISView *)self topAnchor];
    v19 = [v17 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v18 multiplier:1.0];
    v33[2] = v19;
    v20 = [(SFIndiaBISView *)self bottomAnchor];
    v21 = [v5 bottomAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v21 multiplier:1.0];
    v33[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [v25 activateConstraints:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end