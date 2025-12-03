@interface TTRIUIDividedGridViewTableViewCell
- (CGRect)_separatorFrame;
- (TTRIUIDividedGridViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier gridViewType:(int64_t)type buttonTitles:(id)titles buttonAccessibilityLabels:(id)labels cellBackgroundColor:(id)color;
- (void)layoutSubviews;
@end

@implementation TTRIUIDividedGridViewTableViewCell

- (TTRIUIDividedGridViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier gridViewType:(int64_t)type buttonTitles:(id)titles buttonAccessibilityLabels:(id)labels cellBackgroundColor:(id)color
{
  v54[2] = *MEMORY[0x277D85DE8];
  titlesCopy = titles;
  labelsCopy = labels;
  colorCopy = color;
  v52.receiver = self;
  v52.super_class = TTRIUIDividedGridViewTableViewCell;
  v17 = [(TTRIUIDividedGridViewTableViewCell *)&v52 initWithStyle:style reuseIdentifier:identifier];
  if (v17)
  {
    v18 = [[TTRIDividedGridViewController alloc] initWithType:type buttonTitles:titlesCopy buttonAccessibilityLabels:labelsCopy cellBackgroundColor:colorCopy];
    v51 = titlesCopy;
    gridViewController = v17->_gridViewController;
    v17->_gridViewController = v18;

    view = [(TTRIDividedGridViewController *)v17->_gridViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    [contentView addSubview:view];

    contentView2 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v23 = MEMORY[0x277CCAAD0];
    contentView3 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v25 = [v23 constraintWithItem:contentView3 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
    [contentView2 addConstraint:v25];

    contentView4 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    [contentView4 setPreservesSuperviewLayoutMargins:1];

    [(TTRIUIDividedGridViewTableViewCell *)v17 setPreservesSuperviewLayoutMargins:1];
    leadingAnchor = [view leadingAnchor];
    contentView5 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    safeAreaLayoutGuide = [contentView5 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    trailingAnchor = [view trailingAnchor];
    contentView6 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    safeAreaLayoutGuide2 = [contentView6 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    v37 = MEMORY[0x277CCAAD0];
    v54[0] = v31;
    v54[1] = v36;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    [v37 activateConstraints:v38];

    contentView7 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v40 = [MEMORY[0x277CCAAD0] constraintWithItem:view attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:100000.0];
    [contentView7 addConstraint:v40];

    v41 = MEMORY[0x277CCAAD0];
    contentView8 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v43 = [v41 constraintWithItem:contentView8 attribute:8 relatedBy:1 toItem:view attribute:8 multiplier:1.0 constant:0.0];

    LODWORD(v44) = 1148829696;
    [v43 setPriority:v44];
    v45 = MEMORY[0x277CCAAD0];
    contentView9 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v47 = [v45 constraintWithItem:contentView9 attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];

    contentView10 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v53[0] = v43;
    v53[1] = v47;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    [contentView10 addConstraints:v49];

    titlesCopy = v51;
  }

  return v17;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = TTRIUIDividedGridViewTableViewCell;
  [(TTRIUIDividedGridViewTableViewCell *)&v10 layoutSubviews];
  if ([(TTRIUIDividedGridViewTableViewCell *)self _isWiderThanMaximum])
  {
    gridViewController = [(TTRIUIDividedGridViewTableViewCell *)self gridViewController];
    [gridViewController setPreferredWidth:100000.0];
  }

  else
  {
    [(TTRIUIDividedGridViewTableViewCell *)self bounds];
    Width = CGRectGetWidth(v11);
    [(TTRIUIDividedGridViewTableViewCell *)self safeAreaInsets];
    v6 = v5;
    [(TTRIUIDividedGridViewTableViewCell *)self safeAreaInsets];
    v8 = v6 + v7;
    gridViewController2 = [(TTRIUIDividedGridViewTableViewCell *)self gridViewController];
    [gridViewController2 setPreferredWidth:Width];

    gridViewController = [(TTRIUIDividedGridViewTableViewCell *)self gridViewController];
    [gridViewController setPreferredInset:v8];
  }
}

- (CGRect)_separatorFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end