@interface WFGlyphPickerTabBar
- (UITabBar)tabBar;
- (WFGlyphPickerTabBar)initWithTabNames:(id)a3 tabCharacters:(id)a4;
- (WFGlyphPickerTabBarDelegate)delegate;
- (void)setSelectedTabIndex:(unint64_t)a3;
- (void)tabBar:(id)a3 didSelectItem:(id)a4;
@end

@implementation WFGlyphPickerTabBar

- (UITabBar)tabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained;
}

- (WFGlyphPickerTabBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tabBar:(id)a3 didSelectItem:(id)a4
{
  v5 = a4;
  self->_selectedTabIndex = [v5 tag];
  v7 = [(WFGlyphPickerTabBar *)self delegate];
  v6 = [v5 tag];

  [v7 glyphPickerTabBar:self didSelectTabAtIndex:v6];
}

- (void)setSelectedTabIndex:(unint64_t)a3
{
  self->_selectedTabIndex = a3;
  v8 = [(WFGlyphPickerTabBar *)self tabBar];
  v5 = [v8 items];
  v6 = [v5 objectAtIndex:a3];
  v7 = [(WFGlyphPickerTabBar *)self tabBar];
  [v7 setSelectedItem:v6];
}

- (WFGlyphPickerTabBar)initWithTabNames:(id)a3 tabCharacters:(id)a4
{
  v43[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  if (v9 != [v8 count])
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"WFGlyphPickerTabBar.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"tabNames.count == tabCharacters.count"}];
  }

  v42.receiver = self;
  v42.super_class = WFGlyphPickerTabBar;
  v10 = [(WFGlyphPickerTabBar *)&v42 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v10)
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.09];
    [(WFGlyphPickerTabBar *)v10 setBackgroundColor:v11];

    v12 = objc_opt_new();
    [v12 setDrawBackground:0];
    v13 = objc_alloc_init(MEMORY[0x277D75B10]);
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setDelegate:v10];
    [v13 setItemPositioning:2];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __54__WFGlyphPickerTabBar_initWithTabNames_tabCharacters___block_invoke;
    v39[3] = &unk_279EE7B00;
    v40 = v12;
    v41 = v7;
    v38 = v12;
    v14 = [v8 if_map:v39];
    [v13 setItems:v14];

    v15 = [v13 items];
    v16 = [v15 firstObject];
    [v13 setSelectedItem:v16];

    [(WFGlyphPickerTabBar *)v10 addSubview:v13];
    objc_storeWeak(&v10->_tabBar, v13);
    v17 = [(WFGlyphPickerTabBar *)v10 safeAreaLayoutGuide];
    v31 = MEMORY[0x277CCAAD0];
    v37 = [v13 leadingAnchor];
    v36 = [v17 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v43[0] = v35;
    v33 = [v13 trailingAnchor];
    v34 = v17;
    v32 = [v17 trailingAnchor];
    v30 = [v33 constraintEqualToAnchor:v32];
    v43[1] = v30;
    v29 = [v13 bottomAnchor];
    v18 = [v17 bottomAnchor];
    v19 = [v29 constraintEqualToAnchor:v18];
    v43[2] = v19;
    v20 = [(WFGlyphPickerTabBar *)v10 heightAnchor];
    v21 = [v13 heightAnchor];
    [v20 constraintEqualToAnchor:v21];
    v22 = v8;
    v24 = v23 = v7;
    v43[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    [v31 activateConstraints:v25];

    v7 = v23;
    v8 = v22;

    v26 = v10;
  }

  return v10;
}

id __54__WFGlyphPickerTabBar_initWithTabNames_tabCharacters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [*(a1 + 32) setGlyphCharacter:{objc_msgSend(a2, "unsignedIntegerValue")}];
  v5 = objc_alloc(MEMORY[0x277D75B28]);
  v6 = [*(a1 + 40) objectAtIndex:a3];
  v7 = [*(a1 + 32) imageWithSize:{17.0, 17.0}];
  v8 = [v7 UIImage];
  v9 = [v5 initWithTitle:v6 image:v8 tag:a3];

  return v9;
}

@end