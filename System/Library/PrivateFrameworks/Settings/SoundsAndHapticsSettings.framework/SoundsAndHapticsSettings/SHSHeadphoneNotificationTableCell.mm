@interface SHSHeadphoneNotificationTableCell
- (SHSHeadphoneNotificationTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)accessibilityConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart;
- (id)regularConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation SHSHeadphoneNotificationTableCell

- (SHSHeadphoneNotificationTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v40.receiver = self;
  v40.super_class = SHSHeadphoneNotificationTableCell;
  v9 = [(PSTableCell *)&v40 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    titleLabel = [(PSTableCell *)v9 titleLabel];
    [titleLabel setHidden:1];

    valueLabel = [(PSTableCell *)v10 valueLabel];
    [valueLabel setHidden:1];

    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v13 setBackgroundColor:clearColor];

    v15 = *MEMORY[0x277D76918];
    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v13 setFont:v16];

    appearance = [MEMORY[0x277D3FA48] appearance];
    textColor = [appearance textColor];
    [(UILabel *)v13 setTextColor:textColor];

    [(UILabel *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1144750080;
    [(UILabel *)v13 setContentCompressionResistancePriority:0 forAxis:v19];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v13;

    v21 = objc_alloc_init(MEMORY[0x277D756B8]);
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v15];
    [(UILabel *)v21 setFont:v22];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v21 setTextColor:secondaryLabelColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v21 setBackgroundColor:clearColor2];

    [(UILabel *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v25) = 1144750080;
    [(UILabel *)v21 setContentCompressionResistancePriority:0 forAxis:v25];
    countLabel = v10->_countLabel;
    v10->_countLabel = v21;

    contentView = [(SHSHeadphoneNotificationTableCell *)v10 contentView];
    [contentView addSubview:v10->_titleLabel];
    [contentView addSubview:v10->_countLabel];
    v28 = [specifierCopy propertyForKey:@"NotificationDataKey"];
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

      view = [(UIViewController *)v10->_hostingController view];
      notificationChart = v10->_notificationChart;
      v10->_notificationChart = view;

      clearColor3 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v10->_notificationChart setBackgroundColor:clearColor3];

      [contentView addSubview:v10->_notificationChart];
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
  textLabel = [(SHSHeadphoneNotificationTableCell *)self textLabel];
  text = [textLabel text];
  v6 = [v3 stringWithFormat:@"%@", text];
  [(UILabel *)self->_titleLabel setText:v6];

  v7 = MEMORY[0x277CCACA8];
  valueLabel = [(PSTableCell *)self valueLabel];
  text2 = [valueLabel text];
  v10 = [v7 stringWithFormat:@"%@", text2];
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

  traitCollection = [(SHSHeadphoneNotificationTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

- (id)regularConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart
{
  chartCopy = chart;
  bindingsCopy = bindings;
  metricsCopy = metrics;
  v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v11 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_titleLabel]-(>=minimumLabelMargin)-[_countLabel]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  if (chartCopy)
  {
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_titleLabel]-|" options:0 metrics:metricsCopy views:bindingsCopy];

    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_countLabel]-|" options:0 metrics:metricsCopy views:bindingsCopy];

    v15 = [v12 arrayByAddingObjectsFromArray:v13];
    v16 = [v15 arrayByAddingObjectsFromArray:v14];
  }

  else
  {
    v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-chartMargin-[_notificationChart]-chartMargin-|" options:0 metrics:metricsCopy views:bindingsCopy];
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_titleLabel]-(>=minimumLabelMargin)-[_notificationChart(>=minimumChartHeight)]-|" options:0 metrics:metricsCopy views:bindingsCopy];

    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_countLabel]-(>=minimumLabelMargin)-[_notificationChart(>=minimumChartHeight)]-|" options:0 metrics:metricsCopy views:bindingsCopy];

    v17 = [v12 arrayByAddingObjectsFromArray:v15];
    v18 = [v17 arrayByAddingObjectsFromArray:v13];
    v16 = [v18 arrayByAddingObjectsFromArray:v14];

    v9 = v17;
  }

  return v16;
}

- (id)accessibilityConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart
{
  chartCopy = chart;
  bindingsCopy = bindings;
  metricsCopy = metrics;
  v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_titleLabel]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_countLabel]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  if (chartCopy)
  {
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_titleLabel]-[_countLabel]-|" options:0 metrics:metricsCopy views:bindingsCopy];

    v14 = [v11 arrayByAddingObjectsFromArray:v12];
    v15 = [v14 arrayByAddingObjectsFromArray:v13];
  }

  else
  {
    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-chartMargin-[_notificationChart]-chartMargin-|" options:0 metrics:metricsCopy views:bindingsCopy];
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_titleLabel]-[_countLabel]-[_notificationChart(>=minimumChartHeight)]-|" options:0 metrics:metricsCopy views:bindingsCopy];

    v16 = [v11 arrayByAddingObjectsFromArray:v12];
    v17 = [v16 arrayByAddingObjectsFromArray:v14];
    v15 = [v17 arrayByAddingObjectsFromArray:v13];

    v9 = v16;
  }

  return v15;
}

@end