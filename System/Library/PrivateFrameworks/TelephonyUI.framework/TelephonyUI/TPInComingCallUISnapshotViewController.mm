@interface TPInComingCallUISnapshotViewController
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name caption:(id)caption window:(id)window preferredTitleFont:(id)font;
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name window:(id)window;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)name caption:(id)caption window:(id)window preferredTitleFont:(id)font;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)name window:(id)window;
+ (id)posterDisplayNameComponentsForContact:(id)contact;
- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)configuration style:(int64_t)style contact:(id)contact avatarImage:(id)image;
- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)configuration style:(int64_t)style contact:(id)contact fallbackText:(id)text;
- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)configuration style:(int64_t)style nameString:(id)string avatarImage:(id)image;
- (id)attachmentIdentifiersForStyle;
- (id)attachmentsForStyle;
- (id)generateOverlaysSnapshot;
- (id)identifierForStyle;
- (id)nameString;
- (void)capCallDetailsViewButtonSize;
- (void)hideElementsBasedOn:(int64_t)on;
- (void)identifierForStyle;
- (void)moveMobileLabelToBeYAxisCenteredWithInfoButton;
- (void)setBackroundColor:(id)color;
- (void)setLabelsColor:(id)color;
- (void)setNameLabelFont:(id)font;
- (void)setNameLabelTextColor:(id)color;
- (void)setUpButton:(int64_t)button;
- (void)setUpConstraints;
- (void)setUpOverlayContentIfNeeded;
- (void)setUpOverlaysContainer;
- (void)setupAvatarViewIfNeeded;
- (void)setupLabels;
- (void)snapshotWithOptions:(unint64_t)options windowScene:(id)scene useAttachmentConfiguration:(BOOL)configuration completionBlock:(id)block;
- (void)viewDidLoad;
@end

@implementation TPInComingCallUISnapshotViewController

- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)configuration style:(int64_t)style nameString:(id)string avatarImage:(id)image
{
  configurationCopy = configuration;
  stringCopy = string;
  imageCopy = image;
  v19.receiver = self;
  v19.super_class = TPInComingCallUISnapshotViewController;
  v13 = [(TPInComingCallUISnapshotViewController *)&v19 init];
  v14 = v13;
  if (v13)
  {
    [(TPInComingCallUISnapshotViewController *)v13 setConfiguration:configurationCopy];
    [(TPInComingCallUISnapshotViewController *)v14 setStyle:style];
    v15 = objc_opt_new();
    v16 = v15;
    if (stringCopy)
    {
      v17 = stringCopy;
    }

    else
    {
      v17 = &stru_1F2CA8008;
    }

    [v15 setGivenName:v17];
    [(TPInComingCallUISnapshotViewController *)v14 setContact:v16];
    [(TPInComingCallUISnapshotViewController *)v14 setCustomAvatar:imageCopy];
  }

  return v14;
}

- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)configuration style:(int64_t)style contact:(id)contact avatarImage:(id)image
{
  configurationCopy = configuration;
  contactCopy = contact;
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = TPInComingCallUISnapshotViewController;
  v13 = [(TPInComingCallUISnapshotViewController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(TPInComingCallUISnapshotViewController *)v13 setConfiguration:configurationCopy];
    [(TPInComingCallUISnapshotViewController *)v14 setStyle:style];
    [(TPInComingCallUISnapshotViewController *)v14 setContact:contactCopy];
    [(TPInComingCallUISnapshotViewController *)v14 setCustomAvatar:imageCopy];
  }

  return v14;
}

- (id)nameString
{
  configuration = [(TPInComingCallUISnapshotViewController *)self configuration];

  contact = [(TPInComingCallUISnapshotViewController *)self contact];
  if (configuration)
  {
    [TPIncomingCallMetricsProvider posterDisplayNameForContact:contact];
  }

  else
  {
    [contact displayName];
  }
  v5 = ;

  return v5;
}

+ (id)posterDisplayNameComponentsForContact:(id)contact
{
  v29[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = [MEMORY[0x1E696ADF0] componentsForContact:contactCopy];
  v5 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  [v5 setStyle:1];
  v6 = [v5 stringFromPersonNameComponents:v4];
  nickname = [contactCopy nickname];
  v8 = [v6 isEqualToString:nickname];

  if (v8)
  {
    nickname2 = [contactCopy nickname];
    v10 = [nickname2 length];

    if (v10)
    {
      nickname3 = [contactCopy nickname];
      v29[0] = nickname3;
      v12 = MEMORY[0x1E695DEC8];
      v13 = v29;
LABEL_13:
      v18 = [v12 arrayWithObjects:v13 count:1];
      goto LABEL_18;
    }
  }

  [v5 setStyle:2];
  nickname3 = [contactCopy givenName];
  if ([nickname3 length])
  {
    familyName = [contactCopy familyName];
    v15 = [familyName length];

    if (!v15)
    {
      goto LABEL_11;
    }

    nickname3 = [v5 stringFromPersonNameComponents:v4];
    givenName = [contactCopy givenName];
    if ([nickname3 rangeOfString:givenName] != 0x7FFFFFFFFFFFFFFFLL)
    {
      familyName2 = [contactCopy familyName];
      if ([nickname3 rangeOfString:familyName2] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = [nickname3 rangeOfString:@" "];

        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          givenName2 = [contactCopy givenName];
          v28[0] = givenName2;
          familyName3 = [contactCopy familyName];
          v28[1] = familyName3;
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
  nickname3 = [v5 stringFromPersonNameComponents:v4];
  if ([nickname3 length])
  {
    v27 = nickname3;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v27;
    goto LABEL_13;
  }

  organizationName = [contactCopy organizationName];
  v20 = [organizationName length];

  if (v20)
  {
    givenName2 = [contactCopy organizationName];
    v26 = givenName2;
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
  overlaysContainerView = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];

  if (!overlaysContainerView)
  {
    [(TPInComingCallUISnapshotViewController *)self setUpOverlaysContainer];
    view = [(TPInComingCallUISnapshotViewController *)self view];
    overlaysContainerView2 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    [view addSubview:overlaysContainerView2];

    [(TPInComingCallUISnapshotViewController *)self setupLabels];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:1];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:2];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:3];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:4];
    [(TPInComingCallUISnapshotViewController *)self setUpButton:5];
    [(TPInComingCallUISnapshotViewController *)self setupAvatarViewIfNeeded];
    [(TPInComingCallUISnapshotViewController *)self setUpConstraints];
    style = [(TPInComingCallUISnapshotViewController *)self style];

    [(TPInComingCallUISnapshotViewController *)self hideElementsBasedOn:style];
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

  overlaysContainerView = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [overlaysContainerView setAutoresizingMask:18];
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
  array = [MEMORY[0x1E695DF70] array];
  callDetailsViewButton = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  topAnchor = [callDetailsViewButton topAnchor];
  overlaysContainerView = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  topAnchor2 = [overlaysContainerView topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v8];
  v154[0] = v13;
  callDetailsViewButton2 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  trailingAnchor = [callDetailsViewButton2 trailingAnchor];
  overlaysContainerView2 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  trailingAnchor2 = [overlaysContainerView2 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v10];
  v154[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:2];
  v150 = array;
  [array addObjectsFromArray:v19];

  avatarView = [(TPInComingCallUISnapshotViewController *)self avatarView];

  if (avatarView)
  {
    avatarView2 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    topAnchor3 = [avatarView2 topAnchor];
    overlaysContainerView3 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    safeAreaLayoutGuide = [overlaysContainerView3 safeAreaLayoutGuide];
    topAnchor4 = [safeAreaLayoutGuide topAnchor];
    +[TPIncomingCallMetricsProvider twelvePercentOfDeviceHeight];
    v129 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
    v153[0] = v129;
    avatarView3 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    leadingAnchor = [avatarView3 leadingAnchor];
    overlaysContainerView4 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    safeAreaLayoutGuide2 = [overlaysContainerView4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v111 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v6];
    v153[1] = v111;
    avatarView4 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    widthAnchor = [avatarView4 widthAnchor];
    +[TPUIConfiguration defaultHeight];
    v103 = [widthAnchor constraintEqualToConstant:?];
    v153[2] = v103;
    avatarView5 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    heightAnchor = [avatarView5 heightAnchor];
    +[TPUIConfiguration defaultHeight];
    v97 = [heightAnchor constraintEqualToConstant:?];
    v153[3] = v97;
    mobileLabel = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    topAnchor5 = [mobileLabel topAnchor];
    overlaysContainerView5 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    safeAreaLayoutGuide3 = [overlaysContainerView5 safeAreaLayoutGuide];
    topAnchor6 = [safeAreaLayoutGuide3 topAnchor];
    +[TPIncomingCallMetricsProvider twelvePercentOfDeviceHeight];
    v85 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:v21 + 4.0];
    v153[4] = v85;
    mobileLabel2 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    leadingAnchor3 = [mobileLabel2 leadingAnchor];
    nameLabel = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    safeAreaLayoutGuide4 = [nameLabel safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
    v73 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v153[5] = v73;
    nameLabel2 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    topAnchor7 = [nameLabel2 topAnchor];
    mobileLabel3 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    bottomAnchor = [mobileLabel3 bottomAnchor];
    v66 = [topAnchor7 constraintEqualToAnchor:bottomAnchor];
    v153[6] = v66;
    nameLabel3 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    leadingAnchor5 = [nameLabel3 leadingAnchor];
    avatarView6 = [(TPInComingCallUISnapshotViewController *)self avatarView];
    trailingAnchor3 = [avatarView6 trailingAnchor];
    v24 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:16.0];
    v153[7] = v24;
    nameLabel4 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    trailingAnchor4 = [nameLabel4 trailingAnchor];
    overlaysContainerView6 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    trailingAnchor5 = [overlaysContainerView6 trailingAnchor];
    v29 = -v6;
    v30 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v6];
    v153[8] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:9];
    [v150 addObjectsFromArray:v31];
  }

  else
  {
    mobileLabel4 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    topAnchor8 = [mobileLabel4 topAnchor];
    overlaysContainerView7 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    safeAreaLayoutGuide5 = [overlaysContainerView7 safeAreaLayoutGuide];
    topAnchor9 = [safeAreaLayoutGuide5 topAnchor];
    +[TPIncomingCallMetricsProvider sixPercentOfDeviceHeight];
    v130 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:?];
    v152[0] = v130;
    mobileLabel5 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    centerXAnchor = [mobileLabel5 centerXAnchor];
    overlaysContainerView8 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    safeAreaLayoutGuide6 = [overlaysContainerView8 safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide6 centerXAnchor];
    v112 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v152[1] = v112;
    nameLabel5 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    topAnchor10 = [nameLabel5 topAnchor];
    mobileLabel6 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    bottomAnchor2 = [mobileLabel6 bottomAnchor];
    v34 = [topAnchor10 constraintEqualToAnchor:bottomAnchor2 constant:2.0];
    v152[2] = v34;
    nameLabel6 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
    centerXAnchor3 = [nameLabel6 centerXAnchor];
    overlaysContainerView9 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    centerXAnchor4 = [overlaysContainerView9 centerXAnchor];
    v39 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v152[3] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:4];
    [v150 addObjectsFromArray:v40];

    v29 = -v6;
  }

  declineButton = [(TPInComingCallUISnapshotViewController *)self declineButton];
  bottomAnchor3 = [declineButton bottomAnchor];
  overlaysContainerView10 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [overlaysContainerView10 bottomAnchor];
  v42 = -v4;
  v137 = v145 = bottomAnchor3;
  v134 = [bottomAnchor3 constraintEqualToAnchor:v42 constant:?];
  v151[0] = v134;
  declineButton2 = [(TPInComingCallUISnapshotViewController *)self declineButton];
  leadingAnchor6 = [declineButton2 leadingAnchor];
  overlaysContainerView11 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [overlaysContainerView11 leadingAnchor];
  v122 = v128 = leadingAnchor6;
  v119 = [leadingAnchor6 constraintEqualToAnchor:v6 constant:?];
  v151[1] = v119;
  acceptButton = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  bottomAnchor4 = [acceptButton bottomAnchor];
  overlaysContainerView12 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [overlaysContainerView12 bottomAnchor];
  v107 = v113 = bottomAnchor4;
  v104 = [bottomAnchor4 constraintEqualToAnchor:v42 constant:?];
  v151[2] = v104;
  acceptButton2 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  trailingAnchor6 = [acceptButton2 trailingAnchor];
  overlaysContainerView13 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [overlaysContainerView13 trailingAnchor];
  v96 = v100 = trailingAnchor6;
  v94 = [trailingAnchor6 constraintEqualToAnchor:v29 constant:?];
  v151[3] = v94;
  messageButton = [(TPInComingCallUISnapshotViewController *)self messageButton];
  centerXAnchor5 = [messageButton centerXAnchor];
  declineButton3 = [(TPInComingCallUISnapshotViewController *)self declineButton];
  [declineButton3 centerXAnchor];
  v86 = v90 = centerXAnchor5;
  v84 = [centerXAnchor5 constraintEqualToAnchor:?];
  v151[4] = v84;
  messageButton2 = [(TPInComingCallUISnapshotViewController *)self messageButton];
  bottomAnchor5 = [messageButton2 bottomAnchor];
  declineButton4 = [(TPInComingCallUISnapshotViewController *)self declineButton];
  topAnchor11 = [declineButton4 topAnchor];
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

  v80 = bottomAnchor5;
  v76 = topAnchor11;
  v74 = [bottomAnchor5 constraintEqualToAnchor:topAnchor11 constant:-*&v51];
  v151[5] = v74;
  remindMeButton = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
  centerXAnchor6 = [remindMeButton centerXAnchor];
  acceptButton3 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  centerXAnchor7 = [acceptButton3 centerXAnchor];
  v70 = centerXAnchor6;
  v56 = [centerXAnchor6 constraintEqualToAnchor:centerXAnchor7];
  v151[6] = v56;
  remindMeButton2 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
  bottomAnchor6 = [remindMeButton2 bottomAnchor];
  acceptButton4 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  topAnchor12 = [acceptButton4 topAnchor];
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

  v61 = [bottomAnchor6 constraintEqualToAnchor:topAnchor12 constant:-v50];
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

  nameString = [(TPInComingCallUISnapshotViewController *)self nameString];
  nameLabel = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [nameLabel setText:nameString];

  v9 = TelephonyUIBundle();
  v10 = [v9 localizedStringForKey:@"MOBILE" value:&stru_1F2CA8008 table:@"General"];
  mobileLabel = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [mobileLabel setText:v10];

  overlaysContainerView = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  mobileLabel2 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [overlaysContainerView addSubview:mobileLabel2];

  overlaysContainerView2 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  nameLabel2 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [overlaysContainerView2 addSubview:nameLabel2];

  mobileLabel3 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [mobileLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  nameLabel3 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [nameLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  nameLabel4 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [nameLabel4 setMarqueeEnabled:1];

  avatarView = [(TPInComingCallUISnapshotViewController *)self avatarView];
  if (avatarView)
  {
    +[TPIncomingCallMetricsProvider nameLabelFontWithAvatar];
  }

  else
  {
    +[TPIncomingCallMetricsProvider nameLabelFont];
  }
  v20 = ;
  nameLabel5 = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [nameLabel5 setFont:v20];

  v22 = +[TPIncomingCallMetricsProvider mobileLabelFont];
  mobileLabel4 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [mobileLabel4 setFont:v22];
}

- (void)setupAvatarViewIfNeeded
{
  customAvatar = [(TPInComingCallUISnapshotViewController *)self customAvatar];

  if (customAvatar)
  {
    customAvatar2 = [(TPInComingCallUISnapshotViewController *)self customAvatar];
  }

  else
  {
    contact = [(TPInComingCallUISnapshotViewController *)self contact];
    thumbnailImageData = [contact thumbnailImageData];

    if (thumbnailImageData)
    {
      v7 = MEMORY[0x1E69DCAB8];
      contact2 = [(TPInComingCallUISnapshotViewController *)self contact];
      thumbnailImageData2 = [contact2 thumbnailImageData];
      customAvatar2 = [v7 imageWithData:thumbnailImageData2];
    }

    else
    {
      customAvatar2 = 0;
    }
  }

  if ([(TPInComingCallUISnapshotViewController *)self style]!= 6)
  {
    goto LABEL_16;
  }

  avatarView = [(TPInComingCallUISnapshotViewController *)self avatarView];

  if (avatarView || !customAvatar2)
  {
    goto LABEL_16;
  }

  v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:customAvatar2];
  [(TPInComingCallUISnapshotViewController *)self setAvatarView:v11];

  avatarView2 = [(TPInComingCallUISnapshotViewController *)self avatarView];
  [avatarView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  +[TPUIConfiguration defaultHeight];
  v14 = v13 * 0.5;
  avatarView3 = [(TPInComingCallUISnapshotViewController *)self avatarView];
  layer = [avatarView3 layer];
  [layer setCornerRadius:v14];

  avatarView4 = [(TPInComingCallUISnapshotViewController *)self avatarView];
  layer2 = [avatarView4 layer];
  [layer2 setMasksToBounds:1];

  overlaysContainerView = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  avatarView5 = [(TPInComingCallUISnapshotViewController *)self avatarView];
  [overlaysContainerView addSubview:avatarView5];

  customAvatar3 = [(TPInComingCallUISnapshotViewController *)self customAvatar];
  if (customAvatar3)
  {
  }

  else
  {
    contact3 = [(TPInComingCallUISnapshotViewController *)self contact];
    contactImageBackgroundColors = [contact3 contactImageBackgroundColors];
    v31 = [contactImageBackgroundColors count];

    if (v31)
    {
      contact4 = [(TPInComingCallUISnapshotViewController *)self contact];
      contactImageBackgroundColors2 = [contact4 contactImageBackgroundColors];

      if (!contactImageBackgroundColors2)
      {
        goto LABEL_16;
      }

      contact5 = [(TPInComingCallUISnapshotViewController *)self contact];
      contactImageBackgroundColors3 = [contact5 contactImageBackgroundColors];
      firstObject = [contactImageBackgroundColors3 firstObject];

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
  contact5 = [v22 colorsForImageRef:{objc_msgSend(customAvatar2, "CGImage")}];
  firstObject = [contact5 firstObject];
LABEL_14:

  if (firstObject)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v27 = [blackColor colorWithAlphaComponent:0.1];
    v28 = [firstObject _colorBlendedWithColor:v27];

    [(TPInComingCallUISnapshotViewController *)self setBackroundColor:v28];
  }

LABEL_16:
}

- (void)setUpButton:(int64_t)button
{
  if (button <= 2)
  {
    if (button == 1)
    {
      v49 = [TPInComingCallBottomBarSupplementalButton alloc];
      v50 = [(TPInComingCallBottomBarSupplementalButton *)v49 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(TPInComingCallUISnapshotViewController *)self setRemindMeButton:v50];

      overlaysContainerView = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
      remindMeButton = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      [overlaysContainerView addSubview:remindMeButton];

      remindMeButton2 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      [remindMeButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

      v56 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:39 textStyle:*MEMORY[0x1E69DDDC8] scale:-1 isStaticSize:1];
      remindMeButton3 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      [remindMeButton3 setImage:v56 forState:0];

      remindMeButton4 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      v17 = TelephonyUIBundle();
      v18 = v17;
      v19 = @"CALL_BACK_LATER";
    }

    else
    {
      if (button != 2)
      {
        return;
      }

      v10 = [TPInComingCallBottomBarSupplementalButton alloc];
      v11 = [(TPInComingCallBottomBarSupplementalButton *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(TPInComingCallUISnapshotViewController *)self setMessageButton:v11];

      overlaysContainerView2 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
      messageButton = [(TPInComingCallUISnapshotViewController *)self messageButton];
      [overlaysContainerView2 addSubview:messageButton];

      messageButton2 = [(TPInComingCallUISnapshotViewController *)self messageButton];
      [messageButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

      v56 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:14 textStyle:*MEMORY[0x1E69DDDC8] scale:-1 isStaticSize:1];
      messageButton3 = [(TPInComingCallUISnapshotViewController *)self messageButton];
      [messageButton3 setImage:v56 forState:0];

      remindMeButton4 = [(TPInComingCallUISnapshotViewController *)self messageButton];
      v17 = TelephonyUIBundle();
      v18 = v17;
      v19 = @"SEND_MESSAGE";
    }

    v55 = [v17 localizedStringForKey:v19 value:&stru_1F2CA8008 table:@"General"];
    [remindMeButton4 setTitle:v55 forState:0];
  }

  else
  {
    if (button == 3)
    {
      v20 = objc_alloc_init(TPInComingCallBottomBarButton);
      [(TPInComingCallUISnapshotViewController *)self setDeclineButton:v20];

      overlaysContainerView3 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
      declineButton = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [overlaysContainerView3 addSubview:declineButton];

      declineButton2 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [declineButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

      v56 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:2 textStyle:*MEMORY[0x1E69DDDB8] scale:3 isStaticSize:1];
      declineButton3 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [declineButton3 setImage:v56 forState:0];

      declineButton4 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      v26 = TelephonyUIBundle();
      v27 = [v26 localizedStringForKey:@"DECLINE" value:&stru_1F2CA8008 table:@"General"];
      [declineButton4 setTitle:v27 forState:0];

      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      declineButton5 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [declineButton5 setBackgroundColor:systemRedColor];

      declineButton6 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      titleLabel = [declineButton6 titleLabel];
      [titleLabel setAdjustsFontSizeToFitWidth:0];

      declineButton7 = [(TPInComingCallUISnapshotViewController *)self declineButton];
      titleLabel2 = [declineButton7 titleLabel];
      [titleLabel2 setPreferredMaxLayoutWidth:105.0];

      declineButton8 = [(TPInComingCallUISnapshotViewController *)self declineButton];
    }

    else
    {
      if (button != 4)
      {
        if (button == 5)
        {
          v4 = [MEMORY[0x1E69DC738] buttonWithType:4];
          [(TPInComingCallUISnapshotViewController *)self setCallDetailsViewButton:v4];

          secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
          callDetailsViewButton = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
          [callDetailsViewButton setTintColor:secondaryLabelColor];

          callDetailsViewButton2 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
          [callDetailsViewButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

          overlaysContainerView4 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
          callDetailsViewButton3 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
          [overlaysContainerView4 addSubview:callDetailsViewButton3];

          [(TPInComingCallUISnapshotViewController *)self capCallDetailsViewButtonSize];
        }

        return;
      }

      v35 = objc_alloc_init(TPInComingCallBottomBarButton);
      [(TPInComingCallUISnapshotViewController *)self setAcceptButton:v35];

      overlaysContainerView5 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
      acceptButton = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [overlaysContainerView5 addSubview:acceptButton];

      acceptButton2 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [acceptButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

      v56 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:1 textStyle:*MEMORY[0x1E69DDDB8] scale:3 isStaticSize:1];
      acceptButton3 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [acceptButton3 setImage:v56 forState:0];

      acceptButton4 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      v41 = TelephonyUIBundle();
      v42 = [v41 localizedStringForKey:@"ACCEPT" value:&stru_1F2CA8008 table:@"General"];
      [acceptButton4 setTitle:v42 forState:0];

      systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
      acceptButton5 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [acceptButton5 setBackgroundColor:systemGreenColor];

      acceptButton6 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      titleLabel3 = [acceptButton6 titleLabel];
      [titleLabel3 setAdjustsFontSizeToFitWidth:0];

      acceptButton7 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      titleLabel4 = [acceptButton7 titleLabel];
      [titleLabel4 setPreferredMaxLayoutWidth:105.0];

      declineButton8 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
    }

    remindMeButton4 = declineButton8;
    [declineButton8 setClipsToBounds:0];
  }
}

- (void)capCallDetailsViewButtonSize
{
  callDetailsViewButton = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  v2 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
  [callDetailsViewButton setMaximumContentSizeCategory:v2];
}

- (void)hideElementsBasedOn:(int64_t)on
{
  if (on <= 1)
  {
    if (!on)
    {
      remindMeButton = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
      [remindMeButton setHidden:1];

      declineButton = [(TPInComingCallUISnapshotViewController *)self declineButton];
      [declineButton setHidden:1];

      acceptButton = [(TPInComingCallUISnapshotViewController *)self acceptButton];
      [acceptButton setHidden:1];

      messageButton = [(TPInComingCallUISnapshotViewController *)self messageButton];
      [messageButton setHidden:1];

      callDetailsViewButton = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
      [callDetailsViewButton setHidden:1];

      mobileLabel = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
      [mobileLabel setHidden:1];

      nameLabel = [(TPInComingCallUISnapshotViewController *)self nameLabel];
LABEL_11:
      v23 = nameLabel;
      [nameLabel setHidden:1];

      fakeLabel = [(TPInComingCallUISnapshotViewController *)self fakeLabel];
      goto LABEL_12;
    }

    if (on != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (on == 2)
  {
LABEL_8:
    remindMeButton2 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
    [remindMeButton2 setHidden:1];

    declineButton2 = [(TPInComingCallUISnapshotViewController *)self declineButton];
    [declineButton2 setHidden:1];

    acceptButton2 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
    [acceptButton2 setHidden:1];

    messageButton2 = [(TPInComingCallUISnapshotViewController *)self messageButton];
    [messageButton2 setHidden:1];

    callDetailsViewButton2 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
    [callDetailsViewButton2 setHidden:1];

    goto LABEL_9;
  }

  if (on != 3)
  {
    if (on != 4)
    {
      return;
    }

    remindMeButton3 = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
    [remindMeButton3 setHidden:1];

    declineButton3 = [(TPInComingCallUISnapshotViewController *)self declineButton];
    [declineButton3 setHidden:1];

    acceptButton3 = [(TPInComingCallUISnapshotViewController *)self acceptButton];
    [acceptButton3 setHidden:1];

    messageButton3 = [(TPInComingCallUISnapshotViewController *)self messageButton];
    [messageButton3 setHidden:1];

    callDetailsViewButton3 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
    [callDetailsViewButton3 setHidden:1];

    nameLabel = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    goto LABEL_11;
  }

LABEL_9:
  mobileLabel2 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [mobileLabel2 setHidden:1];

  fakeLabel = [(TPInComingCallUISnapshotViewController *)self nameLabel];
LABEL_12:
  v24 = fakeLabel;
  [fakeLabel setHidden:1];
}

- (void)setNameLabelFont:(id)font
{
  fontCopy = font;
  nameLabel = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [nameLabel setFont:fontCopy];

  fakeLabel = [(TPInComingCallUISnapshotViewController *)self fakeLabel];
  [fakeLabel setFont:fontCopy];
}

- (void)setNameLabelTextColor:(id)color
{
  colorCopy = color;
  nameLabel = [(TPInComingCallUISnapshotViewController *)self nameLabel];
  [nameLabel setTextColor:colorCopy];

  fakeLabel = [(TPInComingCallUISnapshotViewController *)self fakeLabel];
  [fakeLabel setTextColor:colorCopy];
}

- (void)setBackroundColor:(id)color
{
  colorCopy = color;
  overlaysContainerView = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [overlaysContainerView setBackgroundColor:colorCopy];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [colorCopy _colorDifferenceFromColor:whiteColor];
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

- (void)setLabelsColor:(id)color
{
  colorCopy = color;
  [(TPInComingCallUISnapshotViewController *)self setNameLabelTextColor:colorCopy];
  mobileLabel = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [mobileLabel setTextColor:colorCopy];

  acceptButton = [(TPInComingCallUISnapshotViewController *)self acceptButton];
  [acceptButton setTitleColor:colorCopy forState:0];

  declineButton = [(TPInComingCallUISnapshotViewController *)self declineButton];
  [declineButton setTitleColor:colorCopy forState:0];

  messageButton = [(TPInComingCallUISnapshotViewController *)self messageButton];
  [messageButton setTitleColor:colorCopy forState:0];

  remindMeButton = [(TPInComingCallUISnapshotViewController *)self remindMeButton];
  [remindMeButton setTitleColor:colorCopy forState:0];
}

- (id)generateOverlaysSnapshot
{
  [(TPInComingCallUISnapshotViewController *)self setUpOverlayContentIfNeeded];
  overlaysContainerView = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  layer = [overlaysContainerView layer];

  overlaysContainerView2 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [overlaysContainerView2 bounds];
  v7 = v6;
  v9 = v8;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v12 = v11;
  v18.width = v7;
  v18.height = v9;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v12);

  CurrentContext = UIGraphicsGetCurrentContext();
  overlaysContainerView3 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
  [overlaysContainerView3 frame];
  CGContextClipToRect(CurrentContext, v19);

  [layer renderInContext:UIGraphicsGetCurrentContext()];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)identifierForStyle
{
  style = [(TPInComingCallUISnapshotViewController *)self style];
  if (style == 1)
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

  else if (style)
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
  style = [(TPInComingCallUISnapshotViewController *)self style];
  v4 = @"TPUI_MobileLabel";
  if (style != 2)
  {
    v4 = 0;
  }

  if (style == 3)
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
  configuration = [(TPInComingCallUISnapshotViewController *)self configuration];
  v7 = [v5 initWithPRSConfiguration:configuration];

  style = [(TPInComingCallUISnapshotViewController *)self style];
  style2 = [(TPInComingCallUISnapshotViewController *)self style];
  if ((style2 - 2) >= 2)
  {
    if (style2 != 1)
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
    overlayContentView = [v7 overlayContentView];
    overlayContentView2 = [v7 overlayContentView];
    overlaysContainerView = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    [overlayContentView2 addSubview:overlaysContainerView];

    [overlayContentView bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    overlaysContainerView2 = [(TPInComingCallUISnapshotViewController *)self overlaysContainerView];
    [overlaysContainerView2 setFrame:{v15, v17, v19, v21}];

    overlayContentAttachment = [v7 overlayContentAttachment];
    if (overlayContentAttachment)
    {
      [v10 addObject:overlayContentAttachment];
    }

    [(TPInComingCallUISnapshotViewController *)self setUpOverlayContentIfNeeded];
    if (v10)
    {
      goto LABEL_11;
    }
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
LABEL_11:
  vibrantObscurableContentView = [v7 vibrantObscurableContentView];
  if (style == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = TelephonyUIBundle();
    v25 = [v26 localizedStringForKey:@"MOBILE" value:&stru_1F2CA8008 table:@"General"];
  }

  v27 = 0x1E7C0B000uLL;
  contact = [(TPInComingCallUISnapshotViewController *)self contact];
  v29 = [TPIncomingCallMetricsProvider appropriateCallerNameViewForContact:contact callStatus:v25 callIsActive:0 optionalBackupName:0];

  [v7 applyPosterAppearanceToObserver:v29];
  if ([v29 layout] != 1 || (objc_msgSend(v29, "statusIsSuitableForVerticalLayout") & 1) != 0 || style == 1)
  {
    mobileLabel = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v42 = *(MEMORY[0x1E695EFD0] + 16);
    v65 = *MEMORY[0x1E695EFD0];
    v66 = v42;
    v67 = *(MEMORY[0x1E695EFD0] + 32);
    [mobileLabel setTransform:&v65];

    mobileLabel4 = +[TPIncomingCallMetricsProvider mobileLabelFont];
    mobileLabel2 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    [mobileLabel2 setFont:mobileLabel4];
    v40 = 1;
  }

  else
  {
    [(TPInComingCallUISnapshotViewController *)self moveMobileLabelToBeYAxisCenteredWithInfoButton];
    callDetailsViewButton = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
    v31 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
    [callDetailsViewButton setMaximumContentSizeCategory:v31];

    mobileLabel3 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    [v7 applyPosterAppearanceToObserver:mobileLabel3];

    mobileLabel4 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    mobileLabel2 = [mobileLabel4 font];
    v35 = [mobileLabel2 fontWithSize:22.0];
    [(TPInComingCallUISnapshotViewController *)self mobileLabel];
    v36 = v10;
    v37 = v25;
    v39 = v38 = vibrantObscurableContentView;
    [v39 setFont:v35];

    vibrantObscurableContentView = v38;
    v25 = v37;
    v10 = v36;
    v27 = 0x1E7C0B000;

    v40 = 0;
  }

  mobileLabel5 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  [mobileLabel5 setHidden:v40];

  [*(v27 + 1880) addCallerNameView:v29 toContainerView:vibrantObscurableContentView];
  emojiViewController = [v29 emojiViewController];

  if (emojiViewController)
  {
    obscurableOverlayView = [v7 obscurableOverlayView];
    emojiViewController2 = [v29 emojiViewController];
    view = [emojiViewController2 view];
    [obscurableOverlayView addSubview:view];
  }

  if (objc_opt_respondsToSelector())
  {
    vibrantObscurableContentView2 = [v7 vibrantObscurableContentView];
    [vibrantObscurableContentView2 setNeedsLayout];

    vibrantObscurableContentView3 = [v7 vibrantObscurableContentView];
    [vibrantObscurableContentView3 layoutIfNeeded];

    emojiViewController3 = [v29 emojiViewController];

    if (emojiViewController3)
    {
      viewController = [v29 viewController];
      view2 = [viewController view];
      [view2 frame];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;

      emojiViewController4 = [v29 emojiViewController];
      view3 = [emojiViewController4 view];
      [view3 setFrame:{v54, v56, v58, v60}];
    }

    [v29 tightFrame];
    [v7 setPrimaryContentTightFrame:?];
  }

  obscurableContentAttachment = [v7 obscurableContentAttachment];
  if (obscurableContentAttachment)
  {
    [v10 addObject:obscurableContentAttachment];
  }

LABEL_29:

  return v10;
}

- (void)moveMobileLabelToBeYAxisCenteredWithInfoButton
{
  v16[2] = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1E696ACD8];
  mobileLabel = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  topAnchor = [mobileLabel topAnchor];
  callDetailsViewButton = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  topAnchor2 = [callDetailsViewButton topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v16[0] = v6;
  mobileLabel2 = [(TPInComingCallUISnapshotViewController *)self mobileLabel];
  centerYAnchor = [mobileLabel2 centerYAnchor];
  callDetailsViewButton2 = [(TPInComingCallUISnapshotViewController *)self callDetailsViewButton];
  centerYAnchor2 = [callDetailsViewButton2 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v14 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)snapshotWithOptions:(unint64_t)options windowScene:(id)scene useAttachmentConfiguration:(BOOL)configuration completionBlock:(id)block
{
  sceneCopy = scene;
  blockCopy = block;
  style = [(TPInComingCallUISnapshotViewController *)self style];
  if (style < 4)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke_2;
    v13[3] = &unk_1E7C0C0E8;
    v13[4] = self;
    configurationCopy = configuration;
    v12 = &v14;
    v14 = sceneCopy;
    v15 = blockCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v13);

LABEL_5:
    goto LABEL_6;
  }

  if (style - 4 <= 2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__TPInComingCallUISnapshotViewController_snapshotWithOptions_windowScene_useAttachmentConfiguration_completionBlock___block_invoke;
    block[3] = &unk_1E7C0C048;
    block[4] = self;
    v12 = &v18;
    v18 = blockCopy;
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

- (TPInComingCallUISnapshotViewController)initWithConfiguration:(id)configuration style:(int64_t)style contact:(id)contact fallbackText:(id)text
{
  textCopy = text;
  if (contact)
  {
    configurationCopy = configuration;
    v12 = [(TPInComingCallUISnapshotViewController *)self initWithConfiguration:configurationCopy style:style contact:contact];

    v13 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E695CF18];
    configurationCopy2 = configuration;
    v16 = objc_alloc_init(v14);
    [v16 setGivenName:textCopy];
    v17 = [(TPInComingCallUISnapshotViewController *)self initWithConfiguration:configurationCopy2 style:style contact:v16];

    v13 = v17;
  }

  return v13;
}

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name window:(id)window
{
  [TPIncomingCallMetricsProvider horizontalNameLabelBoundingRectForName:name caption:0 window:window preferredTitleFont:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name caption:(id)caption window:(id)window preferredTitleFont:(id)font
{
  [TPIncomingCallMetricsProvider horizontalNameLabelBoundingRectForName:name caption:caption window:window preferredTitleFont:font];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)name window:(id)window
{
  [TPIncomingCallMetricsProvider verticalNameLabelBoundingRectForName:name caption:0 window:window preferredTitleFont:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)name caption:(id)caption window:(id)window preferredTitleFont:(id)font
{
  [TPIncomingCallMetricsProvider verticalNameLabelBoundingRectForName:name caption:caption window:window preferredTitleFont:font];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)identifierForStyle
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PRPosterSnapshotDefinitionIdentifier getPRPosterSnapshotDefinitionIdentifierIncomingCallComposite(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:69 description:{@"%s", dlerror()}];

  __break(1u);
}

@end