@interface NCSupplementaryViewPrototypeRecipeMenuViewController
- (NCSupplementaryViewPrototypeRecipeMenuViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation NCSupplementaryViewPrototypeRecipeMenuViewController

- (NCSupplementaryViewPrototypeRecipeMenuViewController)init
{
  v5.receiver = self;
  v5.super_class = NCSupplementaryViewPrototypeRecipeMenuViewController;
  v2 = [(NCSupplementaryViewPrototypeRecipeViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCSupplementaryViewPrototypeRecipeViewController *)v2 updateConfiguration:&__block_literal_global_31];
  }

  return v3;
}

void __60__NCSupplementaryViewPrototypeRecipeMenuViewController_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75348];
  v3 = a2;
  v5 = [v2 blackColor];
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
  [(UITableView *)self->_tableView setAllowsSelection:1];
  [(UITableView *)self->_tableView setScrollEnabled:0];
  v5 = self->_tableView;

  [(NCSupplementaryViewPrototypeRecipeMenuViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = NCSupplementaryViewPrototypeRecipeMenuViewController;
  [(NCSupplementaryViewPrototypeRecipeViewController *)&v5 viewDidLoad];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  viewControllers = self->_viewControllers;
  self->_viewControllers = v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"cell"];
    [v7 setSelectionStyle:0];
  }

  v8 = [-[NSArray objectAtIndex:](self->_viewControllers objectAtIndex:{objc_msgSend(v6, "row")), "title"}];
  v9 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v9];

  v10 = [v7 textLabel];
  [v10 setText:v8];

  v11 = [v7 textLabel];
  v12 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  v13 = [v12 textColor];
  [v11 setTextColor:v13];

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:@"header", a4];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"header"];
  }

  v6 = [v5 textLabel];
  [v6 setText:@"Supplementary Prototype Options"];

  v7 = [v5 textLabel];
  v8 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  v9 = [v8 textColor];
  [v7 setTextColor:v9];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate];
  viewControllers = self->_viewControllers;
  v7 = [v5 row];

  v8 = objc_alloc_init([(NSArray *)viewControllers objectAtIndex:v7]);
  [v8 setDelegate:v9];
  [v9 requestsInsertForPrototypeRecipeViewController:v8];
  [v9 notificationListBaseComponentDidSignificantUserInteraction:self];
}

@end