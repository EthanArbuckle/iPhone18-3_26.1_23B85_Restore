@interface SUMenuViewController
- (BOOL)_sendDidCancel;
- (CGSize)maximumViewSize;
- (CGSize)minimumViewSize;
- (SUMenuViewController)init;
- (id)_tableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)loadView;
- (void)performActionForMenuItemAtIndex:(int64_t)index;
- (void)reload;
- (void)setSelectedIndex:(int64_t)index;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SUMenuViewController

- (SUMenuViewController)init
{
  v3.receiver = self;
  v3.super_class = SUMenuViewController;
  result = [(SUViewController *)&v3 init];
  if (result)
  {
    result->_selectedIndex = -1;
  }

  return result;
}

- (void)dealloc
{
  [(UITableView *)self->_tableView setDataSource:0];
  [(UITableView *)self->_tableView setDelegate:0];

  v3.receiver = self;
  v3.super_class = SUMenuViewController;
  [(SUViewController *)&v3 dealloc];
}

- (void)performActionForMenuItemAtIndex:(int64_t)index
{
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
    delegate = self->_delegate;

    [(SUMenuViewControllerDelegate *)delegate menuViewController:self didSelectItemAtIndex:index];
  }

  else
  {

    [(UIViewController *)self dismissAnimated:1];
  }
}

- (void)setSelectedIndex:(int64_t)index
{
  if (self->_selectedIndex != index)
  {
    self->_selectedIndex = index;
    [(SUMenuViewController *)self reload];
  }
}

- (void)loadView
{
  [(SUMenuViewController *)self setView:[(SUMenuViewController *)self _tableView]];

  [(SUMenuViewController *)self reload];
}

- (CGSize)maximumViewSize
{
  [(SUMenuViewController *)self view];
  [(UITableView *)self->_tableView rowHeight];
  v4 = v3 * 15.0;
  v5 = 0.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (CGSize)minimumViewSize
{
  numberOfMenuItems = [(SUMenuViewController *)self numberOfMenuItems];
  if (numberOfMenuItems <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = numberOfMenuItems;
  }

  [(SUMenuViewController *)self view];
  [(UITableView *)self->_tableView rowHeight];
  v6 = v5 * v4;
  v7 = 0.0;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)reload
{
  [(UITableView *)self->_tableView reloadData];
  [(SUViewController *)self reloadContentSizeForViewInPopover];
  v3.receiver = self;
  v3.super_class = SUMenuViewController;
  [(SUViewController *)&v3 reload];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(UITableView *)self->_tableView flashScrollIndicators];
  v5.receiver = self;
  v5.super_class = SUMenuViewController;
  [(SUViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  -[SUMenuViewController setSelectedIndex:](self, "setSelectedIndex:", [path row]);
  v6 = [path row];

  [(SUMenuViewController *)self performActionForMenuItemAtIndex:v6];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [path row];
  v7 = [view dequeueReusableCellWithIdentifier:@"i"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"i"];
  }

  if (v6 == self->_selectedIndex)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  [v7 setAccessoryType:v8];
  textLabel = [v7 textLabel];
  [textLabel setText:{-[SUMenuViewController titleOfMenuItemAtIndex:](self, "titleOfMenuItemAtIndex:", v6)}];
  v10 = [(SUMenuViewController *)self isMenuItemEnabledAtIndex:v6];
  [textLabel setEnabled:v10];
  [v7 setUserInteractionEnabled:v10];
  return v7;
}

- (BOOL)_sendDidCancel
{
  v3 = objc_opt_respondsToSelector();
  if (v3)
  {
    selfCopy = self;
    [(SUMenuViewControllerDelegate *)self->_delegate menuViewControllerDidCancel:self];
  }

  return v3 & 1;
}

- (id)_tableView
{
  result = self->_tableView;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD020]);
    self->_tableView = v4;
    [(UITableView *)v4 setAutoresizingMask:18];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    return self->_tableView;
  }

  return result;
}

@end