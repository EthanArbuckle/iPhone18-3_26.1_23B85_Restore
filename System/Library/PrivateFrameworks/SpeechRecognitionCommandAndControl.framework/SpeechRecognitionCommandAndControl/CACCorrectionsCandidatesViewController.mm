@interface CACCorrectionsCandidatesViewController
- (CACCCorrectionsCandidatesViewControllerDelegate)delegate;
- (CGSize)preferredContentSize;
- (id)candidateResultSet;
- (id)newCandidateKeyWithFrame:(CGRect)frame;
- (void)candidateView:(id)view didAcceptCandidate:(id)candidate atIndexPath:(id)path inGridType:(int64_t)type;
- (void)candidateViewDidTapArrowButton:(id)button;
- (void)candidateViewNeedsToExpand:(id)expand;
- (void)candidateViewSelectionDidChange:(id)change inGridType:(int64_t)type;
- (void)candidateViewWillBeginDragging:(id)dragging;
- (void)closeButtonTapped;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAlternatives:(id)alternatives;
- (void)setEmojis:(id)emojis;
- (void)setupConfigurations;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCandidateSet;
- (void)updateConfigurations;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CACCorrectionsCandidatesViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CACCorrectionsCandidatesViewController;
  [(CACCorrectionsCandidatesViewController *)&v2 viewDidLoad];
}

- (void)dealloc
{
  candidateView = [(CACCorrectionsCandidatesViewController *)self candidateView];
  [candidateView removeObserver:self forKeyPath:@"candidateResultSet"];

  v4.receiver = self;
  v4.super_class = CACCorrectionsCandidatesViewController;
  [(CACCorrectionsCandidatesViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v63[12] = *MEMORY[0x277D85DE8];
  if (!self->_candidateView)
  {
    [(CACCorrectionsCandidatesViewController *)self setupConfigurations];
    v3 = objc_opt_new();
    titleLabel = self->_titleLabel;
    self->_titleLabel = v3;

    v5 = self->_titleLabel;
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v5 setFont:v6];

    [(UILabel *)self->_titleLabel setNumberOfLines:1];
    [(UILabel *)self->_titleLabel setLineBreakMode:4];
    [(UILabel *)self->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    text = [(CACCorrectionsCandidatesViewController *)self text];
    [(UILabel *)self->_titleLabel setText:text];

    v8 = objc_opt_new();
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
    [v8 setBackgroundColor:v9];

    [v8 setAlpha:0.2];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(CACCorrectionsCandidatesViewController *)self view];
    [view frame];
    v11 = [(CACCorrectionsCandidatesViewController *)self newCandidateKeyWithFrame:?];
    candidateView = self->_candidateView;
    self->_candidateView = v11;

    [(TUICandidateView *)self->_candidateView setState:self->_candidateConfiguration];
    [(TUICandidateView *)self->_candidateView setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(CACCorrectionsCandidatesViewController *)self view];
    [view2 addSubview:self->_titleLabel];

    view3 = [(CACCorrectionsCandidatesViewController *)self view];
    [view3 addSubview:v8];

    view4 = [(CACCorrectionsCandidatesViewController *)self view];
    [view4 addSubview:self->_candidateView];

    view5 = [(CACCorrectionsCandidatesViewController *)self view];
    safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];

    v48 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILabel *)self->_titleLabel topAnchor];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v59 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:10.0];
    v63[0] = v59;
    firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    topAnchor3 = [safeAreaLayoutGuide topAnchor];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:26.0];
    v55 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:?];
    v63[1] = v55;
    leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:14.0];
    v63[2] = v52;
    trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v49 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-14.0];
    v63[3] = v49;
    leadingAnchor3 = [v8 leadingAnchor];
    view6 = [(CACCorrectionsCandidatesViewController *)self view];
    leadingAnchor4 = [view6 leadingAnchor];
    v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v63[4] = v44;
    trailingAnchor3 = [v8 trailingAnchor];
    view7 = [(CACCorrectionsCandidatesViewController *)self view];
    trailingAnchor4 = [view7 trailingAnchor];
    v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v63[5] = v39;
    topAnchor4 = [v8 topAnchor];
    bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:10.0];
    v34 = [topAnchor4 constraintEqualToAnchor:bottomAnchor constant:?];
    v63[6] = v34;
    v18 = v8;
    v43 = v8;
    heightAnchor = [v8 heightAnchor];
    v32 = [heightAnchor constraintEqualToConstant:1.0];
    v63[7] = v32;
    leadingAnchor5 = [(TUICandidateView *)self->_candidateView leadingAnchor];
    leadingAnchor6 = [(UILabel *)self->_titleLabel leadingAnchor];
    v29 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:14.0];
    v63[8] = v29;
    trailingAnchor5 = [(TUICandidateView *)self->_candidateView trailingAnchor];
    v38 = safeAreaLayoutGuide;
    trailingAnchor6 = [safeAreaLayoutGuide trailingAnchor];
    v20 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-14.0];
    v63[9] = v20;
    topAnchor5 = [(TUICandidateView *)self->_candidateView topAnchor];
    bottomAnchor2 = [v18 bottomAnchor];
    v23 = [topAnchor5 constraintEqualToAnchor:bottomAnchor2 constant:4.0];
    v63[10] = v23;
    bottomAnchor3 = [(TUICandidateView *)self->_candidateView bottomAnchor];
    bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
    v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v63[11] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:12];
    [v48 activateConstraints:v27];

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __63__CACCorrectionsCandidatesViewController_viewDidLayoutSubviews__block_invoke;
    v62[3] = &unk_279CEB2D0;
    v62[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v62];
    [(CACCorrectionsCandidatesViewController *)self updateCandidateSet];
  }
}

- (id)newCandidateKeyWithFrame:(CGRect)frame
{
  v4 = [objc_alloc(MEMORY[0x277D6FF90]) initWithFrame:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  [v4 setDelegate:self];
  [v4 addObserver:self forKeyPath:@"candidateResultSet" options:3 context:CandidateSetContext];
  return v4;
}

- (void)setupConfigurations
{
  v3 = objc_alloc_init(CACCorrectionsCandidateState);
  candidateConfiguration = self->_candidateConfiguration;
  self->_candidateConfiguration = v3;

  [(CACCorrectionsCandidateState *)self->_candidateConfiguration setHasBackdrop:0];
  if (CACIsInDarkMode())
  {
    +[CACCorrectionsCandidateViewStyle cacDarkStyle];
  }

  else
  {
    +[CACCorrectionsCandidateViewStyle cacLightStyle];
  }
  v5 = ;
  [(CACCorrectionsCandidateState *)self->_candidateConfiguration setStyle:v5];

  v6 = +[CACCorrectionsCandidateViewStyle cacLightStyle];
  [(CACCorrectionsCandidateState *)self->_candidateConfiguration setDisambiguationStyle:v6];

  [(CACCorrectionsCandidateState *)self->_candidateConfiguration setPrimaryGridRowType:1];
  v7 = self->_candidateConfiguration;

  [(CACCorrectionsCandidateState *)v7 setArrowButtonPosition:0];
}

- (void)updateConfigurations
{
  [(CACCorrectionsCandidateState *)self->_candidateConfiguration setDisambiguationGridPosition:0];
  [(CACCorrectionsCandidateState *)self->_candidateConfiguration setInlineTextViewPosition:0];
  [(CACCorrectionsCandidateState *)self->_candidateConfiguration setDisambiguationGridRowType:1];
  [(CACCorrectionsCandidateState *)self->_candidateConfiguration setSortControlPosition:0];
  candidateView = [(CACCorrectionsCandidatesViewController *)self candidateView];
  candidateView2 = [(CACCorrectionsCandidatesViewController *)self candidateView];
  state = [candidateView2 state];
  [candidateView setState:state animated:1 force:0 completion:0];
}

- (void)setAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_alternatives != alternativesCopy)
  {
    objc_storeStrong(&selfCopy->_alternatives, alternatives);
    [(CACCorrectionsCandidatesViewController *)selfCopy updateCandidateSet];
  }

  objc_sync_exit(selfCopy);
}

- (void)setEmojis:(id)emojis
{
  emojisCopy = emojis;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_emojis != emojisCopy)
  {
    objc_storeStrong(&selfCopy->_emojis, emojis);
    [(CACCorrectionsCandidatesViewController *)selfCopy updateCandidateSet];
  }

  objc_sync_exit(selfCopy);
}

- (void)updateCandidateSet
{
  candidateView = [(CACCorrectionsCandidatesViewController *)self candidateView];
  candidateResultSet = [(CACCorrectionsCandidatesViewController *)self candidateResultSet];
  [candidateView setCandidateResultSet:candidateResultSet];

  text = [(CACCorrectionsCandidatesViewController *)self text];
  titleLabel = [(CACCorrectionsCandidatesViewController *)self titleLabel];
  [titleLabel setText:text];
}

- (id)candidateResultSet
{
  v56 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  alternatives = [(CACCorrectionsCandidatesViewController *)self alternatives];
  v6 = [alternatives countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(alternatives);
        }

        v10 = [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:*(*(&v48 + 1) + 8 * i)];
        [array2 addObject:v10];
      }

      v7 = [alternatives countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v7);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  emojis = [(CACCorrectionsCandidatesViewController *)self emojis];
  v12 = [emojis countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(emojis);
        }

        v16 = [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:*(*(&v44 + 1) + 8 * j)];
        [array3 addObject:v16];
      }

      v13 = [emojis countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v13);
  }

  selfCopy = self;

  [array addObjectsFromArray:array2];
  v38 = array3;
  [array addObjectsFromArray:array3];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = [&unk_287BEFF18 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      v21 = 0;
      do
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(&unk_287BEFF18);
        }

        v22 = *(*(&v40 + 1) + 8 * v21);
        v23 = [v22 isEqualToString:@"All"];
        v24 = array;
        if (v23 & 1) != 0 || (v25 = [v22 isEqualToString:@"Text"], v24 = array2, (v25) || (v26 = objc_msgSend(v22, "isEqualToString:", @"Emoji"), v24 = v38, v26))
        {
          v27 = v24;
        }

        else
        {
          v27 = 0;
        }

        v28 = [MEMORY[0x277CBEB70] orderedSetWithArray:v27];
        v29 = [objc_alloc(MEMORY[0x277D6F3C8]) initWithTitle:&stru_287BD8610 candidates:v28];
        v52 = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        [dictionary setObject:v30 forKey:v22];

        ++v21;
      }

      while (v19 != v21);
      v31 = [&unk_287BEFF18 countByEnumeratingWithState:&v40 objects:v53 count:16];
      v19 = v31;
    }

    while (v31);
  }

  v32 = MEMORY[0x277D6F3D8];
  text = [(CACCorrectionsCandidatesViewController *)selfCopy text];
  v34 = [v32 candidateWithUnchangedInput:text];
  [(CACCorrectionsCandidatesViewController *)selfCopy setOriginalTextCandidate:v34];

  v35 = [MEMORY[0x277D6F3D0] setWithCandidates:array];
  [(CACCorrectionsCandidatesViewController *)selfCopy setAllCandidates:array];

  return v35;
}

- (CGSize)preferredContentSize
{
  v35 = *MEMORY[0x277D85DE8];
  alternatives = [(CACCorrectionsCandidatesViewController *)self alternatives];
  v4 = [alternatives count];
  emojis = [(CACCorrectionsCandidatesViewController *)self emojis];
  v6 = ([emojis count] + v4);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v6 / 3.0;
  alternatives2 = [(CACCorrectionsCandidatesViewController *)self alternatives];
  v9 = [alternatives2 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v31;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(alternatives2);
      }

      v14 = *(*(&v30 + 1) + 8 * i);
      if (([v14 length] < 0x1F) | v11 & 1)
      {
        if ([v14 length] >= 0x15 && (v11 & 1) == 0)
        {
          v7 = v7 + 0.5;
        }
      }

      else
      {
        v7 = 2.0;
        v11 = 1;
      }
    }

    v10 = [alternatives2 countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v10);

  if (v11)
  {
    alternatives2 = [(CACCorrectionsCandidatesViewController *)self emojis];
    v15 = [alternatives2 count] / 3.0;
    v7 = v7 + ceilf(v15);
LABEL_16:
  }

  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:34.0];
  v18 = v17;

  defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics2 scaledValueForValue:44.0];
  v21 = v20;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    *&v24 = 374.0;
  }

  else
  {
    view = [(CACCorrectionsCandidatesViewController *)self view];
    [view size];
    v24 = v26;
  }

  v27 = v7;
  v28 = v18 / 3.0 + v21 + v18 * ceilf(v27);
  v29 = *&v24;
  result.height = v28;
  result.width = v29;
  return result;
}

- (void)closeButtonTapped
{
  delegate = [(CACCorrectionsCandidatesViewController *)self delegate];
  [delegate dismissCorrectionsCandidatesViewController:self];
}

- (void)candidateViewDidTapArrowButton:(id)button
{
  v3 = CACLogCorrections();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateViewDidTapArrowButton:];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  if (CandidateSetContext == context)
  {
    if ([path isEqualToString:@"candidateResultSet"])
    {
      v10 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];

      if (v10 != v11)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
      }
    }
  }
}

- (void)candidateView:(id)view didAcceptCandidate:(id)candidate atIndexPath:(id)path inGridType:(int64_t)type
{
  candidateCopy = candidate;
  pathCopy = path;
  viewCopy = view;
  v12 = CACLogCorrections();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateView:candidateCopy didAcceptCandidate:pathCopy atIndexPath:v12 inGridType:?];
  }

  originalTextCandidate = [(CACCorrectionsCandidatesViewController *)self originalTextCandidate];
  v14 = [viewCopy indexPathForCandidate:originalTextCandidate];

  if (v14 != pathCopy)
  {
    delegate = [(CACCorrectionsCandidatesViewController *)self delegate];
    candidate = [candidateCopy candidate];
    [delegate correctionsCandidatesViewController:self didSelectItemWithText:candidate];
  }
}

- (void)candidateViewSelectionDidChange:(id)change inGridType:(int64_t)type
{
  v4 = CACLogCorrections();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateViewSelectionDidChange:inGridType:];
  }
}

- (void)candidateViewWillBeginDragging:(id)dragging
{
  v3 = CACLogCorrections();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateViewWillBeginDragging:];
  }
}

- (void)candidateViewNeedsToExpand:(id)expand
{
  v3 = CACLogCorrections();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateViewNeedsToExpand:];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = CACCorrectionsCandidatesViewController;
  [(CACCorrectionsCandidatesViewController *)&v5 traitCollectionDidChange:change];
  if (CACIsInDarkMode())
  {
    +[CACCorrectionsCandidateViewStyle cacDarkStyle];
  }

  else
  {
    +[CACCorrectionsCandidateViewStyle cacLightStyle];
  }
  v4 = ;
  [(CACCorrectionsCandidateState *)self->_candidateConfiguration setStyle:v4];
}

- (CACCCorrectionsCandidatesViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)candidateView:(os_log_t)log didAcceptCandidate:atIndexPath:inGridType:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_26B354000, log, OS_LOG_TYPE_DEBUG, "Accepted candidate %@ at index %@", &v3, 0x16u);
}

@end