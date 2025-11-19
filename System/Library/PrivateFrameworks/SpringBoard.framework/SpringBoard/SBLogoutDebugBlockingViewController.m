@interface SBLogoutDebugBlockingViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureCell:(id)a3 withBlockingTask:(id)a4;
- (void)loadView;
- (void)setDebugBlockingTasks:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBLogoutDebugBlockingViewController

- (void)setDebugBlockingTasks:(id)a3
{
  v11 = a3;
  if (self->_debugBlockingTasks != v11)
  {
    objc_storeStrong(&self->_debugBlockingTasks, a3);
    v5 = [(NSDictionary *)self->_debugBlockingTasks allKeys];
    v6 = [v5 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    applicationKeys = self->_applicationKeys;
    self->_applicationKeys = v6;

    v8 = [(SBLogoutDebugBlockingViewController *)self view];
    v9 = [v8 window];

    if (v9)
    {
      v10 = [(SBLogoutDebugBlockingViewController *)self _tableView];
      [v10 reloadData];
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBLogoutDebugBlockingViewController;
  [(SBLogoutDebugBlockingViewController *)&v5 viewWillAppear:a3];
  v4 = [(SBLogoutDebugBlockingViewController *)self _tableView];
  [v4 reloadData];
}

- (void)_configureCell:(id)a3 withBlockingTask:(id)a4
{
  v5 = a4;
  v6 = a3;
  v21 = [v5 name];
  v7 = [v5 reason];
  v8 = [v5 bundleID];

  v9 = &stru_283094718;
  if (v21)
  {
    v10 = v21;
  }

  else
  {
    v10 = &stru_283094718;
  }

  v11 = v10;
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = &stru_283094718;
  }

  v13 = v12;
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v8];
  }

  v14 = [MEMORY[0x277CCAB68] stringWithString:v11];
  [v14 appendString:@" "];
  if (v9)
  {
    [v14 appendString:v9];
  }

  v15 = [v6 textLabel];
  [v15 setTextAlignment:0];
  [v15 setText:v14];
  v16 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
  [v15 setColor:v16];

  v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
  [v15 setFont:v17];

  v18 = [v6 detailTextLabel];
  [v18 setTextAlignment:0];
  [v18 setText:v13];
  v19 = [MEMORY[0x277D75348] grayColor];
  [v18 setColor:v19];

  v20 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [v18 setFont:v20];

  [v6 setBackgroundColor:0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(NSArray *)self->_applicationKeys objectAtIndex:a4];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"DebugBlockingViewCell"];
  v8 = -[NSArray objectAtIndex:](self->_applicationKeys, "objectAtIndex:", [v6 section]);
  if (v8)
  {
    v9 = [(NSDictionary *)self->_debugBlockingTasks objectForKey:v8];
    if (v9)
    {
      v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_applicationKeys objectAtIndex:a4];
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:v4];

  if (v6)
  {
    v7 = [v6 displayName];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

@end