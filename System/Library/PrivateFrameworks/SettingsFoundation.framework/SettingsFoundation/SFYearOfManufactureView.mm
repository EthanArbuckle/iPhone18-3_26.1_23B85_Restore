@interface SFYearOfManufactureView
- (SFYearOfManufactureView)init;
- (SFYearOfManufactureView)initWithFrame:(CGRect)a3;
- (void)render;
@end

@implementation SFYearOfManufactureView

- (SFYearOfManufactureView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SFYearOfManufactureView;
  v3 = [(SFYearOfManufactureView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFYearOfManufactureView *)v3 render];
  }

  return v4;
}

- (SFYearOfManufactureView)init
{
  v5.receiver = self;
  v5.super_class = SFYearOfManufactureView;
  v2 = [(SFYearOfManufactureView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SFYearOfManufactureView *)v2 render];
  }

  return v3;
}

- (void)render
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = [(SFYearOfManufactureView *)self subviews];
  v4 = [v3 count];

  if (!v4)
  {
    [(SFYearOfManufactureView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 sf_yearOfManufacture];

    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v6)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"製造年份 %lu", v6];
      [v7 setText:v8];

      v9 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
      [v7 setFont:v9];
    }

    [(SFYearOfManufactureView *)self addSubview:v7];
    v20 = MEMORY[0x277CCAAD0];
    v24 = [(SFYearOfManufactureView *)self leadingAnchor];
    v23 = [v7 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v25[0] = v22;
    v21 = [(SFYearOfManufactureView *)self trailingAnchor];
    v10 = [v7 trailingAnchor];
    v11 = [v21 constraintEqualToAnchor:v10];
    v25[1] = v11;
    v12 = [v7 topAnchor];
    v13 = [(SFYearOfManufactureView *)self topAnchor];
    v14 = [v12 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v13 multiplier:1.0];
    v25[2] = v14;
    v15 = [(SFYearOfManufactureView *)self bottomAnchor];
    v16 = [v7 bottomAnchor];
    v17 = [v15 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v16 multiplier:1.0];
    v25[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [v20 activateConstraints:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end