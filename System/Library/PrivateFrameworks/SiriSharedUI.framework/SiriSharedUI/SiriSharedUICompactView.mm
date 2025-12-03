@interface SiriSharedUICompactView
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)hasContentAtPoint:(CGPoint)point;
- (CGSize)conversationViewContentSize;
- (CGSize)resultViewContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriSharedUICompactView)initWithFrame:(CGRect)frame backgroundBlurView:(id)view navigationView:(id)navigationView resultView:(id)resultView conversationView:(id)conversationView additionalContentViews:(id)views textRequestView:(id)requestView viewStackContainer:(id)self0;
- (SiriSharedUICompactViewDelegate)delegate;
- (UIEdgeInsets)contentInsetsForResultView:(id)view;
- (double)expectedExpandedHeightForConversationView:(id)view;
- (double)maximumHeightForConversationView:(id)view;
- (double)maximumHeightForResultView:(id)view;
- (id)parserSpeakableObjectProviderForConversationView:(id)view;
- (int64_t)_resultViewAttachmentType;
- (void)_addContentViewsToViewStackContainer;
- (void)_clearAppIconView;
- (void)_configureResultViewCustomConstraints;
- (void)_removeContentViewsFromViewStackContainer;
- (void)_snapshotContentViewFramesForTransition;
- (void)_textRequestViewVisibilityDidChange;
- (void)_updateBottomPadding;
- (void)_updateBottomPaddingAnimatedWithContext:(id)context alongsideAnimations:(id)animations;
- (void)_updateExpansionConstraints:(BOOL)constraints;
- (void)configureAmbientAppIconForBundleIdentifier:(id)identifier;
- (void)contentDidUpdate:(BOOL)update;
- (void)contentDidUpdateForAdditionalContentView:(BOOL)view;
- (void)conversationView:(id)view didUpdateHeightDuringExpansionTransition:(double)transition didCompleteGesture:(BOOL)gesture;
- (void)conversationView:(id)view viewDidAppearForAceObject:(id)object;
- (void)conversationView:(id)view viewDidDisappearForAceObject:(id)object;
- (void)conversationViewContentScrolled:(id)scrolled toContentOffset:(CGPoint)offset;
- (void)conversationViewDidTransitionToCollapsedState:(id)state;
- (void)conversationViewDidTransitionToExpandedState:(id)state;
- (void)conversationViewDidUpdatePresentedContentHeight:(id)height;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForUpdatesWithDiff:(unint64_t)diff updateBlock:(id)block;
- (void)resultViewContentDidLoad:(id)load;
- (void)resultViewContentDidScroll:(id)scroll;
- (void)resultViewContentScrolled:(id)scrolled toContentOffset:(CGPoint)offset;
- (void)resultViewContentScrolling:(id)scrolling didBegin:(BOOL)begin;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setAdditionalContentSnippetViews:(id)views;
- (void)setBottomContentInset:(double)inset;
- (void)setConversationSnippetViews:(id)views;
- (void)setConversationViewHidden:(BOOL)hidden;
- (void)setHidesTextRequestView:(BOOL)view;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setIsInAmbientInteractivity:(BOOL)interactivity;
- (void)setResultViewAlpha:(double)alpha;
- (void)setServerUtterances:(id)utterances;
- (void)showFullScreenEffect:(id)effect;
- (void)snippetLayoutDidUpdateForView:(id)view isEditing:(BOOL)editing;
- (void)tapToEditRequestedFromView:(id)view;
@end

@implementation SiriSharedUICompactView

- (SiriSharedUICompactView)initWithFrame:(CGRect)frame backgroundBlurView:(id)view navigationView:(id)navigationView resultView:(id)resultView conversationView:(id)conversationView additionalContentViews:(id)views textRequestView:(id)requestView viewStackContainer:(id)self0
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v76 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  navigationViewCopy = navigationView;
  resultViewCopy = resultView;
  resultViewCopy2 = resultView;
  obj = conversationView;
  conversationViewCopy = conversationView;
  viewsCopy = views;
  viewsCopy2 = views;
  requestViewCopy = requestView;
  containerCopy = container;
  v71.receiver = self;
  v71.super_class = SiriSharedUICompactView;
  height = [(SiriSharedUICompactView *)&v71 initWithFrame:x, y, width, height];
  if (height)
  {
    v61 = requestViewCopy;
    v62 = viewsCopy2;
    v27 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v75 = "[SiriSharedUICompactView initWithFrame:backgroundBlurView:navigationView:resultView:conversationView:additionalContentViews:textRequestView:viewStackContainer:]";
      _os_log_impl(&dword_21E3EB000, v27, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    v60 = containerCopy;
    height->_hidesTextRequestView = 1;
    height->_reducedOrbOpacity = 0;
    [(SiriSharedUICompactView *)height bounds];
    [viewCopy setFrame:?];
    [viewCopy setAutoresizingMask:18];
    [(SiriSharedUICompactView *)height addSubview:viewCopy];
    [(SiriSharedUICompactView *)height bounds];
    [navigationViewCopy setFrame:?];
    [navigationViewCopy setAutoresizingMask:18];
    [(SiriSharedUICompactView *)height addSubview:navigationViewCopy];
    objc_storeStrong(&height->_textRequestView, requestView);
    [(UIView *)height->_textRequestView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (height->_textRequestView)
    {
      [(SiriSharedUICompactView *)height addSubview:?];
      bottomAnchor = [(SiriSharedUICompactView *)height bottomAnchor];
      bottomAnchor2 = [(UIView *)height->_textRequestView bottomAnchor];
      v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      textRequestViewBottomConstraint = height->_textRequestViewBottomConstraint;
      height->_textRequestViewBottomConstraint = v30;

      v58 = MEMORY[0x277CCAAD0];
      leadingAnchor = [(UIView *)height->_textRequestView leadingAnchor];
      leadingAnchor2 = [(SiriSharedUICompactView *)height leadingAnchor];
      v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v73[0] = v34;
      v73[1] = height->_textRequestViewBottomConstraint;
      [(UIView *)height->_textRequestView trailingAnchor];
      v35 = v59 = navigationViewCopy;
      trailingAnchor = [(SiriSharedUICompactView *)height trailingAnchor];
      v37 = [v35 constraintEqualToAnchor:trailingAnchor];
      v73[2] = v37;
      [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
      v38 = conversationViewCopy;
      v40 = v39 = resultViewCopy2;
      [v58 activateConstraints:v40];

      resultViewCopy2 = v39;
      conversationViewCopy = v38;

      navigationViewCopy = v59;
    }

    objc_storeStrong(&height->_conversationView, obj);
    [(SiriSharedUICompactConversationViewHosting *)height->_conversationView setDelegate:height];
    [(SiriSharedUICompactConversationViewHosting *)height->_conversationView setAttachmentType:[(SiriSharedUICompactView *)height _conversationViewAttachmentType]];
    hostingView = [(SiriSharedUICompactConversationViewHosting *)height->_conversationView hostingView];
    SiriSharedUISetContentHuggingPriority(hostingView, 1);

    hostingView2 = [(SiriSharedUICompactConversationViewHosting *)height->_conversationView hostingView];
    SiriSharedUISetContentCompressionResistancePriority(hostingView2, 1);

    [(SiriSharedUICompactConversationViewHosting *)height->_conversationView setUseLowerPriorityHeightConstraint:1];
    objc_storeStrong(&height->_additionalContentViews, viewsCopy);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v43 = height->_additionalContentViews;
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
          [v48 setDelegate:height];
          [v48 setAttachmentType:{-[SiriSharedUICompactView _conversationViewAttachmentType](height, "_conversationViewAttachmentType")}];
          hostingView3 = [v48 hostingView];
          SiriSharedUISetContentHuggingPriority(hostingView3, 1);

          hostingView4 = [v48 hostingView];
          SiriSharedUISetContentCompressionResistancePriority(hostingView4, 1);

          [v48 setAttachmentYOffset:-8.0];
        }

        v45 = [(NSArray *)v43 countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v45);
    }

    objc_storeStrong(&height->_resultView, resultViewCopy);
    hostingView5 = [(SiriSharedUICompactResultViewHosting *)height->_resultView hostingView];
    [hostingView5 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

    if (SiriSharedUIDeviceIsMac())
    {
      [(SiriSharedUICompactResultViewHosting *)height->_resultView setAttachmentYOffset:8.0];
    }

    [(SiriSharedUICompactResultViewHosting *)height->_resultView setDelegate:height];
    hostingView6 = [(SiriSharedUICompactResultViewHosting *)height->_resultView hostingView];
    SiriSharedUISetContentHuggingPriority(hostingView6, 1);

    hostingView7 = [(SiriSharedUICompactResultViewHosting *)height->_resultView hostingView];
    SiriSharedUISetContentCompressionResistancePriority(hostingView7, 1);

    [(SiriSharedUICompactResultViewHosting *)height->_resultView setAttachmentType:[(SiriSharedUICompactView *)height _resultViewAttachmentType]];
    [(SiriSharedUICompactView *)height _configureResultViewCustomConstraints];
    containerCopy = v60;
    requestViewCopy = v61;
    if (v60)
    {
      height2 = v60;
    }

    else
    {
      v56 = [SiriSharedUIViewStackContainer alloc];
      height2 = [(SiriSharedUIViewStackContainer *)v56 initWithFrame:MEMORY[0x277CBEBF8] contentViews:x, y, width, height];
    }

    viewStackContainer = height->_viewStackContainer;
    height->_viewStackContainer = height2;
    viewsCopy2 = v62;

    [(SiriSharedUICompactView *)height _addContentViewsToViewStackContainer];
    [(SiriSharedUICompactView *)height _updateBottomPadding];
    [(SiriSharedUICompactView *)height _textRequestViewVisibilityDidChange];
  }

  return height;
}

- (void)didMoveToWindow
{
  delegate = [(SiriSharedUICompactView *)self delegate];
  window = [(SiriSharedUICompactView *)self window];
  [delegate compactView:self viewDidChangeWindow:window];
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
  viewStackContainer = [(SiriSharedUICompactView *)self viewStackContainer];
  hostingView = [viewStackContainer hostingView];
  [(SiriSharedUICompactView *)self bounds];
  [hostingView setFrame:?];

  fullScreenEffectContainerView = self->_fullScreenEffectContainerView;
  [(SiriSharedUICompactView *)self bounds];
  [(UIView *)fullScreenEffectContainerView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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
    hostingView = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
    [hostingView sizeThatFits:{width, height}];
    v14 = v13;

    hostingView2 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
    [hostingView2 sizeThatFits:{width, height}];
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

          hostingView3 = [*(*(&v33 + 1) + 8 * j) hostingView];
          [hostingView3 sizeThatFits:{width, height}];
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
  hostingView = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)viewStackContainer addContentView:hostingView];

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
        hostingView2 = [*(*(&v27 + 1) + 8 * v9) hostingView];
        [(SiriSharedUIViewStackContainerHosting *)v10 addContentView:hostingView2];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v12 = self->_viewStackContainer;
  hostingView3 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)v12 addContentView:hostingView3];

  v14 = self->_viewStackContainer;
  hostingView4 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)v14 bringSubviewToFront:hostingView4];

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
        hostingView5 = [*(*(&v23 + 1) + 8 * v20) hostingView];
        [(SiriSharedUIViewStackContainerHosting *)v21 bringSubviewToFront:hostingView5];

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
  hostingView = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)viewStackContainer removeContentView:hostingView];

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
        hostingView2 = [*(*(&v23 + 1) + 8 * v9) hostingView];
        [(SiriSharedUIViewStackContainerHosting *)v10 removeContentView:hostingView2];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v12 = self->_viewStackContainer;
  hostingView3 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [(SiriSharedUIViewStackContainerHosting *)v12 removeContentView:hostingView3];

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

- (void)setIsInAmbient:(BOOL)ambient
{
  v53 = *MEMORY[0x277D85DE8];
  if (self->_isInAmbient != ambient)
  {
    self->_isInAmbient = ambient;
    if (ambient)
    {
      scrollView = [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer scrollView];
      [scrollView setDelegate:self];
    }

    [(SiriSharedUICompactView *)self _removeContentViewsFromViewStackContainer];
    [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer setIsInAmbient:self->_isInAmbient];
    if (self->_isInAmbient)
    {
      stackConstraints = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView stackConstraints];
      [stackConstraints setHeightConstraint:0];

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

            stackConstraints2 = [*(*(&v45 + 1) + 8 * v10) stackConstraints];
            [stackConstraints2 setHeightConstraint:0];

            ++v10;
          }

          while (v8 != v10);
          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v8);
      }

      stackConstraints3 = [(SiriSharedUICompactResultViewHosting *)self->_resultView stackConstraints];
      [stackConstraints3 setHeightConstraint:0];

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
      _resultViewAttachmentType = 3;
    }

    else
    {
      [(SiriSharedUICompactView *)self _clearAppIconView];
      [(SiriSharedUICompactView *)self _configureResultViewCustomConstraints];
      stackConstraints4 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView stackConstraints];
      [stackConstraints4 setHeightConstraint:0];

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

            stackConstraints5 = [*(*(&v37 + 1) + 8 * v25) stackConstraints];
            [stackConstraints5 setHeightConstraint:0];

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
      _resultViewAttachmentType = [(SiriSharedUICompactView *)self _resultViewAttachmentType];
      resultView = v32;
    }

    [(SiriSharedUICompactResultViewHosting *)resultView setAttachmentType:_resultViewAttachmentType, v33];
    [(SiriSharedUICompactView *)self _addContentViewsToViewStackContainer];
    [(SiriSharedUICompactView *)self _updateBottomPadding];
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)interactivity
{
  if (self->_isInAmbient)
  {
    self->_isInAmbientInteractivity = interactivity;
    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView relayout];
  }
}

- (void)configureAmbientAppIconForBundleIdentifier:(id)identifier
{
  v22[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([SiriSharedUIUtilities applicationBundleIdentifierIsThirdParty:identifierCopy]&& self->_isInAmbient)
  {
    v21 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:identifierCopy];
    v20 = [MEMORY[0x277D755B8] _iconForResourceProxy:v21 format:2];
    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v20];
    appIconView = self->_appIconView;
    self->_appIconView = v5;

    [(SiriSharedUICompactView *)self addSubview:self->_appIconView];
    [(UIView *)self->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)self->_appIconView layer];
    [layer setOpacity:0.0];

    v17 = MEMORY[0x277CCAAD0];
    trailingAnchor = [(UIView *)self->_appIconView trailingAnchor];
    trailingAnchor2 = [(SiriSharedUICompactView *)self trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-49.0];
    v22[0] = v8;
    bottomAnchor = [(UIView *)self->_appIconView bottomAnchor];
    bottomAnchor2 = [(SiriSharedUICompactView *)self bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-49.0];
    v22[1] = v11;
    heightAnchor = [(UIView *)self->_appIconView heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:40.0];
    v22[2] = v13;
    widthAnchor = [(UIView *)self->_appIconView widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:40.0];
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
  hostingView = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  firstObject = [(NSArray *)self->_additionalContentViews firstObject];
  if (firstObject)
  {
    v5 = firstObject;
    firstObject2 = [(NSArray *)self->_additionalContentViews firstObject];
    snippetViews = [firstObject2 snippetViews];
    v8 = [snippetViews count];

    if (v8)
    {
      firstObject3 = [(NSArray *)self->_additionalContentViews firstObject];
      hostingView2 = [firstObject3 hostingView];

      hostingView = hostingView2;
    }
  }

  if (SiriSharedUIDeviceIsPad() || SiriSharedUIDeviceIsMac())
  {
    hostingView3 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
    bottomAnchor = [hostingView3 bottomAnchor];
    topAnchor = [hostingView topAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-8.0];
  }

  else
  {
    hostingView3 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
    bottomAnchor = [hostingView3 bottomAnchor];
    topAnchor = [hostingView topAnchor];
    v14 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor constant:-8.0];
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

- (void)setResultViewAlpha:(double)alpha
{
  hostingView = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [hostingView setAlpha:alpha];
}

- (void)setConversationViewHidden:(BOOL)hidden
{
  v5 = objc_alloc_init(SiriSharedUIAnimationContext);
  [(SiriSharedUIAnimationContext *)v5 setAnimationDuration:0.3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SiriSharedUICompactView_setConversationViewHidden___block_invoke;
  v8[3] = &unk_2783547B8;
  v8[4] = self;
  hiddenCopy = hidden;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SiriSharedUICompactView_setConversationViewHidden___block_invoke_2;
  v6[3] = &unk_2783547E0;
  v6[4] = self;
  hiddenCopy2 = hidden;
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

- (void)snippetLayoutDidUpdateForView:(id)view isEditing:(BOOL)editing
{
  editingCopy = editing;
  v27 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  snippetView = [(SiriSharedUICompactResultViewHosting *)self->_resultView snippetView];
  contentViews = [snippetView contentViews];
  v9 = [contentViews containsObject:viewCopy];

  if (v9)
  {
    [(SiriSharedUICompactResultViewHosting *)self->_resultView snippetContentDidUpdateWhileEditing:editingCopy];
    [viewCopy frame];
    if (v11 == 0.0 || v10 == 0.0)
    {
      [(SiriSharedUICompactView *)self resultViewContentDidLoad:self->_resultView];
    }
  }

  else
  {
    conversationSnippetViews = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView conversationSnippetViews];
    v13 = [conversationSnippetViews containsObject:viewCopy];

    if (v13)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && [viewCopy isHint])
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
            snippetViews = [v19 snippetViews];
            v21 = [snippetViews containsObject:viewCopy];

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

- (void)setServerUtterances:(id)utterances
{
  if (self->_serverUtterances != utterances)
  {
    utterancesCopy = utterances;
    v4 = [utterancesCopy copy];
    serverUtterances = self->_serverUtterances;
    self->_serverUtterances = v4;

    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView setServerUtterances:utterancesCopy];
  }
}

- (void)setConversationSnippetViews:(id)views
{
  viewsCopy = views;
  if (![(NSArray *)self->_conversationSnippetViews isEqualToArray:?])
  {
    v4 = [viewsCopy copy];
    conversationSnippetViews = self->_conversationSnippetViews;
    self->_conversationSnippetViews = v4;

    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView setConversationSnippetViews:viewsCopy];
    [(SiriSharedUICompactView *)self setNeedsLayout];
  }
}

- (void)setAdditionalContentSnippetViews:(id)views
{
  viewsCopy = views;
  v5 = [viewsCopy count];
  v6 = +[SiriSharedUITranscriptItem additionalContentViewPlatterCategories];
  v7 = [v6 count];

  if (v5 == v7)
  {
    if (![(NSArray *)self->_additionalContentSnippetViews isEqualToArray:viewsCopy])
    {
      v8 = [viewsCopy copy];
      additionalContentSnippetViews = self->_additionalContentSnippetViews;
      self->_additionalContentSnippetViews = v8;

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __60__SiriSharedUICompactView_setAdditionalContentSnippetViews___block_invoke;
      v11[3] = &unk_278354808;
      v11[4] = self;
      [viewsCopy enumerateObjectsUsingBlock:v11];
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

- (BOOL)hasContentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _transitionalContentViewFrames = [(SiriSharedUICompactView *)self _transitionalContentViewFrames];
  v7 = [_transitionalContentViewFrames containsPoint:{x, y}];

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

  viewStackContainer = [(SiriSharedUICompactView *)self viewStackContainer];
  hostingView = [viewStackContainer hostingView];

  [hostingView convertPoint:self fromView:{x, y}];
  v13 = v12;
  v15 = v14;
  viewStackContainer2 = [(SiriSharedUICompactView *)self viewStackContainer];
  LOBYTE(viewStackContainer) = [viewStackContainer2 hasContentAtPoint:{v13, v15}];

  return viewStackContainer;
}

- (void)setBottomContentInset:(double)inset
{
  v5 = objc_alloc_init(SiriSharedUIAnimationContext);
  [(SiriSharedUIAnimationContext *)v5 setAnimationDuration:0.0];
  [(SiriSharedUICompactView *)self setBottomContentInset:v5 animatedWithContext:inset];
}

- (BOOL)alwaysShowRecognizedSpeech
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  alwaysShowRecognizedSpeech = [mEMORY[0x277CEF368] alwaysShowRecognizedSpeech];

  return alwaysShowRecognizedSpeech;
}

- (void)prepareForUpdatesWithDiff:(unint64_t)diff updateBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
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

        [*(*(&v16 + 1) + 8 * v11++) prepareForUpdatesToSnippetViews:(diff >> 5) & 1];
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
  v15 = blockCopy;
  v13 = blockCopy;
  [(SiriSharedUICompactConversationViewHosting *)conversationView prepareForUpdatesToServerUtterance:(diff >> 2) & 1 conversationSnippetViews:(diff >> 1) & 1 speechRecognitionHypothesis:(diff >> 3) & 1 latencyViewModel:0 updateBlock:v14];
}

- (void)contentDidUpdate:(BOOL)update
{
  if (!update)
  {
    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView transitionToExpandablePlatterStyle:4];
    conversationView = self->_conversationView;

    [(SiriSharedUICompactConversationViewHosting *)conversationView animateAppearanceIfNeeded];
  }
}

- (void)contentDidUpdateForAdditionalContentView:(BOOL)view
{
  v13 = *MEMORY[0x277D85DE8];
  if (!view)
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

- (void)_updateExpansionConstraints:(BOOL)constraints
{
  conversationExpansionConstraint = self->_conversationExpansionConstraint;
  if (constraints)
  {
    if (!conversationExpansionConstraint)
    {
      hostingView = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
      heightAnchor = [hostingView heightAnchor];
      v7 = [heightAnchor constraintEqualToConstant:0.0];
      v8 = self->_conversationExpansionConstraint;
      self->_conversationExpansionConstraint = v7;

      conversationExpansionConstraint = self->_conversationExpansionConstraint;
    }

    hostingView2 = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
    [hostingView2 frame];
    [(NSLayoutConstraint *)conversationExpansionConstraint setConstant:CGRectGetHeight(v12)];

    v10 = self->_conversationExpansionConstraint;
    *&constraints = 1;
  }

  else
  {
    v10 = self->_conversationExpansionConstraint;
  }

  [(NSLayoutConstraint *)v10 setActive:constraints];
}

- (void)showFullScreenEffect:(id)effect
{
  v23 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
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
  subviews = [(UIView *)fullScreenEffectContainerView subviews];
  v10 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v18 + 1) + 8 * v13++) removeFromSuperview];
      }

      while (v11 != v13);
      v11 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [effectCopy prepareSoundEffect];
  v14 = objc_alloc([effectCopy effectViewClass]);
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
  [effectCopy playSoundEffect];
}

- (void)tapToEditRequestedFromView:(id)view
{
  delegate = [(SiriSharedUICompactView *)self delegate];
  [delegate tapToEditRequestedFromView:self];
}

- (void)conversationViewContentScrolled:(id)scrolled toContentOffset:(CGPoint)offset
{
  y = offset.y;
  v6 = [(SiriSharedUICompactView *)self _instrumentationManager:scrolled];
  [v6 emitUserViewRegionInteractionEventWithViewRegion:1 userViewInteraction:3];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v11 setValue:uUIDString forKey:@"identifier"];

  [v11 setValue:@"ConversationView" forKey:@"viewClass"];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:y];
  [v11 setValue:v9 forKey:@"contentOffset"];

  _analytics = [(SiriSharedUICompactView *)self _analytics];
  [_analytics logEventWithType:1456 context:v11];
}

- (void)conversationViewDidTransitionToCollapsedState:(id)state
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
  _instrumentationManager = [(SiriSharedUICompactView *)self _instrumentationManager];
  [_instrumentationManager emitUserViewRegionInteractionEventWithViewRegion:1 userViewInteraction:2];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v6 setValue:uUIDString forKey:@"identifier"];

  [v6 setValue:@"ConversationView" forKey:@"viewClass"];
  [v6 setValue:@"Collapsed" forKey:@"expansionState"];
  _analytics = [(SiriSharedUICompactView *)self _analytics];
  [_analytics logEventWithType:1455 context:v6];
}

- (void)conversationViewDidTransitionToExpandedState:(id)state
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
  _instrumentationManager = [(SiriSharedUICompactView *)self _instrumentationManager];
  [_instrumentationManager emitUserViewRegionInteractionEventWithViewRegion:1 userViewInteraction:1];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v6 setValue:uUIDString forKey:@"identifier"];

  [v6 setValue:@"ConversationView" forKey:@"viewClass"];
  [v6 setValue:@"Expanded" forKey:@"expansionState"];
  _analytics = [(SiriSharedUICompactView *)self _analytics];
  [_analytics logEventWithType:1455 context:v6];
}

- (void)conversationView:(id)view didUpdateHeightDuringExpansionTransition:(double)transition didCompleteGesture:(BOOL)gesture
{
  if (!gesture)
  {
    [(SiriSharedUICompactView *)self expectedExpandedHeightForConversationView:view];
    v8 = transition - (v7 - 100.0);
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    [(SiriSharedUICompactResultViewHosting *)self->_resultView setDarkenIntensity:0 animated:1.0 * (v8 / 100.0)];
  }

  conversationExpansionConstraint = self->_conversationExpansionConstraint;

  [(NSLayoutConstraint *)conversationExpansionConstraint setConstant:view, transition];
}

- (double)expectedExpandedHeightForConversationView:(id)view
{
  hostingView = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  superview = [hostingView superview];
  [superview frame];
  Height = CGRectGetHeight(v10);

  if (SiriSharedUIDeviceIsPad())
  {
    return Height - 80.0;
  }

  hostingView2 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [hostingView2 frame];
  v7 = Height - CGRectGetMinY(v11) - 80.0;

  return v7;
}

- (void)conversationView:(id)view viewDidAppearForAceObject:(id)object
{
  objectCopy = object;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compactView:self viewDidAppearForAceObject:objectCopy];
}

- (void)conversationView:(id)view viewDidDisappearForAceObject:(id)object
{
  objectCopy = object;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compactView:self viewDidDisappearForAceObject:objectCopy];
}

- (void)conversationViewDidUpdatePresentedContentHeight:(id)height
{
  [(SiriSharedUICompactResultViewHosting *)self->_resultView relayout];
  delegate = [(SiriSharedUICompactView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained compactViewDidUpdatePresentedContentHeight:self];
  }
}

- (id)parserSpeakableObjectProviderForConversationView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained parserSpeakableObjectProviderForCompactView:self];

  return v5;
}

- (double)maximumHeightForConversationView:(id)view
{
  delegate = [(SiriSharedUICompactView *)self delegate];
  [delegate maximumHeightForCompactView:self];
  v6 = v5;

  [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer topPadding];
  v8 = v7;
  [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer bottomPadding];
  return v6 - (v8 + v9) + -8.0;
}

- (void)resultViewContentDidLoad:(id)load
{
  v30 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[SiriSharedUICompactView resultViewContentDidLoad:]";
    v28 = 2112;
    v29 = loadCopy;
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
    layer = [(UIView *)appIconView layer];
    [layer opacity];
    v15 = v14;

    if (v15 == 0.0)
    {
      [MEMORY[0x277CD9FF0] begin];
      layer2 = [(UIView *)self->_appIconView layer];
      v17 = [SiriSharedUIAnimationUtilities animationForStyle:3 expectedWidthForStyle:&unk_282F90F90 presentationType:[(SiriSharedUICompactView *)self _animatedPresentationType]];
      [layer2 addAnimation:v17 forKey:@"conversationAppearance"];

      layer3 = [(UIView *)self->_appIconView layer];
      LODWORD(v19) = 1.0;
      [layer3 setOpacity:v19];

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

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  v7 = draggingCopy;
  if (self->_isInAmbient && !decelerate && self->_reducedOrbOpacity)
  {
    v9 = draggingCopy;
    draggingCopy = SiriSharedUIIsTextInputEnabled();
    v7 = v9;
    if ((draggingCopy & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained scrollDidEndFromView:self];

      v7 = v9;
      self->_reducedOrbOpacity = 0;
    }
  }

  MEMORY[0x2821F96F8](draggingCopy, v7);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  v5 = deceleratingCopy;
  if (self->_isInAmbient && self->_reducedOrbOpacity)
  {
    v7 = deceleratingCopy;
    deceleratingCopy = SiriSharedUIIsTextInputEnabled();
    v5 = v7;
    if ((deceleratingCopy & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained scrollDidEndFromView:self];

      v5 = v7;
      self->_reducedOrbOpacity = 0;
    }
  }

  MEMORY[0x2821F96F8](deceleratingCopy, v5);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  v5 = draggingCopy;
  if (self->_isInAmbient && !self->_reducedOrbOpacity)
  {
    v7 = draggingCopy;
    draggingCopy = SiriSharedUIIsTextInputEnabled();
    v5 = v7;
    if ((draggingCopy & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained scrollDidBeginFromView:self];

      v5 = v7;
      self->_reducedOrbOpacity = 1;
    }
  }

  MEMORY[0x2821F96F8](draggingCopy, v5);
}

- (void)resultViewContentDidScroll:(id)scroll
{
  if (([(SiriSharedUICompactConversationViewHosting *)self->_conversationView isCurrentlyTrackingGesture]& 1) == 0 && [(SiriSharedUICompactConversationViewHosting *)self->_conversationView willAutomaticallyCollapseWhenResultIsScrolled])
  {
    [(SiriSharedUICompactConversationViewHosting *)self->_conversationView transitionToExpandablePlatterStyle:2];

    [(SiriSharedUICompactView *)self _updateExpansionConstraints:0];
  }
}

- (double)maximumHeightForResultView:(id)view
{
  if (self->_isInAmbient)
  {
    return 1.79769313e308;
  }

  delegate = [(SiriSharedUICompactView *)self delegate];
  [delegate maximumHeightForCompactView:self];
  v7 = v6;

  [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer topPadding];
  v9 = v8;
  [(SiriSharedUIViewStackContainerHosting *)self->_viewStackContainer bottomPadding];
  return v7 - (v9 + v10);
}

- (UIEdgeInsets)contentInsetsForResultView:(id)view
{
  hostingView = [(SiriSharedUICompactConversationViewHosting *)self->_conversationView hostingView];
  [hostingView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  hostingView2 = [(SiriSharedUICompactResultViewHosting *)self->_resultView hostingView];
  [hostingView2 frame];
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

- (void)resultViewContentScrolled:(id)scrolled toContentOffset:(CGPoint)offset
{
  y = offset.y;
  v6 = [(SiriSharedUICompactView *)self _instrumentationManager:scrolled];
  [v6 emitUserViewRegionInteractionEventWithViewRegion:2 userViewInteraction:3];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v11 setValue:uUIDString forKey:@"identifier"];

  [v11 setValue:@"ResultView" forKey:@"viewClass"];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:y];
  [v11 setValue:v9 forKey:@"contentOffset"];

  _analytics = [(SiriSharedUICompactView *)self _analytics];
  [_analytics logEventWithType:1456 context:v11];
}

- (void)resultViewContentScrolling:(id)scrolling didBegin:(BOOL)begin
{
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (beginCopy)
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

- (void)setHidesTextRequestView:(BOOL)view
{
  if (self->_hidesTextRequestView != view)
  {
    self->_hidesTextRequestView = view;
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

- (void)_updateBottomPaddingAnimatedWithContext:(id)context alongsideAnimations:(id)animations
{
  contextCopy = context;
  animationsCopy = animations;
  v8 = 14.0;
  if (self->_isInAmbient)
  {
    hidesTextRequestView = [(SiriSharedUICompactView *)self hidesTextRequestView];
    v8 = 14.0;
    if (hidesTextRequestView)
    {
      v8 = 0.0;
    }
  }

  v10 = v8 + self->_bottomContentInset;
  [(NSLayoutConstraint *)self->_textRequestViewBottomConstraint setConstant:v10];
  if ([(SiriSharedUICompactView *)self hidesTextRequestView])
  {
    v11 = _Block_copy(animationsCopy);
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
    v18 = animationsCopy;
    v11 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __87__SiriSharedUICompactView__updateBottomPaddingAnimatedWithContext_alongsideAnimations___block_invoke_2;
    v16[3] = &unk_278354858;
    v16[4] = self;
    v12 = _Block_copy(v16);
  }

  viewStackContainer = self->_viewStackContainer;
  [contextCopy animationDuration];
  -[SiriSharedUIViewStackContainerHosting setBottomPadding:animatedWithDuration:animationOptions:alongsideAnimations:completion:](viewStackContainer, "setBottomPadding:animatedWithDuration:animationOptions:alongsideAnimations:completion:", [contextCopy animationOptions], v11, v12, v10, v14);
  delegate = [(SiriSharedUICompactView *)self delegate];
  [delegate compactView:self didChangeEffectiveBottomContentInsetAnimatedWithContext:contextCopy];
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