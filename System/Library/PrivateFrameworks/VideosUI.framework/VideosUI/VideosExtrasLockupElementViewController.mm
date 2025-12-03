@interface VideosExtrasLockupElementViewController
- (NSString)descriptionTextStyle;
- (VideosExtrasLockupElementViewController)initWithViewElement:(id)element;
- (void)_configureArtworkViewForImageElement:(id)element overlays:(id)overlays;
- (void)_configureDescriptionLabelForTextElement:(id)element;
- (void)_configureSubtitleLabelForTextElement:(id)element;
- (void)_configureTitleLabelForTextElement:(id)element;
- (void)_handlePress:(id)press;
- (void)_prepareLayout;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VideosExtrasLockupElementViewController

- (VideosExtrasLockupElementViewController)initWithViewElement:(id)element
{
  v10.receiver = self;
  v10.super_class = VideosExtrasLockupElementViewController;
  v3 = [(VideosExtrasViewElementViewController *)&v10 initWithViewElement:element];
  v4 = v3;
  if (v3)
  {
    viewElement = [(VideosExtrasViewElementViewController *)v3 viewElement];
    title = [viewElement title];
    text = [title text];
    string = [text string];
    [(VideosExtrasLockupElementViewController *)v4 setTitle:string];
  }

  return v4;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = VideosExtrasLockupElementViewController;
  [(VideosExtrasViewElementViewController *)&v29 viewDidLoad];
  view = [(VideosExtrasLockupElementViewController *)self view];
  initForAutolayout = [[VideosExtrasConstrainedArtworkContainerView alloc] initForAutolayout];
  artworkContainerView = self->_artworkContainerView;
  self->_artworkContainerView = initForAutolayout;

  [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView setUserInteractionEnabled:1];
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  [artworkView setUserInteractionEnabled:1];
  [artworkView setDimsWhenHighlighted:1];
  v28 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handlePress_];
  [v28 setMinimumPressDuration:0.0];
  [v28 setAllowableMovement:1.79769313e308];
  [artworkView addGestureRecognizer:v28];
  [view addSubview:self->_artworkContainerView];
  initForAutolayout2 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
  textContainmentView = self->_textContainmentView;
  self->_textContainmentView = initForAutolayout2;

  [view addSubview:self->_textContainmentView];
  initForAutolayout3 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  titleLabel = self->_titleLabel;
  self->_titleLabel = initForAutolayout3;

  LODWORD(v11) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v11];
  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  [(UIView *)self->_textContainmentView addSubview:self->_titleLabel];
  initForAutolayout4 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = initForAutolayout4;

  LODWORD(v14) = 1148829696;
  [(UILabel *)self->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v14];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
  [(UILabel *)self->_subtitleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  [(UIView *)self->_textContainmentView addSubview:self->_subtitleLabel];
  initForAutolayout5 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = initForAutolayout5;

  [(UILabel *)self->_descriptionLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  LODWORD(v17) = 1148813312;
  [(UILabel *)self->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v17];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  [(UIView *)self->_textContainmentView addSubview:self->_descriptionLabel];
  v18 = *MEMORY[0x1E69DDCE0];
  v19 = *(MEMORY[0x1E69DDCE0] + 8);
  v20 = *(MEMORY[0x1E69DDCE0] + 16);
  v21 = *(MEMORY[0x1E69DDCE0] + 24);
  v22 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_titleLabel toView:self->_textContainmentView alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], v19, v20, v21}];
  v23 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:4 relatedBy:-1 toItem:self->_textContainmentView attribute:4 multiplier:1.0 constant:0.0];
  v24 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_subtitleLabel toView:self->_textContainmentView alongEdges:10 insets:{v18, v19, v20, v21}];
  v25 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_subtitleLabel attribute:4 relatedBy:-1 toItem:self->_textContainmentView attribute:4 multiplier:1.0 constant:0.0];
  v26 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_descriptionLabel toView:self->_textContainmentView alongEdges:10 insets:{v18, v19, v20, v21}];
  v27 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_descriptionLabel attribute:4 relatedBy:-1 toItem:self->_textContainmentView attribute:4 multiplier:1.0 constant:0.0];
  [view addConstraints:v22];
  [view addConstraint:v23];
  [view addConstraints:v24];
  [view addConstraint:v25];
  [view addConstraints:v26];
  [view addConstraint:v27];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
  title = [viewElement title];
  [(VideosExtrasLockupElementViewController *)self _configureTitleLabelForTextElement:title];

  viewElement2 = [(VideosExtrasViewElementViewController *)self viewElement];
  subtitle = [viewElement2 subtitle];
  [(VideosExtrasLockupElementViewController *)self _configureSubtitleLabelForTextElement:subtitle];

  viewElement3 = [(VideosExtrasViewElementViewController *)self viewElement];
  descriptionText = [viewElement3 descriptionText];
  [(VideosExtrasLockupElementViewController *)self _configureDescriptionLabelForTextElement:descriptionText];

  v16.receiver = self;
  v16.super_class = VideosExtrasLockupElementViewController;
  [(VideosExtrasElementViewController *)&v16 viewWillAppear:appearCopy];
  viewElement4 = [(VideosExtrasViewElementViewController *)self viewElement];
  image = [viewElement4 image];
  viewElement5 = [(VideosExtrasViewElementViewController *)self viewElement];
  overlays = [viewElement5 overlays];
  [(VideosExtrasLockupElementViewController *)self _configureArtworkViewForImageElement:image overlays:overlays];

  view = [(VideosExtrasLockupElementViewController *)self view];
  [view bringSubviewToFront:self->_artworkContainerView];
  [view bringSubviewToFront:self->_textContainmentView];
  [view layoutBelowIfNeeded];
}

- (void)_prepareLayout
{
  v125.receiver = self;
  v125.super_class = VideosExtrasLockupElementViewController;
  [(VideosExtrasElementViewController *)&v125 _prepareLayout];
  view = [(VideosExtrasLockupElementViewController *)self view];
  if (![(VideosExtrasViewElementViewController *)self embedded])
  {
    backgroundViewController = [(VideosExtrasElementViewController *)self backgroundViewController];
    [backgroundViewController setVignetteType:3];
  }

  p_artworkSize = &self->_artworkSize;
  self->_artworkSize = *MEMORY[0x1E695F060];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  v8 = self->_artworkContainerView;
  if (![(VideosExtrasElementViewController *)self isWide])
  {
    v122 = safeAreaLayoutGuide2;
    v123 = safeAreaLayoutGuide;
    if ([(VideosExtrasElementViewController *)self extrasSize])
    {
      if ([(VideosExtrasElementViewController *)self extrasSize]!= 1)
      {
        if ([(VideosExtrasElementViewController *)self extrasSize]== 2)
        {
          v24 = xmmword_1E4296FF0;
        }

        else
        {
          v24 = xmmword_1E4296FE0;
        }

        *p_artworkSize = v24;
        v21 = 15.0;
        v19 = -15.0;
        v14 = 25.0;
        v121 = 30.0;
        v15 = 20.0;
        v18 = 0.0;
        v16 = 5;
        v120 = 6;
        v119 = 3;
        v13 = 1;
        v17 = -37.0;
        v20 = 20.0;
        v22 = 25.0;
        goto LABEL_16;
      }

      v23 = xmmword_1E4297000;
    }

    else
    {
      v23 = xmmword_1E4297010;
    }

    *p_artworkSize = v23;
    v21 = 15.0;
    v19 = -15.0;
    v121 = 30.0;
    v15 = 20.0;
    v18 = 0.0;
    v16 = 5;
    v120 = 6;
    v119 = 3;
    v13 = 1;
    v17 = -32.0;
    v14 = 20.0;
    v20 = 20.0;
    v22 = 20.0;
    goto LABEL_16;
  }

  embedded = [(VideosExtrasViewElementViewController *)self embedded];
  v10 = 435.0;
  if (embedded)
  {
    v10 = 335.0;
  }

  p_artworkSize->width = 550.0;
  self->_artworkSize.height = v10;
  v11 = self->_artworkContainerView;

  v12 = self->_artworkContainerView;
  v8 = 0;
  v13 = 0;
  v14 = 0.0;
  v15 = 25.0;
  v16 = 9;
  v120 = 5;
  v17 = -60.0;
  v121 = 40.0;
  v122 = v12;
  v18 = 34.0;
  v119 = 4;
  v19 = 0.0;
  v20 = 0.0;
  v123 = v11;
  v21 = 0.0;
  v22 = 34.0;
LABEL_16:
  artworkContainerTopConstraint = self->_artworkContainerTopConstraint;
  v124 = v8;
  if (!artworkContainerTopConstraint)
  {
    v26 = MEMORY[0x1E696ACD8];
    artworkContainerView = self->_artworkContainerView;
    safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
    v29 = artworkContainerView;
    v8 = v124;
    v30 = [v26 constraintWithItem:v29 attribute:3 relatedBy:0 toItem:safeAreaLayoutGuide3 attribute:3 multiplier:1.0 constant:0.0];
    v31 = self->_artworkContainerTopConstraint;
    self->_artworkContainerTopConstraint = v30;

    [view addConstraint:self->_artworkContainerTopConstraint];
    artworkContainerTopConstraint = self->_artworkContainerTopConstraint;
  }

  [(NSLayoutConstraint *)artworkContainerTopConstraint setConstant:v22];
  artworkContainerXConstraint = self->_artworkContainerXConstraint;
  if (!artworkContainerXConstraint)
  {
    goto LABEL_22;
  }

  if ([(NSLayoutConstraint *)artworkContainerXConstraint firstAttribute]!= v16)
  {
    [view removeConstraint:self->_artworkContainerXConstraint];
    v33 = self->_artworkContainerXConstraint;
    self->_artworkContainerXConstraint = 0;
  }

  v34 = self->_artworkContainerXConstraint;
  if (!v34)
  {
LABEL_22:
    v35 = MEMORY[0x1E696ACD8];
    v36 = self->_artworkContainerView;
    safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
    v38 = v36;
    v8 = v124;
    v39 = [v35 constraintWithItem:v38 attribute:v16 relatedBy:0 toItem:safeAreaLayoutGuide4 attribute:v16 multiplier:1.0 constant:0.0];
    v40 = self->_artworkContainerXConstraint;
    self->_artworkContainerXConstraint = v39;

    [view addConstraint:self->_artworkContainerXConstraint];
    v34 = self->_artworkContainerXConstraint;
  }

  [(NSLayoutConstraint *)v34 setConstant:v21];
  artworkContainerWidthConstraint = self->_artworkContainerWidthConstraint;
  if (!artworkContainerWidthConstraint)
  {
    v42 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_artworkContainerView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    v43 = self->_artworkContainerWidthConstraint;
    self->_artworkContainerWidthConstraint = v42;

    [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView addConstraint:self->_artworkContainerWidthConstraint];
    artworkContainerWidthConstraint = self->_artworkContainerWidthConstraint;
  }

  [(NSLayoutConstraint *)artworkContainerWidthConstraint setConstant:p_artworkSize->width];
  artworkContainerHeightConstraint = self->_artworkContainerHeightConstraint;
  if (!artworkContainerHeightConstraint)
  {
    v45 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_artworkContainerView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    v46 = self->_artworkContainerHeightConstraint;
    self->_artworkContainerHeightConstraint = v45;

    [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView addConstraint:self->_artworkContainerHeightConstraint];
    artworkContainerHeightConstraint = self->_artworkContainerHeightConstraint;
  }

  [(NSLayoutConstraint *)artworkContainerHeightConstraint setConstant:self->_artworkSize.height];
  textLeadingConstraint = self->_textLeadingConstraint;
  if (!textLeadingConstraint)
  {
    goto LABEL_31;
  }

  if ([(NSLayoutConstraint *)textLeadingConstraint secondAttribute]!= v120)
  {
    [view removeConstraint:self->_textLeadingConstraint];
    v48 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = 0;
  }

  v49 = self->_textLeadingConstraint;
  if (!v49)
  {
LABEL_31:
    v50 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_textContainmentView attribute:5 relatedBy:0 toItem:self->_artworkContainerView attribute:v120 multiplier:1.0 constant:v20];
    v51 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = v50;

    [view addConstraint:self->_textLeadingConstraint];
    v49 = self->_textLeadingConstraint;
  }

  [(NSLayoutConstraint *)v49 setConstant:v20];
  textTrailingConstraint = self->_textTrailingConstraint;
  if (!textTrailingConstraint)
  {
    goto LABEL_36;
  }

  secondItem = [(NSLayoutConstraint *)textTrailingConstraint secondItem];

  if (secondItem != v123)
  {
    [view removeConstraint:self->_textTrailingConstraint];
    v54 = self->_textTrailingConstraint;
    self->_textTrailingConstraint = 0;
  }

  v55 = self->_textTrailingConstraint;
  if (!v55)
  {
LABEL_36:
    v56 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_textContainmentView attribute:6 relatedBy:0 toItem:v123 attribute:6 multiplier:1.0 constant:v19];
    v57 = self->_textTrailingConstraint;
    self->_textTrailingConstraint = v56;

    [view addConstraint:self->_textTrailingConstraint];
    v55 = self->_textTrailingConstraint;
  }

  [(NSLayoutConstraint *)v55 setConstant:v19];
  textTopConstraint = self->_textTopConstraint;
  if (!textTopConstraint)
  {
    goto LABEL_42;
  }

  if ([(NSLayoutConstraint *)textTopConstraint relation]!= v13 || ([(NSLayoutConstraint *)self->_textTopConstraint secondItem], v59 = objc_claimAutoreleasedReturnValue(), v59, v59 != v122))
  {
    [view removeConstraint:self->_textTopConstraint];
    v60 = self->_textTopConstraint;
    self->_textTopConstraint = 0;
  }

  v61 = self->_textTopConstraint;
  if (!v61)
  {
LABEL_42:
    v62 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_textContainmentView attribute:3 relatedBy:v13 toItem:v122 attribute:v119 multiplier:1.0 constant:v14];
    v63 = self->_textTopConstraint;
    self->_textTopConstraint = v62;

    [view addConstraint:self->_textTopConstraint];
    v61 = self->_textTopConstraint;
  }

  [(NSLayoutConstraint *)v61 setConstant:v14];
  textBottomConstraint = self->_textBottomConstraint;
  if (!textBottomConstraint)
  {
    v65 = MEMORY[0x1E696ACD8];
    textContainmentView = self->_textContainmentView;
    safeAreaLayoutGuide5 = [view safeAreaLayoutGuide];
    v68 = [v65 constraintWithItem:textContainmentView attribute:4 relatedBy:-1 toItem:safeAreaLayoutGuide5 attribute:4 multiplier:1.0 constant:v17];
    v69 = self->_textBottomConstraint;
    self->_textBottomConstraint = v68;

    v8 = v124;
    [view addConstraint:self->_textBottomConstraint];
    textBottomConstraint = self->_textBottomConstraint;
  }

  [(NSLayoutConstraint *)textBottomConstraint setConstant:v17];
  textHeightConstraint = self->_textHeightConstraint;
  if (v8)
  {
    if (!textHeightConstraint)
    {
      goto LABEL_50;
    }

    secondItem2 = [(NSLayoutConstraint *)self->_textHeightConstraint secondItem];

    if (secondItem2 != v8)
    {
      [view removeConstraint:self->_textHeightConstraint];
      v72 = self->_textHeightConstraint;
      self->_textHeightConstraint = 0;
    }

    if (!self->_textHeightConstraint)
    {
LABEL_50:
      v73 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_textContainmentView attribute:8 relatedBy:-1 toItem:v8 attribute:8 multiplier:1.0 constant:0.0];
      v74 = self->_textHeightConstraint;
      self->_textHeightConstraint = v73;

      [view addConstraint:self->_textHeightConstraint];
    }

    textCenterYConstraint = self->_textCenterYConstraint;
    if (!textCenterYConstraint)
    {
      goto LABEL_55;
    }

    secondItem3 = [(NSLayoutConstraint *)textCenterYConstraint secondItem];

    if (secondItem3 != v8)
    {
      [view removeConstraint:self->_textCenterYConstraint];
      v77 = self->_textCenterYConstraint;
      self->_textCenterYConstraint = 0;
    }

    if (!self->_textCenterYConstraint)
    {
LABEL_55:
      v78 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_textContainmentView attribute:10 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];
      v79 = self->_textCenterYConstraint;
      self->_textCenterYConstraint = v78;

      [view addConstraint:self->_textCenterYConstraint];
    }
  }

  else
  {
    if (textHeightConstraint)
    {
      [view removeConstraint:?];
      v80 = self->_textHeightConstraint;
      self->_textHeightConstraint = 0;
    }

    if (self->_textCenterYConstraint)
    {
      [view removeConstraint:?];
      v81 = self->_textCenterYConstraint;
      self->_textCenterYConstraint = 0;
    }
  }

  titleVerticalConstraint = self->_titleVerticalConstraint;
  if (v18 == 0.0)
  {
    if (([(NSLayoutConstraint *)titleVerticalConstraint isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      [view removeConstraint:self->_titleVerticalConstraint];
      v83 = self->_titleVerticalConstraint;
      self->_titleVerticalConstraint = 0;
    }

    v84 = self->_titleVerticalConstraint;
    if (!v84)
    {
      v85 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:3 relatedBy:1 toItem:self->_textContainmentView attribute:3 multiplier:1.0 constant:0.0];
      v86 = self->_titleVerticalConstraint;
      self->_titleVerticalConstraint = v85;

      [view addConstraint:self->_titleVerticalConstraint];
      v84 = self->_titleVerticalConstraint;
    }

    [(NSLayoutConstraint *)v84 setConstant:v18];
  }

  else
  {
    if (([(NSLayoutConstraint *)titleVerticalConstraint isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      [view removeConstraint:self->_titleVerticalConstraint];
      v87 = self->_titleVerticalConstraint;
      self->_titleVerticalConstraint = 0;
    }

    v88 = self->_titleVerticalConstraint;
    if (!self->_titleVerticalConstraint)
    {
      v89 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:self->_titleLabel toView:self->_textContainmentView attribute:3 withTextStyle:*MEMORY[0x1E69DDD40] nonStandardLeading:v18];

      objc_storeStrong(&self->_titleVerticalConstraint, v89);
      [view addConstraint:self->_titleVerticalConstraint];
      v88 = v89;
    }

    [(NSLayoutConstraint *)v88 setDefaultSizeConstant:v18];
  }

  p_titleLabel = &self->_titleLabel;
  text = [(UILabel *)self->_titleLabel text];
  v92 = [text length];

  if (v92)
  {
    v93 = 11;
    p_textContainmentView = &self->_titleLabel;
  }

  else
  {
    p_textContainmentView = &self->_textContainmentView;
    v93 = 3;
  }

  v95 = *p_textContainmentView;
  subtitleBaselineConstraint = self->_subtitleBaselineConstraint;
  if (subtitleBaselineConstraint)
  {
    secondItem4 = [(MPUContentSizeLayoutConstraint *)subtitleBaselineConstraint secondItem];
    v98 = secondItem4;
    if (secondItem4 == v95)
    {
      secondAttribute = [(MPUContentSizeLayoutConstraint *)self->_subtitleBaselineConstraint secondAttribute];

      if (secondAttribute == v93)
      {
        goto LABEL_79;
      }
    }

    else
    {
    }

    [view removeConstraint:self->_subtitleBaselineConstraint];
    v100 = self->_subtitleBaselineConstraint;
    self->_subtitleBaselineConstraint = 0;

LABEL_79:
    v101 = self->_subtitleBaselineConstraint;
    if (v101)
    {
      goto LABEL_81;
    }
  }

  v102 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:self->_subtitleLabel toView:v95 attribute:v93 withTextStyle:*MEMORY[0x1E69DDD80] nonStandardLeading:v15];
  v103 = self->_subtitleBaselineConstraint;
  self->_subtitleBaselineConstraint = v102;

  [view addConstraint:self->_subtitleBaselineConstraint];
  v101 = self->_subtitleBaselineConstraint;
LABEL_81:
  [(MPUContentSizeLayoutConstraint *)v101 setDefaultSizeConstant:v15];
  text2 = [(UILabel *)self->_subtitleLabel text];
  v105 = [text2 length];

  if (v105)
  {
    v106 = 11;
    p_titleLabel = &self->_subtitleLabel;
  }

  else
  {
    text3 = [*p_titleLabel text];
    v108 = [text3 length];

    if (v108)
    {
      v106 = 11;
    }

    else
    {
      p_titleLabel = &self->_textContainmentView;
      v106 = 3;
    }
  }

  v109 = *p_titleLabel;
  descriptionTextStyle = [(VideosExtrasLockupElementViewController *)self descriptionTextStyle];
  descriptionBaselineConstraint = self->_descriptionBaselineConstraint;
  if (!descriptionBaselineConstraint)
  {
    goto LABEL_94;
  }

  secondItem5 = [(MPUContentSizeLayoutConstraint *)descriptionBaselineConstraint secondItem];
  if (secondItem5 != v109 || [(MPUContentSizeLayoutConstraint *)self->_descriptionBaselineConstraint secondAttribute]!= v106)
  {

    goto LABEL_92;
  }

  textStyle = [(MPUContentSizeLayoutConstraint *)self->_descriptionBaselineConstraint textStyle];
  v114 = [textStyle isEqualToString:descriptionTextStyle];

  if ((v114 & 1) == 0)
  {
LABEL_92:
    [view removeConstraint:self->_descriptionBaselineConstraint];
    v115 = self->_descriptionBaselineConstraint;
    self->_descriptionBaselineConstraint = 0;
  }

  v116 = self->_descriptionBaselineConstraint;
  if (!v116)
  {
LABEL_94:
    v117 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:self->_descriptionLabel toView:v109 attribute:v106 withTextStyle:descriptionTextStyle nonStandardLeading:v121];
    v118 = self->_descriptionBaselineConstraint;
    self->_descriptionBaselineConstraint = v117;

    [view addConstraint:self->_descriptionBaselineConstraint];
    v116 = self->_descriptionBaselineConstraint;
  }

  [(MPUContentSizeLayoutConstraint *)v116 setDefaultSizeConstant:v121];
}

- (void)_configureArtworkViewForImageElement:(id)element overlays:(id)overlays
{
  v41 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  overlaysCopy = overlays;
  if (elementCopy)
  {
    artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
    layer = [artworkView layer];
    borderColor = [elementCopy borderColor];
    v11 = borderColor;
    if (borderColor)
    {
      v12 = borderColor;
    }

    else
    {
      v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
    }

    v13 = v12;

    [layer setBorderColor:{objc_msgSend(v13, "CGColor")}];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v33 = layer;
    [layer setBorderWidth:1.0 / v15];

    placeholderURL = [elementCopy placeholderURL];
    [MEMORY[0x1E69DCAB8] imageForPlaceholderURL:?];
    v31 = v34 = artworkView;
    [artworkView setPlaceholderImage:?];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = overlaysCopy;
    children = [overlaysCopy children];
    v17 = [children countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(children);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            resourceImage = [v21 resourceImage];
            if (resourceImage)
            {
              v23 = resourceImage;
              [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView setOverlayImage:resourceImage];
              [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView setOverlayScale:0.2];

              goto LABEL_16;
            }
          }
        }

        v18 = [children countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    artworkCatalog = [elementCopy artworkCatalog];
    view = [(VideosExtrasLockupElementViewController *)self view];
    window = [view window];
    screen = [window screen];
    [screen scale];
    v29 = v28;

    [artworkCatalog setFittingSize:{self->_artworkSize.width, self->_artworkSize.height}];
    if (v29 == 0.0)
    {
      mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen2 scale];
      [artworkCatalog setDestinationScale:?];
    }

    else
    {
      [artworkCatalog setDestinationScale:v29];
    }

    [artworkCatalog setDestination:self->_artworkContainerView configurationBlock:&__block_literal_global_62];

    overlaysCopy = v35;
  }
}

void __89__VideosExtrasLockupElementViewController__configureArtworkViewForImageElement_overlays___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 artworkView];
  [v5 setImage:v4];
}

- (void)_configureTitleLabelForTextElement:(id)element
{
  if (element)
  {
    v4 = MEMORY[0x1E69DB880];
    v5 = *MEMORY[0x1E69DDD40];
    elementCopy = element;
    v8 = [v4 preferredFontDescriptorWithTextStyle:v5];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_titleLabel setTextColor:whiteColor];

    [(UILabel *)self->_titleLabel configureForIKTextElement:elementCopy fontDescriptor:v8 textStyle:v5];
  }
}

- (void)_configureSubtitleLabelForTextElement:(id)element
{
  if (element)
  {
    v4 = MEMORY[0x1E69DB880];
    v5 = *MEMORY[0x1E69DDD80];
    elementCopy = element;
    v8 = [v4 preferredFontDescriptorWithTextStyle:v5];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
    [(UILabel *)self->_subtitleLabel setTextColor:v7];

    [(UILabel *)self->_subtitleLabel configureForIKTextElement:elementCopy fontDescriptor:v8 textStyle:v5];
  }
}

- (void)_configureDescriptionLabelForTextElement:(id)element
{
  if (element)
  {
    v4 = MEMORY[0x1E69DB880];
    elementCopy = element;
    descriptionTextStyle = [(VideosExtrasLockupElementViewController *)self descriptionTextStyle];
    v10 = [v4 preferredFontDescriptorWithTextStyle:descriptionTextStyle];

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
    [(UILabel *)self->_descriptionLabel setTextColor:v7];

    descriptionLabel = self->_descriptionLabel;
    descriptionTextStyle2 = [(VideosExtrasLockupElementViewController *)self descriptionTextStyle];
    [(UILabel *)descriptionLabel configureForIKTextElement:elementCopy fontDescriptor:v10 textStyle:descriptionTextStyle2];
  }
}

- (NSString)descriptionTextStyle
{
  extrasSize = [(VideosExtrasElementViewController *)self extrasSize];
  v3 = *MEMORY[0x1E69DDD08];
  if (extrasSize - 3 <= 1)
  {
    v4 = *MEMORY[0x1E69DDD28];

    v3 = v4;
  }

  return v3;
}

- (void)_handlePress:(id)press
{
  pressCopy = press;
  viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
  isDisabled = [viewElement isDisabled];

  v6 = pressCopy;
  if ((isDisabled & 1) == 0)
  {
    state = [pressCopy state];
    artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
    [artworkView bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [pressCopy locationInView:artworkView];
    v26.x = v17;
    v26.y = v18;
    v27.origin.x = v10;
    v27.origin.y = v12;
    v27.size.width = v14;
    v27.size.height = v16;
    v19 = CGRectContainsPoint(v27, v26);
    v20 = v19;
    if (state > 2)
    {
      if (state == 3)
      {
        if (v19)
        {
          viewElement2 = [(VideosExtrasViewElementViewController *)self viewElement];
          [viewElement2 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
        }
      }

      else if (state != 4)
      {
        goto LABEL_14;
      }

      artworkView2 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
      [artworkView2 setHighlighted:0 animated:1];
    }

    else
    {
      if (state == 1)
      {
        v21 = artworkView;
        v20 = 1;
        goto LABEL_10;
      }

      if (state == 2)
      {
        v21 = artworkView;
LABEL_10:
        [v21 setHighlighted:v20 animated:1];
      }
    }

LABEL_14:

    v6 = pressCopy;
  }
}

@end