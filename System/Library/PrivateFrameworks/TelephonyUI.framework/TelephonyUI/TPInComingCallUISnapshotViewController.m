@interface TPInComingCallUISnapshotViewController
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 caption:(id)a4 window:(id)a5 preferredTitleFont:(id)a6;
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 window:(id)a4;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 caption:(id)a4 window:(id)a5 preferredTitleFont:(id)a6;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 window:(id)a4;
+ (id)posterDisplayNameComponentsForContact:(id)a3;
- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)a3 style:(int64_t)a4 contact:(id)a5 avatarImage:(id)a6;
- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)a3 style:(int64_t)a4 contact:(id)a5 fallbackText:(id)a6;
- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)a3 style:(int64_t)a4 nameString:(id)a5 avatarImage:(id)a6;
- (id)attachmentIdentifiersForStyle;
- (id)attachmentsForStyle;
- (id)generateOverlaysSnapshot;
- (id)identifierForStyle;
- (id)nameString;
- (void)capCallDetailsViewButtonSize;
- (void)hideElementsBasedOn:(int64_t)a3;
- (void)identifierForStyle;
- (void)moveMobileLabelToBeYAxisCenteredWithInfoButton;
- (void)setBackroundColor:(id)a3;
- (void)setLabelsColor:(id)a3;
- (void)setNameLabelFont:(id)a3;
- (void)setNameLabelTextColor:(id)a3;
- (void)setUpButton:(int64_t)a3;
- (void)setUpConstraints;
- (void)setUpOverlayContentIfNeeded;
- (void)setUpOverlaysContainer;
- (void)setupAvatarViewIfNeeded;
- (void)setupLabels;
- (void)snapshotWithOptions:(unint64_t)a3 windowScene:(id)a4 useAttachmentConfiguration:(BOOL)a5 completionBlock:(id)a6;
- (void)viewDidLoad;
@end

@implementation TPInComingCallUISnapshotViewController

- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)a3 style:(int64_t)a4 nameString:(id)a5 avatarImage:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = TPInComingCallUISnapshotViewController;
  v13 = [(TPInComingCallUISnapshotViewController *)&v19 init];
  v14 = v13;
  if (v13)
  {
    [(TPInComingCallUISnapshotViewController *)v13 setConfiguration:v10];
    [(TPInComingCallUISnapshotViewController *)v14 setStyle:a4];
    v15 = objc_opt_new();
    v16 = v15;
    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = &stru_1F2CA8008;
    }

    [v15 setGivenName:v17];
    [(TPInComingCallUISnapshotViewController *)v14 setContact:v16];
    [(TPInComingCallUISnapshotViewController *)v14 setCustomAvatar:v12];
  }

  return v14;
}

- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)a3 style:(int64_t)a4 contact:(id)a5 avatarImage:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = TPInComingCallUISnapshotViewController;
  v13 = [(TPInComingCallUISnapshotViewController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(TPInComingCallUISnapshotViewController *)v13 setConfiguration:v10];
    [(TPInComingCallUISnapshotViewController *)v14 setStyle:a4];
    [(TPInComingCallUISnapshotViewController *)v14 setContact:v11];
    [(TPInComingCallUISnapshotViewController *)v14 setCustomAvatar:v12];
  }

  return v14;
}

- (id)nameString
{
  v3 = [(TPInComingCallUISnapshotViewController *)self configuration];

  v4 = [(TPInComingCallUISnapshotViewController *)self contact];
  if (v3)
  {
    [TPIncomingCallMetricsProvider posterDisplayNameForContact:v4];
  }

  else
  {
    [v4 displayName];
  }
  v5 = ;

  return v5;
}

+ (id)posterDisplayNameComponentsForContact:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696ADF0] componentsForContact:v3];
  v5 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  [v5 setStyle:1];
  v6 = [v5 stringFromPersonNameComponents:v4];
  v7 = [v3 nickname];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v3 nickname];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [v3 nickname];
      v29[0] = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = v29;
LABEL_13:
      v18 = [v12 arrayWithObjects:v13 count:1];
      goto LABEL_18;
    }
  }

  [v5 setStyle:2];
  v11 = [v3 givenName];
  if ([v11 length])
  {
    v14 = [v3 familyName];
    v15 = [v14 length];

    if (!v15)
    {
      goto LABEL_11;
    }

    v11 = [v5 stringFromPersonNameComponents:v4];
    v16 = [v3 givenName];
    if ([v11 rangeOfString:v16] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [v3 familyName];
      if ([v11 rangeOfString:v17] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = [v11 rangeOfString:@" "];

        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = [v3 givenName];
          v28[0] = v21;
          v25 = [v3 familyName];
          v28[1] = v25;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];

          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_10:

LABEL_11:
  [v5 setStyle:1];
  v11 = [v5 stringFromPersonNameComponents:v4];
  if ([v11 length])
  {
    v27 = v11;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v27;
    goto LABEL_13;
  }

  v19 = [v3 organizationName];
  v20 = [v19 length];

  if (v20)
  {
    v21 = [v3 organizationName];
    v26 = v21;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
LABEL_16:

    goto LABEL_18;
  }

  v18 = 0;
LABEL_18:

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TPInComingCallUISnapshotViewController;
  [(TPInComingCallUISnapshotViewController *)&v3 viewDidLoad];
  [(TPInComingCallUISnapshotViewController *)self setUpOverlayContentIfNeeded];
}

- (void)setUpOverlayContentIfNeeded
{
  v3 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];

  if (!v3)
  {
    [(TPInComingCallUISnapshotViewController *)self setUpOverlaysContainer];
    v4 = [(TPInComingCallUISnapshotViewController *)self view];
    v5 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    [v4 addSubview:v5];

    [(TPInComingCallUISnapshotViewController *)self setupLabels];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:1];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:2];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:3];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:4];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:5];
    [(TPInComingCallUISnapshotViewController *)self setupAvatarViewIfNeeded];
    [(TPInComingCallUISnapshotViewController *)self setUpConstraints];
    v6 = [(TPInComingCallUISnapshotViewController *)self style];

    [(TPInComingCallUISnapshotViewController *)self hideElementsBasedOn:v6];
  }
}

- (void)setUpOverlaysContainer
{
  if (([(TPInComingCallUISnapshotViewController *)self isViewLoaded]& 1) != 0)
  {
    [(TPInComingCallUISnapshotViewController *)self view];
  }

  else
  {
    [MEMORY[0x1E69DCEB0] mainScreen];
  }
  v3 = ;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v7, v9, v11}];
  [(TPInComingCallUISnapshotViewController *)self setOverlaysContainerView:v12];

  v13 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [v13 setAutoresizingMask:18];
}

- (void)setUpConstraints
{
  v154[2] = *MEMORY[0x1E69E9840];
  +[TPIncomingCallMetricsProvider incomingCallAndInCallControlsBottomPadding];
  v4 = v3;
  +[TPIncomingCallMetricsProvider sideMarginForDoubleButton];
  v6 = v5;
  +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTop_ForSnapshot];
  v8 = v7;
  +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTrail_ForSnapshot];
  v10 = v9;
  v11 = [MEMORY[0x1E695DF70] array];
  v146 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  v138 = [v146 topAnchor];
  v142 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  v12 = [v142 topAnchor];
  v13 = [v138 constraintEqualToAnchor:v12 constant:v8];
  v154[0] = v13;
  v14 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  v15 = [v14 trailingAnchor];
  v16 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:-v10];
  v154[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:2];
  v150 = v11;
  [v11 addObjectsFromArray:v19];

  v20 = [(TPInComingCallUISnapshotViewController *)self avatarView];

  if (v20)
  {
    v147 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    v135 = [v147 topAnchor];
    v143 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    v139 = [v143 safeAreaLayoutGuide];
    v132 = [v139 topAnchor];
    +[TPIncomingCallMetricsProvider twelvePercentOfDeviceHeight];
    v129 = [v135 constraintEqualToAnchor:v132 constant:?];
    v153[0] = v129;
    v126 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    v120 = [v126 leadingAnchor];
    v123 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    v117 = [v123 safeAreaLayoutGuide];
    v114 = [v117 leadingAnchor];
    v111 = [v120 constraintEqualToAnchor:v114 constant:v6];
    v153[1] = v111;
    v108 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    v105 = [v108 widthAnchor];
    +[TPUIConfiguration defaultHeight];
    v103 = [v105 constraintEqualToConstant:?];
    v153[2] = v103;
    v101 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    v99 = [v101 heightAnchor];
    +[TPUIConfiguration defaultHeight];
    v97 = [v99 constraintEqualToConstant:?];
    v153[3] = v97;
    v95 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v89 = [v95 topAnchor];
    v93 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    v91 = [v93 safeAreaLayoutGuide];
    v87 = [v91 topAnchor];
    +[TPIncomingCallMetricsProvider twelvePercentOfDeviceHeight];
    v85 = [v89 constraintEqualToAnchor:v87 constant:v21 + 4.0];
    v153[4] = v85;
    v83 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v79 = [v83 leadingAnchor];
    v81 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    v77 = [v81 safeAreaLayoutGuide];
    v75 = [v77 leadingAnchor];
    v73 = [v79 constraintEqualToAnchor:v75];
    v153[5] = v73;
    v71 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    v68 = [v71 topAnchor];
    v69 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v67 = [v69 bottomAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v153[6] = v66;
    v65 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    v64 = [v65 leadingAnchor];
    v22 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    v23 = [v22 trailingAnchor];
    v24 = [v64 constraintEqualToAnchor:v23 constant:16.0];
    v153[7] = v24;
    v25 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    v26 = [v25 trailingAnchor];
    v27 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    v28 = [v27 trailingAnchor];
    v29 = -v6;
    v30 = [v26 constraintEqualToAnchor:v28 constant:-v6];
    v153[8] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:9];
    [v150 addObjectsFromArray:v31];
  }

  else
  {
    v148 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v136 = [v148 topAnchor];
    v144 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    v140 = [v144 safeAreaLayoutGuide];
    v133 = [v140 topAnchor];
    +[TPIncomingCallMetricsProvider sixPercentOfDeviceHeight];
    v130 = [v136 constraintEqualToAnchor:v133 constant:?];
    v152[0] = v130;
    v127 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v121 = [v127 centerXAnchor];
    v124 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    v118 = [v124 safeAreaLayoutGuide];
    v115 = [v118 centerXAnchor];
    v112 = [v121 constraintEqualToAnchor:v115];
    v152[1] = v112;
    v109 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    v106 = [v109 topAnchor];
    v32 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v33 = [v32 bottomAnchor];
    v34 = [v106 constraintEqualToAnchor:v33 constant:2.0];
    v152[2] = v34;
    v35 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    v36 = [v35 centerXAnchor];
    v37 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    v38 = [v37 centerXAnchor];
    v39 = [v36 constraintEqualToAnchor:v38];
    v152[3] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:4];
    [v150 addObjectsFromArray:v40];

    v29 = -v6;
  }

  v149 = [(TPInComingCallUISnapshotViewController *)self declineButton];
  v41 = [v149 bottomAnchor];
  v141 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [v141 bottomAnchor];
  v42 = -v4;
  v137 = v145 = v41;
  v134 = [v41 constraintEqualToAnchor:v42 constant:?];
  v151[0] = v134;
  v131 = [(TPInComingCallUISnapshotViewController *)self declineButton];
  v43 = [v131 leadingAnchor];
  v125 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [v125 leadingAnchor];
  v122 = v128 = v43;
  v119 = [v43 constraintEqualToAnchor:v6 constant:?];
  v151[1] = v119;
  v116 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  v44 = [v116 bottomAnchor];
  v110 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [v110 bottomAnchor];
  v107 = v113 = v44;
  v104 = [v44 constraintEqualToAnchor:v42 constant:?];
  v151[2] = v104;
  v102 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  v45 = [v102 trailingAnchor];
  v98 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [v98 trailingAnchor];
  v96 = v100 = v45;
  v94 = [v45 constraintEqualToAnchor:v29 constant:?];
  v151[3] = v94;
  v92 = [(TPInComingCallUISnapshotViewController *)self messageButton];
  v46 = [v92 centerXAnchor];
  v88 = [(TPInComingCallUISnapshotViewController *)self declineButton];
  [v88 centerXAnchor];
  v86 = v90 = v46;
  v84 = [v46 constraintEqualToAnchor:?];
  v151[4] = v84;
  v82 = [(TPInComingCallUISnapshotViewController *)self messageButton];
  v47 = [v82 bottomAnchor];
  v78 = [(TPInComingCallUISnapshotViewController *)self declineButton];
  v48 = [v78 topAnchor];
  v49 = +[TPUIConfiguration inCallBottomBarSpacing];
  v50 = 30.0;
  LODWORD(v51) = 30.0;
  if (v49 != 6)
  {
    v52 = +[TPUIConfiguration inCallBottomBarSpacing];
    LODWORD(v51) = 24.0;
    if (v52 == 3)
    {
      *&v51 = 30.0;
    }
  }

  v80 = v47;
  v76 = v48;
  v74 = [v47 constraintEqualToAnchor:v48 constant:-*&v51];
  v151[5] = v74;
  v72 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
  v53 = [v72 centerXAnchor];
  v54 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  v55 = [v54 centerXAnchor];
  v70 = v53;
  v56 = [v53 constraintEqualToAnchor:v55];
  v151[6] = v56;
  v57 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
  v58 = [v57 bottomAnchor];
  v59 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  v60 = [v59 topAnchor];
  if (+[TPUIConfiguration inCallBottomBarSpacing]!= 6)
  {
    if (+[TPUIConfiguration inCallBottomBarSpacing]== 3)
    {
      v50 = 30.0;
    }

    else
    {
      v50 = 24.0;
    }
  }

  v61 = [v58 constraintEqualToAnchor:v60 constant:-v50];
  v151[7] = v61;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:8];
  [v150 addObjectsFromArray:v62];

  [MEMORY[0x1E696ACD8] activateConstraints:v150];
  v63 = *MEMORY[0x1E69E9840];
}

- (void)setupLabels
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v3 = getPRPosterLabelClass_softClass;
  v28 = getPRPosterLabelClass_softClass;
  if (!getPRPosterLabelClass_softClass)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __getPRPosterLabelClass_block_invoke;
    v24[3] = &unk_1E7C0C110;
    v24[4] = &v25;
    __getPRPosterLabelClass_block_invoke(v24);
    v3 = v26[3];
  }

  v4 = v3;
  _Block_object_dispose(&v25, 8);
  v5 = objc_alloc_init(v3);
  [(TPInComingCallUISnapshotViewController *)self setMobileLabel:v5];

  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(TPInComingCallUISnapshotViewController *)self setNameLabel:v6];

  v7 = [(TPInComingCallUISnapshotViewController *)self nameString];
  v8 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [v8 setText:v7];

  v9 = TelephonyUIBundle();
  v10 = [v9 localizedStringForKey:@"MOBILE" value:&stru_1F2CA8008 table:@"General"];
  v11 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [v11 setText:v10];

  v12 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  v13 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [v12 addSubview:v13];

  v14 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  v15 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [v14 addSubview:v15];

  v16 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [v18 setMarqueeEnabled:1];

  v19 = [(TPInComingCallUISnapshotViewController *)self avatarView];
  if (v19)
  {
    +[TPIncomingCallMetricsProvider nameLabelFontWithAvatar];
  }

  else
  {
    +[TPIncomingCallMetricsProvider nameLabelFont];
  }
  v20 = ;
  v21 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [v21 setFont:v20];

  v22 = +[TPIncomingCallMetricsProvider mobileLabelFont];
  v23 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [v23 setFont:v22];
}

- (void)setupAvatarViewIfNeeded
{
  v3 = [(TPInComingCallUISnapshotViewController *)self customAvatar];

  if (v3)
  {
    v4 = [(TPInComingCallUISnapshotViewController *)self customAvatar];
  }

  else
  {
    v5 = [(TPInComingCallUISnapshotViewController *)self contact];
    v6 = [v5 thumbnailImageData];

    if (v6)
    {
      v7 = MEMORY[0x1E69DCAB8];
      v8 = [(TPInComingCallUISnapshotViewController *)self contact];
      v9 = [v8 thumbnailImageData];
      v4 = [v7 imageWithData:v9];
    }

    else
    {
      v4 = 0;
    }
  }

  if ([(TPInComingCallUISnapshotViewController *)self style]!= 6)
  {
    goto LABEL_16;
  }

  v10 = [(TPInComingCallUISnapshotViewController *)self avatarView];

  if (v10 || !v4)
  {
    goto LABEL_16;
  }

  v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
  [(TPInComingCallUISnapshotViewController *)self setAvatarView:v11];

  v12 = [(TPInComingCallUISnapshotViewController *)self avatarView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  +[TPUIConfiguration defaultHeight];
  v14 = v13 * 0.5;
  v15 = [(TPInComingCallUISnapshotViewController *)self avatarView];
  v16 = [v15 layer];
  [v16 setCornerRadius:v14];

  v17 = [(TPInComingCallUISnapshotViewController *)self avatarView];
  v18 = [v17 layer];
  [v18 setMasksToBounds:1];

  v19 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  v20 = [(TPInComingCallUISnapshotViewController *)self avatarView];
  [v19 addSubview:v20];

  v21 = [(TPInComingCallUISnapshotViewController *)self customAvatar];
  if (v21)
  {
  }

  else
  {
    v29 = [(TPInComingCallUISnapshotViewController *)self contact];
    v30 = [v29 contactImageBackgroundColors];
    v31 = [v30 count];

    if (v31)
    {
      v32 = [(TPInComingCallUISnapshotViewController *)self contact];
      v33 = [v32 contactImageBackgroundColors];

      if (!v33)
      {
        goto LABEL_16;
      }

      v24 = [(TPInComingCallUISnapshotViewController *)self contact];
      v34 = [v24 contactImageBackgroundColors];
      v25 = [v34 firstObject];

      goto LABEL_14;
    }
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v22 = getCNImageDerivedColorGeneratorClass_softClass;
  v39 = getCNImageDerivedColorGeneratorClass_softClass;
  if (!getCNImageDerivedColorGeneratorClass_softClass)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __getCNImageDerivedColorGeneratorClass_block_invoke;
    v35[3] = &unk_1E7C0C110;
    v35[4] = &v36;
    __getCNImageDerivedColorGeneratorClass_block_invoke(v35);
    v22 = v37[3];
  }

  v23 = v22;
  _Block_object_dispose(&v36, 8);
  v24 = [v22 colorsForImageRef:{objc_msgSend(v4, "CGImage")}];
  v25 = [v24 firstObject];
LABEL_14:

  if (v25)
  {
    v26 = [MEMORY[0x1E69DC888] blackColor];
    v27 = [v26 colorWithAlphaComponent:0.1];
    v28 = [v25 _colorBlendedWithColor:v27];

    [(TPInComingCallUISnapshotViewController *)self setBackroundColor:v28];
  }

LABEL_16:
}

- (void)setUpButton:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v49 = [TPInComingCallBottomBarSupplementalButton alloc];
      v50 = [(TPInComingCallBottomBarSupplementalButton *)v49 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(TPInComingCallUISnapshotViewController *)self setRemindMeButton:v50];

      v51 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
      v52 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      [v51 addSubview:v52];

      v53 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

      v56 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:39 textStyle:*MEMORY[0x1E69DDDC8] scale:-1 isStaticSize:1];
      v54 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      [v54 setImage:v56 forState:0];

      v16 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      v17 = TelephonyUIBundle();
      v18 = v17;
      v19 = @"CALL_BACK_LATER";
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      v10 = [TPInComingCallBottomBarSupplementalButton alloc];
      v11 = [(TPInComingCallBottomBarSupplementalButton *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(TPInComingCallUISnapshotViewController *)self setMessageButton:v11];

      v12 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
      v13 = [(TPInComingCallUISnapshotViewController *)self messageButton];
      [v12 addSubview:v13];

      v14 = [(TPInComingCallUISnapshotViewController *)self messageButton];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

      v56 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:14 textStyle:*MEMORY[0x1E69DDDC8] scale:-1 isStaticSize:1];
      v15 = [(TPInComingCallUISnapshotViewController *)self messageButton];
      [v15 setImage:v56 forState:0];

      v16 = [(TPInComingCallUISnapshotViewController *)self messageButton];
      v17 = TelephonyUIBundle();
      v18 = v17;
      v19 = @"SEND_MESSAGE";
    }

    v55 = [v17 localizedStringForKey:v19 value:&stru_1F2CA8008 table:@"General"];
    [v16 setTitle:v55 forState:0];
  }

  else
  {
    if (a3 == 3)
    {
      v20 = objc_alloc_init(TPInComingCallBottomBarButton);
      [(TPInComingCallUISnapshotViewController *)self setDeclineButton:v20];

      v21 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
      v22 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [v21 addSubview:v22];

      v23 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

      v56 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:2 textStyle:*MEMORY[0x1E69DDDB8] scale:3 isStaticSize:1];
      v24 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [v24 setImage:v56 forState:0];

      v25 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      v26 = TelephonyUIBundle();
      v27 = [v26 localizedStringForKey:@"DECLINE" value:&stru_1F2CA8008 table:@"General"];
      [v25 setTitle:v27 forState:0];

      v28 = [MEMORY[0x1E69DC888] systemRedColor];
      v29 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [v29 setBackgroundColor:v28];

      v30 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      v31 = [v30 titleLabel];
      [v31 setAdjustsFontSizeToFitWidth:0];

      v32 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      v33 = [v32 titleLabel];
      [v33 setPreferredMaxLayoutWidth:105.0];

      v34 = [(TPInComingCallUISnapshotViewController *)self declineButton];
    }

    else
    {
      if (a3 != 4)
      {
        if (a3 == 5)
        {
          v4 = [MEMORY[0x1E69DC738] buttonWithType:4];
          [(TPInComingCallUISnapshotViewController *)self setCallDetailsViewButton:v4];

          v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
          v6 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
          [v6 setTintColor:v5];

          v7 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
          [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

          v8 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
          v9 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
          [v8 addSubview:v9];

          [(TPInComingCallUISnapshotViewController *)self capCallDetailsViewButtonSize];
        }

        return;
      }

      v35 = objc_alloc_init(TPInComingCallBottomBarButton);
      [(TPInComingCallUISnapshotViewController *)self setAcceptButton:v35];

      v36 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
      v37 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [v36 addSubview:v37];

      v38 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

      v56 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:1 textStyle:*MEMORY[0x1E69DDDB8] scale:3 isStaticSize:1];
      v39 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [v39 setImage:v56 forState:0];

      v40 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      v41 = TelephonyUIBundle();
      v42 = [v41 localizedStringForKey:@"ACCEPT" value:&stru_1F2CA8008 table:@"General"];
      [v40 setTitle:v42 forState:0];

      v43 = [MEMORY[0x1E69DC888] systemGreenColor];
      v44 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [v44 setBackgroundColor:v43];

      v45 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      v46 = [v45 titleLabel];
      [v46 setAdjustsFontSizeToFitWidth:0];

      v47 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      v48 = [v47 titleLabel];
      [v48 setPreferredMaxLayoutWidth:105.0];

      v34 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
    }

    v16 = v34;
    [v34 setClipsToBounds:0];
  }
}

- (void)capCallDetailsViewButtonSize
{
  v3 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  v2 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
  [v3 setMaximumContentSizeCategory:v2];
}

- (void)hideElementsBasedOn:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v17 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      [v17 setHidden:1];

      v18 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [v18 setHidden:1];

      v19 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [v19 setHidden:1];

      v20 = [(TPInComingCallUISnapshotViewController *)self messageButton];
      [v20 setHidden:1];

      v21 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
      [v21 setHidden:1];

      v22 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
      [v22 setHidden:1];

      v9 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
LABEL_11:
      v23 = v9;
      [v9 setHidden:1];

      v16 = [(TPInComingCallUISnapshotViewController *)self fakeLabel];
      goto LABEL_12;
    }

    if (a3 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
LABEL_8:
    v10 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
    [v10 setHidden:1];

    v11 = [(TPInComingCallUISnapshotViewController *)self declineButton];
    [v11 setHidden:1];

    v12 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
    [v12 setHidden:1];

    v13 = [(TPInComingCallUISnapshotViewController *)self messageButton];
    [v13 setHidden:1];

    v14 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
    [v14 setHidden:1];

    goto LABEL_9;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return;
    }

    v4 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
    [v4 setHidden:1];

    v5 = [(TPInComingCallUISnapshotViewController *)self declineButton];
    [v5 setHidden:1];

    v6 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
    [v6 setHidden:1];

    v7 = [(TPInComingCallUISnapshotViewController *)self messageButton];
    [v7 setHidden:1];

    v8 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
    [v8 setHidden:1];

    v9 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    goto LABEL_11;
  }

LABEL_9:
  v15 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [v15 setHidden:1];

  v16 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
LABEL_12:
  v24 = v16;
  [v16 setHidden:1];
}

- (void)setNameLabelFont:(id)a3
{
  v4 = a3;
  v5 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [v5 setFont:v4];

  v6 = [(TPInComingCallUISnapshotViewController *)self fakeLabel];
  [v6 setFont:v4];
}

- (void)setNameLabelTextColor:(id)a3
{
  v4 = a3;
  v5 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [v5 setTextColor:v4];

  v6 = [(TPInComingCallUISnapshotViewController *)self fakeLabel];
  [v6 setTextColor:v4];
}

- (void)setBackroundColor:(id)a3
{
  v4 = a3;
  v5 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 _colorDifferenceFromColor:v6];
  v8 = v7;

  if (v8 > 0.5)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v9 = ;
  [(TPInComingCallUISnapshotViewController *)self setLabelsColor:v9];
}

- (void)setLabelsColor:(id)a3
{
  v4 = a3;
  [(TPInComingCallUISnapshotViewController *)self setNameLabelTextColor:v4];
  v5 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [v5 setTextColor:v4];

  v6 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  [v6 setTitleColor:v4 forState:0];

  v7 = [(TPInComingCallUISnapshotViewController *)self declineButton];
  [v7 setTitleColor:v4 forState:0];

  v8 = [(TPInComingCallUISnapshotViewController *)self messageButton];
  [v8 setTitleColor:v4 forState:0];

  v9 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
  [v9 setTitleColor:v4 forState:0];
}

- (id)generateOverlaysSnapshot
{
  [(TPInComingCallUISnapshotViewController *)self setUpOverlayContentIfNeeded];
  v3 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  v4 = [v3 layer];

  v5 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v12 = v11;
  v18.width = v7;
  v18.height = v9;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v12);

  CurrentContext = UIGraphicsGetCurrentContext();
  v14 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [v14 frame];
  CGContextClipToRect(CurrentContext, v19);

  [v4 renderInContext:UIGraphicsGetCurrentContext()];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)identifierForStyle
{
  v2 = [(TPInComingCallUISnapshotViewController *)self style];
  if (v2 == 1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v3 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr;
    v12 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr;
    if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr)
    {
      v5 = PosterBoardUIServicesLibrary();
      v10[3] = dlsym(v5, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentView");
      getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr = v10[3];
      v3 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v3)
    {
      [TPInComingCallUISnapshotViewController identifierForStyle];
    }
  }

  else if (v2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v3 = getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr;
    v12 = getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr;
    if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr)
    {
      v6 = PosterBoardUIServicesLibrary();
      v10[3] = dlsym(v6, "PRPosterSnapshotDefinitionIdentifierIncomingCallComposite");
      getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr = v10[3];
      v3 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v3)
    {
      [TPInComingCallUISnapshotViewController identifierForStyle];
    }
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v3 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr;
    v12 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr;
    if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr)
    {
      v4 = PosterBoardUIServicesLibrary();
      v10[3] = dlsym(v4, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnly");
      getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr = v10[3];
      v3 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v3)
    {
      [TPInComingCallUISnapshotViewController identifierForStyle];
    }
  }

  v7 = *v3;

  return v7;
}

- (id)attachmentIdentifiersForStyle
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(TPInComingCallUISnapshotViewController *)self style];
  v4 = @"TPUI_MobileLabel";
  if (v3 != 2)
  {
    v4 = 0;
  }

  if (v3 == 3)
  {
    v4 = @"TPUI_MobileLabelAndBottomBarAndInfoLabel";
  }

  v5 = v4;
  v6 = 0;
  if (([(TPInComingCallUISnapshotViewController *)self style]- 1) <= 2)
  {
    if (v5)
    {
      v14 = v5;
      v7 = getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel();
      v15 = v7;
      v8 = MEMORY[0x1E695DEC8];
      v9 = &v14;
      v10 = 2;
    }

    else
    {
      v7 = getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel();
      v13 = v7;
      v8 = MEMORY[0x1E695DEC8];
      v9 = &v13;
      v10 = 1;
    }

    v6 = [v8 arrayWithObjects:v9 count:{v10, v13, v14, v15}];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)attachmentsForStyle
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2050000000;
  v3 = getPRUISPosterAppearanceObservingAttachmentProviderClass_softClass;
  v71 = getPRUISPosterAppearanceObservingAttachmentProviderClass_softClass;
  if (!getPRUISPosterAppearanceObservingAttachmentProviderClass_softClass)
  {
    *&v65 = MEMORY[0x1E69E9820];
    *(&v65 + 1) = 3221225472;
    *&v66 = __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke;
    *(&v66 + 1) = &unk_1E7C0C110;
    *&v67 = &v68;
    __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke(&v65);
    v3 = v69[3];
  }

  v4 = v3;
  _Block_object_dispose(&v68, 8);
  v5 = [v3 alloc];
  v6 = [(TPInComingCallUISnapshotViewController *)self configuration];
  v7 = [v5 initWithPRSConfiguration:v6];

  v8 = [(TPInComingCallUISnapshotViewController *)self style];
  v9 = [(TPInComingCallUISnapshotViewController *)self style];
  if ((v9 - 2) >= 2)
  {
    if (v9 != 1)
    {
      v10 = 0;
      goto LABEL_29;
    }

    [(TPInComingCallUISnapshotViewController *)self setUpOverlayContentIfNeeded];
  }

  else
  {
    [(TPInComingCallUISnapshotViewController *)self setUpOverlayContentIfNeeded];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v11 = [v7 overlayContentView];
    v12 = [v7 overlayContentView];
    v13 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    [v12 addSubview:v13];

    [v11 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    [v22 setFrame:{v15, v17, v19, v21}];

    v23 = [v7 overlayContentAttachment];
    if (v23)
    {
      [v10 addObject:v23];
    }

    [(TPInComingCallUISnapshotViewController *)self setUpOverlayContentIfNeeded];
    if (v10)
    {
      goto LABEL_11;
    }
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
LABEL_11:
  v24 = [v7 vibrantObscurableContentView];
  if (v8 == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = TelephonyUIBundle();
    v25 = [v26 localizedStringForKey:@"MOBILE" value:&stru_1F2CA8008 table:@"General"];
  }

  v27 = 0x1E7C0B000uLL;
  v28 = [(TPInComingCallUISnapshotViewController *)self contact];
  v29 = [TPIncomingCallMetricsProvider appropriateCallerNameViewForContact:v28 callStatus:v25 callIsActive:0 optionalBackupName:0];

  [v7 applyPosterAppearanceToObserver:v29];
  if ([v29 layout] != 1 || (objc_msgSend(v29, "statusIsSuitableForVerticalLayout") & 1) != 0 || v8 == 1)
  {
    v41 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v42 = *(MEMORY[0x1E695EFD0] + 16);
    v65 = *MEMORY[0x1E695EFD0];
    v66 = v42;
    v67 = *(MEMORY[0x1E695EFD0] + 32);
    [v41 setTransform:&v65];

    v33 = +[TPIncomingCallMetricsProvider mobileLabelFont];
    v34 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    [v34 setFont:v33];
    v40 = 1;
  }

  else
  {
    [(TPInComingCallUISnapshotViewController *)self moveMobileLabelToBeYAxisCenteredWithInfoButton];
    v30 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
    v31 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
    [v30 setMaximumContentSizeCategory:v31];

    v32 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    [v7 applyPosterAppearanceToObserver:v32];

    v33 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v34 = [v33 font];
    v35 = [v34 fontWithSize:22.0];
    [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v36 = v10;
    v37 = v25;
    v39 = v38 = v24;
    [v39 setFont:v35];

    v24 = v38;
    v25 = v37;
    v10 = v36;
    v27 = 0x1E7C0B000;

    v40 = 0;
  }

  v43 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [v43 setHidden:v40];

  [*(v27 + 1880) addCallerNameView:v29 toContainerView:v24];
  v44 = [v29 emojiViewController];

  if (v44)
  {
    v45 = [v7 obscurableOverlayView];
    v46 = [v29 emojiViewController];
    v47 = [v46 view];
    [v45 addSubview:v47];
  }

  if (objc_opt_respondsToSelector())
  {
    v48 = [v7 vibrantObscurableContentView];
    [v48 setNeedsLayout];

    v49 = [v7 vibrantObscurableContentView];
    [v49 layoutIfNeeded];

    v50 = [v29 emojiViewController];

    if (v50)
    {
      v51 = [v29 viewController];
      v52 = [v51 view];
      [v52 frame];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;

      v61 = [v29 emojiViewController];
      v62 = [v61 view];
      [v62 setFrame:{v54, v56, v58, v60}];
    }

    [v29 tightFrame];
    [v7 setPrimaryContentTightFrame:?];
  }

  v63 = [v7 obscurableContentAttachment];
  if (v63)
  {
    [v10 addObject:v63];
  }

LABEL_29:

  return v10;
}

- (void)moveMobileLabelToBeYAxisCenteredWithInfoButton
{
  v16[2] = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1E696ACD8];
  v15 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  v3 = [v15 topAnchor];
  v4 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:0.0];
  v16[0] = v6;
  v7 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  v8 = [v7 centerYAnchor];
  v9 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:0.0];
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v14 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)snapshotWithOptions:(unint64_t)a3 windowScene:(id)a4 useAttachmentConfiguration:(BOOL)a5 completionBlock:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [(TPInComingCallUISnapshotViewController *)self style];
  if (v11 < 4)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_2;
    v13[3] = &unk_1E7C0C0E8;
    v13[4] = self;
    v16 = a5;
    v12 = &v14;
    v14 = v9;
    v15 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v13);

LABEL_5:
    goto LABEL_6;
  }

  if (v11 - 4 <= 2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke;
    block[3] = &unk_1E7C0C048;
    block[4] = self;
    v12 = &v18;
    v18 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_5;
  }

LABEL_6:
}

void __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) overlaysContainerView];
  [v2 updateTraitsIfNeeded];

  v3 = [*(a1 + 32) generateOverlaysSnapshot];
  (*(*(a1 + 40) + 16))();
}

void __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  if ([*(a1 + 32) isViewLoaded])
  {
    v2 = [*(v1 + 32) overlaysContainerView];
    v3 = [v2 superview];
    v4 = [*(v1 + 32) viewIfLoaded];
    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(v1 + 32) overlaysContainerView];
  [v6 removeFromSuperview];

  [*(v1 + 32) hideElementsBasedOn:{objc_msgSend(*(v1 + 32), "style")}];
  v7 = [*(v1 + 32) nameLabel];
  v8 = [v7 text];

  v82 = 0;
  v83 = &v82;
  v84 = 0x2050000000;
  v9 = getPRUISIncomingCallPosterContextClass_softClass;
  v85 = getPRUISIncomingCallPosterContextClass_softClass;
  if (!getPRUISIncomingCallPosterContextClass_softClass)
  {
    v77 = MEMORY[0x1E69E9820];
    v78 = 3221225472;
    v79 = __getPRUISIncomingCallPosterContextClass_block_invoke;
    v80 = &unk_1E7C0C110;
    v81 = &v82;
    __getPRUISIncomingCallPosterContextClass_block_invoke(&v77);
    v9 = v83[3];
  }

  v10 = v9;
  _Block_object_dispose(&v82, 8);
  [TPIncomingCallMetricsProvider horizontalNameLabelBoundingRectForName:v8 window:0];
  v12 = v11;
  v65 = v13;
  v15 = v14;
  v17 = v16;
  [TPIncomingCallMetricsProvider verticalNameLabelBoundingRectForName:v8 window:0];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v9 alloc];
  v27 = [*(v1 + 32) nameLabel];
  v28 = [v27 text];
  v29 = [v26 initWithTitleString:v28 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:v12 personalPoster:{v65, v15, v17, v19, v21, v23, v25}];

  v82 = 0;
  v83 = &v82;
  v84 = 0x2050000000;
  v30 = getPRUISIncomingCallSnapshotDefinitionClass_softClass;
  v85 = getPRUISIncomingCallSnapshotDefinitionClass_softClass;
  if (!getPRUISIncomingCallSnapshotDefinitionClass_softClass)
  {
    v77 = MEMORY[0x1E69E9820];
    v78 = 3221225472;
    v79 = __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke;
    v80 = &unk_1E7C0C110;
    v81 = &v82;
    __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke(&v77);
    v30 = v83[3];
  }

  v31 = v30;
  _Block_object_dispose(&v82, 8);
  v32 = [v30 alloc];
  v33 = [*(v1 + 32) identifierForStyle];
  v34 = [*(v1 + 32) attachmentIdentifiersForStyle];
  v35 = [v32 initWithBaseIdentifier:v33 context:v29 attachmentUniqueIdentifiers:v34];

  v82 = 0;
  v83 = &v82;
  v84 = 0x2050000000;
  v36 = getPRUISMutablePosterSnapshotRequestClass_softClass;
  v85 = getPRUISMutablePosterSnapshotRequestClass_softClass;
  if (!getPRUISMutablePosterSnapshotRequestClass_softClass)
  {
    v77 = MEMORY[0x1E69E9820];
    v78 = 3221225472;
    v79 = __getPRUISMutablePosterSnapshotRequestClass_block_invoke;
    v80 = &unk_1E7C0C110;
    v81 = &v82;
    __getPRUISMutablePosterSnapshotRequestClass_block_invoke(&v77);
    v36 = v83[3];
  }

  v37 = v36;
  _Block_object_dispose(&v82, 8);
  v38 = [*(v1 + 32) configuration];
  v39 = [v36 snapshotRequestForPRSPosterConfiguration:v38 definition:v35 interfaceOrientation:1];

  if (*(v1 + 56) == 1 && *(v1 + 40))
  {
    v82 = 0;
    v83 = &v82;
    v84 = 0x2050000000;
    v40 = getPRUISPosterAttachmentConfigurationClass_softClass;
    v85 = getPRUISPosterAttachmentConfigurationClass_softClass;
    if (!getPRUISPosterAttachmentConfigurationClass_softClass)
    {
      v77 = MEMORY[0x1E69E9820];
      v78 = 3221225472;
      v79 = __getPRUISPosterAttachmentConfigurationClass_block_invoke;
      v80 = &unk_1E7C0C110;
      v81 = &v82;
      __getPRUISPosterAttachmentConfigurationClass_block_invoke(&v77);
      v40 = v83[3];
    }

    v41 = v40;
    _Block_object_dispose(&v82, 8);
    v42 = *(v1 + 40);
    v43 = [*(v1 + 32) attachmentsForStyle];
    v44 = v1;
    v45 = v43;
    if (v43)
    {
      v46 = v43;
    }

    else
    {
      v46 = MEMORY[0x1E695E0F0];
    }

    v47 = [v40 attachmentConfigurationWithHostWindowScene:v42 attachments:v46];

    v1 = v44;
    [v39 setAttachmentConfiguration:v47];
  }

  else
  {
    v47 = [*(v1 + 32) attachmentsForStyle];
    [v39 setAttachments:v47];
  }

  v82 = 0;
  v83 = &v82;
  v84 = 0x2050000000;
  v48 = getPRUISPosterSnapshotControllerClass_softClass;
  v85 = getPRUISPosterSnapshotControllerClass_softClass;
  if (!getPRUISPosterSnapshotControllerClass_softClass)
  {
    v77 = MEMORY[0x1E69E9820];
    v78 = 3221225472;
    v79 = __getPRUISPosterSnapshotControllerClass_block_invoke;
    v80 = &unk_1E7C0C110;
    v81 = &v82;
    __getPRUISPosterSnapshotControllerClass_block_invoke(&v77);
    v48 = v83[3];
  }

  v66 = v29;
  v49 = v48;
  _Block_object_dispose(&v82, 8);
  v50 = [v48 sharedIncomingCallSnapshotController];
  v76 = 0;
  v51 = [v50 latestSnapshotBundleForRequest:v39 error:&v76];
  v52 = v76;
  if (!v51)
  {
    goto LABEL_24;
  }

  [v35 levelSets];
  v64 = v1;
  v53 = v35;
  v54 = v8;
  v56 = v55 = v5;
  [v56 firstObject];
  v57 = v39;
  v59 = v58 = v52;
  v60 = [v51 snapshotForLevelSet:v59];

  v52 = v58;
  v39 = v57;

  v5 = v55;
  v8 = v54;
  v35 = v53;
  v1 = v64;
  if (v60)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_3;
    block[3] = &unk_1E7C0C070;
    v75 = v5;
    block[4] = *(v64 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    (*(*(v64 + 48) + 16))();
  }

  else
  {
LABEL_24:
    v61 = dispatch_get_global_queue(-32768, 0);
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_4;
    v67[3] = &unk_1E7C0C0C0;
    v68 = v50;
    v69 = v39;
    v62 = *(v1 + 48);
    v73 = v5;
    v63 = *(v1 + 32);
    v72 = v62;
    v70 = v63;
    v71 = v35;
    dispatch_async(v61, v67);

    v60 = v68;
  }
}

void __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) view];
    v3 = [*(a1 + 32) overlaysContainerView];
    [v4 addSubview:v3];
  }
}

void __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_5;
  v7[3] = &unk_1E7C0C098;
  v4 = *(a1 + 64);
  v10 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v4;
  v7[4] = v5;
  v8 = v6;
  [v2 executeSnapshotRequest:v3 completion:v7];
}

void __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v7 = [a3 snapshotBundle];
    v8 = [*(a1 + 40) levelSets];
    v9 = [v8 firstObject];
    v10 = [v7 snapshotForLevelSet:v9];

    v11 = *(a1 + 48);
    if (v10)
    {
      (*(v11 + 16))(*(a1 + 48), v10, 0);
      v12 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v13 = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_2_74;
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v25 = @"Snapshot generation returned nil snapshot";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = [v16 errorWithDomain:@"com.apple.TPInComingCallUISnapshotViewController" code:-1 userInfo:v17];
      (*(v11 + 16))(v11, 0, v18);

      v12 = v20;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v13 = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_3_83;
    }

    v12[2] = v13;
    v12[3] = &unk_1E7C0C070;
    *(v12 + 40) = *(a1 + 56);
    v12[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    v14 = TPDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 debugDescription];
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&dword_1B4894000, v14, OS_LOG_TYPE_DEFAULT, "Error in executeSnapshotRequest: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_73;
    block[3] = &unk_1E7C0C070;
    v23 = *(a1 + 56);
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_73(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) view];
    v3 = [*(a1 + 32) overlaysContainerView];
    [v4 addSubview:v3];
  }
}

void __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_2_74(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) view];
    v3 = [*(a1 + 32) overlaysContainerView];
    [v4 addSubview:v3];
  }
}

void __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_3_83(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) view];
    v3 = [*(a1 + 32) overlaysContainerView];
    [v4 addSubview:v3];
  }
}

- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)a3 style:(int64_t)a4 contact:(id)a5 fallbackText:(id)a6
{
  v10 = a6;
  if (a5)
  {
    v11 = a3;
    v12 = [(TPInComingCallUISnapshotViewController *)self initWithConfiguration:v11 style:a4 contact:a5];

    v13 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E695CF18];
    v15 = a3;
    v16 = objc_alloc_init(v14);
    [v16 setGivenName:v10];
    v17 = [(TPInComingCallUISnapshotViewController *)self initWithConfiguration:v15 style:a4 contact:v16];

    v13 = v17;
  }

  return v13;
}

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 window:(id)a4
{
  [TPIncomingCallMetricsProvider horizontalNameLabelBoundingRectForName:a3 caption:0 window:a4 preferredTitleFont:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 caption:(id)a4 window:(id)a5 preferredTitleFont:(id)a6
{
  [TPIncomingCallMetricsProvider horizontalNameLabelBoundingRectForName:a3 caption:a4 window:a5 preferredTitleFont:a6];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 window:(id)a4
{
  [TPIncomingCallMetricsProvider verticalNameLabelBoundingRectForName:a3 caption:0 window:a4 preferredTitleFont:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 caption:(id)a4 window:(id)a5 preferredTitleFont:(id)a6
{
  [TPIncomingCallMetricsProvider verticalNameLabelBoundingRectForName:a3 caption:a4 window:a5 preferredTitleFont:a6];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)identifierForStyle
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PRPosterSnapshotDefinitionIdentifier getPRPosterSnapshotDefinitionIdentifierIncomingCallComposite(void)"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:69 description:{@"%s", dlerror()}];

  __break(1u);
}

@end