@interface SBNoticePresentableElement
+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6;
- (BOOL)handleElementViewEvent:(int64_t)a3;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (NSString)clientIdentifier;
- (SAUILayoutHosting)layoutHost;
- (SBNoticePresentableElement)initWithTemplatePresentable:(id)a3;
- (UIView)leadingView;
- (UIView)trailingView;
- (id)_primaryView;
- (id)_secondaryView;
- (id)_templateItemViewFromProvider:(id)a3 isPrimary:(BOOL)a4;
- (id)elementDescription;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)_updateVisualStlyingOfView:(id)a3 fromProvider:(id)a4;
- (void)addElementLayoutSpecifierObserver:(id)a3;
- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3;
- (void)removeElementLayoutSpecifierObserver:(id)a3;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4;
@end

@implementation SBNoticePresentableElement

- (SBNoticePresentableElement)initWithTemplatePresentable:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBNoticePresentableElement *)a2 initWithTemplatePresentable:?];
  }

  v10.receiver = self;
  v10.super_class = SBNoticePresentableElement;
  v7 = [(SBNoticePresentableElement *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_presentable, a3);
    v8->_preferredLayoutMode = 2;
  }

  return v8;
}

- (NSString)clientIdentifier
{
  v2 = [(BNPresentable *)self->_presentable requesterIdentifier];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringByAppendingFormat:@".%@", v4];

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

- (BOOL)handleElementViewEvent:(int64_t)a3
{
  v4 = [(SBNoticePresentableElement *)self templatePresentable];
  if ((objc_opt_respondsToSelector() & 1) != 0 && a3 <= 2)
  {
    [v4 handleTemplateContentEvent:a3];
  }

  return 0;
}

- (UIView)leadingView
{
  v3 = [(SBNoticePresentableElement *)self templatePresentable];
  if (!self->_leadingView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 leadingTemplateViewProvider];
    v5 = v4;
    if (v4)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __41__SBNoticePresentableElement_leadingView__block_invoke;
      v11[3] = &unk_2783B1B90;
      v11[4] = self;
      v6 = SBTemplateItemViewFromProvider(v4, v11);
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
  v3 = [(SBNoticePresentableElement *)self templatePresentable];
  if (!self->_trailingView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 trailingTemplateViewProvider];
    v5 = v4;
    if (v4)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __42__SBNoticePresentableElement_trailingView__block_invoke;
      v11[3] = &unk_2783B1B90;
      v11[4] = self;
      v6 = SBTemplateItemViewFromProvider(v4, v11);
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

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  layoutMode = self->_layoutMode;
  if (layoutMode != a3)
  {
    v7[7] = v4;
    v7[8] = v5;
    self->_layoutMode = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SBNoticePresentableElement_setLayoutMode_reason___block_invoke;
    v7[3] = &unk_2783ACD90;
    v7[4] = self;
    v7[5] = layoutMode;
    v7[6] = a4;
    [(SBNoticePresentableElement *)self _enumerateObserversRespondingToSelector:sel_elementLayoutSpecifier_layoutModeDidChange_reason_ usingBlock:v7];
  }
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  bottom = result.bottom;
  leading = result.leading;
  top = result.top;
  if (a3 == 3)
  {
    v9 = [(SBNoticePresentableElement *)self _primaryView:result.top];
    [v9 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v11 = v10;

    v12 = [(SBNoticePresentableElement *)self _secondaryView];
    [v12 sizeThatFits:{1.79769313e308, 1.79769313e308}];
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

- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3
{
  [a3 bounds];
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

  v20 = [(SBNoticePresentableElement *)self trailingView];
  v21 = v20;
  if (self->_layoutMode >= 3)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  [v20 setAlpha:v22];

  v23 = [(SBNoticePresentableElement *)self _primaryView];
  v24 = v23;
  if (self->_layoutMode >= 3)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  [v23 setAlpha:v25];

  v26 = [(SBNoticePresentableElement *)self _secondaryView];
  v27 = v26;
  if (self->_layoutMode >= 3)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  [v26 setAlpha:v28];
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

- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (self->_layoutMode == 3)
  {
    v9 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __104__SBNoticePresentableElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
    v13[3] = &unk_2783A92D8;
    v14 = v7;
    v15 = self;
    [v9 performWithoutAnimation:v13];
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__SBNoticePresentableElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2;
  v10[3] = &unk_2783B1BB8;
  objc_copyWeak(&v11, &location);
  [v8 animateAlongsideTransition:0 completion:v10];
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

- (void)addElementLayoutSpecifierObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (void)removeElementLayoutSpecifierObserver:(id)a3
{
  if (a3)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (id)_templateItemViewFromProvider:(id)a3 isPrimary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 templateItemText];
    }

    else
    {
      v7 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 templateItemAttributedText];
    }

    else
    {
      v9 = 0;
    }

    if (!(v7 | v9))
    {
      goto LABEL_18;
    }

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    v8 = v10;
    if (v7)
    {
      [v10 setText:v7];
    }

    else
    {
      [v10 setAttributedText:v9];
    }

    v11 = objc_opt_class();
    v12 = MEMORY[0x277D769C0];
    if (!v4)
    {
      v12 = MEMORY[0x277D76940];
    }

    v13 = [v11 _preferredFont:1 textStyle:*v12 weight:0 additionalTraits:*MEMORY[0x277D74410]];
    [v8 setFont:v13];

    if (!v4)
    {
      v14 = [MEMORY[0x277D75348] secondaryLabelColor];
      [v8 setColor:v14];
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
        v8 = SBTemplateItemViewFromProvider(v6, v16);
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

- (void)_updateVisualStlyingOfView:(id)a3 fromProvider:(id)a4
{
  v10 = a3;
  v5 = a4;
  if ([v5 visualStyleCategory])
  {
    if ([v5 visualStyle] != -1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v10;
        v7 = [v6 configuration];
        v8 = [v7 background];
        v9 = [MEMORY[0x277D75348] tertiarySystemFillColor];
        [v8 setBackgroundColor:v9];

        [v7 setBackground:v8];
        [v6 setConfiguration:v7];
      }
    }
  }
}

- (id)_primaryView
{
  v3 = [(SBNoticePresentableElement *)self templatePresentable];
  if (!self->_primaryView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 primaryTemplateItemProvider];
    v5 = [(SBNoticePresentableElement *)self _templateItemViewFromProvider:v4 isPrimary:1];
    primaryView = self->_primaryView;
    self->_primaryView = v5;

    [(SBNoticePresentableElement *)self _updateVisualStlyingOfView:self->_primaryView fromProvider:v4];
  }

  v7 = self->_primaryView;
  v8 = v7;

  return v7;
}

- (id)_secondaryView
{
  v3 = [(SBNoticePresentableElement *)self templatePresentable];
  if (!self->_secondaryView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 secondaryTemplateItemProvider];
    v5 = [(SBNoticePresentableElement *)self _templateItemViewFromProvider:v4 isPrimary:0];
    secondaryView = self->_secondaryView;
    self->_secondaryView = v5;

    [(SBNoticePresentableElement *)self _updateVisualStlyingOfView:self->_secondaryView fromProvider:v4];
  }

  v7 = self->_secondaryView;
  v8 = v7;

  return v7;
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5 && [(NSHashTable *)self->_observers count])
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
            v5[2](v5, v11);
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