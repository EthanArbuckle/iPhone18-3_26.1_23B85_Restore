@interface ICSDataclassWithSubtitleTableViewCell
- (ICSDataclassWithSubtitleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (int64_t)_trailingTextAlignment;
- (void)_setupViews;
@end

@implementation ICSDataclassWithSubtitleTableViewCell

- (ICSDataclassWithSubtitleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = ICSDataclassWithSubtitleTableViewCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(ICSDataclassWithSubtitleTableViewCell *)v5 setSelectionStyle:0];
    [(ICSDataclassWithSubtitleTableViewCell *)v6 _setupViews];
  }

  return v6;
}

- (void)_setupViews
{
  v94[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICSDataclassWithSubtitleTableViewCell *)self textLabel];
  [v3 setHidden:1];

  v4 = [(ICSDataclassWithSubtitleTableViewCell *)self detailTextLabel];
  [v4 setHidden:1];

  v5 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
  [(ICSDataclassWithSubtitleTableViewCell *)self setIconView:v10];

  v11 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  [v11 setContentMode:1];

  v12 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  LODWORD(v14) = 1148846080;
  [v13 setContentHuggingPriority:0 forAxis:v14];

  v15 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v16];

  v17 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  v18 = [v17 layer];
  [v18 setOpacity:0.0];

  v88 = MEMORY[0x277CCAAD0];
  v19 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  v20 = [v19 heightAnchor];
  v21 = [v20 constraintEqualToConstant:29.0];
  v94[0] = v21;
  v22 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  v23 = [v22 heightAnchor];
  v24 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  v25 = [v24 widthAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v94[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
  [v88 activateConstraints:v27];

  v28 = objc_alloc(MEMORY[0x277D75A68]);
  v29 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  v93[0] = v29;
  v30 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  v93[1] = v30;
  v31 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  v93[2] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:3];
  v33 = [v28 initWithArrangedSubviews:v32];

  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 setAxis:1];
  [v33 setDistribution:3];
  v34 = v33;
  v89 = v33;
  [v33 setSpacing:0.0];
  v35 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
  [(ICSDataclassWithSubtitleTableViewCell *)self setPrimaryLabel:v35];

  v36 = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = *MEMORY[0x277D76918];
  v38 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v39 = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  [v39 setFont:v38];

  v40 = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  [v40 setNumberOfLines:0];

  v41 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
  [(ICSDataclassWithSubtitleTableViewCell *)self setSecondaryLabel:v41];

  v42 = [MEMORY[0x277D75348] secondaryLabelColor];
  v43 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [v43 setTextColor:v42];

  v44 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v45 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [v45 setFont:v44];

  v46 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];

  v47 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [v47 setNumberOfLines:0];

  v48 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
  [(ICSDataclassWithSubtitleTableViewCell *)self setTertiaryLabel:v48];

  v49 = [MEMORY[0x277D75348] secondaryLabelColor];
  v50 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [v50 setTextColor:v49];

  v51 = [(ICSDataclassWithSubtitleTableViewCell *)self _trailingTextAlignment];
  v52 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [v52 setTextAlignment:v51];

  v53 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

  v54 = [MEMORY[0x277D74300] preferredFontForTextStyle:v37];
  v55 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [v55 setFont:v54];

  v56 = objc_alloc(MEMORY[0x277D75A68]);
  v57 = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  v92[0] = v57;
  v58 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  v92[1] = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
  v60 = [v56 initWithArrangedSubviews:v59];

  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v60 setAxis:1];
  [v60 setDistribution:0];
  v61 = v60;
  v87 = v60;
  [v60 setSpacing:2.0];
  v62 = objc_alloc(MEMORY[0x277D75A68]);
  v91[0] = v34;
  v91[1] = v61;
  v63 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  v91[2] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
  v65 = [v62 initWithArrangedSubviews:v64];

  [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v65 setAxis:0];
  [v65 setDistribution:0];
  [v65 setSpacing:16.0];
  v66 = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  [v66 addSubview:v65];

  v67 = [v65 trailingAnchor];
  v68 = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  v69 = [v68 trailingAnchor];
  v70 = [v67 constraintEqualToAnchor:v69 constant:-8.0];
  [(ICSDataclassWithSubtitleTableViewCell *)self setTrailingConstraint:v70];

  v82 = MEMORY[0x277CCAAD0];
  v85 = [v65 topAnchor];
  v86 = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  v84 = [v86 topAnchor];
  v83 = [v85 constraintEqualToAnchor:v84 constant:10.0];
  v90[0] = v83;
  v81 = [v65 bottomAnchor];
  v71 = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  v72 = [v71 bottomAnchor];
  v73 = [v81 constraintEqualToAnchor:v72 constant:-10.0];
  v90[1] = v73;
  v74 = [v65 leadingAnchor];
  v75 = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  v76 = [v75 leadingAnchor];
  v77 = [v74 constraintEqualToAnchor:v76 constant:16.0];
  v90[2] = v77;
  v78 = [(ICSDataclassWithSubtitleTableViewCell *)self trailingConstraint];
  v90[3] = v78;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:4];
  [v82 activateConstraints:v79];

  v80 = *MEMORY[0x277D85DE8];
}

- (int64_t)_trailingTextAlignment
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 0;

  return 2 * v3;
}

@end