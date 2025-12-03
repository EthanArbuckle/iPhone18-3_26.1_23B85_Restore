@interface NCSupplementaryViewPrototypeRecipeContentSortingViewController
- (NCSupplementaryViewPrototypeRecipeContentSortingViewController)init;
- (id)_colorForSection:(unint64_t)section index:(unint64_t)index;
- (id)_groupingIdentifierForSection:(unint64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation NCSupplementaryViewPrototypeRecipeContentSortingViewController

- (NCSupplementaryViewPrototypeRecipeContentSortingViewController)init
{
  v22[5] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NCSupplementaryViewPrototypeRecipeContentSortingViewController;
  v2 = [(NCSupplementaryViewPrototypeRecipeViewController *)&v16 init];
  if (v2)
  {
    v21[0] = @"com.apple.ClockAngel";
    systemMintColor = [MEMORY[0x277D75348] systemMintColor];
    v21[1] = systemMintColor;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v22[0] = v14;
    v20[0] = @"com.apple.mediaremote";
    systemCyanColor = [MEMORY[0x277D75348] systemCyanColor];
    v20[1] = systemCyanColor;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v22[1] = v4;
    v19[0] = @"com.example.live-activity-1";
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    v19[1] = systemOrangeColor;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v22[2] = v6;
    v18[0] = @"com.example.live-activity-2";
    systemPurpleColor = [MEMORY[0x277D75348] systemPurpleColor];
    v18[1] = systemPurpleColor;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v22[3] = v8;
    v17[0] = @"com.example.live-activity-3";
    grayColor = [MEMORY[0x277D75348] grayColor];
    v17[1] = grayColor;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v22[4] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];
    exampleGroupIdentifiersAndBaseColors = v2->_exampleGroupIdentifiersAndBaseColors;
    v2->_exampleGroupIdentifiersAndBaseColors = v11;

    [(NCSupplementaryViewPrototypeRecipeViewController *)v2 updateConfiguration:&__block_literal_global_429];
  }

  return v2;
}

void __70__NCSupplementaryViewPrototypeRecipeContentSortingViewController_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75348];
  v3 = a2;
  v5 = [v2 greenColor];
  v4 = [v5 colorWithAlphaComponent:0.4];
  [v3 setTintColor:v4];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  tableView = self->_tableView;
  self->_tableView = v3;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setScrollEnabled:0];
  [(UITableView *)self->_tableView setAllowsSelection:1];
  v5 = self->_tableView;

  [(NCSupplementaryViewPrototypeRecipeContentSortingViewController *)self setView:v5];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell"];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"cell"];
    [v7 setSelectionStyle:0];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:clearColor2];
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = -[NCSupplementaryViewPrototypeRecipeContentSortingViewController _groupingIdentifierForSection:](self, "_groupingIdentifierForSection:", [pathCopy row]);
  v12 = [v10 stringWithFormat:@"Add %@", v11];

  textLabel = [v7 textLabel];
  [textLabel setText:v12];

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = [view dequeueReusableHeaderFooterViewWithIdentifier:{@"header", section}];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"header"];
  }

  v7 = v6;

  textLabel = [v7 textLabel];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sorting Configuration Menu"];
  [textLabel setText:v9];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = objc_alloc_init(_NCSupplementaryViewPrototypeSortingExampleViewController);
  delegate = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate];
  v8 = -[NCSupplementaryViewPrototypeRecipeContentSortingViewController _groupingIdentifierForSection:](self, "_groupingIdentifierForSection:", [pathCopy row]);
  v9 = [delegate prototypeRecipeViewController:self requestsCountForGroupWithIdentifier:v8];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __100__NCSupplementaryViewPrototypeRecipeContentSortingViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v16 = &unk_278372CC8;
  v17 = v8;
  selfCopy = self;
  v19 = pathCopy;
  v20 = v9;
  v10 = pathCopy;
  v11 = v8;
  [(NCSupplementaryViewPrototypeRecipeViewController *)v6 updateConfiguration:&v13];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number:%lu\n%@", v9, v11, v13, v14, v15, v16];
  [(_NCSupplementaryViewPrototypeSortingExampleViewController *)v6 setTitle:v12];
  [(NCSupplementaryViewPrototypeRecipeViewController *)v6 setDelegate:delegate];
  [delegate requestsInsertForPrototypeRecipeViewController:v6];
  [delegate notificationListBaseComponentDidSignificantUserInteraction:self];
}

void __100__NCSupplementaryViewPrototypeRecipeContentSortingViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGroupingIdentifier:v3];
  [v4 setGroupName:*(a1 + 32)];
  v5 = [*(a1 + 40) _colorForSection:objc_msgSend(*(a1 + 48) index:{"row"), *(a1 + 56)}];
  [v4 setTintColor:v5];
}

- (id)_groupingIdentifierForSection:(unint64_t)section
{
  v3 = [(NSArray *)self->_exampleGroupIdentifiersAndBaseColors objectAtIndex:section];
  v4 = [v3 objectAtIndex:0];

  return v4;
}

- (id)_colorForSection:(unint64_t)section index:(unint64_t)index
{
  v5 = [(NSArray *)self->_exampleGroupIdentifiersAndBaseColors objectAtIndex:section];
  v6 = [v5 objectAtIndex:1];

  v12 = 0.0;
  v13 = 0.0;
  v10 = 0;
  v11 = 0;
  [v6 getHue:&v13 saturation:&v12 brightness:&v11 alpha:&v10];
  v7 = ((arc4random() % 0xA) / 10.0 + 0.1) * (index + 1);
  v12 = vabdd_f64(v12, v7);
  v13 = vabdd_f64(v13, v7);
  v8 = [MEMORY[0x277D75348] colorWithHue:? saturation:? brightness:? alpha:?];

  return v8;
}

@end