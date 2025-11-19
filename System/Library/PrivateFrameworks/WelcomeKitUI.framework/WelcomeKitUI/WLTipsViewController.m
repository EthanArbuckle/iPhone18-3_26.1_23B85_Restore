@interface WLTipsViewController
- (WLTipsViewController)initWithTips:(id)a3;
- (void)viewDidLoad;
@end

@implementation WLTipsViewController

- (WLTipsViewController)initWithTips:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WLTipsViewController;
  v5 = [(WLTipsViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WLTipsViewController *)v5 setTips:v4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v142[3] = *MEMORY[0x277D85DE8];
  v136.receiver = self;
  v136.super_class = WLTipsViewController;
  [(WLTipsViewController *)&v136 viewDidLoad];
  v3 = [(WLTips *)self->_tips title];
  [(WLTipsViewController *)self setTitle:v3];

  v4 = objc_alloc_init(MEMORY[0x277D759D8]);
  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAlwaysBounceVertical:1];
  v6 = [(WLTipsViewController *)self view];
  [v6 addSubview:v4];

  v7 = MEMORY[0x277D755B8];
  v8 = [(WLTips *)self->_tips image];
  v9 = [v8 light];
  v10 = [v9 localFile];
  v11 = [v7 imageNamed:v10];

  v12 = [(WLTipsViewController *)self view];
  [v12 frame];
  v14 = v13;

  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1)
  {
    v17 = [(WLTipsViewController *)self navigationController];
    v18 = [v17 view];
    [v18 frame];
    v14 = v19;
    v21 = v20;

    if (v14 == 0.0 || v21 == 0.0)
    {
      v22 = [(WLTipsViewController *)self view];
      [v22 frame];
      v14 = v23;
    }
  }

  [v11 size];
  v24 = 0.0;
  if (v25 > 0.0)
  {
    [v11 size];
    v27 = v14 * v26;
    [v11 size];
    v24 = v27 / v28;
  }

  v134 = [[WLTipsVideoView alloc] initWithTips:self->_tips];
  v29 = objc_alloc(MEMORY[0x277D756B8]);
  v30 = *MEMORY[0x277CBF3A0];
  v31 = *(MEMORY[0x277CBF3A0] + 8);
  v32 = *(MEMORY[0x277CBF3A0] + 16);
  v33 = *(MEMORY[0x277CBF3A0] + 24);
  v34 = [v29 initWithFrame:{*MEMORY[0x277CBF3A0], v31, v32, v33}];
  v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v34 setFont:v35];

  v36 = [MEMORY[0x277D75348] labelColor];
  [v34 setTextColor:v36];

  v37 = [(WLTips *)self->_tips title];
  [v34 setText:v37];

  [v34 setNumberOfLines:0];
  [v34 sizeToFit];
  v133 = v34;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v30, v31, v32, v33}];
  v39 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v38 setFont:v39];

  v40 = [MEMORY[0x277D75348] labelColor];
  [v38 setTextColor:v40];

  v41 = [(WLTips *)self->_tips desc];
  [v38 setText:v41];

  [v38 setNumberOfLines:0];
  [v38 sizeToFit];
  v130 = v38;
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = objc_alloc(MEMORY[0x277D75A68]);
  v142[0] = v134;
  v142[1] = v34;
  v142[2] = v38;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:3];
  v44 = [v42 initWithArrangedSubviews:v43];

  v132 = v44;
  [v44 setAxis:1];
  [v44 setAlignment:3];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 setLayoutMargins:{0.0, 0.0, 50.0, 0.0}];
  [v44 setLayoutMarginsRelativeArrangement:1];
  [v4 addSubview:v44];
  v95 = MEMORY[0x277CCAAD0];
  v120 = [v4 topAnchor];
  v125 = [(WLTipsViewController *)self view];
  v115 = [v125 topAnchor];
  v110 = [v120 constraintEqualToAnchor:v115];
  v141[0] = v110;
  v101 = [v4 leadingAnchor];
  v105 = [(WLTipsViewController *)self view];
  v98 = [v105 leadingAnchor];
  [v101 constraintEqualToAnchor:v98];
  v46 = v45 = v4;
  v141[1] = v46;
  v135 = v45;
  [v45 trailingAnchor];
  v47 = v131 = v11;
  v48 = [(WLTipsViewController *)self view];
  v49 = [v48 trailingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];
  v141[2] = v50;
  v51 = [v45 bottomAnchor];
  v52 = [(WLTipsViewController *)self view];
  v53 = [v52 bottomAnchor];
  +[WLProgressBar height];
  v55 = [v51 constraintEqualToAnchor:v53 constant:-v54];
  v141[3] = v55;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:4];
  [v95 activateConstraints:v56];

  v106 = MEMORY[0x277CCAAD0];
  v126 = [v132 topAnchor];
  v121 = [v135 topAnchor];
  v116 = [v126 constraintEqualToAnchor:v121];
  v140[0] = v116;
  v111 = [v132 leadingAnchor];
  v57 = [v135 leadingAnchor];
  v58 = [v111 constraintEqualToAnchor:v57];
  v140[1] = v58;
  v59 = [v132 trailingAnchor];
  v60 = [v135 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
  v140[2] = v61;
  v62 = [v132 bottomAnchor];
  v63 = [v135 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];
  v140[3] = v64;
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:4];
  [v106 activateConstraints:v65];

  v96 = MEMORY[0x277CCAAD0];
  v127 = [(WLTipsVideoView *)v134 topAnchor];
  v122 = [v132 topAnchor];
  v117 = [v127 constraintEqualToAnchor:v122];
  v139[0] = v117;
  v112 = [(WLTipsVideoView *)v134 leadingAnchor];
  v107 = [v132 leadingAnchor];
  v102 = [v112 constraintEqualToAnchor:v107];
  v139[1] = v102;
  v99 = [(WLTipsVideoView *)v134 trailingAnchor];
  v93 = [v132 trailingAnchor];
  v66 = [v99 constraintEqualToAnchor:v93];
  v139[2] = v66;
  v67 = [(WLTipsVideoView *)v134 widthAnchor];
  v68 = [v135 widthAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];
  v139[3] = v69;
  v70 = [(WLTipsVideoView *)v134 heightAnchor];
  v71 = [v70 constraintEqualToConstant:v24];
  v139[4] = v71;
  v72 = [(WLTipsVideoView *)v134 bottomAnchor];
  v73 = [v133 topAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:-25.0];
  v139[5] = v74;
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:6];
  [v96 activateConstraints:v75];

  v100 = MEMORY[0x277CCAAD0];
  v128 = [v133 topAnchor];
  v123 = [(WLTipsVideoView *)v134 bottomAnchor];
  v118 = [v128 constraintEqualToAnchor:v123 constant:25.0];
  v138[0] = v118;
  v113 = [v133 leadingAnchor];
  v108 = [v135 leadingAnchor];
  v103 = [v113 constraintEqualToAnchor:v108 constant:25.0];
  v138[1] = v103;
  v97 = [v133 trailingAnchor];
  v94 = [v135 trailingAnchor];
  v76 = [v97 constraintEqualToAnchor:v94 constant:-25.0];
  v138[2] = v76;
  v77 = [v133 widthAnchor];
  v78 = [v135 widthAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:-50.0];
  v138[3] = v79;
  v80 = [v133 bottomAnchor];
  v81 = [v130 topAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:-10.0];
  v138[4] = v82;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:5];
  [v100 activateConstraints:v83];

  v104 = MEMORY[0x277CCAAD0];
  v129 = [v130 topAnchor];
  v124 = [v133 bottomAnchor];
  v119 = [v129 constraintEqualToAnchor:v124 constant:10.0];
  v137[0] = v119;
  v114 = [v130 leadingAnchor];
  v109 = [v133 leadingAnchor];
  v84 = [v114 constraintEqualToAnchor:v109];
  v137[1] = v84;
  v85 = [v130 trailingAnchor];
  v86 = [v133 trailingAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];
  v137[2] = v87;
  v88 = [v130 widthAnchor];
  v89 = [v133 widthAnchor];
  v90 = [v88 constraintEqualToAnchor:v89];
  v137[3] = v90;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:4];
  [v104 activateConstraints:v91];

  v92 = *MEMORY[0x277D85DE8];
}

@end