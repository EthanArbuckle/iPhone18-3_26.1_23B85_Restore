@interface SHSHeadphoneNotificationTableCell
- (SHSHeadphoneNotificationTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)accessibilityConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5;
- (id)regularConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation SHSHeadphoneNotificationTableCell

- (SHSHeadphoneNotificationTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v40.receiver = self;
  v40.super_class = SHSHeadphoneNotificationTableCell;
  v9 = [(PSTableCell *)&v40 initWithStyle:a3 reuseIdentifier:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [(PSTableCell *)v9 titleLabel];
    [v11 setHidden:1];

    v12 = [(PSTableCell *)v10 valueLabel];
    [v12 setHidden:1];

    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    v14 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v13 setBackgroundColor:v14];

    v15 = *MEMORY[0x277D76918];
    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v13 setFont:v16];

    v17 = [MEMORY[0x277D3FA48] appearance];
    v18 = [v17 textColor];
    [(UILabel *)v13 setTextColor:v18];

    [(UILabel *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1144750080;
    [(UILabel *)v13 setContentCompressionResistancePriority:0 forAxis:v19];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v13;

    v21 = objc_alloc_init(MEMORY[0x277D756B8]);
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v15];
    [(UILabel *)v21 setFont:v22];

    v23 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v21 setTextColor:v23];

    v24 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v21 setBackgroundColor:v24];

    [(UILabel *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v25) = 1144750080;
    [(UILabel *)v21 setContentCompressionResistancePriority:0 forAxis:v25];
    countLabel = v10->_countLabel;
    v10->_countLabel = v21;

    v27 = [(SHSHeadphoneNotificationTableCell *)v10 contentView];
    [v27 addSubview:v10->_titleLabel];
    [v27 addSubview:v10->_countLabel];
    v28 = [v8 propertyForKey:@"NotificationDataKey"];
    notificationData = v10->_notificationData;
    v10->_notificationData = v28;

    v30 = v10->_notificationData;
    if (v30 && -[NSArray count](v30, "count") && (-[NSArray valueForKeyPath:](v10->_notificationData, "valueForKeyPath:", @"@sum.count"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 isEqual:&unk_2877307D0], v31, !v32))
    {
      v10->_shouldHideChart = 0;
      v34 = +[_TtC24SoundsAndHapticsSettings31HeadphoneAudioNotificationModel shared];
      [v34 setData:v10->_notificationData];

      v35 = +[_TtC24SoundsAndHapticsSettings33HeadphoneNotificationChartFactory create];
      hostingController = v10->_hostingController;
      v10->_hostingController = v35;

      v37 = [(UIViewController *)v10->_hostingController view];
      notificationChart = v10->_notificationChart;
      v10->_notificationChart = v37;

      v39 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v10->_notificationChart setBackgroundColor:v39];

      [v27 addSubview:v10->_notificationChart];
      [(UIView *)v10->_notificationChart setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else
    {
      v10->_shouldHideChart = 1;
    }

    [(SHSHeadphoneNotificationTableCell *)v10 layoutSubviews];
  }

  return v10;
}

- (void)layoutSubviews
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SHSHeadphoneNotificationTableCell *)self textLabel];
  v5 = [v4 text];
  v6 = [v3 stringWithFormat:@"%@", v5];
  [(UILabel *)self->_titleLabel setText:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(PSTableCell *)self valueLabel];
  v9 = [v8 text];
  v10 = [v7 stringWithFormat:@"%@", v9];
  [(UILabel *)self->_countLabel setText:v10];

  v11.receiver = self;
  v11.super_class = SHSHeadphoneNotificationTableCell;
  [(PSTableCell *)&v11 layoutSubviews];
  [(SHSHeadphoneNotificationTableCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  if (self->_shouldHideChart)
  {
    v5 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelCoun.isa, self->_titleLabel, self->_countLabel, 0);

    v6 = _NSDictionaryOfVariableBindings(&cfstr_Minimumlabelma.isa, &unk_287730848, 0);
  }

  else
  {
    v7 = MEMORY[0x277CCABB0];
    [(UILabel *)self->_titleLabel textSize];
    v9 = [v7 numberWithDouble:v8 * 5.0];
    v5 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelCoun_0.isa, self->_titleLabel, self->_countLabel, self->_notificationChart, 0);

    v6 = _NSDictionaryOfVariableBindings(&cfstr_Minimumlabelma_0.isa, &unk_287730848, &unk_287730858, v9, 0);

    v4 = v9;
  }

  v10 = [(SHSHeadphoneNotificationTableCell *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);

  shouldHideChart = self->_shouldHideChart;
  if (IsAccessibilityCategory)
  {
    [(SHSHeadphoneNotificationTableCell *)self accessibilityConstraintsWithVariableBindings:v5 metrics:v6 hideChart:shouldHideChart];
  }

  else
  {
    [(SHSHeadphoneNotificationTableCell *)self regularConstraintsWithVariableBindings:v5 metrics:v6 hideChart:shouldHideChart];
  }
  v14 = ;
  constraints = self->_constraints;
  self->_constraints = v14;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  v16.receiver = self;
  v16.super_class = SHSHeadphoneNotificationTableCell;
  [(SHSHeadphoneNotificationTableCell *)&v16 updateConstraints];
}

- (id)regularConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v11 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_titleLabel]-(>=minimumLabelMargin)-[_countLabel]-|" options:0 metrics:v8 views:v7];
  if (v5)
  {
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_titleLabel]-|" options:0 metrics:v8 views:v7];

    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_countLabel]-|" options:0 metrics:v8 views:v7];

    v15 = [v12 arrayByAddingObjectsFromArray:v13];
    v16 = [v15 arrayByAddingObjectsFromArray:v14];
  }

  else
  {
    v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-chartMargin-[_notificationChart]-chartMargin-|" options:0 metrics:v8 views:v7];
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_titleLabel]-(>=minimumLabelMargin)-[_notificationChart(>=minimumChartHeight)]-|" options:0 metrics:v8 views:v7];

    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_countLabel]-(>=minimumLabelMargin)-[_notificationChart(>=minimumChartHeight)]-|" options:0 metrics:v8 views:v7];

    v17 = [v12 arrayByAddingObjectsFromArray:v15];
    v18 = [v17 arrayByAddingObjectsFromArray:v13];
    v16 = [v18 arrayByAddingObjectsFromArray:v14];

    v9 = v17;
  }

  return v16;
}

- (id)accessibilityConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_titleLabel]-|" options:0 metrics:v8 views:v7];
  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_countLabel]-|" options:0 metrics:v8 views:v7];
  if (v5)
  {
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_titleLabel]-[_countLabel]-|" options:0 metrics:v8 views:v7];

    v14 = [v11 arrayByAddingObjectsFromArray:v12];
    v15 = [v14 arrayByAddingObjectsFromArray:v13];
  }

  else
  {
    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-chartMargin-[_notificationChart]-chartMargin-|" options:0 metrics:v8 views:v7];
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_titleLabel]-[_countLabel]-[_notificationChart(>=minimumChartHeight)]-|" options:0 metrics:v8 views:v7];

    v16 = [v11 arrayByAddingObjectsFromArray:v12];
    v17 = [v16 arrayByAddingObjectsFromArray:v14];
    v15 = [v17 arrayByAddingObjectsFromArray:v13];

    v9 = v16;
  }

  return v15;
}

@end