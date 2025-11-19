@interface TTRIUIDividedGridViewTableViewCell
- (CGRect)_separatorFrame;
- (TTRIUIDividedGridViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 gridViewType:(int64_t)a5 buttonTitles:(id)a6 buttonAccessibilityLabels:(id)a7 cellBackgroundColor:(id)a8;
- (void)layoutSubviews;
@end

@implementation TTRIUIDividedGridViewTableViewCell

- (TTRIUIDividedGridViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 gridViewType:(int64_t)a5 buttonTitles:(id)a6 buttonAccessibilityLabels:(id)a7 cellBackgroundColor:(id)a8
{
  v54[2] = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v52.receiver = self;
  v52.super_class = TTRIUIDividedGridViewTableViewCell;
  v17 = [(TTRIUIDividedGridViewTableViewCell *)&v52 initWithStyle:a3 reuseIdentifier:a4];
  if (v17)
  {
    v18 = [[TTRIDividedGridViewController alloc] initWithType:a5 buttonTitles:v14 buttonAccessibilityLabels:v15 cellBackgroundColor:v16];
    v51 = v14;
    gridViewController = v17->_gridViewController;
    v17->_gridViewController = v18;

    v20 = [(TTRIDividedGridViewController *)v17->_gridViewController view];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    [v21 addSubview:v20];

    v22 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v23 = MEMORY[0x277CCAAD0];
    v24 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v25 = [v23 constraintWithItem:v24 attribute:9 relatedBy:0 toItem:v20 attribute:9 multiplier:1.0 constant:0.0];
    [v22 addConstraint:v25];

    v26 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    [v26 setPreservesSuperviewLayoutMargins:1];

    [(TTRIUIDividedGridViewTableViewCell *)v17 setPreservesSuperviewLayoutMargins:1];
    v27 = [v20 leadingAnchor];
    v28 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v29 = [v28 safeAreaLayoutGuide];
    v30 = [v29 leadingAnchor];
    v31 = [v27 constraintEqualToAnchor:v30];

    v32 = [v20 trailingAnchor];
    v33 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v34 = [v33 safeAreaLayoutGuide];
    v35 = [v34 trailingAnchor];
    v36 = [v32 constraintEqualToAnchor:v35];

    v37 = MEMORY[0x277CCAAD0];
    v54[0] = v31;
    v54[1] = v36;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    [v37 activateConstraints:v38];

    v39 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v40 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:100000.0];
    [v39 addConstraint:v40];

    v41 = MEMORY[0x277CCAAD0];
    v42 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v43 = [v41 constraintWithItem:v42 attribute:8 relatedBy:1 toItem:v20 attribute:8 multiplier:1.0 constant:0.0];

    LODWORD(v44) = 1148829696;
    [v43 setPriority:v44];
    v45 = MEMORY[0x277CCAAD0];
    v46 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v47 = [v45 constraintWithItem:v46 attribute:3 relatedBy:0 toItem:v20 attribute:3 multiplier:1.0 constant:0.0];

    v48 = [(TTRIUIDividedGridViewTableViewCell *)v17 contentView];
    v53[0] = v43;
    v53[1] = v47;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    [v48 addConstraints:v49];

    v14 = v51;
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
    v3 = [(TTRIUIDividedGridViewTableViewCell *)self gridViewController];
    [v3 setPreferredWidth:100000.0];
  }

  else
  {
    [(TTRIUIDividedGridViewTableViewCell *)self bounds];
    Width = CGRectGetWidth(v11);
    [(TTRIUIDividedGridViewTableViewCell *)self safeAreaInsets];
    v6 = v5;
    [(TTRIUIDividedGridViewTableViewCell *)self safeAreaInsets];
    v8 = v6 + v7;
    v9 = [(TTRIUIDividedGridViewTableViewCell *)self gridViewController];
    [v9 setPreferredWidth:Width];

    v3 = [(TTRIUIDividedGridViewTableViewCell *)self gridViewController];
    [v3 setPreferredInset:v8];
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