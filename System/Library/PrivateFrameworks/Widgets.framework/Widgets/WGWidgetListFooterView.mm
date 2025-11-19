@interface WGWidgetListFooterView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (WGWidgetListFooterView)initWithFrame:(CGRect)a3;
- (WGWidgetListFooterViewDelegate)delegate;
- (id)_referenceFont;
- (void)_addCustomizeButton;
- (void)_availableWidgetsUpdated:(id)a3;
- (void)_setAttributedString:(id)a3 forWidgetIdentifier:(id)a4;
- (void)invalidateSubviewGeometery;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)setLayoutMode:(int64_t)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setShouldSizeContent:(BOOL)a3;
- (void)setVisibleWidgetsIDs:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WGWidgetListFooterView

- (WGWidgetListFooterView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = WGWidgetListFooterView;
  v3 = [(WGWidgetListFooterView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(WGWidgetListFooterView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    contentView = v3->_contentView;
    v3->_contentView = v5;

    [(WGWidgetListFooterView *)v3 addSubview:v3->_contentView];
    [(WGWidgetListFooterView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_alloc_init(WGShortLookStyleButton);
    editButton = v3->_editButton;
    v3->_editButton = v7;

    v9 = v3->_editButton;
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"WIDGETS_EDIT_BUTTON" value:&stru_2883435D8 table:@"Widgets"];
    [(WGShortLookStyleButton *)v9 setTitle:v11];

    [(UIView *)v3->_contentView addSubview:v3->_editButton];
    [(WGWidgetListFooterView *)v3 _addCustomizeButton];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [v12 addObserver:v3 selector:sel__availableWidgetsUpdated_ name:@"WGAvailableWidgetsUpdatedNotification" object:0];
    }

    [v12 addObserver:v3 selector:sel__updateForContentCategorySizeDidChange name:*MEMORY[0x277D76810] object:0];
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    widgetIDsToAttributionViews = v3->_widgetIDsToAttributionViews;
    v3->_widgetIDsToAttributionViews = v13;

    [(WGWidgetListFooterView *)v3 setShouldSizeContent:1];
  }

  return v3;
}

- (void)setLayoutMode:(int64_t)a3
{
  if (self->_layoutMode != a3)
  {
    self->_layoutMode = a3;
    [(WGWidgetListFooterView *)self setNeedsLayout];
  }
}

- (void)setVisibleWidgetsIDs:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(NSMutableDictionary *)self->_widgetIDsToAttributionViews allKeys];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if (([v4 containsObject:v11] & 1) == 0)
        {
          v12 = [(NSMutableDictionary *)self->_widgetIDsToAttributionViews objectForKey:v11];
          [v12 removeFromSuperview];
          [(NSMutableDictionary *)self->_widgetIDsToAttributionViews removeObjectForKey:v11];

          v8 = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);

    if (v8)
    {
      [(WGWidgetListFooterView *)self invalidateIntrinsicContentSize];
      [(WGWidgetListFooterView *)self setNeedsLayout];
    }
  }

  else
  {
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        v19 = [(NSMutableDictionary *)self->_widgetIDsToAttributionViews objectForKey:v18];

        if (!v19)
        {
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __47__WGWidgetListFooterView_setVisibleWidgetsIDs___block_invoke;
          v20[3] = &unk_279ED1520;
          v20[4] = self;
          v20[5] = v18;
          [WGWidgetAttributionView requestAttributedStringForIdentifier:v18 withHandler:v20];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }
}

void __47__WGWidgetListFooterView_setVisibleWidgetsIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_initWeak(&location, *(a1 + 32));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__WGWidgetListFooterView_setVisibleWidgetsIDs___block_invoke_2;
    v6[3] = &unk_279ED0FC0;
    objc_copyWeak(&v9, &location);
    v4 = v3;
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __47__WGWidgetListFooterView_setVisibleWidgetsIDs___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setAttributedString:*(a1 + 32) forWidgetIdentifier:*(a1 + 40)];
}

- (void)_setAttributedString:(id)a3 forWidgetIdentifier:(id)a4
{
  widgetIDsToAttributionViews = self->_widgetIDsToAttributionViews;
  v7 = a4;
  v8 = a3;
  v12 = [(NSMutableDictionary *)widgetIDsToAttributionViews objectForKey:v7];
  [v12 removeFromSuperview];
  v9 = [[WGWidgetAttributionView alloc] initWithWidgetAttributedString:v8];

  [(WGWidgetAttributionView *)v9 setDelegate:self];
  v10 = [(WGWidgetListFooterView *)self legibilitySettings];
  v11 = [v10 primaryColor];
  [(WGWidgetAttributionView *)v9 setLegibilityTextColor:v11];

  [(WGWidgetAttributionView *)v9 _setInteractiveTextSelectionDisabled:1];
  [(NSMutableDictionary *)self->_widgetIDsToAttributionViews setObject:v9 forKey:v7];

  [(UIView *)self->_contentView addSubview:v9];
  [(WGWidgetListFooterView *)self invalidateIntrinsicContentSize];
  [(WGWidgetListFooterView *)self setNeedsLayout];
}

- (void)_addCustomizeButton
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76920]];
  v46 = *MEMORY[0x277D74380];
  v44 = *MEMORY[0x277D74430];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v45 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v47[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v6 = [v2 fontDescriptorByAddingAttributes:v5];

  v7 = MEMORY[0x277D74300];
  [v6 pointSize];
  v40 = v6;
  v42 = [v7 fontWithDescriptor:v6 size:?];
  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v8 setFont:v42];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"WIDGETS_CUSTOMIZE_BUTTON" value:&stru_2883435D8 table:@"Widgets"];
  [v8 setText:v10];

  v11 = [MEMORY[0x277D75348] labelColor];
  [v8 setTextColor:v11];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = MEMORY[0x277D755D0];
  [v6 pointSize];
  v39 = [v12 configurationWithPointSize:6 weight:?];
  v38 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:v39];
  v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v38];
  LODWORD(v14) = 1144750080;
  [v13 setContentHuggingPriority:0 forAxis:v14];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 intrinsicContentSize];
  v16 = v15 + 10.0;
  [v13 intrinsicContentSize];
  v18 = v16 + v17 + 10.0;
  v19 = [MEMORY[0x277D75220] buttonWithType:0];
  [(UIButton *)v19 setFrame:0.0, 0.0, v18, 20.0];
  [(UIButton *)v19 setAlpha:0.0];
  [(UIButton *)v19 addSubview:v8];
  [(UIButton *)v19 addSubview:v13];
  v31 = MEMORY[0x277CCAAD0];
  v37 = [v8 leadingAnchor];
  v36 = [(UIButton *)v19 leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:10.0];
  v43[0] = v35;
  v34 = [v13 leadingAnchor];
  v33 = [v8 trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v43[1] = v32;
  v30 = [(UIButton *)v19 trailingAnchor];
  v29 = [v13 trailingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:10.0];
  v43[2] = v28;
  v20 = [v8 centerYAnchor];
  v21 = [(UIButton *)v19 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v43[3] = v22;
  v23 = [v13 centerYAnchor];
  v24 = [(UIButton *)v19 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v43[4] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:5];
  [v31 activateConstraints:v26];

  [(UIView *)self->_contentView addSubview:v19];
  customizeButton = self->_customizeButton;
  self->_customizeButton = v19;
}

- (void)setDelegate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_delegate, a3);
  v4 = [(WGWidgetListFooterView *)self delegate];
  v5 = [v4 editingMaterialViewForWidgetListFooterView:self];
  customizeButtonBackground = self->_customizeButtonBackground;
  self->_customizeButtonBackground = v5;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(UIButton *)self->_customizeButton subviews];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [(MTMaterialView *)self->_customizeButtonBackground visualStylingProviderForCategory:1];
        [v13 automaticallyUpdateView:v12 withStyle:1];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)setShouldSizeContent:(BOOL)a3
{
  if (self->_shouldSizeContent != a3)
  {
    self->_shouldSizeContent = a3;
    [(WGWidgetListFooterView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v44 = *MEMORY[0x277D85DE8];
  v6 = [(WGWidgetListFooterView *)self _referenceFont];
  [v6 _scaledValueForValue:12.0];
  v8 = v7;
  [(WGShortLookStyleButton *)self->_editButton alpha];
  if (v9 > 0.0)
  {
    [(WGShortLookStyleButton *)self->_editButton sizeThatFits:width, height];
    v8 = v8 + v10;
  }

  [(UIButton *)self->_customizeButton alpha];
  if (v11 > 0.0)
  {
    [(UIButton *)self->_customizeButton frame];
    v8 = v8 + v12;
  }

  v13 = [(WGNewWidgetsButton *)self->_widgetAvailableButton badgeNumber];
  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    [(WGNewWidgetsButton *)self->_widgetAvailableButton sizeThatFits:width, 0.0];
    v15 = v16 + 22.0;
  }

  v17 = v8 + v15;
  v18 = [(NSMutableDictionary *)self->_widgetIDsToAttributionViews count];
  if (v18 >= 1)
  {
    [v6 _scaledValueForValue:v18 * 15.0 + 7.0];
    v14 = v19;
  }

  v20 = v17 + v14;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = [(NSMutableDictionary *)self->_widgetIDsToAttributionViews allValues];
  v22 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v39 + 1) + 8 * i);
        [v26 layoutIfNeeded];
        WGMainScreenReferenceBounds();
        [v26 sizeThatFits:{v27 + -40.0, 0.0}];
        v29 = v28;
        [v26 textContainerInset];
        v31 = v29 - v30;
        [v6 lineHeight];
        v33 = v31 - v32;
        [v26 textContainerInset];
        v20 = v20 + v33 - v34;
      }

      v23 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v23);
  }

  [v6 _scaledValueForValue:5.5];
  v36 = v35;

  v37 = v20 + v36;
  v38 = width;
  result.height = v37;
  result.width = v38;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [(WGWidgetListFooterView *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v4 = v2;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v76 = *MEMORY[0x277D85DE8];
  v74.receiver = self;
  v74.super_class = WGWidgetListFooterView;
  [(WGWidgetListFooterView *)&v74 layoutSubviews];
  [(WGWidgetListFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(WGWidgetListFooterView *)self _referenceFont];
  [v11 _scaledValueForValue:12.0];
  v13 = v12;

  v69 = v13;
  if (self->_shouldSizeContent)
  {
    [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
  }

  [(WGShortLookStyleButton *)self->_editButton sizeToFit];
  [(WGShortLookStyleButton *)self->_editButton bounds];
  v66 = _WGMainScreenScale();
  UIRectCenteredIntegralRectScale();
  v15 = v14;
  [(WGShortLookStyleButton *)self->_editButton setFrame:*&v66];
  v16 = v8;
  [(UIButton *)self->_customizeButton setFrame:0.0, v69, v8, 20.0];
  v17 = [(WGWidgetListFooterView *)self _referenceFont];
  [v17 _scaledValueForValue:v15];
  v19 = v69 + v18;

  widgetAvailableButton = self->_widgetAvailableButton;
  if (widgetAvailableButton && [(WGNewWidgetsButton *)widgetAvailableButton badgeNumber])
  {
    [(WGNewWidgetsButton *)self->_widgetAvailableButton sizeToFit];
    [(WGNewWidgetsButton *)self->_widgetAvailableButton size];
    WGMainScreenReferenceBounds();
    [(WGNewWidgetsButton *)self->_widgetAvailableButton size];
    BSRectWithSize();
    [(WGNewWidgetsButton *)self->_widgetAvailableButton frame];
    v22 = v19 + v21;
    v67 = _WGMainScreenScale();
    UIRectCenteredIntegralRectScale();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [(WGWidgetListFooterView *)self _referenceFont];
    [v29 _scaledValueForValue:v22];
    v31 = v30;
    v32 = [(WGWidgetListFooterView *)self _referenceFont];
    [v32 ascender];
    v34 = v31 - v33;

    [(WGNewWidgetsButton *)self->_widgetAvailableButton setFrame:v24, v34, v26, v28];
    v19 = v22 + 22.0;
  }

  if ([(NSMutableDictionary *)self->_widgetIDsToAttributionViews count])
  {
    v35 = [(WGWidgetListFooterView *)self _referenceFont];
    [v35 _scaledValueForValue:7.0];
    v19 = v19 + v36;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v37 = +[WGWidgetAttributionView widgetAttributionIDsInOrder];
  v38 = [v37 countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v71;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v71 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [(NSMutableDictionary *)self->_widgetIDsToAttributionViews objectForKey:*(*(&v70 + 1) + 8 * i)];
        if (v42)
        {
          v43 = [(WGWidgetListFooterView *)self _referenceFont];
          [v43 _scaledValueForValue:15.0];
          v45 = v19 + v44;

          [v42 sizeThatFits:{v16 + -40.0, 0.0}];
          BSRectWithSize();
          v68 = _WGMainScreenScale();
          UIRectCenteredIntegralRectScale();
          v47 = v46;
          v49 = v48;
          v51 = v50;
          v52 = [(WGWidgetListFooterView *)self _referenceFont];
          [v52 _scaledValueForValue:v45];
          v54 = v53;
          v55 = [(WGWidgetListFooterView *)self _referenceFont];
          [v55 ascender];
          v57 = v54 - v56;

          [v42 setFrame:{v47, v57, v49, v51}];
          [v42 bounds];
          v59 = v58;
          [v42 textContainerInset];
          v61 = v59 - v60;
          v62 = [(WGWidgetListFooterView *)self _referenceFont];
          [v62 lineHeight];
          v64 = v61 - v63;
          [v42 textContainerInset];
          v19 = v45 + v64 - v65;
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v39);
  }
}

- (void)invalidateSubviewGeometery
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_widgetIDsToAttributionViews allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) setNeedsLayout];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(WGNewWidgetsButton *)self->_widgetAvailableButton updateForContentCategorySizeChange];
  [(WGWidgetListFooterView *)self invalidateIntrinsicContentSize];
}

- (void)setLegibilitySettings:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_legibilitySettings != v5)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSMutableDictionary *)self->_widgetIDsToAttributionViews allValues];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
          [v11 setLegibilityTextColor:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(WGNewWidgetsButton *)self->_widgetAvailableButton setLegibilitySettings:self->_legibilitySettings];
    [(WGWidgetListFooterView *)self setNeedsLayout];
  }
}

- (void)_availableWidgetsUpdated:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"WGNewWidgetsCountKey"];
  v6 = [v5 intValue];

  widgetAvailableButton = self->_widgetAvailableButton;
  if (v6)
  {
    if (!widgetAvailableButton)
    {
      v8 = objc_alloc_init(WGNewWidgetsButton);
      v9 = self->_widgetAvailableButton;
      self->_widgetAvailableButton = v8;

      v10 = self->_widgetAvailableButton;
      v11 = [(WGWidgetListFooterView *)self legibilitySettings];
      [(WGNewWidgetsButton *)v10 setLegibilitySettings:v11];

      [(UIView *)self->_contentView addSubview:self->_widgetAvailableButton];
      widgetAvailableButton = self->_widgetAvailableButton;
    }

    [(WGNewWidgetsButton *)widgetAvailableButton setBadgeNumber:v6];
    [(WGWidgetListFooterView *)self invalidateIntrinsicContentSize];
    [(WGWidgetListFooterView *)self setNeedsLayout];
  }

  else
  {
    [(WGNewWidgetsButton *)widgetAvailableButton removeFromSuperview];
    v12 = self->_widgetAvailableButton;
    self->_widgetAvailableButton = 0;
  }

  v13 = [(WGWidgetListFooterView *)self delegate];
  [v13 widgetListFooterViewAvailableNewWidgetsUpdated:self];
}

- (id)_referenceFont
{
  referenceFont = self->_referenceFont;
  if (!referenceFont)
  {
    v4 = [MEMORY[0x277CF0D60] defaultFontProvider];
    v5 = [v4 preferredFontForTextStyle:*MEMORY[0x277D76940] hiFontStyle:1];
    v6 = self->_referenceFont;
    self->_referenceFont = v5;

    referenceFont = self->_referenceFont;
  }

  return referenceFont;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  if ((a6 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__WGWidgetListFooterView_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
    block[3] = &unk_279ED0948;
    v11 = v7;
    dispatch_async(v8, block);
  }

  return 0;
}

void __77__WGWidgetListFooterView_textView_shouldInteractWithURL_inRange_interaction___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D0AC70];
  v9[0] = *MEMORY[0x277D0AC58];
  v9[1] = v2;
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = MEMORY[0x277CBEC38];
  v9[2] = *MEMORY[0x277D0AC28];
  v10[2] = *MEMORY[0x277CD9308];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = *(a1 + 32);
  v8 = 0;
  v6 = [v4 openSensitiveURL:v5 withOptions:v3 error:&v8];
  v7 = v8;

  if ((v6 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __77__WGWidgetListFooterView_textView_shouldInteractWithURL_inRange_interaction___block_invoke_cold_1(v7);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = WGWidgetListFooterView;
  v4 = a3;
  [(WGWidgetListFooterView *)&v10 traitCollectionDidChange:v4];
  v5 = [(WGWidgetListFooterView *)self traitCollection:v10.receiver];
  v6 = [v4 preferredContentSizeCategory];

  if (v6)
  {
    v7 = [v5 preferredContentSizeCategory];
    v8 = [v7 isEqualToString:v6];

    if ((v8 & 1) == 0)
    {
      referenceFont = self->_referenceFont;
      self->_referenceFont = 0;

      [(WGWidgetListFooterView *)self invalidateSubviewGeometery];
      [(WGWidgetListFooterView *)self setNeedsLayout];
    }
  }
}

- (WGWidgetListFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __77__WGWidgetListFooterView_textView_shouldInteractWithURL_inRange_interaction___block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_27425E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to open Widget Footer View URL: %@", &v1, 0xCu);
}

@end