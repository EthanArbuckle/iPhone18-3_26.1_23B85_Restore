@interface PKDiscoveryGalleryView
+ ($7D24B5AD5894795FD85A0EE1D817D743)_welcomeStateForState:(id *)state;
+ (BOOL)isVisibleForSectionsState:(id *)state dataSource:(id)source;
+ (BOOL)isWelcomeCardVisibleForSectionsState:(id *)state;
+ (id)passWelcomeCardMessageAttributedString;
- (BOOL)_requestDismissalIfNecessaryAfterLayoutStateUpdate;
- (BOOL)needsRemoval;
- (CGSize)_cardSize;
- (CGSize)_contentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)frontmostItemIdentifier;
- (PKDiscoveryGalleryView)initWithCardSizeType:(int64_t)type;
- (id)_createPassWelcomeCardView;
- (id)_createPaymentWelcomeCardView;
- (id)cardViewForCardWithItemIdentifier:(id)identifier;
- (unint64_t)_indexForCardViewWithIdentifier:(id)identifier;
- (unint64_t)displayIndex;
- (void)_appStorePressed;
- (void)_pageControlChanged:(id)changed;
- (void)_removeCardView:(id)view animated:(BOOL)animated;
- (void)_reportCurrentDiscoveryCardToDiscoveryService;
- (void)_scanCodePressed;
- (void)_updateCardSizeIfNecessary;
- (void)_updateCardViews;
- (void)_updateCardViewsAnimated:(BOOL)animated overrideFrontmostCardToIdentifier:(id)identifier;
- (void)_updateDiscoveryCardViewsForUpdatedArticleLayouts:(id)layouts overrideFrontmostCardToIdentifier:(id)identifier animated:(BOOL)animated;
- (void)_updatePageControlVisibilityWithDelay:(double)delay;
- (void)_updatePageControlWithDisplayIndex;
- (void)_updateScrollViewToCardIndex:(unint64_t)index animated:(BOOL)animated;
- (void)dealloc;
- (void)discoveryCardViewCTATapped:(id)tapped callToAction:(id)action itemIdentifier:(id)identifier;
- (void)discoveryCardViewRemoveTapped:(id)tapped;
- (void)discoveryCardViewTapped:(id)tapped;
- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setSectionsState:(id *)state;
- (void)updateArticleLayouts:(id)layouts;
- (void)updatePageControlFrame;
@end

@implementation PKDiscoveryGalleryView

+ ($7D24B5AD5894795FD85A0EE1D817D743)_welcomeStateForState:(id *)state
{
  v3 = *(&state->var0 + 16);
  if ((*(state + 24) & 2) != 0)
  {
    v4 = (v3 & 2) == 0;
    if ((v3 & 4) != 0)
    {
      v5 = 0;
    }

    else if (PKBarcodePassWelcomeCardDismissed())
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v4 = 0;
    v5 = ~(v3 >> 1) & 2;
  }

  return (v5 | v4);
}

+ (BOOL)isWelcomeCardVisibleForSectionsState:(id *)state
{
  v3 = *(&state->var0 + 1);
  v7[0] = *&state->var0.var0;
  v7[1] = v3;
  v4 = [self _welcomeStateForState:v7];
  return (v4 | (v4 >> 1)) & 1;
}

+ (BOOL)isVisibleForSectionsState:(id *)state dataSource:(id)source
{
  if (source)
  {
    v5 = *(&state->var0 + 1);
    v10 = *&state->var0.var0;
    v11 = v5;
    sourceCopy = source;
    LOBYTE(self) = [self _welcomeStateForState:&v10];
    articleLayouts = [sourceCopy articleLayouts];

    v8 = ((self & 2 | (([articleLayouts count] != 0) << 8)) != 0) | self;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (PKDiscoveryGalleryView)initWithCardSizeType:(int64_t)type
{
  v38[1] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PKDiscoveryGalleryView;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(PKDiscoveryGalleryView *)&v37 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allActiveDiscoveryCards = v8->_allActiveDiscoveryCards;
    v8->_allActiveDiscoveryCards = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeDiscoveryCards = v8->_activeDiscoveryCards;
    v8->_activeDiscoveryCards = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    displayedCardViews = v8->_displayedCardViews;
    v8->_displayedCardViews = v13;

    v15 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:PKDiscoveryForceIgnoreCEOCards() displayType:0];
    v16 = *&v8->_articleLayoutsUpdatedAfterEnteringForegroundActive;
    *&v8->_articleLayoutsUpdatedAfterEnteringForegroundActive = v15;

    v8->_welcomeCardTemplateInformation = type;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKDiscoveryGalleryView *)v8 setBackgroundColor:clearColor];

    v18 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v4, v5, v6, v7}];
    horizontalScrollView = v8->_horizontalScrollView;
    v8->_horizontalScrollView = v18;

    [(UIScrollView *)v8->_horizontalScrollView setDelegate:v8];
    [(UIScrollView *)v8->_horizontalScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v8->_horizontalScrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v8->_horizontalScrollView setPagingEnabled:1];
    [(UIScrollView *)v8->_horizontalScrollView setScrollsToTop:0];
    [(UIScrollView *)v8->_horizontalScrollView setClipsToBounds:0];
    [(PKDiscoveryGalleryView *)v8 addSubview:v8->_horizontalScrollView];
    v20 = [objc_alloc(MEMORY[0x1E69DCD10]) initWithFrame:{v4, v5, v6, v7}];
    pageControl = v8->_pageControl;
    v8->_pageControl = v20;

    [(UIPageControl *)v8->_pageControl addTarget:v8 action:sel__pageControlChanged_ forControlEvents:4096];
    [(UIPageControl *)v8->_pageControl setHidden:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIPageControl *)v8->_pageControl setCurrentPageIndicatorTintColor:labelColor];
    v23 = v8->_pageControl;
    v24 = [labelColor colorWithAlphaComponent:0.3];
    [(UIPageControl *)v23 setPageIndicatorTintColor:v24];

    [(PKDiscoveryGalleryView *)v8 _updatePageControlVisibilityWithDelay:0.0];
    v25 = +[PKUIForegroundActiveArbiter sharedInstance];
    LOWORD(v8->_lastReportedDiscoveryItemIdentifier) = [v25 registerObserver:v8];

    objc_initWeak(&location, v8);
    v38[0] = objc_opt_class();
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __47__PKDiscoveryGalleryView_initWithCardSizeType___block_invoke;
    v34 = &unk_1E801D4A0;
    objc_copyWeak(&v35, &location);
    v27 = [(PKDiscoveryGalleryView *)v8 registerForTraitChanges:v26 withHandler:&v31];

    [(PKDiscoveryGalleryView *)v8 sizeThatFits:1.79769313e308, 1.79769313e308, v31, v32, v33, v34];
    [(PKDiscoveryGalleryView *)v8 setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v28, v29];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __47__PKDiscoveryGalleryView_initWithCardSizeType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 traitCollection];
  v10 = [v6 preferredContentSizeCategory];

  v7 = [v5 preferredContentSizeCategory];

  if (v7 != v10)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setNeedsLayout];
    }
  }
}

- (void)dealloc
{
  [(UIScrollView *)self->_horizontalScrollView setDelegate:0];
  [(NSMutableArray *)self->_allActiveDiscoveryCards enumerateObjectsUsingBlock:&__block_literal_global_166];
  v3 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = PKDiscoveryGalleryView;
  [(PKDiscoveryGalleryView *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKDiscoveryGalleryView *)self _cardSize:fits.width];
  v5 = v4;
  v7 = v6 + 6.0 + 6.0;
  v8 = [(NSMutableArray *)self->_allActiveDiscoveryCards count];
  v9 = 39.0;
  if (v8 <= 1)
  {
    v9 = 0.0;
  }

  v10 = v5 + v9;
  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  if (![(PKDiscoveryGalleryView *)self isAnimatingCard])
  {
    v33.receiver = self;
    v33.super_class = PKDiscoveryGalleryView;
    [(PKDiscoveryGalleryView *)&v33 layoutSubviews];
    [(PKDiscoveryGalleryView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PKDiscoveryGalleryView *)self sizeThatFits:v7, 1.79769313e308];
    v13 = v10 == v12 && v8 == v11;
    if (v13)
    {
      v14 = v10;
    }

    else
    {
      v15 = v11;
      v14 = v12;
      [(PKDiscoveryGalleryView *)self setBounds:v4, v6, v11, v12];
      v8 = v15;
    }

    [(UIScrollView *)self->_horizontalScrollView contentSize];
    v17 = v16;
    v19 = v18;
    [(PKDiscoveryGalleryView *)self _contentSize];
    v21 = v20;
    v23 = v22;
    isScrollAnimating = [(UIScrollView *)self->_horizontalScrollView isScrollAnimating];
    if (isScrollAnimating)
    {
      v25 = v17;
    }

    else
    {
      v25 = v21;
    }

    if (isScrollAnimating)
    {
      v23 = v19;
    }

    v26 = fmax(v14, v23);
    [(UIScrollView *)self->_horizontalScrollView frame];
    v35.origin.x = v4;
    v35.origin.y = v6;
    v35.size.width = v8;
    v35.size.height = v26;
    if (!CGRectEqualToRect(v34, v35))
    {
      [(UIScrollView *)self->_horizontalScrollView setFrame:v4, v6, v8, v26];
    }

    if (v17 != v31 || v19 != v23)
    {
      [(UIScrollView *)self->_horizontalScrollView setContentSize:?];
    }

    [(PKDiscoveryGalleryView *)self _cardSize];
    PKFloatRoundToPixel();
    displayedCardViews = self->_displayedCardViews;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __40__PKDiscoveryGalleryView_layoutSubviews__block_invoke;
    v32[3] = &__block_descriptor_72_e36_v32__0__PKDiscoveryCardView_8Q16_B24l;
    *&v32[4] = v4;
    *&v32[5] = v6;
    *&v32[6] = v8;
    *&v32[7] = v14;
    v32[8] = v29;
    [(NSArray *)displayedCardViews enumerateObjectsUsingBlock:v32];
    [(PKDiscoveryGalleryView *)self _updatePageControlVisibilityWithDelay:0.0];
    if (!v13)
    {
      WeakRetained = objc_loadWeakRetained(&self->_subheaderDelegate);
      [WeakRetained setNeedsUpdateForGroupStackViewSectionSubheaderView:self];
    }
  }
}

void __40__PKDiscoveryGalleryView_layoutSubviews__block_invoke(double *a1, void *a2, unint64_t a3)
{
  v3 = a1[7];
  v4 = a1[6];
  v5 = a1[8] + a3 * v4;
  v8 = a2;
  [v8 sizeThatFits:{v4, v3}];
  [v8 setFrame:{v5, 0.0, v6, v7}];
}

- (void)updateArticleLayouts:(id)layouts
{
  v18 = *MEMORY[0x1E69E9840];
  layoutsCopy = layouts;
  v5 = layoutsCopy;
  if (!self->_pendingDeletes)
  {
    v6 = *(&self->_layoutState.cards.welcome + 1);
    if ([layoutsCopy count])
    {
      v7 = (*(&self->_layoutState.cards.welcome + 1) & 0xFE) + 1;
    }

    else
    {
      v7 = *(&self->_layoutState.cards.welcome + 1) & 0xFE;
    }

    *(&self->_layoutState.cards.welcome + 1) = v7;
    [(PKDiscoveryGalleryView *)self _requestDismissalIfNecessaryAfterLayoutStateUpdate];
    if (*(&self->_layoutState.cards.welcome + 1) & 1) != 0 || (v6)
    {
      if (LOBYTE(self->_lastTimeForegroundActive))
      {
        itemIdentifier = 0;
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v9 = v5;
        itemIdentifier = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (itemIdentifier)
        {
          v10 = *v14;
          while (2)
          {
            for (i = 0; i != itemIdentifier; i = i + 1)
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(v9);
              }

              v12 = *(*(&v13 + 1) + 8 * i);
              if ([v12 hasRequestedBadge])
              {
                itemIdentifier = [v12 itemIdentifier];
                goto LABEL_20;
              }
            }

            itemIdentifier = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
            if (itemIdentifier)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      [(PKDiscoveryGalleryView *)self _updateDiscoveryCardViewsForUpdatedArticleLayouts:v5 overrideFrontmostCardToIdentifier:itemIdentifier animated:1, v13];
    }

    LOBYTE(self->_lastTimeForegroundActive) = 1;
  }
}

- (id)cardViewForCardWithItemIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_allActiveDiscoveryCards;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_19;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v19;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v18 + 1) + 8 * i);
      articleLayout = [v10 articleLayout];
      itemIdentifier = [articleLayout itemIdentifier];
      v13 = identifierCopy;
      v14 = v13;
      if (itemIdentifier == v13)
      {

LABEL_12:
        articleLayout = v7;
        v7 = v10;
LABEL_14:

        continue;
      }

      if (!identifierCopy || !itemIdentifier)
      {

        goto LABEL_14;
      }

      v15 = [itemIdentifier isEqualToString:v13];

      if (v15)
      {
        goto LABEL_12;
      }
    }

    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v6);
LABEL_19:

  return v7;
}

- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state
{
  arbiterCopy = arbiter;
  v7 = BYTE1(self->_lastReportedDiscoveryItemIdentifier);
  LOWORD(self->_lastReportedDiscoveryItemIdentifier) = state;
  if (v7)
  {
    if ((*&state & 0x100) == 0)
    {
      LOBYTE(self->_cardSize) = 3;
    }
  }

  else
  {
    v11 = arbiterCopy;
    if ((*&state & 0x100) != 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v9 = Current;
      v10 = *(&self->_layoutState + 1);
      if (v10 && Current - *&self->_foregroundState.foreground > 300.0)
      {
        *(&self->_layoutState + 1) = 0;
      }

      *&self->_foregroundState.foreground = v9;
      LOBYTE(self->_lastTimeForegroundActive) = 0;
      arbiterCopy = v11;
      if (!LOBYTE(self->_cardSize))
      {
        [(PKDiscoveryGalleryView *)self _updateCardSizeIfNecessary];
        arbiterCopy = v11;
      }

      LOBYTE(self->_cardSize) = 2;
    }

    else
    {
      LOBYTE(self->_cardSize) = 0;
      [(PKDiscoveryGalleryView *)self _updateCardSizeIfNecessary];
      arbiterCopy = v11;
    }
  }
}

- (void)_updateCardSizeIfNecessary
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(&self->_layoutState.cards.welcome + 3) == 1)
  {
    if (PKDiscoveryForceIgnoreCEOCards())
    {
      *(&self->_layoutState.cards.welcome + 3) = 0;
      return;
    }

    articleLayouts = [*&self->_visibilityState articleLayouts];
    v4 = [articleLayouts pk_containsObjectPassingTest:&__block_literal_global_48];

    welcomeCardTemplateInformation = self->_welcomeCardTemplateInformation;
    if ((v4 & 1) != 0 || self->_paymentWelcomeView)
    {
      if (!welcomeCardTemplateInformation)
      {
LABEL_15:
        *(&self->_layoutState.cards.welcome + 3) = 0;
        [(PKDiscoveryGalleryView *)self setNeedsLayout];
        [(PKDiscoveryGalleryView *)self layoutIfNeeded];
        return;
      }
    }

    else
    {
      passWelcomeView = self->_passWelcomeView;
      if (passWelcomeView)
      {
        v12 = 1;
      }

      else
      {
        v12 = welcomeCardTemplateInformation == 1;
      }

      if (!v12)
      {
        self->_welcomeCardTemplateInformation = 1;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = self->_allActiveDiscoveryCards;
        v14 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v6);
              }

              [*(*(&v22 + 1) + 8 * i) setCardSize:1];
            }

            v15 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
          }

          while (v15);
        }

        goto LABEL_14;
      }

      if (passWelcomeView)
      {
        v13 = welcomeCardTemplateInformation == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        goto LABEL_15;
      }
    }

    self->_welcomeCardTemplateInformation = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_allActiveDiscoveryCards;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (j = 0; j != v8; ++j)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v18 + 1) + 8 * j) setCardSize:{0, v18}];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v8);
    }

LABEL_14:

    goto LABEL_15;
  }
}

- (void)_updateDiscoveryCardViewsForUpdatedArticleLayouts:(id)layouts overrideFrontmostCardToIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v43 = *MEMORY[0x1E69E9840];
  layoutsCopy = layouts;
  identifierCopy = identifier;
  v8 = [layoutsCopy count];
  v9 = v8 != [(NSMutableArray *)self->_activeDiscoveryCards count];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = layoutsCopy;
  v11 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        itemIdentifier = [v15 itemIdentifier];
        v17 = [(PKDiscoveryGalleryView *)self _indexForCardViewWithIdentifier:itemIdentifier];

        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [[PKDiscoveryCardView alloc] initWithArticleLayout:v15 cardSizeType:self->_welcomeCardTemplateInformation];
          [(PKDiscoveryCardView *)v18 setDelegate:self];
          [(UIScrollView *)self->_horizontalScrollView addSubview:v18];
          v9 = 1;
        }

        else
        {
          v18 = [(NSMutableArray *)self->_allActiveDiscoveryCards objectAtIndex:v17];
          articleLayout = [(PKDiscoveryCardView *)v18 articleLayout];
          [(PKDiscoveryCardView *)v18 setArticleLayout:v15];
          if (v9)
          {
            v9 = 1;
          }

          else
          {
            v9 = [articleLayout isEqualForUI:v15] ^ 1;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          actionOnDismiss = [v15 actionOnDismiss];
          [(PKDiscoveryCardView *)v18 setDismissAction:actionOnDismiss];
        }

        [(NSMutableArray *)v10 addObject:v18];
      }

      v12 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v12);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = self->_activeDiscoveryCards;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        if ([(NSMutableArray *)v10 indexOfObjectIdenticalTo:v26]== 0x7FFFFFFFFFFFFFFFLL)
        {
          [v26 setDelegate:0];
          [v26 removeFromSuperview];
          v9 = 1;
        }
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }

  activeDiscoveryCards = self->_activeDiscoveryCards;
  self->_activeDiscoveryCards = v10;

  if (v9)
  {
    v28 = identifierCopy;
    [(PKDiscoveryGalleryView *)self _updateCardViewsAnimated:animatedCopy overrideFrontmostCardToIdentifier:identifierCopy];
LABEL_30:
    [(PKDiscoveryGalleryView *)self _reportCurrentDiscoveryCardToDiscoveryService];
    goto LABEL_31;
  }

  v28 = identifierCopy;
  if (identifierCopy)
  {
    v29 = [(PKDiscoveryGalleryView *)self _indexForCardViewWithIdentifier:identifierCopy];
    if (v29 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PKDiscoveryGalleryView *)self _updateScrollViewToCardIndex:v29 animated:animatedCopy];
      goto LABEL_30;
    }
  }

LABEL_31:
}

- (void)_updateCardViewsAnimated:(BOOL)animated overrideFrontmostCardToIdentifier:(id)identifier
{
  animatedCopy = animated;
  identifierCopy = identifier;
  displayIndex = [(PKDiscoveryGalleryView *)self displayIndex];
  v8 = [(NSMutableArray *)self->_allActiveDiscoveryCards count];
  if (identifierCopy)
  {
    itemIdentifier = identifierCopy;
  }

  else
  {
    if (v8)
    {
      v10 = displayIndex >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      itemIdentifier = 0;
    }

    else
    {
      v11 = [(NSMutableArray *)self->_allActiveDiscoveryCards objectAtIndexedSubscript:displayIndex];
      articleLayout = [v11 articleLayout];
      itemIdentifier = [articleLayout itemIdentifier];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKDiscoveryGalleryView__updateCardViewsAnimated_overrideFrontmostCardToIdentifier___block_invoke;
  aBlock[3] = &unk_1E8012C50;
  aBlock[4] = self;
  v22 = displayIndex;
  v13 = itemIdentifier;
  v21 = v13;
  v14 = _Block_copy(aBlock);
  v15 = v14;
  if (animatedCopy)
  {
    v16 = MEMORY[0x1E69DD250];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__PKDiscoveryGalleryView__updateCardViewsAnimated_overrideFrontmostCardToIdentifier___block_invoke_2;
    v19[3] = &unk_1E8010970;
    v19[4] = self;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__PKDiscoveryGalleryView__updateCardViewsAnimated_overrideFrontmostCardToIdentifier___block_invoke_3;
    v17[3] = &unk_1E80109C0;
    v17[4] = self;
    v18 = v14;
    [v16 pkui_animateUsingOptions:4 delay:v19 velocity:v17 animations:0.0 completion:0.0];
  }

  else
  {
    v14[2](v14);
  }
}

uint64_t __85__PKDiscoveryGalleryView__updateCardViewsAnimated_overrideFrontmostCardToIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCardViews];
  v2 = *(a1 + 48);
  if (v2 >= [*(*(a1 + 32) + 424) count] - 1)
  {
    v3 = [*(*(a1 + 32) + 424) count] - 1;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  v4 = [*(a1 + 32) _indexForCardViewWithIdentifier:*(a1 + 40)];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  [*(a1 + 32) _updateScrollViewToCardIndex:v5 animated:0];
  [*(a1 + 32) _updatePageControlVisibilityWithDelay:0.32];
  [*(a1 + 32) _updatePageControlWithDisplayIndex];
  v6 = *(a1 + 32);

  return [v6 _reportCurrentDiscoveryCardToDiscoveryService];
}

uint64_t __85__PKDiscoveryGalleryView__updateCardViewsAnimated_overrideFrontmostCardToIdentifier___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__PKDiscoveryGalleryView__updateCardViewsAnimated_overrideFrontmostCardToIdentifier___block_invoke_4;
  v3[3] = &unk_1E8010970;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] pkui_animateUsingOptions:4 delay:v3 velocity:0 animations:0.0 completion:0.0];
}

- (void)_updateCardViews
{
  v35 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_allActiveDiscoveryCards removeAllObjects];
  welcome = self->_layoutState.cards.welcome;
  if ((welcome & 1) != 0 && !self->_paymentWelcomeView)
  {
    _createPaymentWelcomeCardView = [(PKDiscoveryGalleryView *)self _createPaymentWelcomeCardView];
    paymentWelcomeView = self->_paymentWelcomeView;
    self->_paymentWelcomeView = _createPaymentWelcomeCardView;

    [(UIScrollView *)self->_horizontalScrollView addSubview:self->_paymentWelcomeView];
    v5 = self->_layoutState.cards.welcome;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v5 = self->_layoutState.cards.welcome;
  }

  v6 = (*&v5 >> 1) & 1;
  if ((*&v5 & 2) != 0)
  {
    passWelcomeView = self->_passWelcomeView;
    if (passWelcomeView)
    {
      if (*(&self->_layoutState.cards.welcome + 2))
      {
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __42__PKDiscoveryGalleryView__updateCardViews__block_invoke;
        aBlock[3] = &unk_1E801D528;
        objc_copyWeak(&v32, &location);
        v8 = _Block_copy(aBlock);
        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
        passWelcomeView = self->_passWelcomeView;
      }

      else
      {
        v8 = 0;
      }

      [(PKDiscoveryCardView *)passWelcomeView setDismissAction:v8];
    }

    else
    {
      _createPassWelcomeCardView = [(PKDiscoveryGalleryView *)self _createPassWelcomeCardView];
      v12 = self->_passWelcomeView;
      self->_passWelcomeView = _createPassWelcomeCardView;

      [(UIScrollView *)self->_horizontalScrollView addSubview:self->_passWelcomeView];
      v4 = 1;
    }
  }

  if (*(&self->_layoutState.cards.welcome + 1))
  {
    v26 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = self->_activeDiscoveryCards;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (!v14)
    {
      goto LABEL_30;
    }

    v15 = v14;
    v16 = *v28;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        priority = [v18 priority];
        if ((welcome & 1) == 0)
        {
          goto LABEL_23;
        }

        if ([(PKDiscoveryCardView *)self->_paymentWelcomeView priority]>= priority)
        {
          [(NSMutableArray *)self->_allActiveDiscoveryCards addObject:self->_paymentWelcomeView];
LABEL_23:
          welcome = 0;
          if ((v6 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        welcome = 1;
        if ((v6 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_24:
        if ([(PKDiscoveryCardView *)self->_passWelcomeView priority]< priority)
        {
          v6 = 1;
          goto LABEL_28;
        }

        [(NSMutableArray *)self->_allActiveDiscoveryCards addObject:self->_passWelcomeView];
LABEL_27:
        v6 = 0;
LABEL_28:
        [(NSMutableArray *)self->_allActiveDiscoveryCards addObject:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (!v15)
      {
LABEL_30:

        v4 = v26;
        break;
      }
    }
  }

  if (welcome)
  {
    [(NSMutableArray *)self->_allActiveDiscoveryCards addObject:self->_paymentWelcomeView];
    if ((v6 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v6)
  {
LABEL_35:
    [(NSMutableArray *)self->_allActiveDiscoveryCards addObject:self->_passWelcomeView];
  }

LABEL_36:
  if (v4 && self->_welcomeCardTemplateInformation == 1 && (PKDiscoveryForceIgnoreCEOCards() & 1) == 0)
  {
    *(&self->_layoutState.cards.welcome + 3) = 1;
    [(PKDiscoveryGalleryView *)self _updateCardSizeIfNecessary];
  }

  _shouldReverseLayoutDirection = [(PKDiscoveryGalleryView *)self _shouldReverseLayoutDirection];
  allActiveDiscoveryCards = self->_allActiveDiscoveryCards;
  if (_shouldReverseLayoutDirection)
  {
    reverseObjectEnumerator = [(NSMutableArray *)allActiveDiscoveryCards reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    displayedCardViews = self->_displayedCardViews;
    self->_displayedCardViews = allObjects;
  }

  else
  {
    v25 = [(NSMutableArray *)allActiveDiscoveryCards copy];
    reverseObjectEnumerator = self->_displayedCardViews;
    self->_displayedCardViews = v25;
  }

  [(PKDiscoveryGalleryView *)self setNeedsLayout];
  [(PKDiscoveryGalleryView *)self layoutIfNeeded];
}

void __42__PKDiscoveryGalleryView__updateCardViews__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    PKSetBarcodePassWelcomeCardDismissed();
    v4[2](v4, 1, 0);
  }
}

- (CGSize)_cardSize
{
  welcomeCardTemplateInformation = self->_welcomeCardTemplateInformation;
  +[PKDiscoveryCardView compressedWidth];
  v4 = v3;
  if (welcomeCardTemplateInformation)
  {
    v5 = 120.0;
  }

  else
  {
    +[PKDiscoveryCardView compressedHeight];
    v5 = v6;
  }

  v7 = v4;
  result.height = v5;
  result.width = v7;
  return result;
}

- (CGSize)_contentSize
{
  [(PKDiscoveryGalleryView *)self bounds];
  v4 = v3;
  v6 = v5 * [(NSArray *)self->_displayedCardViews count];
  v7 = v4;
  result.height = v7;
  result.width = v6;
  return result;
}

- (unint64_t)_indexForCardViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  allActiveDiscoveryCards = self->_allActiveDiscoveryCards;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKDiscoveryGalleryView__indexForCardViewWithIdentifier___block_invoke;
  v9[3] = &unk_1E801D550;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)allActiveDiscoveryCards enumerateObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __58__PKDiscoveryGalleryView__indexForCardViewWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 articleLayout];
  v8 = [v7 itemIdentifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)_removeCardView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke;
  aBlock[3] = &unk_1E8013D60;
  aBlock[4] = self;
  v7 = viewCopy;
  v13 = v7;
  v14 = animatedCopy;
  v8 = _Block_copy(aBlock);
  if (animatedCopy)
  {
    superview = [v7 superview];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke_6;
    v10[3] = &unk_1E8010AD8;
    v11 = v8;
    [PKPassDeleteAnimationController performPassbookDeleteWithView:v7 inSuperview:superview completion:v10];
  }

  else
  {
    [v7 removeFromSuperview];
    v8[2](v8);
  }
}

void __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 472);
  v2 = [*(a1 + 40) articleLayout];
  v3 = *(a1 + 32);
  v4 = [v2 itemIdentifier];
  v5 = [v3 _indexForCardViewWithIdentifier:v4];

  v6 = [*(a1 + 32) displayIndex];
  v7 = [*(*(a1 + 32) + 408) count];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5 == v6)
    {
      if (v5 >= v7 - 1)
      {
        v6 = v7 - 1;
      }

      else
      {
        v6 = v5;
      }
    }

    else if (v6)
    {
      if (v5 < v6 || v5 >= v7)
      {
        if (v6 - 1 >= v7 - 1)
        {
          v6 = v7 - 1;
        }

        else
        {
          --v6;
        }
      }
    }
  }

  [*(a1 + 32) _updateScrollViewToCardIndex:v6 animated:*(a1 + 48)];
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 448);
  if (v9 == v11)
  {
    *(v10 + 448) = 0;

    *(*(a1 + 32) + 480) &= ~1u;
    v14 = 1;
  }

  else
  {
    v12 = *(v10 + 440);
    if (v9 == v12)
    {
      *(v10 + 440) = 0;

      *(*(a1 + 32) + 480) &= ~2u;
      v14 = 1;
      PKSetBarcodePassWelcomeCardDismissed();
    }

    else
    {
      [*(v10 + 416) removeObject:?];
      v13 = [*(*(a1 + 32) + 416) count];
      v14 = 0;
      v15 = *(*(a1 + 32) + 481) & 0xFE;
      if (v13)
      {
        ++v15;
      }

      *(*(a1 + 32) + 481) = v15;
    }
  }

  v16 = *(a1 + 32);
  if ((*(v16 + 481) & 1) == 0 && (*(v16 + 480) & 2) == 0 && (*(v16 + 480) & 1) == 0)
  {
    v17 = [MEMORY[0x1E69B87F0] sharedInstance];
    [v17 removedAllDiscoveryItems];

    v16 = *(a1 + 32);
  }

  [*(v16 + 408) removeObject:*(a1 + 40)];
  [*(a1 + 40) setDelegate:0];
  v18 = [*(*(a1 + 32) + 544) articleLayouts];
  v19 = [v18 pk_arrayByRemovingObject:v2];

  if (!*(*(a1 + 32) + 528) && (v14 | [v2 entitledToForceLargeCard]) == 1)
  {
    if ([*(*(a1 + 32) + 544) isMiniCardsAllowed])
    {
      if (([v19 pk_containsObjectPassingTest:&__block_literal_global_56] & 1) == 0)
      {
        v20 = *(a1 + 32);
        if (!*(v20 + 448) && !*(v20 + 440))
        {
          *(v20 + 483) = 1;
        }
      }
    }
  }

  if (([*(a1 + 32) _requestDismissalIfNecessaryAfterLayoutStateUpdate] & 1) == 0)
  {
    [*(a1 + 32) layoutIfNeeded];
    if (*(a1 + 48) == 1)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke_3;
      v28[3] = &unk_1E8010970;
      v28[4] = *(a1 + 32);
      [MEMORY[0x1E69DD250] pkui_animateUsingOptions:4 animations:v28 completion:0];
    }

    else
    {
      [*(a1 + 32) _updateCardViews];
      [*(a1 + 32) layoutIfNeeded];
    }

    [*(a1 + 32) _updatePageControlVisibilityWithDelay:0.65];
  }

  v21 = [*(a1 + 40) dismissAction];
  v22 = v21;
  if (v21)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke_4;
    v26[3] = &unk_1E801D578;
    v26[4] = *(a1 + 32);
    v27 = v14;
    (*(v21 + 16))(v21, v26);
  }

  else
  {
    --*(*(a1 + 32) + 472);
    v23 = *(a1 + 32);
    if (*(v23 + 472))
    {
      v24 = 1;
    }

    else
    {
      v24 = v14;
    }

    if ((v24 & 1) == 0)
    {
      v25 = [*(v23 + 544) articleLayouts];
      [v23 updateArticleLayouts:v25];
    }
  }
}

uint64_t __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 entitledToForceLargeCard])
  {
    v3 = [v2 hasHitMaxLargeViewCount] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateCardViews];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke_4(uint64_t a1, uint64_t a2, char a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke_5;
  v3[3] = &unk_1E8019910;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke_5(uint64_t a1)
{
  --*(*(a1 + 32) + 472);
  v1 = *(a1 + 32);
  if (!*(v1 + 472) && (*(a1 + 40) & 1) == 0)
  {
    if ((*(a1 + 41) & 1) == 0)
    {
      if ([*(v1 + 408) count])
      {
        return;
      }

      v1 = *(a1 + 32);
    }

    v3 = [*(v1 + 544) articleLayouts];
    [v1 updateArticleLayouts:v3];
  }
}

uint64_t __51__PKDiscoveryGalleryView__removeCardView_animated___block_invoke_6(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (BOOL)_requestDismissalIfNecessaryAfterLayoutStateUpdate
{
  needsRemoval = [(PKDiscoveryGalleryView *)self needsRemoval];
  if (needsRemoval)
  {
    WeakRetained = objc_loadWeakRetained(&self->_subheaderDelegate);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setNeedsUpdateForGroupStackViewSectionSubheaderView:self];
    }
  }

  return needsRemoval;
}

- (void)_updateScrollViewToCardIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  _shouldReverseLayoutDirection = [(PKDiscoveryGalleryView *)self _shouldReverseLayoutDirection];
  v8 = [(NSArray *)self->_displayedCardViews count];
  indexCopy = v8 - 1;
  v10 = v8 - 1 - index;
  if (v8 - 1 >= index)
  {
    indexCopy = index;
  }

  if (!v8)
  {
    v10 = 0;
  }

  if (_shouldReverseLayoutDirection)
  {
    indexCopy = v10;
  }

  v11 = indexCopy;
  [(UIScrollView *)self->_horizontalScrollView bounds];
  v12 = CGRectGetWidth(v15) * v11;
  horizontalScrollView = self->_horizontalScrollView;

  [(UIScrollView *)horizontalScrollView setContentOffset:animatedCopy animated:v12, 0.0];
}

- (void)_pageControlChanged:(id)changed
{
  displayIndex = [(PKDiscoveryGalleryView *)self displayIndex];
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  if (displayIndex != currentPage)
  {
    [(PKDiscoveryGalleryView *)self _updateScrollViewToCardIndex:currentPage animated:1];

    [(PKDiscoveryGalleryView *)self _reportCurrentDiscoveryCardToDiscoveryService];
  }
}

- (void)updatePageControlFrame
{
  [(PKDiscoveryGalleryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKDiscoveryGalleryView *)self _cardSize:*&v3];
  v12 = v11 + -5.0;
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectDivide(v15, &slice, &v13, v12, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UIPageControl *)self->_pageControl setFrame:?];
}

- (void)_updatePageControlWithDisplayIndex
{
  displayIndex = [(PKDiscoveryGalleryView *)self displayIndex];
  if (displayIndex != [(UIPageControl *)self->_pageControl currentPage])
  {
    [(UIPageControl *)self->_pageControl setCurrentPage:displayIndex];

    [(PKDiscoveryGalleryView *)self _reportCurrentDiscoveryCardToDiscoveryService];
  }
}

- (void)_updatePageControlVisibilityWithDelay:(double)delay
{
  v5 = [(NSMutableArray *)self->_allActiveDiscoveryCards count];
  [(UIPageControl *)self->_pageControl setHidden:v5 < 2];
  if (v5 != [(UIPageControl *)self->_pageControl numberOfPages])
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:v5];
  }

  if (v5 >= 2)
  {
    [(PKDiscoveryGalleryView *)self addSubview:self->_pageControl];
  }

  else
  {
    [(UIPageControl *)self->_pageControl removeFromSuperview];
  }

  [(PKDiscoveryGalleryView *)self updatePageControlFrame];
  layer = [(UIPageControl *)self->_pageControl layer];
  [layer opacity];
  v6 = v5 > 1;
  v7 = *&v8;
  HIDWORD(v8) = 0;
  if (v5 <= 1)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  if (v7 == v9)
  {
    *&v8 = v6;
    [layer setOpacity:v8];
  }

  else
  {
    v10 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
    [v10 pkui_updateForAdditiveAnimationFromScalar:v7 toScalar:v9];
    [v10 setBeginTime:delay];
    *&v11 = v6;
    [layer setOpacity:v11];
    if (v10)
    {
      v12 = [layer pkui_addAdditiveAnimation:v10];
    }
  }
}

- (void)_reportCurrentDiscoveryCardToDiscoveryService
{
  if (BYTE1(self->_lastReportedDiscoveryItemIdentifier) != 1)
  {
    return;
  }

  v3 = [(NSMutableArray *)self->_allActiveDiscoveryCards count];
  displayIndex = [(PKDiscoveryGalleryView *)self displayIndex];
  if (v3 < 1)
  {
    return;
  }

  v5 = displayIndex;
  if (displayIndex < 0 || displayIndex >= v3)
  {
    return;
  }

  v17 = [(NSMutableArray *)self->_allActiveDiscoveryCards objectAtIndex:displayIndex];
  articleLayout = [(PKDiscoveryCardView *)v17 articleLayout];
  card = [articleLayout card];
  callToAction = [card callToAction];
  action = [callToAction action];

  itemIdentifier = [articleLayout itemIdentifier];
  if (v17 == self->_paymentWelcomeView || v17 == self->_passWelcomeView)
  {
    v15 = *&self->_visibilityState;
    item = [articleLayout item];
    [v15 displayedDiscoveryItem:item isWelcomeCard:1 afterSwipingToCard:v5 != 0 multipleStoryCardsAvailable:v3 > 1 callToAction:action cardSize:self->_welcomeCardTemplateInformation];

    v14 = *(&self->_layoutState + 1);
    *(&self->_layoutState + 1) = 0;
    goto LABEL_11;
  }

  if (([itemIdentifier isEqualToString:*(&self->_layoutState + 1)] & 1) == 0)
  {
    v11 = *&self->_visibilityState;
    item2 = [articleLayout item];
    [v11 displayedDiscoveryItem:item2 isWelcomeCard:0 afterSwipingToCard:v5 != 0 multipleStoryCardsAvailable:v3 > 1 callToAction:action cardSize:self->_welcomeCardTemplateInformation];

    v13 = itemIdentifier;
    v14 = *(&self->_layoutState + 1);
    *(&self->_layoutState + 1) = v13;
LABEL_11:
  }
}

- (unint64_t)displayIndex
{
  _shouldReverseLayoutDirection = [(PKDiscoveryGalleryView *)self _shouldReverseLayoutDirection];
  [(UIScrollView *)self->_horizontalScrollView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NSMutableArray *)self->_allActiveDiscoveryCards count];
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  v13 = fmax(fmin(CGRectGetMidX(v16) / v9, (v12 - 1)), 0.0);
  if (_shouldReverseLayoutDirection)
  {
    v14 = [(NSArray *)self->_displayedCardViews count];
    if (v14)
    {
      return v14 + ~v13;
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

- (NSString)frontmostItemIdentifier
{
  if ([(NSMutableArray *)self->_allActiveDiscoveryCards count])
  {
    v3 = [(NSMutableArray *)self->_allActiveDiscoveryCards objectAtIndexedSubscript:[(PKDiscoveryGalleryView *)self displayIndex]];
    articleLayout = [v3 articleLayout];
    itemIdentifier = [articleLayout itemIdentifier];
  }

  else
  {
    itemIdentifier = 0;
  }

  return itemIdentifier;
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (self->_horizontalScrollView == scroll)
  {
    if (([scroll isScrollAnimating] & 1) == 0)
    {
      [(PKDiscoveryGalleryView *)self _updatePageControlWithDisplayIndex];
    }

    [(PKDiscoveryGalleryView *)self setNeedsLayout];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (self->_horizontalScrollView == dragging && !decelerate)
  {
    [(PKDiscoveryGalleryView *)self _updatePageControlWithDisplayIndex];

    [(PKDiscoveryGalleryView *)self setNeedsLayout];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->_horizontalScrollView == decelerating)
  {
    [(PKDiscoveryGalleryView *)self _updatePageControlWithDisplayIndex];

    [(PKDiscoveryGalleryView *)self setNeedsLayout];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  if (self->_horizontalScrollView == animation)
  {
    [(PKDiscoveryGalleryView *)self _contentSize];
    v5 = v4;
    v7 = v6;
    [(UIScrollView *)self->_horizontalScrollView contentSize];
    if (v5 != v9 || v7 != v8)
    {
      [(UIScrollView *)self->_horizontalScrollView setContentSize:v5, v7];
    }

    [(PKDiscoveryGalleryView *)self _updatePageControlWithDisplayIndex];

    [(PKDiscoveryGalleryView *)self setNeedsLayout];
  }
}

- (void)discoveryCardViewTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_subheaderDelegate);
  if (WeakRetained)
  {
    articleLayout = [tappedCopy articleLayout];
    v6 = [[PKDiscoveryArticleViewController alloc] initWithArticleLayout:articleLayout referrerIdentifier:0 cardSize:self->_welcomeCardTemplateInformation];
    v7 = [[PKNavigationController alloc] initWithRootViewController:v6];
    [(PKDiscoveryArticleViewController *)v6 setDelegate:self];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = tappedCopy;
      callToActionTappedOverride = [v8 callToActionTappedOverride];
      [(PKDiscoveryArticleViewController *)v6 setCallToActionTappedOverride:callToActionTappedOverride];

      v10 = [(PKDiscoveryArticleViewController *)v6 defaultZoomTransitionForDiscoveryCardView:v8];

      [(PKNavigationController *)v7 setPreferredTransition:v10];
    }

    [WeakRetained groupStackViewSectionSubheaderView:self transitionToViewController:v7];
    v11 = [(NSMutableArray *)self->_allActiveDiscoveryCards indexOfObject:tappedCopy]!= 0;
    v12 = [(NSMutableArray *)self->_activeDiscoveryCards count];
    if (self->_passWelcomeView)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = v12;
    }

    if (self->_paymentWelcomeView)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = v13;
    }

    card = [articleLayout card];
    callToAction = [card callToAction];
    action = [callToAction action];

    mEMORY[0x1E69B87F0] = [MEMORY[0x1E69B87F0] sharedInstance];
    itemIdentifier = [articleLayout itemIdentifier];
    [mEMORY[0x1E69B87F0] expandedDiscoveryItemWithIdentifier:itemIdentifier callToAction:action afterSwipingToCard:v11 multipleStoryCardsAvailable:v14 > 1 cardSize:self->_welcomeCardTemplateInformation];
  }
}

- (void)discoveryCardViewRemoveTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = tappedCopy;
  if (tappedCopy)
  {
    v7 = tappedCopy;
    isRemoving = [tappedCopy isRemoving];
    v5 = v7;
    if ((isRemoving & 1) == 0)
    {
      [v7 setRemoving:1];
      [(PKDiscoveryGalleryView *)self _removeCardView:v7 animated:1];
      v5 = v7;
    }
  }
}

- (void)discoveryCardViewCTATapped:(id)tapped callToAction:(id)action itemIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  actionCopy = action;
  identifierCopy = identifier;
  action = [actionCopy action];
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = action;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Gallery view CTA (action=%ld) tapped", buf, 0xCu);
  }

  v13 = [(PKDiscoveryGalleryView *)self cardViewForCardWithItemIdentifier:identifierCopy];

  articleLayout = [v13 articleLayout];
  item = [articleLayout item];

  [*&self->_visibilityState tappedDiscoveryItem:item callToAction:actionCopy cardSize:self->_welcomeCardTemplateInformation];
  pkui_viewControllerFromResponderChain = [(UIView *)self pkui_viewControllerFromResponderChain];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = pkui_viewControllerFromResponderChain;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if (action <= 5)
  {
    if (action >= 4)
    {
      if (action != 4)
      {
        if (action != 5)
        {
          goto LABEL_17;
        }

        mEMORY[0x1E69B87F0] = [MEMORY[0x1E69B87F0] sharedInstance];
        [mEMORY[0x1E69B87F0] completedDiscoveryItemCTAWithCompletion:0];
      }

      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (action <= 0xC)
  {
    if (((1 << action) & 0x16C0) != 0)
    {
LABEL_9:
      actionURL = [actionCopy actionURL];
      appStoreAppIdentifier = actionURL;
      if (actionURL)
      {
        v12 = [actionURL url];
        [appStoreAppIdentifier isSensitive];
        PKOpenURL();
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v33 = action;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Failed to perform actionType %ld as no URL exists", buf, 0xCu);
      }

      goto LABEL_16;
    }

    if (action == 8)
    {
      appStoreAppIdentifier = [actionCopy appStoreAppIdentifier];
      [v18 presentAppStorePageForItemWithIdentifier:appStoreAppIdentifier];
      goto LABEL_16;
    }

    if (action != 11)
    {
      goto LABEL_17;
    }

LABEL_12:
    paymentSetupMode = [actionCopy paymentSetupMode];
    appStoreAppIdentifier = [actionCopy referrerIdentifier];
    v29 = *MEMORY[0x1E69BB0D8];
    [actionCopy paymentNetworks];
    v31 = item;
    v22 = v21 = tappedCopy;
    transitNetworkIdentifiers = [actionCopy transitNetworkIdentifiers];
    [actionCopy allowedFeatureIdentifiers];
    v25 = v24 = v13;
    [actionCopy productIdentifiers];
    v27 = v26 = v18;
    [v26 startPaymentPreflight:v21 withPaymentSetupMode:paymentSetupMode referrerIdentifier:appStoreAppIdentifier referralSource:v29 campaignIdentifier:0 paymentNetworks:v22 transitNetworkIdentifiers:transitNetworkIdentifiers allowedFeatureIdentifiers:v25 productIdentifiers:v27 sectionIdentifier:0];

    v18 = v26;
    v13 = v24;

    tappedCopy = v21;
    item = v31;
LABEL_16:
  }

LABEL_17:
}

- (BOOL)needsRemoval
{
  if (*&self->_visibilityState)
  {
    return ((*&self->_layoutState.cards.welcome & 0x102) == 0) & (*&self->_layoutState.cards.welcome ^ 1);
  }

  else
  {
    return 1;
  }
}

- (void)setSectionsState:(id *)state
{
  v5 = objc_opt_class();
  v6 = *(&state->var0 + 1);
  v13[0] = *&state->var0.var0;
  v13[1] = v6;
  v7 = [v5 _welcomeStateForState:v13];
  welcome = self->_layoutState.cards.welcome;
  if (((welcome ^ v7) & 3) != 0)
  {
    v9 = v7;
    v10 = *(&self->_layoutState.cards.welcome + 1);
    *&self->_layoutState.cards.welcome = v7;
    *(&self->_layoutState.cards.welcome + 2) = *(&self->_layoutState.cards.welcome + 2) & 0xFE | ((*(state + 24) & 2) != 0);
    if ((welcome & 1) != 0 && (v7 & 1) == 0)
    {
      [(PKDiscoveryCardView *)self->_paymentWelcomeView removeFromSuperview];
      paymentWelcomeView = self->_paymentWelcomeView;
      self->_paymentWelcomeView = 0;
    }

    if ((v9 & 2) == 0 && (welcome & 2) != 0)
    {
      [(PKDiscoveryCardView *)self->_passWelcomeView removeFromSuperview];
      passWelcomeView = self->_passWelcomeView;
      self->_passWelcomeView = 0;
    }

    if (!self->_paymentWelcomeView && !self->_passWelcomeView)
    {
      *(&self->_layoutState.cards.welcome + 3) = 1;
    }

    [(PKDiscoveryGalleryView *)self _requestDismissalIfNecessaryAfterLayoutStateUpdate];
    [(PKDiscoveryGalleryView *)self _updateCardViewsAnimated:(((welcome | (v10 << 8)) & 0x102) != 0) | (welcome & 1)];
  }
}

+ (id)passWelcomeCardMessageAttributedString
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = PKLocalizedString(&cfstr_PassShelf1Body.isa);
  v3 = PKUIGetMinScreenWidthType() - 1;
  if (v3 >= 8)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 2.0;
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];

  if (v6 && (([v6 isEqualToString:@"zh"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"ja") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"ko")))
  {
    v4 = v4 + 2.0;
  }

  if (v3 >= 8)
  {
    v7 = 9.5;
  }

  else
  {
    v7 = 12.5;
  }

  v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v8 setAlignment:1];
  [v8 setParagraphSpacing:v7];
  [v8 setLineSpacing:v4];
  v9 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
  [v9 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [v9 setShadowColor:0];
  [v9 setShadowBlurRadius:0.0];
  v18[0] = *MEMORY[0x1E69DB648];
  v10 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  v19[0] = v10;
  v18[1] = *MEMORY[0x1E69DB650];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v19[1] = blackColor;
  v18[2] = *MEMORY[0x1E69DB600];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v13 = *MEMORY[0x1E69DB688];
  v19[2] = clearColor;
  v19[3] = v8;
  v14 = *MEMORY[0x1E69DB6A8];
  v18[3] = v13;
  v18[4] = v14;
  v19[4] = v9;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v2 attributes:v15];

  return v16;
}

- (id)_createPaymentWelcomeCardView
{
  v3 = PKPassKitUIBundle();
  v4 = [v3 URLForResource:@"paymentWelcomeCard" withExtension:@"json"];

  v32 = v4;
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:4 error:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc_init(MEMORY[0x1E69B87E8]);
  [v7 setIdentifier:@"paymentWelcomeCard"];
  v31 = v6;
  v8 = [objc_alloc(MEMORY[0x1E69B87D8]) initWithDictionary:v6];
  [v8 setItem:v7];
  identifier = [v7 identifier];
  [v8 setItemIdentifier:identifier];

  [v8 setPriority:*MEMORY[0x1E69BB830]];
  v10 = PKPassKitBundle();
  [v8 localizeWithBundle:v10 table:*MEMORY[0x1E69BB838]];

  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v12 = PKDeviceSupportsTransitWithWebService();
  traitCollection = [(PKDiscoveryGalleryView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (PKDeviceSupportsFelicaDebitWithWebService() || (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v17 = PKWebServiceFeaturesCredential();
    if (!v12 || v17)
    {
      if (PKPearlIsAvailable())
      {
        v18 = @"WELCOME_CARD_PAYMENTS_BODY_PEARL";
      }

      else
      {
        v18 = @"WELCOME_CARD_PAYMENTS_BODY";
      }
    }

    else
    {
      v18 = @"WELCOME_CARD_PAYMENTS_BODY_TRANSIT";
    }

    v15 = PKLocalizedDiscoveryString(&v18->isa);
    v16 = 0;
  }

  else
  {
    v15 = PKLocalizedDiscoveryString(&cfstr_WelcomeCardPay.isa);
    v16 = PKLocalizedDiscoveryString(&cfstr_WelcomeCardPay_0.isa);
  }

  if (v15)
  {
    shelves = [v8 shelves];
    v20 = [shelves objectAtIndexedSubscript:1];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 setLocalizedBody:v15];
    }
  }

  v21 = PKCurrentRegion();
  if (v21 != @"US")
  {
    v22 = v21;
    if (!v21 || (v23 = [(__CFString *)v21 isEqualToString:@"US"], v22, v22, (v23 & 1) == 0))
    {
      v24 = PKLocalizedDiscoveryString(&cfstr_WelcomeCardPay_4.isa);
      shelves2 = [v8 shelves];
      v26 = [shelves2 objectAtIndexedSubscript:3];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v26 setLocalizedBody:v24];
      }
    }
  }

  if (v16)
  {
    card = [v8 card];
    callToAction = [card callToAction];

    [callToAction setLocalizedSubtitle:v16];
  }

  v29 = [[PKDiscoveryCardView alloc] initWithArticleLayout:v8 cardTemplateInformation:*&self->_articleLayoutsUpdatedAfterEnteringForegroundActive isWelcomeCard:1];
  [(PKDiscoveryCardView *)v29 setDelegate:self];

  return v29;
}

- (id)_createPassWelcomeCardView
{
  v3 = PKPassKitUIBundle();
  v4 = [v3 URLForResource:@"passWelcomeCard" withExtension:@"json"];

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:4 error:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc_init(MEMORY[0x1E69B87E8]);
  [v7 setIdentifier:@"passWelcomeCard"];
  v8 = [objc_alloc(MEMORY[0x1E69B87D8]) initWithDictionary:v6];
  [v8 setItemIdentifier:@"passWelcomeCard"];
  [v8 setItem:v7];
  [v8 setPriority:*MEMORY[0x1E69BB830]];
  v9 = PKPassKitBundle();
  [v8 localizeWithBundle:v9 table:*MEMORY[0x1E69BB838]];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKDiscoveryGalleryView__createPassWelcomeCardView__block_invoke;
  aBlock[3] = &unk_1E801D5A0;
  objc_copyWeak(&v23, &location);
  v20 = @"passWelcomeCard";
  v10 = v8;
  v21 = v10;
  selfCopy = self;
  v11 = _Block_copy(aBlock);
  v12 = [[PKDiscoveryCardView alloc] initWithArticleLayout:v10 cardTemplateInformation:*&self->_articleLayoutsUpdatedAfterEnteringForegroundActive isWelcomeCard:1];
  if (*(&self->_layoutState.cards.welcome + 2))
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __52__PKDiscoveryGalleryView__createPassWelcomeCardView__block_invoke_4;
    v17 = &unk_1E801D528;
    objc_copyWeak(&v18, &location);
    [(PKDiscoveryCardView *)v12 setDismissAction:&v14];
    objc_destroyWeak(&v18);
  }

  [(PKDiscoveryCardView *)v12 setCallToActionTappedOverride:v11, v14, v15, v16, v17];
  [(PKDiscoveryCardView *)v12 setDelegate:self];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v12;
}

void __52__PKDiscoveryGalleryView__createPassWelcomeCardView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 56));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = [MEMORY[0x1E69B87F0] sharedInstance];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) card];
    v8 = [v7 callToAction];
    [v5 tappedDiscoveryItemWithIdentifier:v6 callToAction:objc_msgSend(v8 cardSize:{"action"), *(*(a1 + 48) + 528)}];

    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v10 = [v9 popoverPresentationController];
    [v10 setPermittedArrowDirections:1];
    [v10 setSourceView:v3];
    v11 = MEMORY[0x1E69DC648];
    v12 = PKLocalizedDiscoveryString(&cfstr_PassWelcomeCar.isa);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__PKDiscoveryGalleryView__createPassWelcomeCardView__block_invoke_2;
    v25[3] = &unk_1E8012CC0;
    objc_copyWeak(&v26, &to);
    v13 = [v11 actionWithTitle:v12 style:0 handler:v25];
    [v9 addAction:v13];

    v14 = MEMORY[0x1E69DC648];
    v15 = PKLocalizedDiscoveryString(&cfstr_PassWelcomeCar_0.isa);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__PKDiscoveryGalleryView__createPassWelcomeCardView__block_invoke_3;
    v23[3] = &unk_1E8012CC0;
    objc_copyWeak(&v24, &to);
    v16 = [v14 actionWithTitle:v15 style:0 handler:v23];
    [v9 addAction:v16];

    v17 = MEMORY[0x1E69DC648];
    v18 = PKLocalizedDiscoveryString(&cfstr_PassWelcomeCar_1.isa);
    v19 = [v17 actionWithTitle:v18 style:1 handler:0];
    [v9 addAction:v19];

    v20 = objc_loadWeakRetained(&to);
    v21 = [v20 pkui_viewControllerFromResponderChain];
    v22 = [v21 pkui_frontMostViewController];
    [v22 presentViewController:v9 animated:1 completion:0];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
  }

  objc_destroyWeak(&to);
}

void __52__PKDiscoveryGalleryView__createPassWelcomeCardView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _appStorePressed];
}

void __52__PKDiscoveryGalleryView__createPassWelcomeCardView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scanCodePressed];
}

void __52__PKDiscoveryGalleryView__createPassWelcomeCardView__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    PKSetBarcodePassWelcomeCardDismissed();
    v4[2](v4, 1, 0);
  }
}

- (void)_scanCodePressed
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9F00], 0);
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69BBC30]];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

- (void)_appStorePressed
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9F08], 0);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69BBB68]];
  [mEMORY[0x1E69DC668] openURL:v2 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

@end