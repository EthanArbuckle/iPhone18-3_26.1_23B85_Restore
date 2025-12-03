@interface PencilEducationElementViewController
- (BOOL)_scribbleInteraction:(id)interaction focusWillTransformElement:(id)element;
- (BOOL)hasRemainingAnimation;
- (BOOL)isUIRTL;
- (CGAffineTransform)applyLocalizationScaleOffsetsIfNecesssaryForDrawing:(SEL)drawing animationType:(id)type transform:(int64_t)transform;
- (CGAffineTransform)transformDrawing:(SEL)drawing toFitBounds:(id)bounds dimension:(CGRect)dimension offset:(int64_t)offset animationType:(CGPoint)type;
- (CGAffineTransform)transformForAnimationType:(SEL)type drawing:(int64_t)drawing bounds:(id)bounds;
- (CGPoint)offsetForAnimationType:(int64_t)type;
- (CGRect)textFieldBoundsForRange:(_NSRange)range;
- (PKPencilEducationOffset)localizationOffsetsForAnimationType:(int64_t)type;
- (PencilEducationElementTextField)textField;
- (PencilEducationElementViewController)initWithElementData:(id)data;
- (PencilEducationElementViewControllerDelegate)delegate;
- (UIButton)replayButton;
- (UILabel)titleLabel;
- (_NSRange)textRangeForAnimationType:(int64_t)type;
- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)width;
- (double)customHeightRatioForAnimationType:(int64_t)type;
- (double)customWidthRatioForAnimationType:(int64_t)type;
- (double)nextAnimationDelayForAnimationType:(int64_t)type;
- (double)scaleRatioForAnimationType:(int64_t)type;
- (double)speedRatioForAnimationType:(int64_t)type;
- (id)allowedCalloutActionsForType:(int64_t)type;
- (id)drawingForAnimationType:(int64_t)type;
- (id)localizationOffsetKeyForAnimationType:(int64_t)type;
- (id)replacePlaceholdersInString:(id)string;
- (int64_t)transformDimensionAnimationType:(int64_t)type;
- (int64_t)type;
- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
- (void)beginAnimationIfNecessary;
- (void)cancelAnimation;
- (void)cancelPendingReplayHiddenCommands;
- (void)handleEndAnimation;
- (void)reloadAnimationQueue;
- (void)reloadStrings;
- (void)replayButtonPressed:(id)pressed;
- (void)setDelayDrawingReplayController:(id)controller;
- (void)setIsAnimating:(BOOL)animating;
- (void)setIsRunningAnimationSequence:(BOOL)sequence;
- (void)updateIsAnimatingUI;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PencilEducationElementViewController

- (PencilEducationElementViewController)initWithElementData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = PencilEducationElementViewController;
  v6 = [(PencilEducationElementViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementData, data);
    textContent = [dataCopy textContent];
    v9 = [(PencilEducationElementViewController *)v7 replacePlaceholdersInString:textContent];
    processedString = v7->_processedString;
    v7->_processedString = v9;
  }

  return v7;
}

- (void)viewDidLoad
{
  v104.receiver = self;
  v104.super_class = PencilEducationElementViewController;
  [(PencilEducationElementViewController *)&v104 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v3 setAlignment:3];
  [v3 setAxis:1];
  [v3 setSpacing:15.0];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v103 = v4;
  heightAnchor = [v4 heightAnchor];
  v6 = [heightAnchor constraintEqualToConstant:42.0];
  [v6 setActive:1];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v7 setNumberOfLines:0];
  [v7 setTextAlignment:1];
  v8 = MEMORY[0x277D74300];
  v9 = *MEMORY[0x277D76918];
  traitCollection = [(PencilEducationElementViewController *)self traitCollection];
  v97 = v9;
  v11 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:traitCollection];

  v101 = v11;
  [v7 setFont:v11];
  v12 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v102 = v12;
  heightAnchor2 = [v12 heightAnchor];
  v14 = [heightAnchor2 constraintEqualToConstant:27.0];
  [v14 setActive:1];

  v15 = objc_alloc_init(PencilEducationElementTextField);
  [(PencilEducationElementTextField *)v15 setBorderStyle:3];
  [(PencilEducationElementTextField *)v15 _setRoundedRectBackgroundCornerRadius:10.0];
  v16 = MEMORY[0x277CBEAF8];
  elementData = [(PencilEducationElementViewController *)self elementData];
  languageID = [elementData languageID];
  v19 = [v16 localeWithLocaleIdentifier:languageID];

  v20 = MEMORY[0x277D74248];
  v100 = v19;
  v21 = [v19 objectForKey:*MEMORY[0x277CBE6C8]];
  v22 = [v20 defaultWritingDirectionForLanguage:v21];

  elementData2 = [(PencilEducationElementViewController *)self elementData];
  languageID2 = [elementData2 languageID];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = PKLocalizedDrawingBundleForLanguage(languageID2, v25);

  elementData3 = [(PencilEducationElementViewController *)self elementData];
  languageID3 = [elementData3 languageID];
  v99 = v26;
  v29 = [v26 URLForResource:@"localizationOffsets" withExtension:@"plist" subdirectory:0 localization:languageID3];

  if (v29 || ([MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "URLForResource:withExtension:", @"localizationOffsets", @"plist"), v29 = objc_claimAutoreleasedReturnValue(), v30, v29))
  {
    v31 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v29 error:0];
    [(PencilEducationElementViewController *)self setLocalizationOffsetDictionary:v31];
  }

  v32 = v22 == 1;
  v33 = v22 == 1;
  if (v32)
  {
    v34 = 4;
  }

  else
  {
    v34 = 3;
  }

  [(PencilEducationElementTextField *)v15 setSemanticContentAttribute:v34];
  [(PencilEducationElementTextField *)v15 setTextAlignment:2 * v33];
  [(PencilEducationElementViewController *)self setIsTextFieldRTL:v33];
  v35 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v94 = v35;
  heightAnchor3 = [v35 heightAnchor];
  v37 = [heightAnchor3 constraintEqualToConstant:6.0];
  [v37 setActive:1];

  v38 = objc_alloc_init(MEMORY[0x277D75220]);
  v39 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.counterclockwise"];
  [v38 setImage:v39 forState:0];

  v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"REPLAY_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  [v38 setTitle:v41 forState:0];

  view = [(PencilEducationElementViewController *)self view];
  tintColor = [view tintColor];
  [v38 setTitleColor:tintColor forState:0];

  v98 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v97 variant:1024];
  titleLabel = [v38 titleLabel];
  [titleLabel setFont:v98];

  v45 = [MEMORY[0x277D755D0] configurationWithFont:v98 scale:-1];
  v96 = v45;
  isUIRTL = [(PencilEducationElementViewController *)self isUIRTL];
  v47 = 7.0;
  if (!isUIRTL)
  {
    v47 = -7.0;
  }

  [v38 setImageEdgeInsets:{0.0, v47, 0.0, 0.0}];
  [v38 setPreferredSymbolConfiguration:v45 forImageInState:0];
  [v38 addTarget:self action:sel_replayButtonPressed_ forControlEvents:64];
  [v38 setHidden:1];
  v48 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor4 = [v48 heightAnchor];
  v50 = [heightAnchor4 constraintGreaterThanOrEqualToConstant:5.0];
  [v50 setActive:1];

  v95 = objc_alloc_init(MEMORY[0x277CD9660]);
  [v95 setDelegate:self];
  [(PencilEducationElementTextField *)v15 addInteraction:v95];
  [v3 addArrangedSubview:v103];
  [v3 addArrangedSubview:v7];
  [v3 addArrangedSubview:?];
  [v3 addArrangedSubview:v15];
  [v3 addArrangedSubview:v35];
  [v3 addArrangedSubview:v38];
  [v3 addArrangedSubview:v48];
  view2 = [(PencilEducationElementViewController *)self view];
  [view2 addSubview:v3];

  widthAnchor = [v103 widthAnchor];
  widthAnchor2 = [v3 widthAnchor];
  v54 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  [v54 setActive:1];

  widthAnchor3 = [v102 widthAnchor];
  widthAnchor4 = [v3 widthAnchor];
  v57 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
  [v57 setActive:1];

  widthAnchor5 = [v48 widthAnchor];
  widthAnchor6 = [v3 widthAnchor];
  v60 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:1.0];
  [v60 setActive:1];

  widthAnchor7 = [v38 widthAnchor];
  widthAnchor8 = [v3 widthAnchor];
  v63 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:1.0];
  [v63 setActive:1];

  LODWORD(v64) = 1148846080;
  [v7 setContentHuggingPriority:1 forAxis:v64];
  LODWORD(v65) = 1148846080;
  [(PencilEducationElementTextField *)v15 setContentHuggingPriority:1 forAxis:v65];
  heightAnchor5 = [(PencilEducationElementTextField *)v15 heightAnchor];
  v67 = [heightAnchor5 constraintEqualToConstant:44.0];
  [v67 setActive:1];

  widthAnchor9 = [(PencilEducationElementTextField *)v15 widthAnchor];
  widthAnchor10 = [v3 widthAnchor];
  v70 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10];
  [v70 setActive:1];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [v3 leadingAnchor];
  view3 = [(PencilEducationElementViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v74 setActive:1];

  trailingAnchor = [v3 trailingAnchor];
  view4 = [(PencilEducationElementViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v78 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v78 setActive:1];

  topAnchor = [v3 topAnchor];
  view5 = [(PencilEducationElementViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v82 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v82 setActive:1];

  bottomAnchor = [v3 bottomAnchor];
  view6 = [(PencilEducationElementViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v86 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v86 setActive:1];

  LODWORD(v87) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v87];
  LODWORD(v88) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v88];
  LODWORD(v89) = 1148846080;
  [(PencilEducationElementTextField *)v15 setContentCompressionResistancePriority:1 forAxis:v89];
  LODWORD(v90) = 1148846080;
  [v38 setContentCompressionResistancePriority:1 forAxis:v90];
  [(PencilEducationElementViewController *)self setTitleLabel:v7];
  [(PencilEducationElementViewController *)self setTextField:v15];
  [(PencilEducationElementViewController *)self setReplayButton:v38];
  [(PencilEducationElementViewController *)self setStackView:v3];
  v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PencilEducationElementViewController *)self setAnimationQueue:v91];

  [(PencilEducationElementViewController *)self reloadStrings];
  [(PencilEducationElementViewController *)self reloadAnimationQueue];
  v92 = objc_alloc_init(MEMORY[0x277CD9698]);
  [(PencilEducationElementViewController *)self setTextInputSettings:v92];

  textInputSettings = [(PencilEducationElementViewController *)self textInputSettings];
  [textInputSettings loadSettingsFromUserDefaults];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PencilEducationElementViewController;
  [(PencilEducationElementViewController *)&v6 viewWillAppear:appear];
  if (![(PencilEducationElementViewController *)self didRunInitialAppearActions]|| [(PencilEducationElementViewController *)self didDisappear])
  {
    [(PencilEducationElementViewController *)self setDidRunInitialAppearActions:1];
    [(PencilEducationElementViewController *)self setDidDisappear:0];
    [(PencilEducationElementViewController *)self reloadStrings];
    [(PencilEducationElementViewController *)self reloadAnimationQueue];
    [(PencilEducationElementViewController *)self cancelPendingReplayHiddenCommands];
    replayButton = [(PencilEducationElementViewController *)self replayButton];
    [replayButton setHidden:1];

    textField = [(PencilEducationElementViewController *)self textField];
    [textField setEnabled:1];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PencilEducationElementViewController;
  [(PencilEducationElementViewController *)&v4 viewWillDisappear:disappear];
  [(PencilEducationElementViewController *)self cancelAnimation];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PencilEducationElementViewController;
  [(PencilEducationElementViewController *)&v6 viewDidDisappear:disappear];
  [(PencilEducationElementViewController *)self cancelPendingReplayHiddenCommands];
  replayButton = [(PencilEducationElementViewController *)self replayButton];
  [replayButton setHidden:1];

  textField = [(PencilEducationElementViewController *)self textField];
  [textField setEnabled:0];

  [(PencilEducationElementViewController *)self setDidDisappear:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PencilEducationElementViewController;
  [(PencilEducationElementViewController *)&v5 viewDidAppear:appear];
  delegate = [(PencilEducationElementViewController *)self delegate];
  [delegate elementControllerDidAppear:self];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(PencilEducationElementViewController *)self cancelAnimation];
  v8.receiver = self;
  v8.super_class = PencilEducationElementViewController;
  [(PencilEducationElementViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)width
{
  view = [(PencilEducationElementViewController *)self view];
  [view frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  replayButton = [(PencilEducationElementViewController *)self replayButton];
  isHidden = [replayButton isHidden];

  [(PencilEducationElementViewController *)self cancelPendingReplayHiddenCommands];
  replayButton2 = [(PencilEducationElementViewController *)self replayButton];
  [replayButton2 setHidden:0];

  view2 = [(PencilEducationElementViewController *)self view];
  [view2 setFrame:{v7, v9, width, v13}];

  view3 = [(PencilEducationElementViewController *)self view];
  [view3 layoutIfNeeded];

  stackView = [(PencilEducationElementViewController *)self stackView];
  [stackView systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v21 = v20;

  [(PencilEducationElementViewController *)self cancelPendingReplayHiddenCommands];
  replayButton3 = [(PencilEducationElementViewController *)self replayButton];
  [replayButton3 setHidden:isHidden];

  view4 = [(PencilEducationElementViewController *)self view];
  [view4 setFrame:{v7, v9, v11, v13}];

  return v21;
}

- (void)reloadStrings
{
  elementData = [(PencilEducationElementViewController *)self elementData];
  title = [elementData title];
  titleLabel = [(PencilEducationElementViewController *)self titleLabel];
  [titleLabel setText:title];

  processedString = [(PencilEducationElementViewController *)self processedString];
  textField = [(PencilEducationElementViewController *)self textField];
  [textField setText:processedString];

  textField2 = [(PencilEducationElementViewController *)self textField];
  [textField2 setSelectionRange:{0, 0}];

  elementData2 = [(PencilEducationElementViewController *)self elementData];
  placeholderTextContent = [elementData2 placeholderTextContent];
  textField3 = [(PencilEducationElementViewController *)self textField];
  [textField3 setPlaceholder:placeholderTextContent];
}

- (void)reloadAnimationQueue
{
  animationQueue = [(PencilEducationElementViewController *)self animationQueue];
  [animationQueue removeAllObjects];
  elementData = [(PencilEducationElementViewController *)self elementData];
  type = [elementData type];

  if (type <= 1)
  {
    if (type)
    {
      v5 = animationQueue;
      if (type != 1)
      {
        goto LABEL_13;
      }

      v6 = &unk_286FED0B0;
    }

    else
    {
      v6 = &unk_286FED098;
    }
  }

  else if (type == 2)
  {
    [animationQueue addObject:&unk_286FED0C8];
    [animationQueue addObject:&unk_286FED0E0];
    v6 = &unk_286FED0F8;
  }

  else
  {
    v5 = animationQueue;
    if (type == 3)
    {
      [animationQueue addObject:&unk_286FED140];
      v6 = &unk_286FED158;
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_13;
      }

      [animationQueue addObject:&unk_286FED110];
      v6 = &unk_286FED128;
    }
  }

  [animationQueue addObject:v6];
  v5 = animationQueue;
LABEL_13:
  reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  [animationQueue removeAllObjects];
  [animationQueue addObjectsFromArray:allObjects];
}

- (void)beginAnimationIfNecessary
{
  animationQueue = [(PencilEducationElementViewController *)self animationQueue];
  lastObject = [animationQueue lastObject];
  unsignedIntegerValue = [lastObject unsignedIntegerValue];

  v6 = [(PencilEducationElementViewController *)self isSecondaryAnimationForType:unsignedIntegerValue];
  v7 = MEMORY[0x277CD9608];
  view = [(PencilEducationElementViewController *)self view];
  window = [view window];
  LODWORD(v7) = [v7 isDrawingInProgressForWindow:window];

  if (!v7 || v6)
  {
    if (![(PencilEducationElementViewController *)self isAnimating]&& [(PencilEducationElementViewController *)self hasRemainingAnimation])
    {
      [(PencilEducationElementViewController *)self setIsAnimating:1];
      [(PencilEducationElementViewController *)self setIsRunningAnimationSequence:1];
      [(PencilEducationElementViewController *)self setInProgressAnimationType:unsignedIntegerValue];
      animationQueue2 = [(PencilEducationElementViewController *)self animationQueue];
      [animationQueue2 removeLastObject];

      v11 = [(PencilEducationElementViewController *)self drawingForAnimationType:unsignedIntegerValue];
      objc_initWeak(location, self);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __65__PencilEducationElementViewController_beginAnimationIfNecessary__block_invoke;
      v54[3] = &unk_279A0A328;
      objc_copyWeak(v55, location);
      v55[1] = unsignedIntegerValue;
      [(PencilEducationElementViewController *)self setEndWritingCompletionBlock:v54];
      if (v11)
      {
        v12 = [(PencilEducationElementViewController *)self textRangeForAnimationType:unsignedIntegerValue];
        v14 = v13;
        [(PencilEducationElementViewController *)self offsetForAnimationType:unsignedIntegerValue];
        v16 = v15;
        v18 = v17;
        [(PencilEducationElementViewController *)self textFieldBoundsForRange:v12, v14];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        [(PencilEducationElementViewController *)self speedRatioForAnimationType:unsignedIntegerValue];
        v28 = v27;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        [(PencilEducationElementViewController *)self transformForAnimationType:unsignedIntegerValue drawing:v11 bounds:v20, v22, v24, v26];
        v29 = objc_alloc(MEMORY[0x277CD9608]);
        textField = [(PencilEducationElementViewController *)self textField];
        v50[0] = v51;
        v50[1] = v52;
        v50[2] = v53;
        v31 = [v29 initWithDrawing:v11 transform:v50 sourceTextField:textField];

        [v31 setSpeedRatio:v28];
        [(PencilEducationElementViewController *)self setDrawingReplayController:v31];
        if (!unsignedIntegerValue)
        {
          textField2 = [(PencilEducationElementViewController *)self textField];
          [textField2 setIgnoreScribbleInsertText:1];

          textField3 = [(PencilEducationElementViewController *)self textField];
          _textInteraction = [textField3 _textInteraction];
          _assertionController = [_textInteraction _assertionController];
          v36 = [_assertionController nonBlinkingAssertionWithReason:@"add_text_replay"];
          [(PencilEducationElementViewController *)self setCursorAssertion:v36];
        }

        v37 = [(PencilEducationElementViewController *)self allowedCalloutActionsForType:unsignedIntegerValue];
        textField4 = [(PencilEducationElementViewController *)self textField];
        [textField4 setAllowedCalloutActions:v37];

        drawingReplayController = [(PencilEducationElementViewController *)self drawingReplayController];
        [drawingReplayController beginDrawingAnimationAtRange:v12 offset:v14 completion:{0, v16, v18}];
      }

      else if (unsignedIntegerValue == 8)
      {
        textField5 = [(PencilEducationElementViewController *)self textField];
        [textField5 setSelectionRange:{0, 0}];

        WeakRetained = objc_loadWeakRetained(location);
        [WeakRetained handleEndAnimation];
      }

      else if (unsignedIntegerValue == 4)
      {
        drawingReplayController2 = [(PencilEducationElementViewController *)self drawingReplayController];
        [drawingReplayController2 cancel];

        v41 = [(PencilEducationElementViewController *)self textRangeForAnimationType:4];
        textField6 = [(PencilEducationElementViewController *)self textField];
        [textField6 setSelectionRange:{v41, 0}];

        v43 = objc_alloc(MEMORY[0x277CD9608]);
        textField7 = [(PencilEducationElementViewController *)self textField];
        v45 = [v43 initWithSourceTextField:textField7];

        [(PencilEducationElementViewController *)self setDrawingReplayController:v45];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __65__PencilEducationElementViewController_beginAnimationIfNecessary__block_invoke_3;
        v48[3] = &unk_279A0A350;
        objc_copyWeak(&v49, location);
        [v45 beginInsertTextAnimationAtIndex:v41 offset:v48 completion:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
        objc_destroyWeak(&v49);
      }

      objc_destroyWeak(v55);
      objc_destroyWeak(location);
    }
  }

  else
  {

    [(PencilEducationElementViewController *)self cancelAnimation];
  }
}

void __65__PencilEducationElementViewController_beginAnimationIfNecessary__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = *(a1 + 40);
      if (!v6)
      {
        v7 = [WeakRetained textField];
        [v7 setIgnoreScribbleInsertText:0];

        v8 = [v5 textField];
        [v8 setText:&stru_286FDFDB8];

        v6 = *(a1 + 40);
      }

      if (v6 != 3)
      {
        v9 = [v5 textField];
        [v9 resignFirstResponder];
      }

      v10 = [v5 cursorAssertion];
      [v10 invalidate];

      [v5 nextAnimationDelayForAnimationType:*(a1 + 40)];
      v12 = v11;
      v13 = ([v5 performAnimationAsyncIndex] + 1);
      [v5 setPerformAnimationAsyncIndex:v13];
      [v5 setIsRunningAnimationSequence:{objc_msgSend(v5, "hasRemainingAnimation")}];
      v14 = dispatch_time(0, (v12 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__PencilEducationElementViewController_beginAnimationIfNecessary__block_invoke_2;
      block[3] = &unk_279A0A300;
      objc_copyWeak(v16, (a1 + 32));
      v16[1] = v13;
      block[4] = v5;
      dispatch_after(v14, MEMORY[0x277D85CD0], block);
      objc_destroyWeak(v16);
    }

    [v5 setIsAnimating:0];
    [v5 setIsRunningAnimationSequence:{objc_msgSend(v5, "hasRemainingAnimation")}];
  }
}

void __65__PencilEducationElementViewController_beginAnimationIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained performAnimationAsyncIndex] == *(a1 + 48))
  {
    [WeakRetained beginAnimationIfNecessary];
  }

  else
  {
    [*(a1 + 32) setIsRunningAnimationSequence:{objc_msgSend(*(a1 + 32), "hasRemainingAnimation")}];
  }
}

void __65__PencilEducationElementViewController_beginAnimationIfNecessary__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEndAnimation];
}

- (void)handleEndAnimation
{
  endWritingCompletionBlock = [(PencilEducationElementViewController *)self endWritingCompletionBlock];

  if (endWritingCompletionBlock)
  {
    objc_initWeak(&location, self);
    textInputSettings = [(PencilEducationElementViewController *)self textInputSettings];
    [textInputSettings textInputStrokeFadeOutDelay];
    v6 = v5;

    v7 = ([(PencilEducationElementViewController *)self performAnimationAsyncIndex]+ 1);
    [(PencilEducationElementViewController *)self setPerformAnimationAsyncIndex:v7];
    v8 = dispatch_time(0, (v6 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PencilEducationElementViewController_handleEndAnimation__block_invoke;
    block[3] = &unk_279A0A378;
    objc_copyWeak(v11, &location);
    v11[1] = v7;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }

  else
  {
    hasRemainingAnimation = [(PencilEducationElementViewController *)self hasRemainingAnimation];

    [(PencilEducationElementViewController *)self setIsRunningAnimationSequence:hasRemainingAnimation];
  }
}

void __58__PencilEducationElementViewController_handleEndAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained performAnimationAsyncIndex] == *(a1 + 40))
  {
    v2 = [WeakRetained endWritingCompletionBlock];
    v2[2](v2, 1);

    [WeakRetained setEndWritingCompletionBlock:0];
    [WeakRetained setIsRunningAnimationSequence:{objc_msgSend(WeakRetained, "hasRemainingAnimation")}];
  }
}

- (BOOL)hasRemainingAnimation
{
  animationQueue = [(PencilEducationElementViewController *)self animationQueue];
  v3 = [animationQueue count] != 0;

  return v3;
}

- (int64_t)type
{
  elementData = [(PencilEducationElementViewController *)self elementData];
  type = [elementData type];

  return type;
}

- (void)replayButtonPressed:(id)pressed
{
  delegate = [(PencilEducationElementViewController *)self delegate];
  [delegate elementControllerWillReplay:self];

  replayButton = [(PencilEducationElementViewController *)self replayButton];
  [replayButton setHidden:1];

  textField = [(PencilEducationElementViewController *)self textField];
  [textField resignFirstResponder];

  [(PencilEducationElementViewController *)self cancelAnimation];
  [(PencilEducationElementViewController *)self reloadStrings];
  [(PencilEducationElementViewController *)self reloadAnimationQueue];
  v7 = ([(PencilEducationElementViewController *)self performAnimationAsyncIndex]+ 1);
  [(PencilEducationElementViewController *)self setPerformAnimationAsyncIndex:v7];
  objc_initWeak(&location, self);
  v8 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PencilEducationElementViewController_replayButtonPressed___block_invoke;
  block[3] = &unk_279A0A378;
  objc_copyWeak(v10, &location);
  v10[1] = v7;
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __60__PencilEducationElementViewController_replayButtonPressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained performAnimationAsyncIndex] == *(a1 + 40))
  {
    [WeakRetained beginAnimationIfNecessary];
  }
}

- (void)cancelPendingReplayHiddenCommands
{
  v3 = [(PencilEducationElementViewController *)self replayButtonHiddenIndex]+ 1;

  [(PencilEducationElementViewController *)self setReplayButtonHiddenIndex:v3];
}

- (void)setIsAnimating:(BOOL)animating
{
  if (self->_isAnimating != animating)
  {
    self->_isAnimating = animating;
    [(PencilEducationElementViewController *)self setHasPencilInteraction:0];

    [(PencilEducationElementViewController *)self updateIsAnimatingUI];
  }
}

- (void)setIsRunningAnimationSequence:(BOOL)sequence
{
  if (self->_isRunningAnimationSequence != sequence)
  {
    self->_isRunningAnimationSequence = sequence;
    if (sequence)
    {
      v4 = objc_alloc(MEMORY[0x277CD9608]);
      textField = [(PencilEducationElementViewController *)self textField];
      v5 = [v4 initWithSourceTextField:textField];
      [(PencilEducationElementViewController *)self setDelayDrawingReplayController:v5];
    }

    else
    {

      [(PencilEducationElementViewController *)self setDelayDrawingReplayController:0];
    }
  }
}

- (void)setDelayDrawingReplayController:(id)controller
{
  controllerCopy = controller;
  delayDrawingReplayController = self->_delayDrawingReplayController;
  if (delayDrawingReplayController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PKDrawingReplayController *)delayDrawingReplayController setDisablePencilInput:0];
    objc_storeStrong(&self->_delayDrawingReplayController, controller);
    delayDrawingReplayController = [(PKDrawingReplayController *)self->_delayDrawingReplayController setDisablePencilInput:1];
    controllerCopy = v7;
  }

  MEMORY[0x2821F96F8](delayDrawingReplayController, controllerCopy);
}

- (void)updateIsAnimatingUI
{
  if ([(PencilEducationElementViewController *)self isAnimating]|| [(PencilEducationElementViewController *)self hasRemainingAnimation])
  {
    [(PencilEducationElementViewController *)self cancelPendingReplayHiddenCommands];
    replayButton = [(PencilEducationElementViewController *)self replayButton];
    [replayButton setHidden:1];
  }

  else
  {
    v3 = [(PencilEducationElementViewController *)self replayButtonHiddenIndex]+ 1;
    [(PencilEducationElementViewController *)self setReplayButtonHiddenIndex:v3];
    replayButton2 = [(PencilEducationElementViewController *)self replayButton];
    if ([(PencilEducationElementViewController *)self replayButtonHiddenIndex]== v3)
    {
      if ([replayButton2 isHidden])
      {
        [replayButton2 setAlpha:0.0];
        [replayButton2 setHidden:0];
        v5 = MEMORY[0x277D75D18];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __59__PencilEducationElementViewController_updateIsAnimatingUI__block_invoke;
        v9[3] = &unk_279A0A060;
        v10 = replayButton2;
        [v5 animateWithDuration:v9 animations:0.25];
      }

      defaultAllowedCalloutActions = [(PencilEducationElementViewController *)self defaultAllowedCalloutActions];
      textField = [(PencilEducationElementViewController *)self textField];
      [textField setAllowedCalloutActions:defaultAllowedCalloutActions];
    }
  }
}

- (void)cancelAnimation
{
  drawingReplayController = [(PencilEducationElementViewController *)self drawingReplayController];
  [drawingReplayController cancel];

  [(PencilEducationElementViewController *)self setDrawingReplayController:0];
  [(PencilEducationElementViewController *)self setEndWritingCompletionBlock:0];
  animationQueue = [(PencilEducationElementViewController *)self animationQueue];
  [animationQueue removeAllObjects];

  [(PencilEducationElementViewController *)self setIsAnimating:0];
  [(PencilEducationElementViewController *)self setIsRunningAnimationSequence:0];
  [(PencilEducationElementViewController *)self updateIsAnimatingUI];
  v5 = [(PencilEducationElementViewController *)self performAnimationAsyncIndex]+ 1;

  [(PencilEducationElementViewController *)self setPerformAnimationAsyncIndex:v5];
}

- (id)drawingForAnimationType:(int64_t)type
{
  if (type <= 7 && ((0xEFu >> type) & 1) != 0)
  {
    v4 = off_279A0A3C0[type];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    elementData = [(PencilEducationElementViewController *)self elementData];
    languageID = [elementData languageID];
    v8 = PKLocalizedDrawingBundleForLanguage(languageID, v5);

    elementData2 = [(PencilEducationElementViewController *)self elementData];
    languageID2 = [elementData2 languageID];
    v11 = [v8 URLForResource:v4 withExtension:@"pkdrawingdata" subdirectory:0 localization:languageID2];

    if (!v11)
    {
      v11 = [v5 URLForResource:v4 withExtension:@"pkdrawingdata"];
    }

    v12 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11];
    v15 = 0;
    v13 = [objc_alloc(MEMORY[0x277CD95F8]) initWithData:v12 error:&v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)replacePlaceholdersInString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy mutableCopy];
  v5 = [stringCopy length];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 17];
  [v4 replaceOccurrencesOfString:@"{" withString:v6 options:0 range:{0, v5}];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 18];
  [v4 replaceOccurrencesOfString:@"}" withString:v7 options:0 range:{0, v5}];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 19];
  [v4 replaceOccurrencesOfString:@"[" withString:v8 options:0 range:{0, v5}];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 20];
  [v4 replaceOccurrencesOfString:@"]" withString:v9 options:0 range:{0, v5}];

  v10 = [v4 copy];

  return v10;
}

- (_NSRange)textRangeForAnimationType:(int64_t)type
{
  textField = [(PencilEducationElementViewController *)self textField];
  text = [textField text];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 17];
  v7 = [text rangeOfString:v6];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 18];
  v9 = [text rangeOfString:v8];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 19];
  v11 = [text rangeOfString:v10];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 20];
  v13 = [text rangeOfString:v12];

  v14 = 0;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (type <= 3)
  {
    if (type > 1)
    {
      if (type != 2)
      {
LABEL_12:
        v16 = v11 != 0x7FFFFFFFFFFFFFFFLL;
        v17 = v13 != 0x7FFFFFFFFFFFFFFFLL;
        if (v16 && v17)
        {
          v14 = v13 - v11;
        }

        else
        {
          v14 = 0;
        }

        if (v16 && v17)
        {
          v15 = v11;
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (!type)
      {
        v14 = 0;
        v22 = v9 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_30;
      }

      if (type != 1)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_27;
  }

  if (type > 5)
  {
    if (type != 6)
    {
      if (type != 7)
      {
        if (type == 8)
        {
          v14 = 0;
          v15 = 0;
        }

        goto LABEL_33;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

  if (type == 4)
  {
LABEL_27:
    v20 = v7 != 0x7FFFFFFFFFFFFFFFLL;
    v21 = v9 != 0x7FFFFFFFFFFFFFFFLL;
    v22 = !v20 || !v21;
    if (v20 && v21)
    {
      v14 = v9 - v7;
    }

    else
    {
      v14 = 0;
    }

LABEL_30:
    if (v22)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v7;
    }

    goto LABEL_33;
  }

  v18 = v9 - v7;
  v19 = v7 - 1;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    v14 = v18;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v19;
  }

LABEL_33:

  v23 = v15;
  v24 = v14;
  result.length = v24;
  result.location = v23;
  return result;
}

- (CGPoint)offsetForAnimationType:(int64_t)type
{
  v5 = 0.0;
  switch(type)
  {
    case 5:
      goto LABEL_4;
    case 2:
      v6 = [(PencilEducationElementViewController *)self textRangeForAnimationType:2];
      [(PencilEducationElementViewController *)self textFieldBoundsForRange:v6, v7];
      v5 = v8 * 0.5;
      break;
    case 0:
LABEL_4:
      [(PencilEducationElementViewController *)self isTextFieldRTL];
      [(PencilEducationElementViewController *)self isTextFieldRTL];
      break;
  }

  [(PencilEducationElementViewController *)self localizationOffsetsForAnimationType:type];
  v10 = v9 + 0.0;
  v12 = v5 + v11;
  result.y = v12;
  result.x = v10;
  return result;
}

- (double)speedRatioForAnimationType:(int64_t)type
{
  result = 2.2;
  if (type == 5)
  {
    result = 2.0;
  }

  if (!type)
  {
    return 5.0;
  }

  return result;
}

- (double)nextAnimationDelayForAnimationType:(int64_t)type
{
  result = 0.75;
  if ((type - 2) <= 2)
  {
    return dbl_25E1EA850[type - 2];
  }

  return result;
}

- (double)scaleRatioForAnimationType:(int64_t)type
{
  result = 1.0;
  if (type <= 7)
  {
    return dbl_25E1EA868[type];
  }

  return result;
}

- (double)customHeightRatioForAnimationType:(int64_t)type
{
  result = 0.1;
  if (type != 2)
  {
    return 1.0;
  }

  return result;
}

- (id)allowedCalloutActionsForType:(int64_t)type
{
  if (type == 3)
  {
    defaultAllowedCalloutActions = [(PencilEducationElementViewController *)self defaultAllowedCalloutActions];
  }

  else
  {
    defaultAllowedCalloutActions = 0;
  }

  return defaultAllowedCalloutActions;
}

- (double)customWidthRatioForAnimationType:(int64_t)type
{
  result = 0.1;
  if ((type & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return 1.0;
  }

  return result;
}

- (CGAffineTransform)transformForAnimationType:(SEL)type drawing:(int64_t)drawing bounds:(id)bounds
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  boundsCopy = bounds;
  v14 = [(PencilEducationElementViewController *)self transformDimensionAnimationType:drawing];
  if ([(PencilEducationElementViewController *)self isTextFieldRTL]&& [(PencilEducationElementViewController *)self isTextAddedForAnimationType:drawing])
  {
    [boundsCopy bounds];
  }

  [(PencilEducationElementViewController *)self scaleRatioForAnimationType:drawing];
  v16 = height * v15 - height;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  [(PencilEducationElementViewController *)self transformDrawing:boundsCopy toFitBounds:v14 dimension:drawing offset:x animationType:y, width];
  v17 = *&retstr->c;
  *&v22.a = *&retstr->a;
  *&v22.c = v17;
  *&v22.tx = *&retstr->tx;
  CGAffineTransformTranslate(&v23, &v22, 0.0, v16 * -0.5);
  v18 = *&v23.c;
  *&retstr->a = *&v23.a;
  *&retstr->c = v18;
  *&retstr->tx = *&v23.tx;
  v19 = *&retstr->c;
  *&v22.a = *&retstr->a;
  *&v22.c = v19;
  *&v22.tx = *&retstr->tx;
  [(PencilEducationElementViewController *)self applyLocalizationScaleOffsetsIfNecesssaryForDrawing:boundsCopy animationType:drawing transform:&v22];
  v20 = *&v23.c;
  *&retstr->a = *&v23.a;
  *&retstr->c = v20;
  *&retstr->tx = *&v23.tx;

  return result;
}

- (int64_t)transformDimensionAnimationType:(int64_t)type
{
  if (type > 7)
  {
    return 0;
  }

  else
  {
    return qword_25E1EA8A8[type];
  }
}

- (CGAffineTransform)transformDrawing:(SEL)drawing toFitBounds:(id)bounds dimension:(CGRect)dimension offset:(int64_t)offset animationType:(CGPoint)type
{
  y = type.y;
  x = type.x;
  height = dimension.size.height;
  width = dimension.size.width;
  [bounds bounds];
  v17 = v16;
  v19 = v18;
  v20 = [(PencilEducationElementViewController *)self hasCustomWidthRatioForAnimationType:a8];
  v21 = [(PencilEducationElementViewController *)self hasCustomHeightRatioForAnimationType:a8];
  if (v20)
  {
    [(PencilEducationElementViewController *)self customWidthRatioForAnimationType:a8];
    v23 = v22;
  }

  else
  {
    v23 = 1.0;
    if ((offset & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v23 = width / v17;
    }
  }

  if (v21)
  {
    [(PencilEducationElementViewController *)self customHeightRatioForAnimationType:a8];
    v25 = v24;
  }

  else
  {
    v25 = 1.0;
    if ((offset - 2) <= 2)
    {
      v25 = height / v19;
    }
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if (offset == 4)
  {
    v26 = v25;
  }

  else
  {
    v26 = v23;
  }

  *&retstr->a = 0uLL;
  CGAffineTransformMakeScale(retstr, v26, v25);
  v27 = *&retstr->c;
  *&v30.a = *&retstr->a;
  *&v30.c = v27;
  *&v30.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v31, &v30, x, y);
  v29 = *&v31.c;
  *&retstr->a = *&v31.a;
  *&retstr->c = v29;
  *&retstr->tx = *&v31.tx;
  return result;
}

- (CGAffineTransform)applyLocalizationScaleOffsetsIfNecesssaryForDrawing:(SEL)drawing animationType:(id)type transform:(int64_t)transform
{
  v7 = *&a6->c;
  *&retstr->a = *&a6->a;
  *&retstr->c = v7;
  *&retstr->tx = *&a6->tx;
  result = [(PencilEducationElementViewController *)self localizationOffsetsForAnimationType:transform];
  v11 = 1.0;
  if (v9 != 1.0 || v10 != 1.0)
  {
    v13 = fabs(v9);
    v14 = fmax(v9, 0.1);
    if (v13 <= 0.1)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = fabs(v10);
    v17 = fmax(v10, 0.1);
    if (v16 > 0.1)
    {
      v11 = v17;
    }

    v18 = *&retstr->c;
    *&v19.a = *&retstr->a;
    *&v19.c = v18;
    *&v19.tx = *&retstr->tx;
    return CGAffineTransformScale(retstr, &v19, v15, v11);
  }

  return result;
}

- (CGRect)textFieldBoundsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textField = [(PencilEducationElementViewController *)self textField];
  beginningOfDocument = [textField beginningOfDocument];
  v8 = [textField positionFromPosition:beginningOfDocument offset:location];

  beginningOfDocument2 = [textField beginningOfDocument];
  v10 = [textField positionFromPosition:beginningOfDocument2 offset:location + length];

  v11 = [textField textRangeFromPosition:v8 toPosition:v10];
  [textField firstRectForRange:v11];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  if (CGRectIsInfinite(v22) || !length)
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    textField2 = [(PencilEducationElementViewController *)self textField];
    [textField2 bounds];
    height = v17;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (PKPencilEducationOffset)localizationOffsetsForAnimationType:(int64_t)type
{
  localizationOffsetDictionary = [(PencilEducationElementViewController *)self localizationOffsetDictionary];
  v6 = [(PencilEducationElementViewController *)self localizationOffsetKeyForAnimationType:type];
  v7 = [localizationOffsetDictionary objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"x"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v8 objectForKeyedSubscript:@"y"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v8 objectForKeyedSubscript:@"widthRatio"];
    [v15 doubleValue];
    v17 = v16;

    v18 = [v8 objectForKeyedSubscript:@"heightRatio"];
    [v18 doubleValue];
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
    v17 = 0.0;
    v14 = 0.0;
    v11 = 0.0;
  }

  v21 = v11;
  v22 = v14;
  v23 = v17;
  v24 = v20;
  result.var3 = v24;
  result.var2 = v23;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- (id)localizationOffsetKeyForAnimationType:(int64_t)type
{
  if (type > 7)
  {
    return 0;
  }

  else
  {
    return off_279A0A400[type];
  }
}

- (BOOL)isUIRTL
{
  traitCollection = [(PencilEducationElementViewController *)self traitCollection];
  v3 = [traitCollection layoutDirection] == 1;

  return v3;
}

- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  if (![(PencilEducationElementViewController *)self isAnimating:interaction]&& [(PencilEducationElementViewController *)self hasPencilInteraction])
  {
    v5 = +[PencilSettingsStatisticsManager sharedInstance];
    elementData = [(PencilEducationElementViewController *)self elementData];
    [v5 recordEducationPencilInputInteraction:{objc_msgSend(elementData, "type")}];

    [(PencilEducationElementViewController *)self setHasPencilInteraction:0];
  }
}

- (BOOL)_scribbleInteraction:(id)interaction focusWillTransformElement:(id)element
{
  v5 = [(PencilEducationElementViewController *)self isAnimating:interaction];
  if (v5)
  {
    LOBYTE(v5) = [(PencilEducationElementViewController *)self inProgressAnimationType]== 0;
  }

  return v5;
}

- (PencilEducationElementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (PencilEducationElementTextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (UIButton)replayButton
{
  WeakRetained = objc_loadWeakRetained(&self->_replayButton);

  return WeakRetained;
}

@end