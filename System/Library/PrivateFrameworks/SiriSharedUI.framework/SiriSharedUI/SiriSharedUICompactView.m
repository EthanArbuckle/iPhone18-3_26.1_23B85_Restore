@interface SiriSharedUICompactView
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)hasContentAtPoint:(CGPoint)a3;
- (CGSize)conversationViewContentSize;
- (CGSize)resultViewContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriSharedUICompactView)initWithFrame:(CGRect)a3 backgroundBlurView:(id)a4 navigationView:(id)a5 resultView:(id)a6 conversationView:(id)a7 additionalContentViews:(id)a8 textRequestView:(id)a9 viewStackContainer:(id)a10;
- (SiriSharedUICompactViewDelegate)delegate;
- (UIEdgeInsets)contentInsetsForResultView:(id)a3;
- (double)expectedExpandedHeightForConversationView:(id)a3;
- (double)maximumHeightForConversationView:(id)a3;
- (double)maximumHeightForResultView:(id)a3;
- (id)parserSpeakableObjectProviderForConversationView:(id)a3;
- (int64_t)_resultViewAttachmentType;
- (void)_addContentViewsToViewStackContainer;
- (void)_clearAppIconView;
- (void)_configureResultViewCustomConstraints;
- (void)_removeContentViewsFromViewStackContainer;
- (void)_snapshotContentViewFramesForTransition;
- (void)_textRequestViewVisibilityDidChange;
- (void)_updateBottomPadding;
- (void)_updateBottomPaddingAnimatedWithContext:(id)a3 alongsideAnimations:(id)a4;
- (void)_updateExpansionConstraints:(BOOL)a3;
- (void)configureAmbientAppIconForBundleIdentifier:(id)a3;
- (void)contentDidUpdate:(BOOL)a3;
- (void)contentDidUpdateForAdditionalContentView:(BOOL)a3;
- (void)conversationView:(id)a3 didUpdateHeightDuringExpansionTransition:(double)a4 didCompleteGesture:(BOOL)a5;
- (void)conversationView:(id)a3 viewDidAppearForAceObject:(id)a4;
- (void)conversationView:(id)a3 viewDidDisappearForAceObject:(id)a4;
- (void)conversationViewContentScrolled:(id)a3 toContentOffset:(CGPoint)a4;
- (void)conversationViewDidTransitionToCollapsedState:(id)a3;
- (void)conversationViewDidTransitionToExpandedState:(id)a3;
- (void)conversationViewDidUpdatePresentedContentHeight:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForUpdatesWithDiff:(unint64_t)a3 updateBlock:(id)a4;
- (void)resultViewContentDidLoad:(id)a3;
- (void)resultViewContentDidScroll:(id)a3;
- (void)resultViewContentScrolled:(id)a3 toContentOffset:(CGPoint)a4;
- (void)resultViewContentScrolling:(id)a3 didBegin:(BOOL)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setAdditionalContentSnippetViews:(id)a3;
- (void)setBottomContentInset:(double)a3;
- (void)setConversationSnippetViews:(id)a3;
- (void)setConversationViewHidden:(BOOL)a3;
- (void)setHidesTextRequestView:(BOOL)a3;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setIsInAmbientInteractivity:(BOOL)a3;
- (void)setResultViewAlpha:(double)a3;
- (void)setServerUtterances:(id)a3;
- (void)showFullScreenEffect:(id)a3;
- (void)snippetLayoutDidUpdateForView:(id)a3 isEditing:(BOOL)a4;
- (void)tapToEditRequestedFromView:(id)a3;
@end

@implementation SiriSharedUICompactView

- (SiriSharedUICompactView)initWithFrame:(CGRect)a3 backgroundBlurView:(id)a4 navigationView:(id)a5 resultView:(id)a6 conversationView:(id)a7 additionalContentViews:(id)a8 textRequestView:(id)a9 viewStackContainer:(id)a10
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v76 = *MEMORY[0x277D85DE8];
  v66 = a4;
  v20 = a5;
  v65 = a6;
  v21 = a6;
  obj = a7;
  v22 = a7;
  v64 = a8;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v71.receiver = self;
  v71.super_class = SiriSharedUICompactView;
  v26 = [(SiriSharedUICompactView *)&v71 initWithFrame:x, y, width, height];
  if (v26)
  {
    v61 = v24;
    v62 = v23;
    v27 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v75 = "[SiriSharedUICompactView initWithFrame:backgroundBlurView:navigationView:resultView:conversationView:additionalContentViews:textRequestView:viewStackContainer:]";
      _os_log_impl(&dword_21E3EB000, v27, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    v60 = v25;
    v26->_hidesTextRequestView = 1;
    v26->_reducedOrbOpacity = 0;
    [(SiriSharedUICompactView *)v26 bounds];
    [v66 setFrame:?];
    [v66 setAutoresizingMask:18];
    [(SiriSharedUICompactView *)v26 addSubview:v66];
    [(SiriSharedUICompactView *)v26 bounds];
    [v20 setFrame:?];
    [v20 setAutoresizingMask:18];
    [(SiriSharedUICompactView *)v26 addSubview:v20];
    objc_storeStrong(&v26->_textRequestView, a9);
    [(UIView *)v26->_textRequestView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v26->_textRequestView)
    {
      [(SiriSharedUICompactView *)v26 addSubview:?];
      v28 = [(SiriSharedUICompactView *)v26 bottomAnchor];
      v29 = [(UIView *)v26->_textRequestView bottomAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      textRequestViewBottomConstraint = v26->_textRequestViewBottomConstraint;
      v26->_textRequestViewBottomConstraint = v30;

      v58 = MEMORY[0x277CCAAD0];
      v32 = [(UIView *)v26->_textRequestView leadingAnchor];
      v33 = [(SiriSharedUICompactView *)v26 leadingAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      v73[0] = v34;
      v73[1] = v26->_textRequestViewBottomConstraint;
      [(UIView *)v26->_textRequestView trailingAnchor];
      v35 = v59 = v20;
      v36 = [(SiriSharedUICompactView *)v26 trailingAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];
      v73[2] = v37;
      [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
      v38 = v22;
      v40 = v39 = v21;
      [v58 activateConstraints:v40];

      v21 = v39;
      v22 = v38;

      v20 = v59;
    }

    objc_storeStrong(&v26->_conversationView, obj);
    [(SiriSharedUICompactConversationViewHosting *)v26->_conversationView setDelegate:v26];
    [(SiriSharedUICompactConversationViewHosting *)v26->_conversationView setAttachmentType:[(SiriSharedUICompactView *)v26 _conversationViewAttachmentType]];
    v41 = [(SiriSharedUICompactConversationViewHosting *)v26->_conversationView hostingView];
    SiriSharedUISetContentHuggingPriority(v41, 1);

    v42 = [(SiriSharedUICompactConversationViewHosting *)v26->_conversationView hostingView];
    SiriSharedUISetContentCompressionResistancePriority(v42, 1);

    [(SiriSharedUICompactConversationViewHosting *)v26->_conversationView setUseLowerPriorityHeightConstraint:1];
    objc_storeStrong(&v26->_additionalContentViews, v64);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v43 = v26->_additionalContentViews;
    v44 = [(NSArray *)v43 countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v68;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v68 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v67 + 1) + 8 * i);
          [v48 setDelegate:v26];
          [v48 setAttachmentType:{-[SiriSharedUICompactView _conversationViewAttachmentType](v26, "_conversationViewAttachmentType")}];
          v49 = [v48 hostingView];
          SiriSharedUISetContentHuggingPriority(v49, 1);

          v50 = [v48 hostingView];
          SiriSharedUISetContentCompressionResistancePriority(v50, 1);

          [v48 setAttachmentYOffset:-8.0];
        }

        v45 = [(NSArray *)v43 countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v45);
    }

    objc_storeStrong(&v26->_resultView, v65);
    v51 = [(SiriSharedUICompactResultViewHosting *)v26->_resultView hostingView];
    [v51 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

    if (SiriSharedUIDeviceIsMac())
    {
      [(SiriSharedUICompactResultViewHosting *)v26->_resultView setAttachmentYOffset:8.0];
    }

    [(SiriSharedUICompactResultViewHosting *)v26->_resultView setDelegate:v26];
    v52 = [(SiriSharedUICompactResultViewHosting *)v26->_resultView hostingView];
    SiriSharedUISetContentHuggingPriority(v52, 1);

    v53 = [(SiriSharedUICompactResultViewHosting *)v26->_resultView hostingView];
    SiriSharedUISetContentCompressionResistancePriority(v53, 1);

    [(SiriSharedUICompactResultViewHosting *)v26->_resultView setAttachmentType:[(SiriSharedUICompactView *)v26 _resultViewAttachmentType]];
    [(SiriSharedUICompactView *)v26 _configureResultViewCustomConstraints];
    v25 = v60;
    v24 = v61;
    if (v60)
    {
      v54 = v60;
    }

    else
    {
      v56 = [SiriSharedUIViewStackContainer alloc];
      v54 = [(SiriSharedUIViewStackContainer *)v56 initWithFrame:MEMORY[0x277CBEBF8] contentViews:x, y, width, height];
    }

    viewStackContainer = v26->_viewStackContainer;
    v26->_viewStackContainer = v54;
    v23 = v62;

    [(SiriSharedUICompactView *)v26 _addContentViewsToViewStackContainer];
    [(SiriSharedUICompactView *)v26 _updateBottomPadding];
    [(SiriSharedUICompactView *)v26 _textRequestViewVisibilityDidChange];
  }

  return v26;
}

- (void)didMoveToWindow
{
  v4 = [(SiriSharedUICompactView *)self delegate];
  v3 = [(SiriSharedUICompactView *)self window];
  [v4 compactView:self viewDidChangeWindow:v3];
}

- (void)layoutSubviews
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SiriSharedUICompactView layoutSubviews]";
    _os_log_impl(&dword_21E3EB000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = SiriSharedUICompactView;
  [(SiriSharedUICompactView *)&v7 layoutSubviews];
  v4 = [(SiriSharedUICompactView *)self viewStackContainer];
  v5 = [v4 hostingView];
  [(SiriSharedUICompactView *)self bounds];
  [v5 setFrame:?];

  fullScreenEffectContainerView = self->_fullScreenEffectContainerView;
  [(SiriSharedUICompactView *)self bounds];
  [(UIView *)fullScreenEffectContainerView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v43 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = self->_additionalContentViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v10 &= [*(*(&v37 + 1) + 8 * i) attachmentType] == 0;
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  if (SiriSharedUIDeviceIsMac() && ![(SiriSharedUICompactResultViewHosting *)self->_resultView attachmentType]&& (([(SiriSharedUICompactConversationViewHosting *)self->_conversationView attachmentType]== 0) & v10) == 1)
  {
    v12 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
    [v12 sizeThatFits:{width, height}];
    v14 = v13;

    v15 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
    [v15 sizeThatFits:{width, height}];
    v17 = v16;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = self->_additionalContentViews;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      v22 = 0.0;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = [*(*(&v33 + 1) + 8 * j) hostingView];
          [v24 sizeThatFits:{width, height}];
          v26 = v25;

          v22 = v22 + v26 + 8.0;
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = 0.0;
    }

    [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer topPadding];
    v28 = v14 + v17 + 8.0 + v22 + v27;
    [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer bottomPadding];
    v30 = v28 + v29;
    if (v30 < height)
    {
      height = v30;
    }
  }

  v31 = width;
  v32 = height;
  result.height = v32;
  result.width = v31;
  return result;
}

- (void)_addContentViewsToViewStackContainer
{
  v33 = *MEMORY[0x277D85DE8];
  viewStackContainer = self->_viewStackContainer;
  v4 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)viewStackContainer addContentView:v4];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_additionalContentViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = self->_viewStackContainer;
        v11 = [*(*(&v27 + 1) + 8 * v9) hostingView];
        [(SiriSharedUIViewStackContainerHosting *)v10 addContentView:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v12 = self->_viewStackContainer;
  v13 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)v12 addContentView:v13];

  v14 = self->_viewStackContainer;
  v15 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)v14 bringSubviewToFront:v15];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_additionalContentViews;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = self->_viewStackContainer;
        v22 = [*(*(&v23 + 1) + 8 * v20) hostingView];
        [(SiriSharedUIViewStackContainerHosting *)v21 bringSubviewToFront:v22];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer relayout];
}

- (void)_removeContentViewsFromViewStackContainer
{
  v29 = *MEMORY[0x277D85DE8];
  viewStackContainer = self->_viewStackContainer;
  v4 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)viewStackContainer removeContentView:v4];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_additionalContentViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = self->_viewStackContainer;
        v11 = [*(*(&v23 + 1) + 8 * v9) hostingView];
        [(SiriSharedUIViewStackContainerHosting *)v10 removeContentView:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v12 = self->_viewStackContainer;
  v13 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)v12 removeContentView:v13];

  [(SiriSharedUICompactResultViewHosting *)self->_resultView relayout];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = self->_additionalContentViews;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) relayout];
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }

  [(SiriSharedUICompactConversationViewHosting *)self->_conversationView relayout];
}

- (void)setIsInAmbient:(BOOL)a3
{
  v53 = *MEMORY[0x277D85DE8];
  if (self->_isInAmbient != a3)
  {
    self->_isInAmbient = a3;
    if (a3)
    {
      v4 = [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer scrollView];
      [v4 setDelegate:self];
    }

    [(SiriSharedUICompactView *)self _removeContentViewsFromViewStackContainer];
    [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer setIsInAmbient:self->_isInAmbient];
    if (self->_isInAmbient)
    {
      v5 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView stackConstraints];
      [v5 setHeightConstraint:0];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v6 = self->_additionalContentViews;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v46;
        do
        {
          v10 = 0;
          do
          {
            if (*v46 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v45 + 1) + 8 * v10) stackConstraints];
            [v11 setHeightConstraint:0];

            ++v10;
          }

          while (v8 != v10);
          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v8);
      }

      v12 = [(SiriSharedUICompactResultViewHosting *)self->_resultView stackConstraints];
      [v12 setHeightConstraint:0];

      [(SiriSharedUICompactResultViewHosting *)self->_resultView setCustomAttachmentConstraints:MEMORY[0x277CBEBF8]];
      [(SiriSharedUICompactConversationViewHosting *)self->_conversationView setAttachmentType:3];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = self->_additionalContentViews;
      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v42;
        do
        {
          v17 = 0;
          do
          {
            if (*v42 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v41 + 1) + 8 * v17++) setAttachmentType:3];
          }

          while (v15 != v17);
          v15 = [(NSArray *)v13 countByEnumeratingWithState:&v41 objects:v51 count:16];
        }

        while (v15);
      }

      resultView = self->_resultView;
      v19 = 3;
    }

    else
    {
      [(SiriSharedUICompactView *)self _clearAppIconView];
      [(SiriSharedUICompactView *)self _configureResultViewCustomConstraints];
      v20 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView stackConstraints];
      [v20 setHeightConstraint:0];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = self->_additionalContentViews;
      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        do
        {
          v25 = 0;
          do
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v37 + 1) + 8 * v25) stackConstraints];
            [v26 setHeightConstraint:0];

            ++v25;
          }

          while (v23 != v25);
          v23 = [(NSArray *)v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
        }

        while (v23);
      }

      [(SiriSharedUICompactConversationViewHosting *)self->_conversationView setAttachmentType:[(SiriSharedUICompactView *)self _conversationViewAttachmentType]];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v27 = self->_additionalContentViews;
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v33 objects:v49 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v34;
        do
        {
          v31 = 0;
          do
          {
            if (*v34 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v33 + 1) + 8 * v31++) setAttachmentType:{-[SiriSharedUICompactView _conversationViewAttachmentType](self, "_conversationViewAttachmentType", v33)}];
          }

          while (v29 != v31);
          v29 = [(NSArray *)v27 countByEnumeratingWithState:&v33 objects:v49 count:16];
        }

        while (v29);
      }

      v32 = self->_resultView;
      v19 = [(SiriSharedUICompactView *)self _resultViewAttachmentType];
      resultView = v32;
    }

    [(SiriSharedUICompactResultViewHosting *)resultView setAttachmentType:v19, v33];
    [(SiriSharedUICompactView *)self _addContentViewsToViewStackContainer];
    [(SiriSharedUICompactView *)self _updateBottomPadding];
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)a3
{
  if (self->_isInAmbient)
  {
    self->_isInAmbientInteractivity = a3;
    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView relayout];
  }
}

- (void)configureAmbientAppIconForBundleIdentifier:(id)a3
{
  v22[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([SiriSharedUIUtilities applicationBundleIdentifierIsThirdParty:v4]&& self->_isInAmbient)
  {
    v21 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v4];
    v20 = [MEMORY[0x277D755B8] _iconForResourceProxy:v21 format:2];
    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v20];
    appIconView = self->_appIconView;
    self->_appIconView = v5;

    [(SiriSharedUICompactView *)self addSubview:self->_appIconView];
    [(UIView *)self->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(UIView *)self->_appIconView layer];
    [v7 setOpacity:0.0];

    v17 = MEMORY[0x277CCAAD0];
    v19 = [(UIView *)self->_appIconView trailingAnchor];
    v18 = [(SiriSharedUICompactView *)self trailingAnchor];
    v8 = [v19 constraintEqualToAnchor:v18 constant:-49.0];
    v22[0] = v8;
    v9 = [(UIView *)self->_appIconView bottomAnchor];
    v10 = [(SiriSharedUICompactView *)self bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:-49.0];
    v22[1] = v11;
    v12 = [(UIView *)self->_appIconView heightAnchor];
    v13 = [v12 constraintEqualToConstant:40.0];
    v22[2] = v13;
    v14 = [(UIView *)self->_appIconView widthAnchor];
    v15 = [v14 constraintEqualToConstant:40.0];
    v22[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    [v17 activateConstraints:v16];
  }

  else
  {
    [(SiriSharedUICompactView *)self _clearAppIconView];
  }
}

- (void)_clearAppIconView
{
  [(UIView *)self->_appIconView removeFromSuperview];
  appIconView = self->_appIconView;
  self->_appIconView = 0;
}

- (void)_configureResultViewCustomConstraints
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  v4 = [(NSArray *)self->_additionalContentViews firstObject];
  if (v4)
  {
    v5 = v4;
    v6 = [(NSArray *)self->_additionalContentViews firstObject];
    v7 = [v6 snippetViews];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(NSArray *)self->_additionalContentViews firstObject];
      v10 = [v9 hostingView];

      v3 = v10;
    }
  }

  if (SiriSharedUIDeviceIsPad() || SiriSharedUIDeviceIsMac())
  {
    v11 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
    v12 = [v11 bottomAnchor];
    v13 = [v3 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:-8.0];
  }

  else
  {
    v11 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
    v12 = [v11 bottomAnchor];
    v13 = [v3 topAnchor];
    v14 = [v12 constraintLessThanOrEqualToAnchor:v13 constant:-8.0];
  }

  v15 = v14;

  LODWORD(v16) = 1144750080;
  [v15 setPriority:v16];
  resultView = self->_resultView;
  v19[0] = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [(SiriSharedUICompactResultViewHosting *)resultView setCustomAttachmentConstraints:v18];
}

- (int64_t)_resultViewAttachmentType
{
  if (SiriSharedUIDeviceIsPad())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (CGSize)resultViewContentSize
{
  [(SiriSharedUICompactResultViewHosting *)self->_resultView portraitContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)conversationViewContentSize
{
  [(SiriSharedUICompactConversationViewHosting *)self->_conversationView portraitContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setResultViewAlpha:(double)a3
{
  v4 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [v4 setAlpha:a3];
}

- (void)setConversationViewHidden:(BOOL)a3
{
  v5 = objc_alloc_init(SiriSharedUIAnimationContext);
  [(SiriSharedUIAnimationContext *)v5 setAnimationDuration:0.3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SiriSharedUICompactView_setConversationViewHidden___block_invoke;
  v8[3] = &unk_2783547B8;
  v8[4] = self;
  v9 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SiriSharedUICompactView_setConversationViewHidden___block_invoke_2;
  v6[3] = &unk_2783547E0;
  v6[4] = self;
  v7 = a3;
  [SiriSharedUIAnimationUtilities perfomAnimationBlockWithAnimationBlock:v8 context:v5 completion:v6];
}

void __53__SiriSharedUICompactView_setConversationViewHidden___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 408) hostingView];
  v4 = v2;
  v3 = 1.0;
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
}

void __53__SiriSharedUICompactView_setConversationViewHidden___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 408) hostingView];
  [v2 setUserInteractionEnabled:(*(a1 + 40) & 1) == 0];
}

- (void)snippetLayoutDidUpdateForView:(id)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SiriSharedUICompactResultViewHosting *)self->_resultView snippetView];
  v8 = [v7 contentViews];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    [(SiriSharedUICompactResultViewHosting *)self->_resultView snippetContentDidUpdateWhileEditing:v4];
    [v6 frame];
    if (v11 == 0.0 || v10 == 0.0)
    {
      [(SiriSharedUICompactView *)self resultViewContentDidLoad:self->_resultView];
    }
  }

  else
  {
    v12 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView conversationSnippetViews];
    v13 = [v12 containsObject:v6];

    if (v13)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 isHint])
      {
        [(SiriSharedUICompactConversationViewHosting *)self->_conversationView snippetContentDidUpdateForHint];
      }

      else
      {
        [(SiriSharedUICompactConversationViewHosting *)self->_conversationView snippetContentDidUpdate];
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = self->_additionalContentViews;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v22 + 1) + 8 * i);
            v20 = [v19 snippetViews];
            v21 = [v20 containsObject:v6];

            if (v21)
            {
              [v19 snippetContentDidUpdate];
            }
          }

          v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }
    }
  }
}

- (void)setServerUtterances:(id)a3
{
  if (self->_serverUtterances != a3)
  {
    v6 = a3;
    v4 = [v6 copy];
    serverUtterances = self->_serverUtterances;
    self->_serverUtterances = v4;

    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView setServerUtterances:v6];
  }
}

- (void)setConversationSnippetViews:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_conversationSnippetViews isEqualToArray:?])
  {
    v4 = [v6 copy];
    conversationSnippetViews = self->_conversationSnippetViews;
    self->_conversationSnippetViews = v4;

    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView setConversationSnippetViews:v6];
    [(SiriSharedUICompactView *)self setNeedsLayout];
  }
}

- (void)setAdditionalContentSnippetViews:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = +[SiriSharedUITranscriptItem additionalContentViewPlatterCategories];
  v7 = [v6 count];

  if (v5 == v7)
  {
    if (![(NSArray *)self->_additionalContentSnippetViews isEqualToArray:v4])
    {
      v8 = [v4 copy];
      additionalContentSnippetViews = self->_additionalContentSnippetViews;
      self->_additionalContentSnippetViews = v8;

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __60__SiriSharedUICompactView_setAdditionalContentSnippetViews___block_invoke;
      v11[3] = &unk_278354808;
      v11[4] = self;
      [v4 enumerateObjectsUsingBlock:v11];
      [(SiriSharedUICompactView *)self _removeContentViewsFromViewStackContainer];
      [(SiriSharedUICompactView *)self _configureResultViewCustomConstraints];
      [(SiriSharedUICompactView *)self _addContentViewsToViewStackContainer];
    }
  }

  else
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriSharedUICompactView setAdditionalContentSnippetViews:v10];
    }
  }
}

void __60__SiriSharedUICompactView_setAdditionalContentSnippetViews___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 416);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 setSnippetViews:v5];
}

- (BOOL)hasContentAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SiriSharedUICompactView *)self _transitionalContentViewFrames];
  v7 = [v6 containsPoint:{x, y}];

  if (v7)
  {
    return 1;
  }

  if (![(UIView *)self->_textRequestView isHidden])
  {
    [(UIView *)self->_textRequestView alpha];
    if (v9 > 0.0)
    {
      [(UIView *)self->_textRequestView frame];
      v17.x = x;
      v17.y = y;
      if (CGRectContainsPoint(v18, v17))
      {
        return 1;
      }
    }
  }

  v10 = [(SiriSharedUICompactView *)self viewStackContainer];
  v11 = [v10 hostingView];

  [v11 convertPoint:self fromView:{x, y}];
  v13 = v12;
  v15 = v14;
  v16 = [(SiriSharedUICompactView *)self viewStackContainer];
  LOBYTE(v10) = [v16 hasContentAtPoint:{v13, v15}];

  return v10;
}

- (void)setBottomContentInset:(double)a3
{
  v5 = objc_alloc_init(SiriSharedUIAnimationContext);
  [(SiriSharedUIAnimationContext *)v5 setAnimationDuration:0.0];
  [(SiriSharedUICompactView *)self setBottomContentInset:v5 animatedWithContext:a3];
}

- (BOOL)alwaysShowRecognizedSpeech
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 alwaysShowRecognizedSpeech];

  return v3;
}

- (void)prepareForUpdatesWithDiff:(unint64_t)a3 updateBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_additionalContentViews;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * v11++) prepareForUpdatesToSnippetViews:(a3 >> 5) & 1];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  conversationView = self->_conversationView;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SiriSharedUICompactView_prepareForUpdatesWithDiff_updateBlock___block_invoke;
  v14[3] = &unk_278354830;
  v15 = v6;
  v13 = v6;
  [(SiriSharedUICompactConversationViewHosting *)conversationView prepareForUpdatesToServerUtterance:(a3 >> 2) & 1 conversationSnippetViews:(a3 >> 1) & 1 speechRecognitionHypothesis:(a3 >> 3) & 1 latencyViewModel:0 updateBlock:v14];
}

- (void)contentDidUpdate:(BOOL)a3
{
  if (!a3)
  {
    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView transitionToExpandablePlatterStyle:4];
    conversationView = self->_conversationView;

    [(SiriSharedUICompactConversationViewHosting *)conversationView animateAppearanceIfNeeded];
  }
}

- (void)contentDidUpdateForAdditionalContentView:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_additionalContentViews;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) animateAppearanceIfNeeded];
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_updateExpansionConstraints:(BOOL)a3
{
  conversationExpansionConstraint = self->_conversationExpansionConstraint;
  if (a3)
  {
    if (!conversationExpansionConstraint)
    {
      v5 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
      v6 = [v5 heightAnchor];
      v7 = [v6 constraintEqualToConstant:0.0];
      v8 = self->_conversationExpansionConstraint;
      self->_conversationExpansionConstraint = v7;

      conversationExpansionConstraint = self->_conversationExpansionConstraint;
    }

    v9 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
    [v9 frame];
    [(NSLayoutConstraint *)conversationExpansionConstraint setConstant:CGRectGetHeight(v12)];

    v10 = self->_conversationExpansionConstraint;
    *&a3 = 1;
  }

  else
  {
    v10 = self->_conversationExpansionConstraint;
  }

  [(NSLayoutConstraint *)v10 setActive:a3];
}

- (void)showFullScreenEffect:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  fullScreenEffectContainerView = self->_fullScreenEffectContainerView;
  if (!fullScreenEffectContainerView)
  {
    v6 = [SiriSharedUIStandardView alloc];
    [(SiriSharedUICompactView *)self bounds];
    v7 = [(SiriSharedUIStandardView *)v6 initWithFrame:?];
    v8 = self->_fullScreenEffectContainerView;
    self->_fullScreenEffectContainerView = v7;

    [(SiriSharedUICompactView *)self insertSubview:self->_fullScreenEffectContainerView atIndex:0];
    fullScreenEffectContainerView = self->_fullScreenEffectContainerView;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(UIView *)fullScreenEffectContainerView subviews];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v18 + 1) + 8 * v13++) removeFromSuperview];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [v4 prepareSoundEffect];
  v14 = objc_alloc([v4 effectViewClass]);
  [(UIView *)self->_fullScreenEffectContainerView bounds];
  v15 = [v14 initWithFrame:?];
  [(UIView *)self->_fullScreenEffectContainerView addSubview:v15];
  [v15 bounds];
  MidX = CGRectGetMidX(v24);
  [v15 bounds];
  v17 = CGRectGetMidY(v25) - 10.0 * 0.5;
  [v15 setFocusPoint:MidX];
  [v15 setMessageRect:{MidX - 10.0 * 0.5, v17, 10.0, 10.0}];
  [v15 startAnimation];
  [v4 playSoundEffect];
}

- (void)tapToEditRequestedFromView:(id)a3
{
  v4 = [(SiriSharedUICompactView *)self delegate];
  [v4 tapToEditRequestedFromView:self];
}

- (void)conversationViewContentScrolled:(id)a3 toContentOffset:(CGPoint)a4
{
  y = a4.y;
  v6 = [(SiriSharedUICompactView *)self _instrumentationManager:a3];
  [v6 emitUserViewRegionInteractionEventWithViewRegion:1 userViewInteraction:3];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  [v11 setValue:v8 forKey:@"identifier"];

  [v11 setValue:@"ConversationView" forKey:@"viewClass"];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:y];
  [v11 setValue:v9 forKey:@"contentOffset"];

  v10 = [(SiriSharedUICompactView *)self _analytics];
  [v10 logEventWithType:1456 context:v11];
}

- (void)conversationViewDidTransitionToCollapsedState:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SiriSharedUICompactView conversationViewDidTransitionToCollapsedState:]";
    _os_log_impl(&dword_21E3EB000, v4, OS_LOG_TYPE_DEFAULT, "%s #compact: conversationView now collapsed", &v10, 0xCu);
  }

  [(SiriSharedUICompactResultViewHosting *)self->_resultView setShowDimmingView:0 animated:1];
  [(SiriSharedUICompactView *)self _updateExpansionConstraints:0];
  v5 = [(SiriSharedUICompactView *)self _instrumentationManager];
  [v5 emitUserViewRegionInteractionEventWithViewRegion:1 userViewInteraction:2];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  [v6 setValue:v8 forKey:@"identifier"];

  [v6 setValue:@"ConversationView" forKey:@"viewClass"];
  [v6 setValue:@"Collapsed" forKey:@"expansionState"];
  v9 = [(SiriSharedUICompactView *)self _analytics];
  [v9 logEventWithType:1455 context:v6];
}

- (void)conversationViewDidTransitionToExpandedState:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SiriSharedUICompactView conversationViewDidTransitionToExpandedState:]";
    _os_log_impl(&dword_21E3EB000, v4, OS_LOG_TYPE_DEFAULT, "%s #compact: conversationView now expanded", &v10, 0xCu);
  }

  [(SiriSharedUICompactResultViewHosting *)self->_resultView setShowDimmingView:1 animated:1];
  v5 = [(SiriSharedUICompactView *)self _instrumentationManager];
  [v5 emitUserViewRegionInteractionEventWithViewRegion:1 userViewInteraction:1];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  [v6 setValue:v8 forKey:@"identifier"];

  [v6 setValue:@"ConversationView" forKey:@"viewClass"];
  [v6 setValue:@"Expanded" forKey:@"expansionState"];
  v9 = [(SiriSharedUICompactView *)self _analytics];
  [v9 logEventWithType:1455 context:v6];
}

- (void)conversationView:(id)a3 didUpdateHeightDuringExpansionTransition:(double)a4 didCompleteGesture:(BOOL)a5
{
  if (!a5)
  {
    [(SiriSharedUICompactView *)self expectedExpandedHeightForConversationView:a3];
    v8 = a4 - (v7 - 100.0);
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    [(SiriSharedUICompactResultViewHosting *)self->_resultView setDarkenIntensity:0 animated:1.0 * (v8 / 100.0)];
  }

  conversationExpansionConstraint = self->_conversationExpansionConstraint;

  [(NSLayoutConstraint *)conversationExpansionConstraint setConstant:a3, a4];
}

- (double)expectedExpandedHeightForConversationView:(id)a3
{
  v4 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  v5 = [v4 superview];
  [v5 frame];
  Height = CGRectGetHeight(v10);

  if (SiriSharedUIDeviceIsPad())
  {
    return Height - 80.0;
  }

  v8 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [v8 frame];
  v7 = Height - CGRectGetMinY(v11) - 80.0;

  return v7;
}

- (void)conversationView:(id)a3 viewDidAppearForAceObject:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compactView:self viewDidAppearForAceObject:v5];
}

- (void)conversationView:(id)a3 viewDidDisappearForAceObject:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compactView:self viewDidDisappearForAceObject:v5];
}

- (void)conversationViewDidUpdatePresentedContentHeight:(id)a3
{
  [(SiriSharedUICompactResultViewHosting *)self->_resultView relayout];
  v4 = [(SiriSharedUICompactView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained compactViewDidUpdatePresentedContentHeight:self];
  }
}

- (id)parserSpeakableObjectProviderForConversationView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained parserSpeakableObjectProviderForCompactView:self];

  return v5;
}

- (double)maximumHeightForConversationView:(id)a3
{
  v4 = [(SiriSharedUICompactView *)self delegate];
  [v4 maximumHeightForCompactView:self];
  v6 = v5;

  [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer topPadding];
  v8 = v7;
  [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer bottomPadding];
  return v6 - (v8 + v9) + -8.0;
}

- (void)resultViewContentDidLoad:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[SiriSharedUICompactView resultViewContentDidLoad:]";
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_21E3EB000, v6, OS_LOG_TYPE_DEFAULT, "%s #compact: resultViewContentDidLoad: %@", buf, 0x16u);
  }

  [(SiriSharedUICompactConversationViewHosting *)self->_conversationView animateAppearanceIfNeeded];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_additionalContentViews;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v21 + 1) + 8 * v11++) animateAppearanceIfNeeded];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  appIconView = self->_appIconView;
  if (appIconView)
  {
    v13 = [(UIView *)appIconView layer];
    [v13 opacity];
    v15 = v14;

    if (v15 == 0.0)
    {
      [MEMORY[0x277CD9FF0] begin];
      v16 = [(UIView *)self->_appIconView layer];
      v17 = [SiriSharedUIAnimationUtilities animationForStyle:3 expectedWidthForStyle:&unk_282F90F90 presentationType:[(SiriSharedUICompactView *)self _animatedPresentationType]];
      [v16 addAnimation:v17 forKey:@"conversationAppearance"];

      v18 = [(UIView *)self->_appIconView layer];
      LODWORD(v19) = 1.0;
      [v18 setOpacity:v19];

      [MEMORY[0x277CD9FF0] commit];
    }
  }

  v20 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[SiriSharedUICompactView resultViewContentDidLoad:]";
    _os_log_impl(&dword_21E3EB000, v20, OS_LOG_TYPE_DEFAULT, "%s #compact running fadeIn of conversationView", buf, 0xCu);
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_isInAmbient && !a4 && self->_reducedOrbOpacity)
  {
    v9 = v6;
    v6 = SiriSharedUIIsTextInputEnabled();
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained scrollDidEndFromView:self];

      v7 = v9;
      self->_reducedOrbOpacity = 0;
    }
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isInAmbient && self->_reducedOrbOpacity)
  {
    v7 = v4;
    v4 = SiriSharedUIIsTextInputEnabled();
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained scrollDidEndFromView:self];

      v5 = v7;
      self->_reducedOrbOpacity = 0;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isInAmbient && !self->_reducedOrbOpacity)
  {
    v7 = v4;
    v4 = SiriSharedUIIsTextInputEnabled();
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained scrollDidBeginFromView:self];

      v5 = v7;
      self->_reducedOrbOpacity = 1;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)resultViewContentDidScroll:(id)a3
{
  if (([(SiriSharedUICompactConversationViewHosting *)self->_conversationView isCurrentlyTrackingGesture]& 1) == 0 && [(SiriSharedUICompactConversationViewHosting *)self->_conversationView willAutomaticallyCollapseWhenResultIsScrolled])
  {
    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView transitionToExpandablePlatterStyle:2];

    [(SiriSharedUICompactView *)self _updateExpansionConstraints:0];
  }
}

- (double)maximumHeightForResultView:(id)a3
{
  if (self->_isInAmbient)
  {
    return 1.79769313e308;
  }

  v5 = [(SiriSharedUICompactView *)self delegate];
  [v5 maximumHeightForCompactView:self];
  v7 = v6;

  [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer topPadding];
  v9 = v8;
  [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer bottomPadding];
  return v7 - (v9 + v10);
}

- (UIEdgeInsets)contentInsetsForResultView:(id)a3
{
  v4 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [v13 frame];
  v25.origin.x = v14;
  v25.origin.y = v15;
  v25.size.width = v16;
  v25.size.height = v17;
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  v18 = CGRectIntersectsRect(v23, v25);

  v19 = 0.0;
  if (v18)
  {
    v20 = 60.0 + 10.0;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = 0.0;
  v22 = 0.0;
  result.right = v22;
  result.bottom = v20;
  result.left = v19;
  result.top = v21;
  return result;
}

- (void)resultViewContentScrolled:(id)a3 toContentOffset:(CGPoint)a4
{
  y = a4.y;
  v6 = [(SiriSharedUICompactView *)self _instrumentationManager:a3];
  [v6 emitUserViewRegionInteractionEventWithViewRegion:2 userViewInteraction:3];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  [v11 setValue:v8 forKey:@"identifier"];

  [v11 setValue:@"ResultView" forKey:@"viewClass"];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:y];
  [v11 setValue:v9 forKey:@"contentOffset"];

  v10 = [(SiriSharedUICompactView *)self _analytics];
  [v10 logEventWithType:1456 context:v11];
}

- (void)resultViewContentScrolling:(id)a3 didBegin:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (v4)
  {
    [WeakRetained scrollDidBeginFromView:self];
  }

  else
  {
    [WeakRetained scrollDidEndFromView:self];
  }
}

- (void)_textRequestViewVisibilityDidChange
{
  v3 = objc_alloc_init(SiriSharedUIAnimationContext);
  [(SiriSharedUIAnimationContext *)v3 setAnimationOptions:0];
  [(SiriSharedUIAnimationContext *)v3 setAnimationDuration:0.25];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SiriSharedUICompactView__textRequestViewVisibilityDidChange__block_invoke;
  v4[3] = &unk_278354858;
  v4[4] = self;
  [(SiriSharedUICompactView *)self _updateBottomPaddingAnimatedWithContext:v3 alongsideAnimations:v4];
}

uint64_t __62__SiriSharedUICompactView__textRequestViewVisibilityDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hidesTextRequestView];
  result = [*(*(a1 + 32) + 440) setHidden:v2];
  if (v2)
  {
    v4 = *(*(a1 + 32) + 440);

    return [v4 resignFirstResponder];
  }

  return result;
}

- (void)setHidesTextRequestView:(BOOL)a3
{
  if (self->_hidesTextRequestView != a3)
  {
    self->_hidesTextRequestView = a3;
    [(SiriSharedUICompactView *)self _textRequestViewVisibilityDidChange];
  }
}

- (void)_snapshotContentViewFramesForTransition
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_textRequestView)
  {
    v5[0] = self->_textRequestView;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = [[SiriSharedUIRectSet alloc] initWithFramesForViews:v3 inCoordinateSpace:self];
  [(SiriSharedUICompactView *)self _setTransitionalContentViewFrames:v4];
}

- (void)_updateBottomPaddingAnimatedWithContext:(id)a3 alongsideAnimations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 14.0;
  if (self->_isInAmbient)
  {
    v9 = [(SiriSharedUICompactView *)self hidesTextRequestView];
    v8 = 14.0;
    if (v9)
    {
      v8 = 0.0;
    }
  }

  v10 = v8 + self->_bottomContentInset;
  [(NSLayoutConstraint *)self->_textRequestViewBottomConstraint setConstant:v10];
  if ([(SiriSharedUICompactView *)self hidesTextRequestView])
  {
    v11 = _Block_copy(v7);
    v12 = 0;
  }

  else
  {
    [(UIView *)self->_textRequestView frame];
    v10 = v10 + 16.0 + CGRectGetHeight(v19);
    [(SiriSharedUICompactView *)self _snapshotContentViewFramesForTransition];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__SiriSharedUICompactView__updateBottomPaddingAnimatedWithContext_alongsideAnimations___block_invoke;
    aBlock[3] = &unk_278354880;
    aBlock[4] = self;
    v18 = v7;
    v11 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __87__SiriSharedUICompactView__updateBottomPaddingAnimatedWithContext_alongsideAnimations___block_invoke_2;
    v16[3] = &unk_278354858;
    v16[4] = self;
    v12 = _Block_copy(v16);
  }

  viewStackContainer = self->_viewStackContainer;
  [v6 animationDuration];
  -[SiriSharedUIViewStackContainerHosting setBottomPadding:animatedWithDuration:animationOptions:alongsideAnimations:completion:](viewStackContainer, "setBottomPadding:animatedWithDuration:animationOptions:alongsideAnimations:completion:", [v6 animationOptions], v11, v12, v10, v14);
  v15 = [(SiriSharedUICompactView *)self delegate];
  [v15 compactView:self didChangeEffectiveBottomContentInsetAnimatedWithContext:v6];
}

uint64_t __87__SiriSharedUICompactView__updateBottomPaddingAnimatedWithContext_alongsideAnimations___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_updateBottomPadding
{
  v3 = objc_alloc_init(SiriSharedUIAnimationContext);
  [(SiriSharedUIAnimationContext *)v3 setAnimationDuration:0.0];
  [(SiriSharedUICompactView *)self _updateBottomPaddingAnimatedWithContext:v3];
}

- (SiriSharedUICompactViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAdditionalContentSnippetViews:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SiriSharedUICompactView setAdditionalContentSnippetViews:]";
  _os_log_error_impl(&dword_21E3EB000, log, OS_LOG_TYPE_ERROR, "%s #compact: attempting to set snippets incorrect number of platters; skipping and returning early.", &v1, 0xCu);
}

@end