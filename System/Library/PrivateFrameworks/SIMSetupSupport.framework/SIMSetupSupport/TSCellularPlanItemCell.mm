@interface TSCellularPlanItemCell
- (TSCellularPlanItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setEnable:(BOOL)a3;
- (void)setIcon:(BOOL)a3;
@end

@implementation TSCellularPlanItemCell

- (TSCellularPlanItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v80[7] = *MEMORY[0x277D85DE8];
  v79.receiver = self;
  v79.super_class = TSCellularPlanItemCell;
  v4 = [(TSCellularPlanItemCell *)&v79 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    [(TSCellularPlanItemCell *)v4 setTitle:v10];

    v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    v12 = [(TSCellularPlanItemCell *)v4 title];
    [v12 setFont:v11];

    v13 = [(TSCellularPlanItemCell *)v4 title];
    [v13 setNumberOfLines:0];

    v14 = [(TSCellularPlanItemCell *)v4 title];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    [(TSCellularPlanItemCell *)v4 setPlanInfo:v15];

    v16 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    v17 = [(TSCellularPlanItemCell *)v4 planInfo];
    [v17 setFont:v16];

    v18 = [(TSCellularPlanItemCell *)v4 planInfo];
    [v18 setNumberOfLines:0];

    v19 = [(TSCellularPlanItemCell *)v4 planInfo];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    v20 = [MEMORY[0x277D75348] systemGrayColor];
    v21 = [(TSCellularPlanItemCell *)v4 planInfo];
    [v21 setTextColor:v20];

    [(TSCellularPlanItemCell *)v4 setSeparatorInset:0.0, 50.0, 0.0, 0.0];
    v22 = [(TSCellularPlanItemCell *)v4 contentView];
    [v22 setLayoutMargins:{0.0, 0.0, 0.0, 40.0}];

    v23 = [(TSCellularPlanItemCell *)v4 contentView];
    v24 = [(TSCellularPlanItemCell *)v4 title];
    [v23 addSubview:v24];

    v25 = [(TSCellularPlanItemCell *)v4 contentView];
    v26 = [(TSCellularPlanItemCell *)v4 planInfo];
    [v25 addSubview:v26];

    v61 = MEMORY[0x277CCAAD0];
    v78 = [(TSCellularPlanItemCell *)v4 title];
    v75 = [v78 topAnchor];
    v77 = [(TSCellularPlanItemCell *)v4 contentView];
    v76 = [v77 layoutMarginsGuide];
    v73 = [v76 topAnchor];
    v74 = [MEMORY[0x277D75520] defaultMetrics];
    [v74 scaledValueForValue:0.0];
    v72 = [v75 constraintEqualToAnchor:v73 constant:?];
    v80[0] = v72;
    v71 = [(TSCellularPlanItemCell *)v4 title];
    v68 = [v71 leadingAnchor];
    v70 = [(TSCellularPlanItemCell *)v4 contentView];
    v69 = [v70 layoutMarginsGuide];
    v66 = [v69 leadingAnchor];
    v67 = [MEMORY[0x277D75520] defaultMetrics];
    [v67 scaledValueForValue:30.0];
    v65 = [v68 constraintEqualToAnchor:v66 constant:?];
    v80[1] = v65;
    v64 = [(TSCellularPlanItemCell *)v4 title];
    v60 = [v64 trailingAnchor];
    v63 = [(TSCellularPlanItemCell *)v4 contentView];
    v62 = [v63 layoutMarginsGuide];
    v58 = [v62 trailingAnchor];
    v59 = [MEMORY[0x277D75520] defaultMetrics];
    [v59 scaledValueForValue:24.0];
    v57 = [v60 constraintEqualToAnchor:v58 constant:?];
    v80[2] = v57;
    v56 = [(TSCellularPlanItemCell *)v4 planInfo];
    v54 = [v56 topAnchor];
    v55 = [(TSCellularPlanItemCell *)v4 title];
    v53 = [v55 bottomAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v80[3] = v52;
    v51 = [(TSCellularPlanItemCell *)v4 planInfo];
    v48 = [v51 leadingAnchor];
    v50 = [(TSCellularPlanItemCell *)v4 contentView];
    v49 = [v50 layoutMarginsGuide];
    v46 = [v49 leadingAnchor];
    v47 = [MEMORY[0x277D75520] defaultMetrics];
    [v47 scaledValueForValue:30.0];
    v45 = [v48 constraintEqualToAnchor:v46 constant:?];
    v80[4] = v45;
    v44 = [(TSCellularPlanItemCell *)v4 planInfo];
    v41 = [v44 trailingAnchor];
    v43 = [(TSCellularPlanItemCell *)v4 contentView];
    v42 = [v43 layoutMarginsGuide];
    v40 = [v42 trailingAnchor];
    v27 = [MEMORY[0x277D75520] defaultMetrics];
    [v27 scaledValueForValue:24.0];
    v28 = [v41 constraintEqualToAnchor:v40 constant:?];
    v80[5] = v28;
    v29 = [(TSCellularPlanItemCell *)v4 contentView];
    v30 = [v29 bottomAnchor];
    v31 = [(TSCellularPlanItemCell *)v4 planInfo];
    v32 = [v31 bottomAnchor];
    v33 = [MEMORY[0x277D75520] defaultMetrics];
    [v33 scaledValueForValue:13.0];
    v34 = [v30 constraintEqualToAnchor:v32 constant:?];
    v80[6] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:7];
    [v61 activateConstraints:v35];

    v36 = objc_opt_new();
    v37 = [MEMORY[0x277D75348] clearColor];
    [v36 setBackgroundColor:v37];

    [(TSCellularPlanItemCell *)v4 setSelectedBackgroundView:v36];
  }

  v38 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setIcon:(BOOL)a3
{
  v3 = a3;
  self->_isPhysical = a3;
  v5 = [(TSCellularPlanItemCell *)self imageView];
  if (v3)
  {
    v6 = @"simcard";
  }

  else
  {
    v6 = @"esim";
  }

  v7 = [MEMORY[0x277D755B8] systemImageNamed:v6];
  [v5 setImage:v7];

  v9 = [(TSCellularPlanItemCell *)self imageView];
  v8 = [MEMORY[0x277D75348] labelColor];
  [v9 setTintColor:v8];
}

- (void)setEnable:(BOOL)a3
{
  if (a3)
  {
    [(TSCellularPlanItemCell *)self setUserInteractionEnabled:1];
    v4 = [(TSCellularPlanItemCell *)self title];
    [v4 setEnabled:1];

    v5 = [(TSCellularPlanItemCell *)self planInfo];
    [v5 setEnabled:1];

    v9 = [(TSCellularPlanItemCell *)self imageView];
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [(TSCellularPlanItemCell *)self setUserInteractionEnabled:?];
    v6 = [(TSCellularPlanItemCell *)self title];
    [v6 setEnabled:0];

    v7 = [(TSCellularPlanItemCell *)self planInfo];
    [v7 setEnabled:0];

    v9 = [(TSCellularPlanItemCell *)self imageView];
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v8 = ;
  [v9 setTintColor:v8];
}

@end