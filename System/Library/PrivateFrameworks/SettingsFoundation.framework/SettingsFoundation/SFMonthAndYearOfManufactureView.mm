@interface SFMonthAndYearOfManufactureView
- (SFMonthAndYearOfManufactureView)init;
- (SFMonthAndYearOfManufactureView)initWithFrame:(CGRect)a3;
- (id)labelText;
- (void)render;
@end

@implementation SFMonthAndYearOfManufactureView

- (SFMonthAndYearOfManufactureView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SFMonthAndYearOfManufactureView;
  v3 = [(SFMonthAndYearOfManufactureView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFMonthAndYearOfManufactureView *)v3 render];
  }

  return v4;
}

- (SFMonthAndYearOfManufactureView)init
{
  v5.receiver = self;
  v5.super_class = SFMonthAndYearOfManufactureView;
  v2 = [(SFMonthAndYearOfManufactureView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SFMonthAndYearOfManufactureView *)v2 render];
  }

  return v3;
}

- (void)render
{
  v24[4] = *MEMORY[0x277D85DE8];
  v3 = [(SFMonthAndYearOfManufactureView *)self subviews];
  v4 = [v3 count];

  if (!v4)
  {
    [(SFMonthAndYearOfManufactureView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(SFMonthAndYearOfManufactureView *)self labelText];
    if (v6)
    {
      [v5 setText:v6];
      v7 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
      [v5 setFont:v7];
    }

    [(SFMonthAndYearOfManufactureView *)self addSubview:v5];
    v18 = MEMORY[0x277CCAAD0];
    v23 = [(SFMonthAndYearOfManufactureView *)self leadingAnchor];
    v22 = [v5 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v24[0] = v21;
    v20 = [(SFMonthAndYearOfManufactureView *)self trailingAnchor];
    v8 = [v5 trailingAnchor];
    v9 = [v20 constraintEqualToAnchor:v8];
    v24[1] = v9;
    v10 = [v5 topAnchor];
    v11 = [(SFMonthAndYearOfManufactureView *)self topAnchor];
    [v10 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v11 multiplier:1.0];
    v12 = v19 = v6;
    v24[2] = v12;
    v13 = [(SFMonthAndYearOfManufactureView *)self bottomAnchor];
    v14 = [v5 bottomAnchor];
    v15 = [v13 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v14 multiplier:1.0];
    v24[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)labelText
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 sf_monthAndYearOfManufacture];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"year"];

    if (v4)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [v3 objectForKeyedSubscript:@"month"];
      v7 = [v3 objectForKeyedSubscript:@"year"];
      v4 = [v5 stringWithFormat:@"제조년월: %@월-%@", v6, v7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end