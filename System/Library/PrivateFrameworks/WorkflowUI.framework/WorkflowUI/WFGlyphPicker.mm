@interface WFGlyphPicker
- (UICollectionView)collectionView;
- (UICollectionViewFlowLayout)collectionViewLayout;
- (UIEdgeInsets)sectionInset;
- (WFGlyphPicker)initWithControl:(int64_t)control glyphDimension:(double)dimension sectionInset:(UIEdgeInsets)inset useSystemGlyphsOnly:(BOOL)only useOutlineGlyphsOnly:(BOOL)glyphsOnly;
- (WFGlyphPickerDelegate)delegate;
- (WFGlyphPickerTabBar)tabBar;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)indexPathForGlyphCharacter:(unsigned __int16)character;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (unsigned)glyphCharacterAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)glyphPickerTabBar:(id)bar didSelectTabAtIndex:(unint64_t)index;
- (void)layoutSubviews;
- (void)pickedSegment:(id)segment;
- (void)safeAreaInsetsDidChange;
- (void)scrollToSection:(int64_t)section;
- (void)setSelectedGlyphCharacter:(unsigned __int16)character;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFGlyphPicker

- (WFGlyphPickerTabBar)tabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained;
}

- (UICollectionViewFlowLayout)collectionViewLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewLayout);

  return WeakRetained;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (UIEdgeInsets)sectionInset
{
  top = self->_sectionInset.top;
  left = self->_sectionInset.left;
  bottom = self->_sectionInset.bottom;
  right = self->_sectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (WFGlyphPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollToSection:(int64_t)section
{
  mEMORY[0x277CFC248] = [MEMORY[0x277CFC248] sharedContext];
  if ([mEMORY[0x277CFC248] shouldReverseLayoutDirection])
  {
    v6 = 32;
  }

  else
  {
    v6 = 8;
  }

  collectionView = [(WFGlyphPicker *)self collectionView];
  v7 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:section];
  [collectionView scrollToItemAtIndexPath:v7 atScrollPosition:v6 animated:0];
}

- (void)glyphPickerTabBar:(id)bar didSelectTabAtIndex:(unint64_t)index
{
  [(WFGlyphPicker *)self scrollToSection:index];

  [(WFGlyphPicker *)self setLastEvent:2];
}

- (void)pickedSegment:(id)segment
{
  -[WFGlyphPicker scrollToSection:](self, "scrollToSection:", [segment selectedSegmentIndex]);

  [(WFGlyphPicker *)self setLastEvent:1];
}

- (id)indexPathForGlyphCharacter:(unsigned __int16)character
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  glyphSections = [(WFGlyphPicker *)self glyphSections];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WFGlyphPicker_indexPathForGlyphCharacter___block_invoke;
  v7[3] = &unk_279EE7788;
  characterCopy = character;
  v7[4] = &v9;
  [glyphSections enumerateObjectsUsingBlock:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __44__WFGlyphPicker_indexPathForGlyphCharacter___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = MEMORY[0x277CCABB0];
  v8 = *(a1 + 40);
  v9 = a2;
  v10 = [v7 numberWithUnsignedShort:v8];
  v11 = [v9 indexOfObject:v10];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:a3];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }
}

- (unsigned)glyphCharacterAtIndexPath:(id)path
{
  pathCopy = path;
  glyphSections = [(WFGlyphPicker *)self glyphSections];
  v6 = [glyphSections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  item = [pathCopy item];
  v8 = [v6 objectAtIndex:item];
  LOWORD(pathCopy) = [v8 unsignedIntegerValue];

  return pathCopy;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v28 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (![(WFGlyphPicker *)self lastEvent])
  {
    v7 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    indexPathsForVisibleItems = [viewCopy indexPathsForVisibleItems];
    v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(indexPathsForVisibleItems);
          }

          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v23 + 1) + 8 * v12), "section")}];
          [v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [indexPathsForVisibleItems countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    allObjects = [v7 allObjects];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__WFGlyphPicker_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
    v21[3] = &unk_279EE7760;
    v22 = v7;
    v15 = v7;
    v16 = [allObjects sortedArrayUsingComparator:v21];

    lastObject = [v16 lastObject];
    unsignedIntegerValue = [lastObject unsignedIntegerValue];

    control = [(WFGlyphPicker *)self control];
    if (control == 1)
    {
      segmentedControl = [(WFGlyphPicker *)self segmentedControl];
      [segmentedControl setSelectedSegmentIndex:unsignedIntegerValue];
    }

    else
    {
      if (control)
      {
LABEL_14:

        goto LABEL_15;
      }

      segmentedControl = [(WFGlyphPicker *)self tabBar];
      [segmentedControl setSelectedTabIndex:unsignedIntegerValue];
    }

    goto LABEL_14;
  }

LABEL_15:
}

uint64_t __67__WFGlyphPicker_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  return v7 - v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  self->_selectedGlyphCharacter = [(WFGlyphPicker *)self glyphCharacterAtIndexPath:path];
  delegate = [(WFGlyphPicker *)self delegate];
  [delegate glyphPicker:self didSelectGlyphWithCharacter:self->_selectedGlyphCharacter];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:pathCopy];
  v8 = [(WFGlyphPicker *)self glyphCharacterAtIndexPath:pathCopy];

  [v7 setGlyphCharacter:v8];
  [v7 setOutline:{-[WFGlyphPicker useOutlineGlyphsOnly](self, "useOutlineGlyphsOnly")}];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  glyphSections = [(WFGlyphPicker *)self glyphSections];
  v6 = [glyphSections objectAtIndex:section];
  v7 = [v6 count];

  return v7;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  glyphSections = [(WFGlyphPicker *)self glyphSections];
  v4 = [glyphSections count];

  return v4;
}

- (void)setSelectedGlyphCharacter:(unsigned __int16)character
{
  self->_selectedGlyphCharacter = character;
  v4 = [(WFGlyphPicker *)self indexPathForGlyphCharacter:?];
  if (v4)
  {
    v6 = v4;
    collectionView = [(WFGlyphPicker *)self collectionView];
    [collectionView selectItemAtIndexPath:v6 animated:0 scrollPosition:16];

    v4 = v6;
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = WFGlyphPicker;
  [(WFGlyphPicker *)&v3 safeAreaInsetsDidChange];
  [(WFGlyphPicker *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = WFGlyphPicker;
  changeCopy = change;
  [(WFGlyphPicker *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(WFGlyphPicker *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__WFGlyphPicker_traitCollectionDidChange___block_invoke;
    v8[3] = &unk_279EE8A78;
    v8[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v8];
  }
}

void __42__WFGlyphPicker_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 reloadData];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = WFGlyphPicker;
  [(WFGlyphPicker *)&v7 layoutSubviews];
  collectionView = [(WFGlyphPicker *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    collectionView2 = [(WFGlyphPicker *)self collectionView];
    [collectionView2 selectItemAtIndexPath:firstObject animated:0 scrollPosition:16];
  }
}

- (WFGlyphPicker)initWithControl:(int64_t)control glyphDimension:(double)dimension sectionInset:(UIEdgeInsets)inset useSystemGlyphsOnly:(BOOL)only useOutlineGlyphsOnly:(BOOL)glyphsOnly
{
  glyphsOnlyCopy = glyphsOnly;
  onlyCopy = only;
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  v97[3] = *MEMORY[0x277D85DE8];
  v93.receiver = self;
  v93.super_class = WFGlyphPicker;
  v15 = [(WFGlyphPicker *)&v93 init];
  v16 = v15;
  if (v15)
  {
    v15->_control = control;
    v15->_glyphDimension = dimension;
    v15->_sectionInset.top = top;
    v15->_sectionInset.left = left;
    v15->_sectionInset.bottom = bottom;
    v15->_sectionInset.right = right;
    v15->_useOutlineGlyphsOnly = glyphsOnlyCopy;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WFGlyphPicker *)v16 setBackgroundColor:systemBackgroundColor];

    v18 = objc_opt_new();
    v19 = 0;
    v20 = onlyCopy && glyphsOnlyCopy;
    while (v19 < [objc_opt_class() numberOfSections])
    {
      if (v20)
      {
        v21 = WFSystemOutlineGlyphCharactersInSection();
      }

      else
      {
        if (onlyCopy)
        {
          WFSystemGlyphCharactersInSection();
        }

        else
        {
          WFGlyphCharactersInSection();
        }
        v21 = ;
      }

      v22 = v21;
      [v18 addObject:v21];

      ++v19;
    }

    objc_storeStrong(&v16->_glyphSections, v18);
    v23 = objc_alloc_init(MEMORY[0x277D752F0]);
    [(WFGlyphPicker *)v16 glyphDimension];
    v25 = v24;
    [(WFGlyphPicker *)v16 glyphDimension];
    [v23 setItemSize:{v25, v26}];
    [v23 setMinimumLineSpacing:4.0];
    [v23 setMinimumInteritemSpacing:4.0];
    [v23 setScrollDirection:1];
    [(WFGlyphPicker *)v16 sectionInset];
    [v23 setSectionInset:?];
    objc_storeWeak(&v16->_collectionViewLayout, v23);
    v27 = [WFGlyphPickerCollectionView alloc];
    v28 = [(WFGlyphPickerCollectionView *)v27 initWithFrame:v23 collectionViewLayout:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(WFGlyphPickerCollectionView *)v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFGlyphPickerCollectionView *)v28 setDelegate:v16];
    [(WFGlyphPickerCollectionView *)v28 setDataSource:v16];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFGlyphPickerCollectionView *)v28 setBackgroundColor:clearColor];

    [(WFGlyphPickerCollectionView *)v28 setShowsHorizontalScrollIndicator:0];
    [(WFGlyphPickerCollectionView *)v28 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];
    [(WFGlyphPicker *)v16 addSubview:v28];
    objc_storeWeak(&v16->_collectionView, v28);
    safeAreaLayoutGuide = [(WFGlyphPicker *)v16 safeAreaLayoutGuide];
    control = [(WFGlyphPicker *)v16 control];
    if (control)
    {
      if (control != 1)
      {
LABEL_16:
        v68 = v16;

        goto LABEL_17;
      }

      v92 = v23;
      v32 = objc_alloc(MEMORY[0x277D75A08]);
      v33 = WFNameForGlyphSection();
      v95[0] = v33;
      WFNameForGlyphSection();
      v35 = v34 = safeAreaLayoutGuide;
      v95[1] = v35;
      v36 = WFNameForGlyphSection();
      v95[2] = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:3];
      v38 = [v32 initWithItems:v37];

      safeAreaLayoutGuide = v34;
      [(UISegmentedControl *)v38 addTarget:v16 action:sel_pickedSegment_ forControlEvents:4096];
      [(UISegmentedControl *)v38 setSelectedSegmentIndex:0];
      [(UISegmentedControl *)v38 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(WFGlyphPicker *)v16 addSubview:v38];
      segmentedControl = v16->_segmentedControl;
      v16->_segmentedControl = v38;
      v40 = v38;

      v72 = MEMORY[0x277CCAAD0];
      topAnchor = [(UISegmentedControl *)v40 topAnchor];
      topAnchor2 = [safeAreaLayoutGuide topAnchor];
      v43 = [(WFGlyphPickerTabBar *)topAnchor constraintEqualToAnchor:topAnchor2];
      v94[0] = v43;
      leadingAnchor = [(UISegmentedControl *)v40 leadingAnchor];
      leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
      v91 = leadingAnchor;
      leadingAnchor5 = [leadingAnchor constraintEqualToAnchor:16.0 constant:?];
      v94[1] = leadingAnchor5;
      trailingAnchor = [(UISegmentedControl *)v40 trailingAnchor];
      trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
      v88 = trailingAnchor;
      trailingAnchor6 = [trailingAnchor constraintEqualToAnchor:-16.0 constant:?];
      v94[2] = trailingAnchor6;
      topAnchor3 = [(WFGlyphPickerCollectionView *)v28 topAnchor];
      v81 = v40;
      bottomAnchor = [(UISegmentedControl *)v40 bottomAnchor];
      v85 = topAnchor3;
      v41TopAnchor = [topAnchor3 constraintEqualToAnchor:?];
      v94[3] = v41TopAnchor;
      leadingAnchor3 = [(WFGlyphPickerCollectionView *)v28 leadingAnchor];
      [safeAreaLayoutGuide leadingAnchor];
      v80 = v82 = leadingAnchor3;
      leadingAnchor7 = [leadingAnchor3 constraintEqualToAnchor:?];
      v94[4] = leadingAnchor7;
      trailingAnchor3 = [(WFGlyphPickerCollectionView *)v28 trailingAnchor];
      trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
      v78 = trailingAnchor3;
      trailingAnchor8 = [trailingAnchor3 constraintEqualToAnchor:?];
      v94[5] = trailingAnchor8;
      bottomAnchor2 = [(WFGlyphPickerCollectionView *)v28 bottomAnchor];
      bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
      v75 = bottomAnchor2;
      bottomAnchor6 = [bottomAnchor2 constraintEqualToAnchor:?];
      v94[6] = bottomAnchor6;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:7];
      [v72 activateConstraints:v51];
    }

    else
    {
      v92 = v23;
      v52 = [WFGlyphPickerTabBar alloc];
      v53 = WFNameForGlyphSection();
      v97[0] = v53;
      WFNameForGlyphSection();
      v55 = v54 = safeAreaLayoutGuide;
      v97[1] = v55;
      v56 = WFNameForGlyphSection();
      v97[2] = v56;
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:3];
      topAnchor = [(WFGlyphPickerTabBar *)v52 initWithTabNames:v57 tabCharacters:&unk_2883C2138];

      [(WFGlyphPickerTabBar *)topAnchor setTranslatesAutoresizingMaskIntoConstraints:0];
      [(WFGlyphPickerTabBar *)topAnchor setDelegate:v16];
      [(WFGlyphPicker *)v16 addSubview:topAnchor];
      objc_storeWeak(&v16->_tabBar, topAnchor);
      v73 = MEMORY[0x277CCAAD0];
      topAnchor4 = [(WFGlyphPickerCollectionView *)v28 topAnchor];
      topAnchor5 = [v54 topAnchor];
      v91 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      v96[0] = v91;
      leadingAnchor4 = [(WFGlyphPickerCollectionView *)v28 leadingAnchor];
      leadingAnchor5 = [v54 leadingAnchor];
      leadingAnchor2 = leadingAnchor4;
      v88 = [leadingAnchor4 constraintEqualToAnchor:?];
      v96[1] = v88;
      trailingAnchor5 = [(WFGlyphPickerCollectionView *)v28 trailingAnchor];
      trailingAnchor6 = [v54 trailingAnchor];
      trailingAnchor2 = trailingAnchor5;
      v85 = [trailingAnchor5 constraintEqualToAnchor:?];
      v96[2] = v85;
      bottomAnchor4 = [(WFGlyphPickerCollectionView *)v28 bottomAnchor];
      v41TopAnchor = [(WFGlyphPickerTabBar *)topAnchor topAnchor];
      bottomAnchor = bottomAnchor4;
      v82 = [bottomAnchor4 constraintEqualToAnchor:?];
      v96[3] = v82;
      leadingAnchor6 = [(WFGlyphPickerTabBar *)topAnchor leadingAnchor];
      leadingAnchor7 = [v54 leadingAnchor];
      v80 = leadingAnchor6;
      v78 = [leadingAnchor6 constraintEqualToAnchor:?];
      v96[4] = v78;
      trailingAnchor7 = [(WFGlyphPickerTabBar *)topAnchor trailingAnchor];
      trailingAnchor8 = [v54 trailingAnchor];
      trailingAnchor4 = trailingAnchor7;
      v75 = [trailingAnchor7 constraintEqualToAnchor:?];
      v96[5] = v75;
      bottomAnchor5 = [(WFGlyphPickerTabBar *)topAnchor bottomAnchor];
      bottomAnchor6 = [v54 bottomAnchor];
      bottomAnchor3 = bottomAnchor5;
      v51 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v96[6] = v51;
      trailingAnchor9 = [(WFGlyphPickerCollectionView *)v28 trailingAnchor];
      trailingAnchor10 = [v54 trailingAnchor];
      v81 = trailingAnchor9;
      v66 = [(UISegmentedControl *)trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
      v96[7] = v66;
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:8];
      [v73 activateConstraints:v67];

      safeAreaLayoutGuide = v54;
      topAnchor2 = topAnchor4;

      v43 = topAnchor5;
    }

    v23 = v92;
    goto LABEL_16;
  }

LABEL_17:

  return v16;
}

@end