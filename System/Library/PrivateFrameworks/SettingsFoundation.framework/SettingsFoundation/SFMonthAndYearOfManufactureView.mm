@interface SFMonthAndYearOfManufactureView
- (SFMonthAndYearOfManufactureView)init;
- (SFMonthAndYearOfManufactureView)initWithFrame:(CGRect)frame;
- (id)labelText;
- (void)render;
@end

@implementation SFMonthAndYearOfManufactureView

- (SFMonthAndYearOfManufactureView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SFMonthAndYearOfManufactureView;
  v3 = [(SFMonthAndYearOfManufactureView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  subviews = [(SFMonthAndYearOfManufactureView *)self subviews];
  v4 = [subviews count];

  if (!v4)
  {
    [(SFMonthAndYearOfManufactureView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    labelText = [(SFMonthAndYearOfManufactureView *)self labelText];
    if (labelText)
    {
      [v5 setText:labelText];
      v7 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
      [v5 setFont:v7];
    }

    [(SFMonthAndYearOfManufactureView *)self addSubview:v5];
    v18 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(SFMonthAndYearOfManufactureView *)self leadingAnchor];
    leadingAnchor2 = [v5 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[0] = v21;
    trailingAnchor = [(SFMonthAndYearOfManufactureView *)self trailingAnchor];
    trailingAnchor2 = [v5 trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[1] = v9;
    topAnchor = [v5 topAnchor];
    topAnchor2 = [(SFMonthAndYearOfManufactureView *)self topAnchor];
    [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v12 = v19 = labelText;
    v24[2] = v12;
    bottomAnchor = [(SFMonthAndYearOfManufactureView *)self bottomAnchor];
    bottomAnchor2 = [v5 bottomAnchor];
    v15 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v24[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)labelText
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_monthAndYearOfManufacture = [currentDevice sf_monthAndYearOfManufacture];

  if (sf_monthAndYearOfManufacture)
  {
    v4 = [sf_monthAndYearOfManufacture objectForKeyedSubscript:@"year"];

    if (v4)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [sf_monthAndYearOfManufacture objectForKeyedSubscript:@"month"];
      v7 = [sf_monthAndYearOfManufacture objectForKeyedSubscript:@"year"];
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