@interface SBNoticePresentableElement
+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits;
- (BOOL)handleElementViewEvent:(int64_t)event;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)outsets;
- (NSString)clientIdentifier;
- (SAUILayoutHosting)layoutHost;
- (SBNoticePresentableElement)initWithTemplatePresentable:(id)presentable;
- (UIView)leadingView;
- (UIView)trailingView;
- (id)_primaryView;
- (id)_secondaryView;
- (id)_templateItemViewFromProvider:(id)provider isPrimary:(BOOL)primary;
- (id)elementDescription;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_updateVisualStlyingOfView:(id)view fromProvider:(id)provider;
- (void)addElementLayoutSpecifierObserver:(id)observer;
- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews;
- (void)removeElementLayoutSpecifierObserver:(id)observer;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason;
@end

@implementation SBNoticePresentableElement

- (SBNoticePresentableElement)initWithTemplatePresentable:(id)presentable
{
  presentableCopy = presentable;
  if (!presentableCopy)
  {
    [(SBNoticePresentableElement *)a2 initWithTemplatePresentable:?];
  }

  v10.receiver = self;
  v10.super_class = SBNoticePresentableElement;
  v7 = [(SBNoticePresentableElement *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_presentable, presentable);
    v8->_preferredLayoutMode = 2;
  }

  return v8;
}

- (NSString)clientIdentifier
{
  requesterIdentifier = [(BNPresentable *)self->_presentable requesterIdentifier];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [requesterIdentifier stringByAppendingFormat:@".%@", v4];

  return v5;
}

- (id)elementDescription
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"presentable";
  v2 = BNEffectivePresentableDescription();
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = SAElementIdentityDescription();

  return v4;
}

- (BOOL)handleElementViewEvent:(int64_t)event
{
  templatePresentable = [(SBNoticePresentableElement *)self templatePresentable];
  if ((objc_opt_respondsToSelector() & 1) != 0 && event <= 2)
  {
    [templatePresentable handleTemplateContentEvent:event];
  }

  return 0;
}

- (UIView)leadingView
{
  templatePresentable = [(SBNoticePresentableElement *)self templatePresentable];
  if (!self->_leadingView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    leadingTemplateViewProvider = [templatePresentable leadingTemplateViewProvider];
    v5 = leadingTemplateViewProvider;
    if (leadingTemplateViewProvider)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __41__SBNoticePresentableElement_leadingView__block_invoke;
      v11[3] = &unk_2783B1B90;
      v11[4] = self;
      v6 = SBTemplateItemViewFromProvider(leadingTemplateViewProvider, v11);
      leadingView = self->_leadingView;
      self->_leadingView = v6;

      [(SBNoticePresentableElement *)self _updateVisualStlyingOfView:self->_leadingView fromProvider:v5];
    }
  }

  v8 = self->_leadingView;
  v9 = v8;

  return v8;
}

id __41__SBNoticePresentableElement_leadingView__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__SBNoticePresentableElement_leadingView__block_invoke_2;
  v3[3] = &unk_2783B1B68;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x277D750C8] actionWithHandler:v3];

  return v1;
}

- (UIView)trailingView
{
  templatePresentable = [(SBNoticePresentableElement *)self templatePresentable];
  if (!self->_trailingView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    trailingTemplateViewProvider = [templatePresentable trailingTemplateViewProvider];
    v5 = trailingTemplateViewProvider;
    if (trailingTemplateViewProvider)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __42__SBNoticePresentableElement_trailingView__block_invoke;
      v11[3] = &unk_2783B1B90;
      v11[4] = self;
      v6 = SBTemplateItemViewFromProvider(trailingTemplateViewProvider, v11);
      trailingView = self->_trailingView;
      self->_trailingView = v6;

      [(SBNoticePresentableElement *)self _updateVisualStlyingOfView:self->_trailingView fromProvider:v5];
    }
  }

  v8 = self->_trailingView;
  v9 = v8;

  return v8;
}

id __42__SBNoticePresentableElement_trailingView__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__SBNoticePresentableElement_trailingView__block_invoke_2;
  v3[3] = &unk_2783B1B68;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x277D750C8] actionWithHandler:v3];

  return v1;
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  layoutMode = self->_layoutMode;
  if (layoutMode != mode)
  {
    v7[7] = v4;
    v7[8] = v5;
    self->_layoutMode = mode;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SBNoticePresentableElement_setLayoutMode_reason___block_invoke;
    v7[3] = &unk_2783ACD90;
    v7[4] = self;
    v7[5] = layoutMode;
    v7[6] = reason;
    [(SBNoticePresentableElement *)self _enumerateObserversRespondingToSelector:sel_elementLayoutSpecifier_layoutModeDidChange_reason_ usingBlock:v7];
  }
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)outsets
{
  bottom = result.bottom;
  leading = result.leading;
  top = result.top;
  if (mode == 3)
  {
    v9 = [(SBNoticePresentableElement *)self _primaryView:result.top];
    [v9 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v11 = v10;

    _secondaryView = [(SBNoticePresentableElement *)self _secondaryView];
    [_secondaryView sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v14 = v13;

    bottom = bottom - (v11 + 8.0);
    if (leading + leading <= leading - (v14 + 8.0))
    {
      result.trailing = leading + leading;
    }

    else
    {
      result.trailing = leading - (v14 + 8.0);
    }

    leading = result.trailing;
  }

  v15 = top;
  v16 = leading;
  v17 = bottom;
  result.bottom = v17;
  result.leading = v16;
  result.top = v15;
  return result;
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews
{
  [subviews bounds];
  if (self->_layoutMode == 3)
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    [(UIView *)self->_leadingView frame];
    UIRectCenteredYInRectScale();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(UIView *)self->_leadingView setFrame:0];
    [(UIView *)self->_trailingView frame];
    UIRectCenteredYInRectScale();
    [(UIView *)self->_trailingView setFrame:0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__SBNoticePresentableElement_layoutHostContainerViewDidLayoutSubviews___block_invoke;
    v29[3] = &unk_2783AE818;
    v29[4] = self;
    v29[5] = v8;
    v29[6] = v9;
    v29[7] = v10;
    v29[8] = v11;
    v29[9] = v13;
    v29[10] = v15;
    v29[11] = v17;
    v29[12] = v19;
    [MEMORY[0x277D75D18] performWithoutAnimation:v29];
  }

  trailingView = [(SBNoticePresentableElement *)self trailingView];
  v21 = trailingView;
  if (self->_layoutMode >= 3)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  [trailingView setAlpha:v22];

  _primaryView = [(SBNoticePresentableElement *)self _primaryView];
  v24 = _primaryView;
  if (self->_layoutMode >= 3)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  [_primaryView setAlpha:v25];

  _secondaryView = [(SBNoticePresentableElement *)self _secondaryView];
  v27 = _secondaryView;
  if (self->_layoutMode >= 3)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  [_secondaryView setAlpha:v28];
}

uint64_t __71__SBNoticePresentableElement_layoutHostContainerViewDidLayoutSubviews___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) sizeThatFits:{*(a1 + 56), *(a1 + 64)}];
  v3 = v2;
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v8 = CGRectGetMaxX(*(a1 + 72)) + 8.0;
  v9 = CGRectGetMaxY(*(a1 + 40)) + -8.0 - v3;
  v10 = *(*(a1 + 32) + 8);
  UIRectIntegralWithScale();
  [v10 setFrame:?];
  [*(*(a1 + 32) + 16) sizeThatFits:{*(a1 + 56), *(a1 + 64)}];
  BSRectWithSize();
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v5;
  v14.size.height = v7;
  CGRectGetMinX(v14);
  v15.origin.x = v8;
  v15.origin.y = v9;
  v15.size.width = v5;
  v15.size.height = v7;
  CGRectGetMinY(v15);
  v11 = *(*(a1 + 32) + 16);
  UIRectIntegralWithScale();

  return [v11 setFrame:?];
}

- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  if (self->_layoutMode == 3)
  {
    v9 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __104__SBNoticePresentableElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
    v13[3] = &unk_2783A92D8;
    v14 = viewCopy;
    selfCopy = self;
    [v9 performWithoutAnimation:v13];
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__SBNoticePresentableElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2;
  v10[3] = &unk_2783B1BB8;
  objc_copyWeak(&v11, &location);
  [coordinatorCopy animateAlongsideTransition:0 completion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __104__SBNoticePresentableElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _primaryView];
  [v2 addSubview:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _secondaryView];
  [v4 addSubview:v5];
}

void __104__SBNoticePresentableElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained layoutMode] <= 2;
    WeakRetained = v3;
    if (v2)
    {
      [v3[1] removeFromSuperview];
      [v3[2] removeFromSuperview];
      WeakRetained = v3;
    }
  }
}

- (void)addElementLayoutSpecifierObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removeElementLayoutSpecifierObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (font)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:weight];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (id)_templateItemViewFromProvider:(id)provider isPrimary:(BOOL)primary
{
  primaryCopy = primary;
  providerCopy = provider;
  if (providerCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      templateItemText = [providerCopy templateItemText];
    }

    else
    {
      templateItemText = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      templateItemAttributedText = [providerCopy templateItemAttributedText];
    }

    else
    {
      templateItemAttributedText = 0;
    }

    if (!(templateItemText | templateItemAttributedText))
    {
      goto LABEL_18;
    }

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    v8 = v10;
    if (templateItemText)
    {
      [v10 setText:templateItemText];
    }

    else
    {
      [v10 setAttributedText:templateItemAttributedText];
    }

    v11 = objc_opt_class();
    v12 = MEMORY[0x277D769C0];
    if (!primaryCopy)
    {
      v12 = MEMORY[0x277D76940];
    }

    v13 = [v11 _preferredFont:1 textStyle:*v12 weight:0 additionalTraits:*MEMORY[0x277D74410]];
    [v8 setFont:v13];

    if (!primaryCopy)
    {
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [v8 setColor:secondaryLabelColor];
    }

    if (!v8)
    {
LABEL_18:
      if (objc_opt_respondsToSelector())
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __70__SBNoticePresentableElement__templateItemViewFromProvider_isPrimary___block_invoke;
        v16[3] = &unk_2783B1B90;
        v16[4] = self;
        v8 = SBTemplateItemViewFromProvider(providerCopy, v16);
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __70__SBNoticePresentableElement__templateItemViewFromProvider_isPrimary___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__SBNoticePresentableElement__templateItemViewFromProvider_isPrimary___block_invoke_2;
  v3[3] = &unk_2783B1B68;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x277D750C8] actionWithHandler:v3];

  return v1;
}

- (void)_updateVisualStlyingOfView:(id)view fromProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  if ([providerCopy visualStyleCategory])
  {
    if ([providerCopy visualStyle] != -1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = viewCopy;
        configuration = [v6 configuration];
        background = [configuration background];
        tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
        [background setBackgroundColor:tertiarySystemFillColor];

        [configuration setBackground:background];
        [v6 setConfiguration:configuration];
      }
    }
  }
}

- (id)_primaryView
{
  templatePresentable = [(SBNoticePresentableElement *)self templatePresentable];
  if (!self->_primaryView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    primaryTemplateItemProvider = [templatePresentable primaryTemplateItemProvider];
    v5 = [(SBNoticePresentableElement *)self _templateItemViewFromProvider:primaryTemplateItemProvider isPrimary:1];
    primaryView = self->_primaryView;
    self->_primaryView = v5;

    [(SBNoticePresentableElement *)self _updateVisualStlyingOfView:self->_primaryView fromProvider:primaryTemplateItemProvider];
  }

  v7 = self->_primaryView;
  v8 = v7;

  return v7;
}

- (id)_secondaryView
{
  templatePresentable = [(SBNoticePresentableElement *)self templatePresentable];
  if (!self->_secondaryView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    secondaryTemplateItemProvider = [templatePresentable secondaryTemplateItemProvider];
    v5 = [(SBNoticePresentableElement *)self _templateItemViewFromProvider:secondaryTemplateItemProvider isPrimary:0];
    secondaryView = self->_secondaryView;
    self->_secondaryView = v5;

    [(SBNoticePresentableElement *)self _updateVisualStlyingOfView:self->_secondaryView fromProvider:secondaryTemplateItemProvider];
  }

  v7 = self->_secondaryView;
  v8 = v7;

  return v7;
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy && [(NSHashTable *)self->_observers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (void)initWithTemplatePresentable:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBNoticePresentableElement.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"templatePresentable"}];
}

@end