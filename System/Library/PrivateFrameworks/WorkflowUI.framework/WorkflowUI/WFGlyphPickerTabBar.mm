@interface WFGlyphPickerTabBar
- (UITabBar)tabBar;
- (WFGlyphPickerTabBar)initWithTabNames:(id)names tabCharacters:(id)characters;
- (WFGlyphPickerTabBarDelegate)delegate;
- (void)setSelectedTabIndex:(unint64_t)index;
- (void)tabBar:(id)bar didSelectItem:(id)item;
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

- (void)tabBar:(id)bar didSelectItem:(id)item
{
  itemCopy = item;
  self->_selectedTabIndex = [itemCopy tag];
  delegate = [(WFGlyphPickerTabBar *)self delegate];
  v6 = [itemCopy tag];

  [delegate glyphPickerTabBar:self didSelectTabAtIndex:v6];
}

- (void)setSelectedTabIndex:(unint64_t)index
{
  self->_selectedTabIndex = index;
  tabBar = [(WFGlyphPickerTabBar *)self tabBar];
  items = [tabBar items];
  v6 = [items objectAtIndex:index];
  tabBar2 = [(WFGlyphPickerTabBar *)self tabBar];
  [tabBar2 setSelectedItem:v6];
}

- (WFGlyphPickerTabBar)initWithTabNames:(id)names tabCharacters:(id)characters
{
  v43[4] = *MEMORY[0x277D85DE8];
  namesCopy = names;
  charactersCopy = characters;
  v9 = [namesCopy count];
  if (v9 != [charactersCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFGlyphPickerTabBar.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"tabNames.count == tabCharacters.count"}];
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
    v41 = namesCopy;
    v38 = v12;
    v14 = [charactersCopy if_map:v39];
    [v13 setItems:v14];

    items = [v13 items];
    firstObject = [items firstObject];
    [v13 setSelectedItem:firstObject];

    [(WFGlyphPickerTabBar *)v10 addSubview:v13];
    objc_storeWeak(&v10->_tabBar, v13);
    safeAreaLayoutGuide = [(WFGlyphPickerTabBar *)v10 safeAreaLayoutGuide];
    v31 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v13 leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v43[0] = v35;
    trailingAnchor = [v13 trailingAnchor];
    v34 = safeAreaLayoutGuide;
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v43[1] = v30;
    bottomAnchor = [v13 bottomAnchor];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v43[2] = v19;
    heightAnchor = [(WFGlyphPickerTabBar *)v10 heightAnchor];
    heightAnchor2 = [v13 heightAnchor];
    [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v22 = charactersCopy;
    v24 = v23 = namesCopy;
    v43[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    [v31 activateConstraints:v25];

    namesCopy = v23;
    charactersCopy = v22;

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