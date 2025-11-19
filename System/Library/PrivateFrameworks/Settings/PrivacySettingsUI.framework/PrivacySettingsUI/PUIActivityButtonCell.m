@interface PUIActivityButtonCell
- (PUIActivityButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PUIActivityButtonCell

- (PUIActivityButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v61.receiver = self;
  v61.super_class = PUIActivityButtonCell;
  v4 = [(PSTableCell *)&v61 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PUIActivityButtonCell *)v4 contentView];
    v7 = [v6 layoutMarginsGuide];

    v8 = [(PSTableCell *)v5 titleLabel];
    [v8 setHidden:1];

    v9 = [(PUIActivityButtonCell *)v5 detailTextLabel];
    [v9 setHidden:1];

    v10 = objc_opt_new();
    [(PUIActivityButtonCell *)v5 setPrimaryLabel:v10];

    v11 = [(PUIActivityButtonCell *)v5 primaryLabel];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(PSTableCell *)v5 titleLabel];
    v13 = [v12 font];
    v14 = [(PUIActivityButtonCell *)v5 primaryLabel];
    [v14 setFont:v13];

    v15 = [(PSTableCell *)v5 titleLabel];
    v16 = [v15 textColor];
    v17 = [(PUIActivityButtonCell *)v5 primaryLabel];
    [v17 setTextColor:v16];

    v18 = [(PUIActivityButtonCell *)v5 primaryLabel];
    [v18 setNumberOfLines:0];

    v19 = [(PUIActivityButtonCell *)v5 contentView];
    v20 = [(PUIActivityButtonCell *)v5 primaryLabel];
    [v19 addSubview:v20];

    v21 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(PUIActivityButtonCell *)v5 setSpinner:v21];

    v22 = [(PUIActivityButtonCell *)v5 spinner];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    v23 = [(PUIActivityButtonCell *)v5 contentView];
    v24 = [(PUIActivityButtonCell *)v5 spinner];
    [v23 addSubview:v24];

    v25 = [(PUIActivityButtonCell *)v5 spinner];
    [v25 setHidden:1];

    v26 = [(PUIActivityButtonCell *)v5 spinner];
    v27 = [v26 topAnchor];
    v28 = [v7 topAnchor];
    v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];
    [v29 setActive:1];

    v30 = [(PUIActivityButtonCell *)v5 spinner];
    v31 = [v30 leadingAnchor];
    v32 = [v7 leadingAnchor];
    v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32];
    [v33 setActive:1];

    v34 = [(PUIActivityButtonCell *)v5 spinner];
    v35 = [v34 bottomAnchor];
    v36 = [v7 bottomAnchor];
    v37 = [v35 constraintLessThanOrEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = [(PUIActivityButtonCell *)v5 primaryLabel];
    v39 = [v38 topAnchor];
    v40 = [v7 topAnchor];
    v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40];
    [v41 setActive:1];

    v42 = [(PUIActivityButtonCell *)v5 primaryLabel];
    v43 = [v42 leadingAnchor];
    v44 = [(PUIActivityButtonCell *)v5 spinner];
    v45 = [v44 trailingAnchor];
    v46 = [v43 constraintGreaterThanOrEqualToAnchor:v45 constant:8.0];
    [v46 setActive:1];

    v47 = [(PUIActivityButtonCell *)v5 primaryLabel];
    v48 = [v47 trailingAnchor];
    v49 = [v7 trailingAnchor];
    v50 = [v48 constraintLessThanOrEqualToAnchor:v49];
    [v50 setActive:1];

    v51 = [(PUIActivityButtonCell *)v5 primaryLabel];
    v52 = [v51 bottomAnchor];
    v53 = [v7 bottomAnchor];
    v54 = [v52 constraintLessThanOrEqualToAnchor:v53];
    [v54 setActive:1];

    v55 = [(PUIActivityButtonCell *)v5 primaryLabel];
    v56 = [v55 centerXAnchor];
    v57 = [(PUIActivityButtonCell *)v5 contentView];
    v58 = [v57 centerXAnchor];
    v59 = [v56 constraintEqualToAnchor:v58];
    [v59 setActive:1];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"PUIActivityButtonCellIsActive"];
  v7 = [v4 numberWithInt:{objc_msgSend(v6, "BOOLValue") ^ 1}];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  v19.receiver = self;
  v19.super_class = PUIActivityButtonCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:v5];
  v8 = [(PSTableCell *)self titleLabel];
  v9 = [v8 text];
  v10 = [(PUIActivityButtonCell *)self primaryLabel];
  [v10 setText:v9];

  v11 = [v5 objectForKeyedSubscript:@"PUIActivityButtonCellIsActive"];

  LODWORD(v8) = [v11 BOOLValue];
  v12 = [(PUIActivityButtonCell *)self spinner];
  v13 = v12;
  if (v8)
  {
    [v12 setHidden:0];

    v14 = [(PUIActivityButtonCell *)self spinner];
    [v14 startAnimating];

    v15 = [MEMORY[0x277D75348] systemGrayColor];
    v16 = [(PUIActivityButtonCell *)self primaryLabel];
    [v16 setTextColor:v15];
  }

  else
  {
    [v12 setHidden:1];

    v17 = [(PUIActivityButtonCell *)self spinner];
    [v17 stopAnimating];

    v15 = [(PSTableCell *)self titleLabel];
    v16 = [v15 textColor];
    v18 = [(PUIActivityButtonCell *)self primaryLabel];
    [v18 setTextColor:v16];
  }
}

@end