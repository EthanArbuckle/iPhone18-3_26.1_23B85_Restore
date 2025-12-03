@interface TSADebugTableViewController
- (TSADebugTableViewController)initWithParent:(id)parent;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)addItemWithTitle:(id)title target:(id)target action:(SEL)action;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TSADebugTableViewController

- (TSADebugTableViewController)initWithParent:(id)parent
{
  v8.receiver = self;
  v8.super_class = TSADebugTableViewController;
  v4 = [(TSADebugTableViewController *)&v8 init];
  if (v4)
  {
    if (!parent)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADebugTableViewController initWithParent:]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADebugTableViewController.mm"), 71, @"invalid nil value for '%s'", "parent"}];
    }

    v4->_parent = parent;
  }

  [(TSADebugTableViewController *)v4 view];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSADebugTableViewController;
  [(TSADebugTableViewController *)&v3 dealloc];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = -[NSMutableArray objectAtIndex:](self->_debugItems, "objectAtIndex:", [path row]);
  [objc_msgSend(v5 "target")];
  parent = self->_parent;

  [(TSADebugViewController *)parent hideIt:parent];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = TSADebugTableViewController;
  [(TSADebugTableViewController *)&v5 loadView];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setOpaque:0];
  [v4 setAutoresizingMask:18];
  [(TSADebugTableViewController *)self setTableView:v4];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [view dequeueReusableCellWithIdentifier:@"DebugCell"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"DebugCell"];
  }

  [objc_msgSend(v6 "textLabel")];
  return v6;
}

- (void)addItemWithTitle:(id)title target:(id)target action:(SEL)action
{
  debugItems = self->_debugItems;
  if (!debugItems)
  {
    debugItems = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_debugItems = debugItems;
  }

  v10 = [(NSMutableArray *)debugItems count];
  if (v10 < 1)
  {
LABEL_7:
    v13 = [[DebugItem alloc] initWithTitle:title target:target action:action];
    [(NSMutableArray *)self->_debugItems addObject:v13];
    [-[TSADebugTableViewController tableView](self "tableView")];
  }

  else
  {
    v11 = v10;
    v12 = 0;
    while (([objc_msgSend(-[NSMutableArray objectAtIndex:](self->_debugItems objectAtIndex:{v12), "title"), "isEqualToString:", title}] & 1) == 0)
    {
      if (v11 == ++v12)
      {
        goto LABEL_7;
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = TSADebugTableViewController;
  [(TSADebugTableViewController *)&v8 viewWillAppear:appear];
  [objc_msgSend(-[TSADebugTableViewController tableView](self "tableView")];
  [-[TSADebugTableViewController view](self "view")];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  tableView = [(TSADebugTableViewController *)self tableView];
  [tableView deselectRowAtIndexPath:objc_msgSend(tableView animated:{"indexPathForSelectedRow"), 0}];
  [tableView setContentOffset:0 animated:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v6.receiver = self;
  v6.super_class = TSADebugTableViewController;
  [(TSADebugTableViewController *)&v6 viewDidDisappear:disappearCopy];
}

@end