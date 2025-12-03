@interface SBLogoutDebugBlockingViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureCell:(id)cell withBlockingTask:(id)task;
- (void)loadView;
- (void)setDebugBlockingTasks:(id)tasks;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBLogoutDebugBlockingViewController

- (void)setDebugBlockingTasks:(id)tasks
{
  tasksCopy = tasks;
  if (self->_debugBlockingTasks != tasksCopy)
  {
    objc_storeStrong(&self->_debugBlockingTasks, tasks);
    allKeys = [(NSDictionary *)self->_debugBlockingTasks allKeys];
    v6 = [allKeys sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    applicationKeys = self->_applicationKeys;
    self->_applicationKeys = v6;

    view = [(SBLogoutDebugBlockingViewController *)self view];
    window = [view window];

    if (window)
    {
      _tableView = [(SBLogoutDebugBlockingViewController *)self _tableView];
      [_tableView reloadData];
    }
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setDelegate:self];
  [v4 setDataSource:self];
  [v4 setBackgroundColor:0];
  [(SBLogoutDebugBlockingViewController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBLogoutDebugBlockingViewController;
  [(SBLogoutDebugBlockingViewController *)&v5 viewWillAppear:appear];
  _tableView = [(SBLogoutDebugBlockingViewController *)self _tableView];
  [_tableView reloadData];
}

- (void)_configureCell:(id)cell withBlockingTask:(id)task
{
  taskCopy = task;
  cellCopy = cell;
  name = [taskCopy name];
  reason = [taskCopy reason];
  bundleID = [taskCopy bundleID];

  v9 = &stru_283094718;
  if (name)
  {
    v10 = name;
  }

  else
  {
    v10 = &stru_283094718;
  }

  v11 = v10;
  if (reason)
  {
    v12 = reason;
  }

  else
  {
    v12 = &stru_283094718;
  }

  v13 = v12;
  if (bundleID)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", bundleID];
  }

  v14 = [MEMORY[0x277CCAB68] stringWithString:v11];
  [v14 appendString:@" "];
  if (v9)
  {
    [v14 appendString:v9];
  }

  textLabel = [cellCopy textLabel];
  [textLabel setTextAlignment:0];
  [textLabel setText:v14];
  v16 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
  [textLabel setColor:v16];

  v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
  [textLabel setFont:v17];

  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setTextAlignment:0];
  [detailTextLabel setText:v13];
  grayColor = [MEMORY[0x277D75348] grayColor];
  [detailTextLabel setColor:grayColor];

  v20 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [detailTextLabel setFont:v20];

  [cellCopy setBackgroundColor:0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(NSArray *)self->_applicationKeys objectAtIndex:section];
  if (v5)
  {
    v6 = [(NSDictionary *)self->_debugBlockingTasks objectForKey:v5];
    v7 = [v6 count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"DebugBlockingViewCell"];
  v8 = -[NSArray objectAtIndex:](self->_applicationKeys, "objectAtIndex:", [pathCopy section]);
  if (v8)
  {
    v9 = [(NSDictionary *)self->_debugBlockingTasks objectForKey:v8];
    if (v9)
    {
      v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      if (v10)
      {
        if (!v7)
        {
          v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"DebugBlockingViewCell"];
        }

        [(SBLogoutDebugBlockingViewController *)self _configureCell:v7 withBlockingTask:v10];
      }
    }
  }

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_applicationKeys objectAtIndex:section];
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:v4];

  if (v6)
  {
    displayName = [v6 displayName];
  }

  else
  {
    displayName = v4;
  }

  v8 = displayName;

  return v8;
}

@end