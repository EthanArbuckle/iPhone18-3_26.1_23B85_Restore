@interface PSMultilineTitleTableCell
- (PSMultilineTitleTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation PSMultilineTitleTableCell

- (PSMultilineTitleTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v77.receiver = self;
  v77.super_class = PSMultilineTitleTableCell;
  v4 = [(PSTableCell *)&v77 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PSTableCell *)v4 titleLabel];
    [v6 setNumberOfLines:0];

    v7 = [(PSMultilineTitleTableCell *)v5 traitCollection];
    v8 = [v7 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

    v10 = [(PSTableCell *)v5 titleLabel];
    v11 = [v10 topAnchor];
    v12 = [(PSMultilineTitleTableCell *)v5 contentView];
    v13 = [v12 layoutMarginsGuide];
    v14 = [v13 topAnchor];
    v15 = [v11 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [(PSTableCell *)v5 titleLabel];
    v17 = [v16 leadingAnchor];
    v18 = [(PSMultilineTitleTableCell *)v5 contentView];
    v19 = [v18 layoutMarginsGuide];
    v20 = [v19 leadingAnchor];
    v21 = [v17 constraintEqualToAnchor:v20];
    titleLeadingCon = v5->_titleLeadingCon;
    v5->_titleLeadingCon = v21;

    [(NSLayoutConstraint *)v5->_titleLeadingCon setActive:1];
    v23 = [(PSTableCell *)v5 titleLabel];
    v24 = v23;
    if (IsAccessibilityCategory)
    {
      v25 = [v23 trailingAnchor];
      v26 = [(PSMultilineTitleTableCell *)v5 contentView];
      v27 = [v26 safeAreaLayoutGuide];
      v28 = [v27 trailingAnchor];
      v29 = [v25 constraintEqualToAnchor:v28];
      [v29 setActive:1];

      v30 = [(PSTableCell *)v5 titleLabel];
      v31 = [v30 bottomAnchor];
      v32 = [(PSTableCell *)v5 valueLabel];
      [v32 topAnchor];
    }

    else
    {
      v33 = [v23 bottomAnchor];
      v34 = [(PSMultilineTitleTableCell *)v5 contentView];
      v35 = [v34 layoutMarginsGuide];
      v36 = [v35 bottomAnchor];
      v37 = [v33 constraintEqualToAnchor:v36];
      [v37 setActive:1];

      v30 = [(PSTableCell *)v5 titleLabel];
      v31 = [v30 trailingAnchor];
      v32 = [(PSTableCell *)v5 valueLabel];
      [v32 leadingAnchor];
    }
    v38 = ;
    v39 = [v31 constraintEqualToAnchor:v38];
    [v39 setActive:1];

    v40 = [(PSTableCell *)v5 titleLabel];
    LODWORD(v41) = 1148846080;
    [v40 setContentCompressionResistancePriority:1 forAxis:v41];

    v42 = [(PSTableCell *)v5 titleLabel];
    LODWORD(v43) = 1148846080;
    [v42 setContentHuggingPriority:1 forAxis:v43];

    v44 = [(PSTableCell *)v5 titleLabel];
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

    v45 = [(PSTableCell *)v5 valueLabel];
    v46 = v45;
    if (IsAccessibilityCategory)
    {
      v47 = [v45 leadingAnchor];
      v48 = [(PSMultilineTitleTableCell *)v5 contentView];
      v49 = [v48 layoutMarginsGuide];
      v50 = [v49 leadingAnchor];
      v51 = [v47 constraintEqualToAnchor:v50];
      [v51 setActive:1];

      v52 = [(PSTableCell *)v5 valueLabel];
      v53 = [v52 bottomAnchor];
      v54 = [(PSMultilineTitleTableCell *)v5 contentView];
      v55 = [v54 layoutMarginsGuide];
      v56 = [v55 bottomAnchor];
      v57 = [v53 constraintEqualToAnchor:v56];
      [v57 setActive:1];

      v46 = [(PSTableCell *)v5 valueLabel];
      v58 = [v46 topAnchor];
      v59 = [(PSTableCell *)v5 titleLabel];
      v60 = [v59 bottomAnchor];
      v61 = [v58 constraintEqualToAnchor:v60];
      [v61 setActive:1];
    }

    else
    {
      v58 = [v45 centerYAnchor];
      v59 = [(PSMultilineTitleTableCell *)v5 contentView];
      v60 = [v59 layoutMarginsGuide];
      v61 = [v60 centerYAnchor];
      v62 = [v58 constraintEqualToAnchor:v61];
      [v62 setActive:1];
    }

    v63 = [(PSTableCell *)v5 valueLabel];
    LODWORD(v64) = 1148846080;
    [v63 setContentCompressionResistancePriority:0 forAxis:v64];

    if (!(IsAccessibilityCategory | (([(PSMultilineTitleTableCell *)v5 _shouldReverseLayoutDirection]& 1) == 0)))
    {
      v65 = [(PSTableCell *)v5 valueLabel];
      [v65 setTextAlignment:0];
    }

    v66 = [(PSTableCell *)v5 valueLabel];
    v67 = [v66 trailingAnchor];
    v68 = [(PSMultilineTitleTableCell *)v5 contentView];
    v69 = [v68 layoutMarginsGuide];
    v70 = [v69 trailingAnchor];
    v71 = [v67 constraintEqualToAnchor:v70];
    valueTrailingCon = v5->_valueTrailingCon;
    v5->_valueTrailingCon = v71;

    [(NSLayoutConstraint *)v5->_valueTrailingCon setActive:1];
    v73 = [(PSTableCell *)v5 valueLabel];
    LODWORD(v74) = 1144750080;
    [v73 setContentHuggingPriority:1 forAxis:v74];

    v75 = [(PSTableCell *)v5 valueLabel];
    [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v5;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PSMultilineTitleTableCell;
  [(PSTableCell *)&v29 layoutSubviews];
  v3 = [(PSMultilineTitleTableCell *)self contentView];
  v4 = [(PSTableCell *)self valueLabel];
  v5 = [v3 containsView:v4];

  if (v5)
  {
    v6 = [(PSMultilineTitleTableCell *)self accessoryType];
    valueTrailingCon = self->_valueTrailingCon;
    if (v6 == 1)
    {
      if (valueTrailingCon)
      {
        [(NSLayoutConstraint *)valueTrailingCon setActive:0];
        v8 = self->_valueTrailingCon;
        self->_valueTrailingCon = 0;
      }

      v9 = [(PSTableCell *)self valueLabel];
      v10 = [v9 trailingAnchor];
      v11 = [(PSMultilineTitleTableCell *)self contentView];
      v12 = [v11 safeAreaLayoutGuide];
      v13 = [v12 trailingAnchor];
      v14 = [v10 constraintEqualToAnchor:v13];
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

      v17 = [(PSTableCell *)self valueLabel];
      v18 = [v17 trailingAnchor];
      v19 = [(PSMultilineTitleTableCell *)self contentView];
      v20 = [v19 layoutMarginsGuide];
      v21 = [v20 trailingAnchor];
      v22 = [v18 constraintEqualToAnchor:v21];

      [(NSLayoutConstraint *)v22 setActive:1];
      v23 = [(PSMultilineTitleTableCell *)self contentView];
      LODWORD(v18) = PSShouldInsetListView();

      if (v18)
      {
        [(NSLayoutConstraint *)v22 setConstant:-12.0];
      }

      v24 = self->_valueTrailingCon;
      self->_valueTrailingCon = v22;
    }
  }

  v25 = [(PSMultilineTitleTableCell *)self traitCollection];
  v26 = [v25 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v26);

  if ([(PSMultilineTitleTableCell *)self _shouldReverseLayoutDirection])
  {
    if (!IsAccessibilityCategory)
    {
      v28 = [(PSTableCell *)self valueLabel];
      [v28 setTextAlignment:0];
    }
  }
}

@end