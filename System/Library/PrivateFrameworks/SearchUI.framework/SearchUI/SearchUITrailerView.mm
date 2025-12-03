@interface SearchUITrailerView
- (SearchUITrailerView)initWithMediaItem:(id)item cardSectionView:(id)view;
- (SearchUITrailersCardSectionView)cardSectionView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)playTrailer;
@end

@implementation SearchUITrailerView

- (SearchUITrailerView)initWithMediaItem:(id)item cardSectionView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  v21.receiver = self;
  v21.super_class = SearchUITrailerView;
  v8 = [(SearchUITrailerView *)&v21 init];
  if (v8)
  {
    punchout = [itemCopy punchout];
    [(SearchUITrailerView *)v8 setPunchout:punchout];

    [(SearchUITrailerView *)v8 setCardSectionView:viewCopy];
    [(TLKStackView *)v8 setAxis:1];
    [(TLKStackView *)v8 setAlignment:3];
    [(NUIContainerStackView *)v8 setSpacing:4.0];
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v8];
    v10 = objc_opt_new();
    [v10 setVerticalAlignment:3];
    [v10 setHorizontalAlignment:3];
    [(SearchUITrailerView *)v8 setCenteredBoxView:v10];
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v10];
    [(TLKStackView *)v8 addArrangedSubview:v10];
    v11 = objc_opt_new();
    [v11 setUserInteractionEnabled:0];
    LODWORD(v12) = 1148846080;
    [v11 setContentHuggingPriority:0 forAxis:v12];
    [v10 addArrangedSubview:v11];
    thumbnail = [itemCopy thumbnail];
    [v11 updateWithImage:thumbnail fallbackImage:0 needsOverlayButton:1];

    overlayPlayButton = [v11 overlayPlayButton];
    [overlayPlayButton addTarget:v8 forAction:sel_playTrailer];

    overlayPlayButton2 = [v11 overlayPlayButton];
    [overlayPlayButton2 setContainerView:v10];

    overlayPlayButton3 = [v11 overlayPlayButton];
    [(SearchUITrailerView *)v8 setPlayButton:overlayPlayButton3];

    secondaryLabel = [MEMORY[0x1E69D91A0] secondaryLabel];
    title = [itemCopy title];
    [secondaryLabel setText:title];

    footnoteFont = [MEMORY[0x1E69D9138] footnoteFont];
    [secondaryLabel setFont:footnoteFont];

    [(TLKStackView *)v8 addArrangedSubview:secondaryLabel];
    [(SearchUITrailerView *)v8 setTitleLabel:secondaryLabel];
  }

  return v8;
}

- (void)playTrailer
{
  cardSectionView = [(SearchUITrailerView *)self cardSectionView];
  punchout = [(SearchUITrailerView *)self punchout];
  v4 = objc_alloc(MEMORY[0x1E69C9F10]);
  rowModel = [cardSectionView rowModel];
  cardSection = [rowModel cardSection];
  v7 = [v4 initWithCardSection:cardSection destination:punchout triggerEvent:2 actionCardType:1];

  feedbackDelegate = [cardSectionView feedbackDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [feedbackDelegate shouldHandleCardSectionEngagement:v7])
  {
    v9 = objc_opt_new();
    urls = [punchout urls];
    firstObject = [urls firstObject];
    [v9 setUrl:firstObject];

    if (v9)
    {
      v12 = objc_opt_new();
      [v12 setCommand:v9];
      rowModel2 = [cardSectionView rowModel];
      feedbackDelegate2 = [cardSectionView feedbackDelegate];
      v15 = [SearchUIUtilities environmentForDelegate:feedbackDelegate2];
      v16 = [SearchUICommandHandler handlerForButton:v12 rowModel:rowModel2 environment:v15];
      [v16 executeWithTriggerEvent:2];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SearchUITrailerView;
  v5 = [(SearchUITrailerView *)&v10 hitTest:event withEvent:test.x, test.y];
  centeredBoxView = [(SearchUITrailerView *)self centeredBoxView];
  if (v5 == centeredBoxView)
  {
    playButton = [(SearchUITrailerView *)self playButton];
    hitView = [playButton hitView];
  }

  else
  {
    hitView = v5;
  }

  return hitView;
}

- (SearchUITrailersCardSectionView)cardSectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSectionView);

  return WeakRetained;
}

@end