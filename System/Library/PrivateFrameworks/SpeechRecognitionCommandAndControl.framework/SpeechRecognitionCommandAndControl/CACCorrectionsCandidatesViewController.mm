@interface CACCorrectionsCandidatesViewController
- (CACCCorrectionsCandidatesViewControllerDelegate)delegate;
- (CGSize)preferredContentSize;
- (id)candidateResultSet;
- (id)newCandidateKeyWithFrame:(CGRect)a3;
- (void)candidateView:(id)a3 didAcceptCandidate:(id)a4 atIndexPath:(id)a5 inGridType:(int64_t)a6;
- (void)candidateViewDidTapArrowButton:(id)a3;
- (void)candidateViewNeedsToExpand:(id)a3;
- (void)candidateViewSelectionDidChange:(id)a3 inGridType:(int64_t)a4;
- (void)candidateViewWillBeginDragging:(id)a3;
- (void)closeButtonTapped;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAlternatives:(id)a3;
- (void)setEmojis:(id)a3;
- (void)setupConfigurations;
- (void)traitCollectionDidChange:(id)a3;
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
  v3 = [(CACCorrectionsCandidatesViewController *)self candidateView];
  [v3 removeObserver:self forKeyPath:@"candidateResultSet"];

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
    v7 = [(CACCorrectionsCandidatesViewController *)self text];
    [(UILabel *)self->_titleLabel setText:v7];

    v8 = objc_opt_new();
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
    [v8 setBackgroundColor:v9];

    [v8 setAlpha:0.2];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(CACCorrectionsCandidatesViewController *)self view];
    [v10 frame];
    v11 = [(CACCorrectionsCandidatesViewController *)self newCandidateKeyWithFrame:?];
    candidateView = self->_candidateView;
    self->_candidateView = v11;

    [(TUICandidateView *)self->_candidateView setState:self->_candidateConfiguration];
    [(TUICandidateView *)self->_candidateView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(CACCorrectionsCandidatesViewController *)self view];
    [v13 addSubview:self->_titleLabel];

    v14 = [(CACCorrectionsCandidatesViewController *)self view];
    [v14 addSubview:v8];

    v15 = [(CACCorrectionsCandidatesViewController *)self view];
    [v15 addSubview:self->_candidateView];

    v16 = [(CACCorrectionsCandidatesViewController *)self view];
    v17 = [v16 safeAreaLayoutGuide];

    v48 = MEMORY[0x277CCAAD0];
    v61 = [(UILabel *)self->_titleLabel topAnchor];
    v60 = [v17 topAnchor];
    v59 = [v61 constraintGreaterThanOrEqualToAnchor:v60 constant:10.0];
    v63[0] = v59;
    v58 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v56 = [v17 topAnchor];
    v57 = [MEMORY[0x277D75520] defaultMetrics];
    [v57 scaledValueForValue:26.0];
    v55 = [v58 constraintEqualToAnchor:v56 constant:?];
    v63[1] = v55;
    v54 = [(UILabel *)self->_titleLabel leadingAnchor];
    v53 = [v17 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53 constant:14.0];
    v63[2] = v52;
    v51 = [(UILabel *)self->_titleLabel trailingAnchor];
    v50 = [v17 trailingAnchor];
    v49 = [v51 constraintLessThanOrEqualToAnchor:v50 constant:-14.0];
    v63[3] = v49;
    v46 = [v8 leadingAnchor];
    v47 = [(CACCorrectionsCandidatesViewController *)self view];
    v45 = [v47 leadingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v63[4] = v44;
    v41 = [v8 trailingAnchor];
    v42 = [(CACCorrectionsCandidatesViewController *)self view];
    v40 = [v42 trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v63[5] = v39;
    v37 = [v8 topAnchor];
    v35 = [(UILabel *)self->_titleLabel bottomAnchor];
    v36 = [MEMORY[0x277D75520] defaultMetrics];
    [v36 scaledValueForValue:10.0];
    v34 = [v37 constraintEqualToAnchor:v35 constant:?];
    v63[6] = v34;
    v18 = v8;
    v43 = v8;
    v33 = [v8 heightAnchor];
    v32 = [v33 constraintEqualToConstant:1.0];
    v63[7] = v32;
    v31 = [(TUICandidateView *)self->_candidateView leadingAnchor];
    v30 = [(UILabel *)self->_titleLabel leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30 constant:14.0];
    v63[8] = v29;
    v28 = [(TUICandidateView *)self->_candidateView trailingAnchor];
    v38 = v17;
    v19 = [v17 trailingAnchor];
    v20 = [v28 constraintEqualToAnchor:v19 constant:-14.0];
    v63[9] = v20;
    v21 = [(TUICandidateView *)self->_candidateView topAnchor];
    v22 = [v18 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:4.0];
    v63[10] = v23;
    v24 = [(TUICandidateView *)self->_candidateView bottomAnchor];
    v25 = [v17 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
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

- (id)newCandidateKeyWithFrame:(CGRect)a3
{
  v4 = [objc_alloc(MEMORY[0x277D6FF90]) initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
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
  v5 = [(CACCorrectionsCandidatesViewController *)self candidateView];
  v3 = [(CACCorrectionsCandidatesViewController *)self candidateView];
  v4 = [v3 state];
  [v5 setState:v4 animated:1 force:0 completion:0];
}

- (void)setAlternatives:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_alternatives != v6)
  {
    objc_storeStrong(&v5->_alternatives, a3);
    [(CACCorrectionsCandidatesViewController *)v5 updateCandidateSet];
  }

  objc_sync_exit(v5);
}

- (void)setEmojis:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_emojis != v6)
  {
    objc_storeStrong(&v5->_emojis, a3);
    [(CACCorrectionsCandidatesViewController *)v5 updateCandidateSet];
  }

  objc_sync_exit(v5);
}

- (void)updateCandidateSet
{
  v3 = [(CACCorrectionsCandidatesViewController *)self candidateView];
  v4 = [(CACCorrectionsCandidatesViewController *)self candidateResultSet];
  [v3 setCandidateResultSet:v4];

  v6 = [(CACCorrectionsCandidatesViewController *)self text];
  v5 = [(CACCorrectionsCandidatesViewController *)self titleLabel];
  [v5 setText:v6];
}

- (id)candidateResultSet
{
  v56 = *MEMORY[0x277D85DE8];
  v39 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = [(CACCorrectionsCandidatesViewController *)self alternatives];
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:*(*(&v48 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v7);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = [(CACCorrectionsCandidatesViewController *)self emojis];
  v12 = [v11 countByEnumeratingWithState:&v44 objects:v54 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:*(*(&v44 + 1) + 8 * j)];
        [v4 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v13);
  }

  v37 = self;

  [v39 addObjectsFromArray:v3];
  v38 = v4;
  [v39 addObjectsFromArray:v4];
  v17 = [MEMORY[0x277CBEB38] dictionary];
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
        v24 = v39;
        if (v23 & 1) != 0 || (v25 = [v22 isEqualToString:@"Text"], v24 = v3, (v25) || (v26 = objc_msgSend(v22, "isEqualToString:", @"Emoji"), v24 = v38, v26))
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
        [v17 setObject:v30 forKey:v22];

        ++v21;
      }

      while (v19 != v21);
      v31 = [&unk_287BEFF18 countByEnumeratingWithState:&v40 objects:v53 count:16];
      v19 = v31;
    }

    while (v31);
  }

  v32 = MEMORY[0x277D6F3D8];
  v33 = [(CACCorrectionsCandidatesViewController *)v37 text];
  v34 = [v32 candidateWithUnchangedInput:v33];
  [(CACCorrectionsCandidatesViewController *)v37 setOriginalTextCandidate:v34];

  v35 = [MEMORY[0x277D6F3D0] setWithCandidates:v39];
  [(CACCorrectionsCandidatesViewController *)v37 setAllCandidates:v39];

  return v35;
}

- (CGSize)preferredContentSize
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(CACCorrectionsCandidatesViewController *)self alternatives];
  v4 = [v3 count];
  v5 = [(CACCorrectionsCandidatesViewController *)self emojis];
  v6 = ([v5 count] + v4);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v6 / 3.0;
  v8 = [(CACCorrectionsCandidatesViewController *)self alternatives];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
        objc_enumerationMutation(v8);
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

    v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v10);

  if (v11)
  {
    v8 = [(CACCorrectionsCandidatesViewController *)self emojis];
    v15 = [v8 count] / 3.0;
    v7 = v7 + ceilf(v15);
LABEL_16:
  }

  v16 = [MEMORY[0x277D75520] defaultMetrics];
  [v16 scaledValueForValue:34.0];
  v18 = v17;

  v19 = [MEMORY[0x277D75520] defaultMetrics];
  [v19 scaledValueForValue:44.0];
  v21 = v20;

  v22 = [MEMORY[0x277D75418] currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if ((v23 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    *&v24 = 374.0;
  }

  else
  {
    v25 = [(CACCorrectionsCandidatesViewController *)self view];
    [v25 size];
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
  v3 = [(CACCorrectionsCandidatesViewController *)self delegate];
  [v3 dismissCorrectionsCandidatesViewController:self];
}

- (void)candidateViewDidTapArrowButton:(id)a3
{
  v3 = CACLogCorrections();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateViewDidTapArrowButton:];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v12 = a4;
  v9 = a5;
  if (CandidateSetContext == a6)
  {
    if ([a3 isEqualToString:@"candidateResultSet"])
    {
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA300]];

      if (v10 != v11)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
      }
    }
  }
}

- (void)candidateView:(id)a3 didAcceptCandidate:(id)a4 atIndexPath:(id)a5 inGridType:(int64_t)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = CACLogCorrections();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateView:v9 didAcceptCandidate:v10 atIndexPath:v12 inGridType:?];
  }

  v13 = [(CACCorrectionsCandidatesViewController *)self originalTextCandidate];
  v14 = [v11 indexPathForCandidate:v13];

  if (v14 != v10)
  {
    v15 = [(CACCorrectionsCandidatesViewController *)self delegate];
    v16 = [v9 candidate];
    [v15 correctionsCandidatesViewController:self didSelectItemWithText:v16];
  }
}

- (void)candidateViewSelectionDidChange:(id)a3 inGridType:(int64_t)a4
{
  v4 = CACLogCorrections();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateViewSelectionDidChange:inGridType:];
  }
}

- (void)candidateViewWillBeginDragging:(id)a3
{
  v3 = CACLogCorrections();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateViewWillBeginDragging:];
  }
}

- (void)candidateViewNeedsToExpand:(id)a3
{
  v3 = CACLogCorrections();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CACCorrectionsCandidatesViewController candidateViewNeedsToExpand:];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = CACCorrectionsCandidatesViewController;
  [(CACCorrectionsCandidatesViewController *)&v5 traitCollectionDidChange:a3];
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