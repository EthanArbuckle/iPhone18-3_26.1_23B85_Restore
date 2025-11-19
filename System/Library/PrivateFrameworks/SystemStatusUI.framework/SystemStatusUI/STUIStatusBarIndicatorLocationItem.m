@interface STUIStatusBarIndicatorLocationItem
+ (id)groupWithPriority:(int64_t)a3;
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (STUIStatusBarImageView)prominentImageView;
- (STUIStatusBarIndicatorLocationItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (id)overriddenStyleAttributesForData:(id)a3 identifier:(id)a4;
- (id)systemImageNameForUpdate:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_prominentImageView;
@end

@implementation STUIStatusBarIndicatorLocationItem

- (STUIStatusBarImageView)prominentImageView
{
  prominentImageView = self->_prominentImageView;
  if (!prominentImageView)
  {
    [(STUIStatusBarIndicatorLocationItem *)self _create_prominentImageView];
    prominentImageView = self->_prominentImageView;
  }

  return prominentImageView;
}

- (void)_create_prominentImageView
{
  v3 = [STUIStatusBarImageView alloc];
  self->_prominentImageView = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (STUIStatusBarIndicatorLocationItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarIndicatorLocationItem;
  result = [(STUIStatusBarItem *)&v5 initWithIdentifier:a3 statusBar:a4];
  if (result)
  {
    result->_previousType = -1;
  }

  return result;
}

- (id)systemImageNameForUpdate:(id)a3
{
  v3 = [a3 data];
  v4 = [v3 locationEntry];
  v5 = [v4 type];

  if (v5 == 1)
  {
    return @"location";
  }

  else
  {
    return @"location.fill";
  }
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = STUIStatusBarIndicatorLocationItem;
  v4 = a3;
  v5 = [(STUIStatusBarItem *)&v12 createDisplayItemForIdentifier:v4];
  v6 = [objc_opt_class() prominentDisplayIdentifier];

  if (v6 == v4)
  {
    v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"location.circle.fill"];
    v8 = [v7 imageWithRenderingMode:1];

    [v8 alignmentRectInsets];
    UIEdgeInsetsAdd();
    v9 = [v8 imageWithAlignmentRectInsets:?];

    v10 = [(STUIStatusBarIndicatorLocationItem *)self prominentImageView];
    [v10 setImage:v9];
  }

  return v5;
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() prominentDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(STUIStatusBarIndicatorLocationItem *)self prominentImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarIndicatorLocationItem;
    v6 = [(STUIStatusBarIndicatorItem *)&v9 viewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [objc_opt_class() prominentDisplayIdentifier];

  if (v8 == v9)
  {
    v11 = [v7 locationEntry];
    if ([v11 isEnabled])
    {
      v12 = [v7 locationEntry];
      v10 = [v12 type] == 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = STUIStatusBarIndicatorLocationItem;
    v10 = [(STUIStatusBarItem *)&v14 canEnableDisplayItem:v6 fromData:v7];
  }

  return v10;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [objc_opt_class() defaultDisplayIdentifier];
  v10 = v9;
  if (v8 != v9)
  {

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v11 = [v6 dataChanged];

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = [v6 data];
  v13 = [v12 locationEntry];
  v14 = [v13 type];

  previousType = self->_previousType;
  v16 = previousType == 2 && v14 == 0;
  if (v16 || (!previousType ? (v17 = v14 == 2) : (v17 = 0), !v17 ? (v18 = 0) : (v18 = 1), v14 == previousType || previousType == -1 || (v18 & 1) != 0))
  {
    v21.receiver = self;
    v21.super_class = STUIStatusBarIndicatorLocationItem;
    v19 = [(STUIStatusBarIndicatorItem *)&v21 applyUpdate:v6 toDisplayItem:v7];
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__STUIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke;
    v22[3] = &unk_279D38740;
    v23 = v6;
    v24 = self;
    v19 = [STUIStatusBarAnimation animationWithBlock:v22];
  }

  self->_previousType = v14;
LABEL_19:

  return v19;
}

void __64__STUIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__STUIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_2;
  v16[3] = &unk_279D37F00;
  v17 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__STUIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_3;
  v11[3] = &unk_279D38D28;
  v12 = *(a1 + 32);
  v13 = v17;
  v14 = *(a1 + 40);
  v15 = v7;
  v9 = v7;
  v10 = v17;
  [v8 animateWithDuration:v16 animations:v11 completion:0.166666667];
}

uint64_t __64__STUIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.66, 0.66);
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:0.25];
}

void __64__STUIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v10.receiver = *(a1 + 48);
    v10.super_class = STUIStatusBarIndicatorLocationItem;
    v5 = objc_msgSendSuper2(&v10, sel_applyUpdate_toDisplayItem_, v4, v3);
    v6 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__STUIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_4;
    v8[3] = &unk_279D37F00;
    v9 = *(a1 + 40);
    [v6 animateWithDuration:v8 animations:*(a1 + 56) completion:0.166666667];
  }

  else
  {
    v7 = *(*(a1 + 56) + 16);

    v7();
  }
}

uint64_t __64__STUIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

- (id)overriddenStyleAttributesForData:(id)a3 identifier:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() prominentDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    [v6 setSymbolScale:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)groupWithPriority:(int64_t)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = [a1 defaultDisplayIdentifier];
  v6 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:1];

  v7 = [a1 prominentDisplayIdentifier];
  v8 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:2];
  v15[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = [v8 excludingPlacements:v9];

  v14[0] = v6;
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v12 = [(STUIStatusBarDisplayItemPlacementGroup *)STUIStatusBarDisplayItemPlacementLocationGroup groupWithPriority:a3 placements:v11];

  [v12 setRegularPlacement:v6];
  [v12 setProminentPlacement:v10];

  return v12;
}

@end