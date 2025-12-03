@interface SFYearOfManufactureView
- (SFYearOfManufactureView)init;
- (SFYearOfManufactureView)initWithFrame:(CGRect)frame;
- (void)render;
@end

@implementation SFYearOfManufactureView

- (SFYearOfManufactureView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SFYearOfManufactureView;
  v3 = [(SFYearOfManufactureView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  subviews = [(SFYearOfManufactureView *)self subviews];
  v4 = [subviews count];

  if (!v4)
  {
    [(SFYearOfManufactureView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_yearOfManufacture = [currentDevice sf_yearOfManufacture];

    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (sf_yearOfManufacture)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"製造年份 %lu", sf_yearOfManufacture];
      [v7 setText:v8];

      v9 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
      [v7 setFont:v9];
    }

    [(SFYearOfManufactureView *)self addSubview:v7];
    v20 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(SFYearOfManufactureView *)self leadingAnchor];
    leadingAnchor2 = [v7 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v22;
    trailingAnchor = [(SFYearOfManufactureView *)self trailingAnchor];
    trailingAnchor2 = [v7 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v11;
    topAnchor = [v7 topAnchor];
    topAnchor2 = [(SFYearOfManufactureView *)self topAnchor];
    v14 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v25[2] = v14;
    bottomAnchor = [(SFYearOfManufactureView *)self bottomAnchor];
    bottomAnchor2 = [v7 bottomAnchor];
    v17 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v25[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [v20 activateConstraints:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end