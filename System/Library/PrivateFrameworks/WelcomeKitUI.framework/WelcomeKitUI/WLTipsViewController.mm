@interface WLTipsViewController
- (WLTipsViewController)initWithTips:(id)tips;
- (void)viewDidLoad;
@end

@implementation WLTipsViewController

- (WLTipsViewController)initWithTips:(id)tips
{
  tipsCopy = tips;
  v8.receiver = self;
  v8.super_class = WLTipsViewController;
  v5 = [(WLTipsViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WLTipsViewController *)v5 setTips:tipsCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v142[3] = *MEMORY[0x277D85DE8];
  v136.receiver = self;
  v136.super_class = WLTipsViewController;
  [(WLTipsViewController *)&v136 viewDidLoad];
  title = [(WLTips *)self->_tips title];
  [(WLTipsViewController *)self setTitle:title];

  v4 = objc_alloc_init(MEMORY[0x277D759D8]);
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [v4 setBackgroundColor:systemBackgroundColor];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAlwaysBounceVertical:1];
  view = [(WLTipsViewController *)self view];
  [view addSubview:v4];

  v7 = MEMORY[0x277D755B8];
  image = [(WLTips *)self->_tips image];
  light = [image light];
  localFile = [light localFile];
  v11 = [v7 imageNamed:localFile];

  view2 = [(WLTipsViewController *)self view];
  [view2 frame];
  v14 = v13;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    navigationController = [(WLTipsViewController *)self navigationController];
    view3 = [navigationController view];
    [view3 frame];
    v14 = v19;
    v21 = v20;

    if (v14 == 0.0 || v21 == 0.0)
    {
      view4 = [(WLTipsViewController *)self view];
      [view4 frame];
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

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v34 setTextColor:labelColor];

  title2 = [(WLTips *)self->_tips title];
  [v34 setText:title2];

  [v34 setNumberOfLines:0];
  [v34 sizeToFit];
  v133 = v34;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v30, v31, v32, v33}];
  v39 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v38 setFont:v39];

  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [v38 setTextColor:labelColor2];

  desc = [(WLTips *)self->_tips desc];
  [v38 setText:desc];

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
  topAnchor = [v4 topAnchor];
  view5 = [(WLTipsViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v110 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v141[0] = v110;
  leadingAnchor = [v4 leadingAnchor];
  view6 = [(WLTipsViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46 = v45 = v4;
  v141[1] = v46;
  v135 = v45;
  [v45 trailingAnchor];
  v47 = v131 = v11;
  view7 = [(WLTipsViewController *)self view];
  trailingAnchor = [view7 trailingAnchor];
  v50 = [v47 constraintEqualToAnchor:trailingAnchor];
  v141[2] = v50;
  bottomAnchor = [v45 bottomAnchor];
  view8 = [(WLTipsViewController *)self view];
  bottomAnchor2 = [view8 bottomAnchor];
  +[WLProgressBar height];
  v55 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v54];
  v141[3] = v55;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:4];
  [v95 activateConstraints:v56];

  v106 = MEMORY[0x277CCAAD0];
  topAnchor3 = [v132 topAnchor];
  topAnchor4 = [v135 topAnchor];
  v116 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v140[0] = v116;
  leadingAnchor3 = [v132 leadingAnchor];
  leadingAnchor4 = [v135 leadingAnchor];
  v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v140[1] = v58;
  trailingAnchor2 = [v132 trailingAnchor];
  trailingAnchor3 = [v135 trailingAnchor];
  v61 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v140[2] = v61;
  bottomAnchor3 = [v132 bottomAnchor];
  bottomAnchor4 = [v135 bottomAnchor];
  v64 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v140[3] = v64;
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:4];
  [v106 activateConstraints:v65];

  v96 = MEMORY[0x277CCAAD0];
  topAnchor5 = [(WLTipsVideoView *)v134 topAnchor];
  topAnchor6 = [v132 topAnchor];
  v117 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v139[0] = v117;
  leadingAnchor5 = [(WLTipsVideoView *)v134 leadingAnchor];
  leadingAnchor6 = [v132 leadingAnchor];
  v102 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v139[1] = v102;
  trailingAnchor4 = [(WLTipsVideoView *)v134 trailingAnchor];
  trailingAnchor5 = [v132 trailingAnchor];
  v66 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v139[2] = v66;
  widthAnchor = [(WLTipsVideoView *)v134 widthAnchor];
  widthAnchor2 = [v135 widthAnchor];
  v69 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v139[3] = v69;
  heightAnchor = [(WLTipsVideoView *)v134 heightAnchor];
  v71 = [heightAnchor constraintEqualToConstant:v24];
  v139[4] = v71;
  bottomAnchor5 = [(WLTipsVideoView *)v134 bottomAnchor];
  topAnchor7 = [v133 topAnchor];
  v74 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7 constant:-25.0];
  v139[5] = v74;
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:6];
  [v96 activateConstraints:v75];

  v100 = MEMORY[0x277CCAAD0];
  topAnchor8 = [v133 topAnchor];
  bottomAnchor6 = [(WLTipsVideoView *)v134 bottomAnchor];
  v118 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:25.0];
  v138[0] = v118;
  leadingAnchor7 = [v133 leadingAnchor];
  leadingAnchor8 = [v135 leadingAnchor];
  v103 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:25.0];
  v138[1] = v103;
  trailingAnchor6 = [v133 trailingAnchor];
  trailingAnchor7 = [v135 trailingAnchor];
  v76 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-25.0];
  v138[2] = v76;
  widthAnchor3 = [v133 widthAnchor];
  widthAnchor4 = [v135 widthAnchor];
  v79 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 constant:-50.0];
  v138[3] = v79;
  bottomAnchor7 = [v133 bottomAnchor];
  topAnchor9 = [v130 topAnchor];
  v82 = [bottomAnchor7 constraintEqualToAnchor:topAnchor9 constant:-10.0];
  v138[4] = v82;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:5];
  [v100 activateConstraints:v83];

  v104 = MEMORY[0x277CCAAD0];
  topAnchor10 = [v130 topAnchor];
  bottomAnchor8 = [v133 bottomAnchor];
  v119 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8 constant:10.0];
  v137[0] = v119;
  leadingAnchor9 = [v130 leadingAnchor];
  leadingAnchor10 = [v133 leadingAnchor];
  v84 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v137[1] = v84;
  trailingAnchor8 = [v130 trailingAnchor];
  trailingAnchor9 = [v133 trailingAnchor];
  v87 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v137[2] = v87;
  widthAnchor5 = [v130 widthAnchor];
  widthAnchor6 = [v133 widthAnchor];
  v90 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
  v137[3] = v90;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:4];
  [v104 activateConstraints:v91];

  v92 = *MEMORY[0x277D85DE8];
}

@end