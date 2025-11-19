@interface WFColorPicker
- (CGSize)intrinsicContentSize;
- (WFColorPicker)initWithFrame:(CGRect)a3;
- (WFColorPickerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setSelectedColor:(id)a3;
@end

@implementation WFColorPicker

- (WFColorPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSelectedColor:(id)a3
{
  objc_storeStrong(&self->_selectedColor, a3);
  v5 = a3;
  v9 = [(WFColorPicker *)self colorCollectionView];
  v6 = MEMORY[0x277CCAA70];
  v7 = [(WFColorPicker *)self colors];
  v8 = [v6 indexPathForItem:objc_msgSend(v7 inSection:{"indexOfObject:", v5), 0}];

  [v9 selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WFColorPicker *)self colors];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];
  selectedColor = self->_selectedColor;
  self->_selectedColor = v8;

  v10 = [(WFColorPicker *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v11 = [(WFColorPicker *)self delegate];
    [v11 colorPicker:self didSelectColor:self->_selectedColor];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"CellIdentifier" forIndexPath:v6];
  v8 = [(WFColorPicker *)self colors];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];
  v10 = [v9 paletteGradient];
  [v7 setGradient:v10];

  v11 = [(WFColorPicker *)self colorNames];
  v12 = [v6 item];

  v13 = [v11 objectAtIndexedSubscript:v12];
  [v7 setColorName:v13];

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(WFColorPicker *)self colors:a3];
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

  v9 = [(WFColorPicker *)self colorCollectionView];
  v10 = [v9 collectionViewLayout];

  [v10 setItemSize:{v8, v8}];
  [v10 setMinimumLineSpacing:v8 / 3.0];
  [v10 setMinimumInteritemSpacing:v8 / 3.0];
  [v10 setSectionInset:{v5 + v8 * -4.0, v8 / 3.0, v8 / 3.0, v8 / 3.0}];
}

- (WFColorPicker)initWithFrame:(CGRect)a3
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = WFColorPicker;
  v3 = [(WFColorPicker *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(WFColorPicker *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x277D79E20] workflowPalette];
    [(WFColorPicker *)v3 setColors:v5];

    v6 = [MEMORY[0x277D79E20] workflowPaletteNames];
    [(WFColorPicker *)v3 setColorNames:v6];

    v29 = objc_alloc_init(MEMORY[0x277D752F0]);
    v7 = objc_alloc(MEMORY[0x277D752A0]);
    v8 = [v7 initWithFrame:v29 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v9 = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:v9];

    [v8 setScrollEnabled:0];
    [v8 setDelaysContentTouches:0];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setDelegate:v3];
    [v8 setDataSource:v3];
    [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CellIdentifier"];
    [(WFColorPicker *)v3 addSubview:v8];
    [(WFColorPicker *)v3 setColorCollectionView:v8];
    v22 = MEMORY[0x277CCAAD0];
    v28 = [v8 topAnchor];
    v27 = [(WFColorPicker *)v3 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v25 = [v8 leadingAnchor];
    v24 = [(WFColorPicker *)v3 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v31[1] = v23;
    v10 = [v8 trailingAnchor];
    v11 = [(WFColorPicker *)v3 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v31[2] = v12;
    v13 = [v8 bottomAnchor];
    v14 = [(WFColorPicker *)v3 safeAreaLayoutGuide];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
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