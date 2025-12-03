@interface PSMultilineTitleTableCell
- (PSMultilineTitleTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation PSMultilineTitleTableCell

- (PSMultilineTitleTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v77.receiver = self;
  v77.super_class = PSMultilineTitleTableCell;
  v4 = [(PSTableCell *)&v77 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    titleLabel = [(PSTableCell *)v4 titleLabel];
    [titleLabel setNumberOfLines:0];

    traitCollection = [(PSMultilineTitleTableCell *)v5 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    titleLabel2 = [(PSTableCell *)v5 titleLabel];
    topAnchor = [titleLabel2 topAnchor];
    contentView = [(PSMultilineTitleTableCell *)v5 contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v15 setActive:1];

    titleLabel3 = [(PSTableCell *)v5 titleLabel];
    leadingAnchor = [titleLabel3 leadingAnchor];
    contentView2 = [(PSMultilineTitleTableCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    titleLeadingCon = v5->_titleLeadingCon;
    v5->_titleLeadingCon = v21;

    [(NSLayoutConstraint *)v5->_titleLeadingCon setActive:1];
    titleLabel4 = [(PSTableCell *)v5 titleLabel];
    v24 = titleLabel4;
    if (IsAccessibilityCategory)
    {
      trailingAnchor = [titleLabel4 trailingAnchor];
      contentView3 = [(PSMultilineTitleTableCell *)v5 contentView];
      safeAreaLayoutGuide = [contentView3 safeAreaLayoutGuide];
      trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
      v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v29 setActive:1];

      titleLabel5 = [(PSTableCell *)v5 titleLabel];
      bottomAnchor = [titleLabel5 bottomAnchor];
      valueLabel = [(PSTableCell *)v5 valueLabel];
      [valueLabel topAnchor];
    }

    else
    {
      bottomAnchor2 = [titleLabel4 bottomAnchor];
      contentView4 = [(PSMultilineTitleTableCell *)v5 contentView];
      layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
      bottomAnchor3 = [layoutMarginsGuide3 bottomAnchor];
      v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      [v37 setActive:1];

      titleLabel5 = [(PSTableCell *)v5 titleLabel];
      bottomAnchor = [titleLabel5 trailingAnchor];
      valueLabel = [(PSTableCell *)v5 valueLabel];
      [valueLabel leadingAnchor];
    }
    v38 = ;
    v39 = [bottomAnchor constraintEqualToAnchor:v38];
    [v39 setActive:1];

    titleLabel6 = [(PSTableCell *)v5 titleLabel];
    LODWORD(v41) = 1148846080;
    [titleLabel6 setContentCompressionResistancePriority:1 forAxis:v41];

    titleLabel7 = [(PSTableCell *)v5 titleLabel];
    LODWORD(v43) = 1148846080;
    [titleLabel7 setContentHuggingPriority:1 forAxis:v43];

    titleLabel8 = [(PSTableCell *)v5 titleLabel];
    [titleLabel8 setTranslatesAutoresizingMaskIntoConstraints:0];

    valueLabel2 = [(PSTableCell *)v5 valueLabel];
    valueLabel4 = valueLabel2;
    if (IsAccessibilityCategory)
    {
      leadingAnchor3 = [valueLabel2 leadingAnchor];
      contentView5 = [(PSMultilineTitleTableCell *)v5 contentView];
      layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
      v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [v51 setActive:1];

      valueLabel3 = [(PSTableCell *)v5 valueLabel];
      bottomAnchor4 = [valueLabel3 bottomAnchor];
      contentView6 = [(PSMultilineTitleTableCell *)v5 contentView];
      layoutMarginsGuide5 = [contentView6 layoutMarginsGuide];
      bottomAnchor5 = [layoutMarginsGuide5 bottomAnchor];
      v57 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      [v57 setActive:1];

      valueLabel4 = [(PSTableCell *)v5 valueLabel];
      topAnchor3 = [valueLabel4 topAnchor];
      titleLabel9 = [(PSTableCell *)v5 titleLabel];
      bottomAnchor6 = [titleLabel9 bottomAnchor];
      centerYAnchor = [topAnchor3 constraintEqualToAnchor:bottomAnchor6];
      [centerYAnchor setActive:1];
    }

    else
    {
      topAnchor3 = [valueLabel2 centerYAnchor];
      titleLabel9 = [(PSMultilineTitleTableCell *)v5 contentView];
      bottomAnchor6 = [titleLabel9 layoutMarginsGuide];
      centerYAnchor = [bottomAnchor6 centerYAnchor];
      v62 = [topAnchor3 constraintEqualToAnchor:centerYAnchor];
      [v62 setActive:1];
    }

    valueLabel5 = [(PSTableCell *)v5 valueLabel];
    LODWORD(v64) = 1148846080;
    [valueLabel5 setContentCompressionResistancePriority:0 forAxis:v64];

    if (!(IsAccessibilityCategory | (([(PSMultilineTitleTableCell *)v5 _shouldReverseLayoutDirection]& 1) == 0)))
    {
      valueLabel6 = [(PSTableCell *)v5 valueLabel];
      [valueLabel6 setTextAlignment:0];
    }

    valueLabel7 = [(PSTableCell *)v5 valueLabel];
    trailingAnchor3 = [valueLabel7 trailingAnchor];
    contentView7 = [(PSMultilineTitleTableCell *)v5 contentView];
    layoutMarginsGuide6 = [contentView7 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide6 trailingAnchor];
    v71 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    valueTrailingCon = v5->_valueTrailingCon;
    v5->_valueTrailingCon = v71;

    [(NSLayoutConstraint *)v5->_valueTrailingCon setActive:1];
    valueLabel8 = [(PSTableCell *)v5 valueLabel];
    LODWORD(v74) = 1144750080;
    [valueLabel8 setContentHuggingPriority:1 forAxis:v74];

    valueLabel9 = [(PSTableCell *)v5 valueLabel];
    [valueLabel9 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v5;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PSMultilineTitleTableCell;
  [(PSTableCell *)&v29 layoutSubviews];
  contentView = [(PSMultilineTitleTableCell *)self contentView];
  valueLabel = [(PSTableCell *)self valueLabel];
  v5 = [contentView containsView:valueLabel];

  if (v5)
  {
    accessoryType = [(PSMultilineTitleTableCell *)self accessoryType];
    valueTrailingCon = self->_valueTrailingCon;
    if (accessoryType == 1)
    {
      if (valueTrailingCon)
      {
        [(NSLayoutConstraint *)valueTrailingCon setActive:0];
        v8 = self->_valueTrailingCon;
        self->_valueTrailingCon = 0;
      }

      valueLabel2 = [(PSTableCell *)self valueLabel];
      trailingAnchor = [valueLabel2 trailingAnchor];
      contentView2 = [(PSMultilineTitleTableCell *)self contentView];
      safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
      trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v15 = self->_valueTrailingCon;
      self->_valueTrailingCon = v14;

      [(NSLayoutConstraint *)self->_valueTrailingCon setActive:1];
    }

    else
    {
      if (valueTrailingCon)
      {
        [(NSLayoutConstraint *)valueTrailingCon setActive:0];
        v16 = self->_valueTrailingCon;
        self->_valueTrailingCon = 0;
      }

      valueLabel3 = [(PSTableCell *)self valueLabel];
      trailingAnchor3 = [valueLabel3 trailingAnchor];
      contentView3 = [(PSMultilineTitleTableCell *)self contentView];
      layoutMarginsGuide = [contentView3 layoutMarginsGuide];
      trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
      v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

      [(NSLayoutConstraint *)v22 setActive:1];
      contentView4 = [(PSMultilineTitleTableCell *)self contentView];
      LODWORD(trailingAnchor3) = PSShouldInsetListView();

      if (trailingAnchor3)
      {
        [(NSLayoutConstraint *)v22 setConstant:-12.0];
      }

      v24 = self->_valueTrailingCon;
      self->_valueTrailingCon = v22;
    }
  }

  traitCollection = [(PSMultilineTitleTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if ([(PSMultilineTitleTableCell *)self _shouldReverseLayoutDirection])
  {
    if (!IsAccessibilityCategory)
    {
      valueLabel4 = [(PSTableCell *)self valueLabel];
      [valueLabel4 setTextAlignment:0];
    }
  }
}

@end