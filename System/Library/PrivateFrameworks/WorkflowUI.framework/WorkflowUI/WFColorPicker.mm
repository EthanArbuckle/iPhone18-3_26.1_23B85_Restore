@interface WFColorPicker
- (CGSize)intrinsicContentSize;
- (WFColorPicker)initWithFrame:(CGRect)frame;
- (WFColorPickerDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setSelectedColor:(id)color;
@end

@implementation WFColorPicker

- (WFColorPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSelectedColor:(id)color
{
  objc_storeStrong(&self->_selectedColor, color);
  colorCopy = color;
  colorCollectionView = [(WFColorPicker *)self colorCollectionView];
  v6 = MEMORY[0x277CCAA70];
  colors = [(WFColorPicker *)self colors];
  v8 = [v6 indexPathForItem:objc_msgSend(colors inSection:{"indexOfObject:", colorCopy), 0}];

  [colorCollectionView selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  colors = [(WFColorPicker *)self colors];
  item = [pathCopy item];

  v8 = [colors objectAtIndexedSubscript:item];
  selectedColor = self->_selectedColor;
  self->_selectedColor = v8;

  delegate = [(WFColorPicker *)self delegate];
  LOBYTE(colors) = objc_opt_respondsToSelector();

  if (colors)
  {
    delegate2 = [(WFColorPicker *)self delegate];
    [delegate2 colorPicker:self didSelectColor:self->_selectedColor];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"CellIdentifier" forIndexPath:pathCopy];
  colors = [(WFColorPicker *)self colors];
  v9 = [colors objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  paletteGradient = [v9 paletteGradient];
  [v7 setGradient:paletteGradient];

  colorNames = [(WFColorPicker *)self colorNames];
  item = [pathCopy item];

  v13 = [colorNames objectAtIndexedSubscript:item];
  [v7 setColorName:v13];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(WFColorPicker *)self colors:view];
  v5 = [v4 count];

  return v5;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = WFColorPicker;
  [(WFColorPicker *)&v3 safeAreaInsetsDidChange];
  [(WFColorPicker *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 205.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = WFColorPicker;
  [(WFColorPicker *)&v11 layoutSubviews];
  [(WFColorPicker *)self bounds];
  Height = CGRectGetHeight(v12);
  [(WFColorPicker *)self safeAreaInsets];
  v5 = Height - v4;
  v6 = Height - v4 + -195.000007;
  v7 = floor(v6 * 0.230769232) + 45.0;
  if (v6 >= 0.0)
  {
    v8 = 45.0;
  }

  else
  {
    v8 = v7;
  }

  colorCollectionView = [(WFColorPicker *)self colorCollectionView];
  collectionViewLayout = [colorCollectionView collectionViewLayout];

  [collectionViewLayout setItemSize:{v8, v8}];
  [collectionViewLayout setMinimumLineSpacing:v8 / 3.0];
  [collectionViewLayout setMinimumInteritemSpacing:v8 / 3.0];
  [collectionViewLayout setSectionInset:{v5 + v8 * -4.0, v8 / 3.0, v8 / 3.0, v8 / 3.0}];
}

- (WFColorPicker)initWithFrame:(CGRect)frame
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = WFColorPicker;
  v3 = [(WFColorPicker *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFColorPicker *)v3 setBackgroundColor:clearColor];

    workflowPalette = [MEMORY[0x277D79E20] workflowPalette];
    [(WFColorPicker *)v3 setColors:workflowPalette];

    workflowPaletteNames = [MEMORY[0x277D79E20] workflowPaletteNames];
    [(WFColorPicker *)v3 setColorNames:workflowPaletteNames];

    v29 = objc_alloc_init(MEMORY[0x277D752F0]);
    v7 = objc_alloc(MEMORY[0x277D752A0]);
    v8 = [v7 initWithFrame:v29 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:clearColor2];

    [v8 setScrollEnabled:0];
    [v8 setDelaysContentTouches:0];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setDelegate:v3];
    [v8 setDataSource:v3];
    [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CellIdentifier"];
    [(WFColorPicker *)v3 addSubview:v8];
    [(WFColorPicker *)v3 setColorCollectionView:v8];
    v22 = MEMORY[0x277CCAAD0];
    topAnchor = [v8 topAnchor];
    topAnchor2 = [(WFColorPicker *)v3 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[0] = v26;
    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [(WFColorPicker *)v3 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[1] = v23;
    trailingAnchor = [v8 trailingAnchor];
    trailingAnchor2 = [(WFColorPicker *)v3 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[2] = v12;
    bottomAnchor = [v8 bottomAnchor];
    safeAreaLayoutGuide = [(WFColorPicker *)v3 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v22 activateConstraints:v17];

    LODWORD(v18) = 1144750080;
    [(WFColorPicker *)v3 setContentCompressionResistancePriority:1 forAxis:v18];
    LODWORD(v19) = 1144750080;
    [(WFColorPicker *)v3 setContentHuggingPriority:1 forAxis:v19];
    v20 = v3;
  }

  return v3;
}

@end