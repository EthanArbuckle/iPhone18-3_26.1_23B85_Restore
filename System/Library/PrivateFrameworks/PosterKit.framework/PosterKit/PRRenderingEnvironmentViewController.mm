@interface PRRenderingEnvironmentViewController
- (PRRenderingEnvironmentViewController)initWithEnvironment:(id)environment delegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)cell:(id)cell valueChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation PRRenderingEnvironmentViewController

- (PRRenderingEnvironmentViewController)initWithEnvironment:(id)environment delegate:(id)delegate
{
  environmentCopy = environment;
  delegateCopy = delegate;
  v9 = [(PRRenderingEnvironmentViewController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_environment, environment);
    v11 = objc_opt_new();
    settings = v10->_settings;
    v10->_settings = v11;

    [(PRPosterEnvironmentImpl *)v10->_environment _applyToSceneSettings:v10->_settings];
  }

  return v10;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PRRenderingEnvironmentViewController;
  [(PRRenderingEnvironmentViewController *)&v9 viewDidLoad];
  view = [(PRRenderingEnvironmentViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD020]);
  [view bounds];
  v5 = [v4 initWithFrame:0 style:?];
  [v5 setDelegate:self];
  [v5 setDataSource:self];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"switch"];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"segment"];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"color"];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"slider"];
  [v5 setAutoresizingMask:18];
  view2 = [(PRRenderingEnvironmentViewController *)self view];
  systemOrangeColor = [MEMORY[0x1E69DC888] systemOrangeColor];
  [view2 setBackgroundColor:systemOrangeColor];

  view3 = [(PRRenderingEnvironmentViewController *)self view];
  [view3 addSubview:v5];

  [v5 reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (tableView_cellForRowAtIndexPath__onceToken != -1)
  {
    [PRRenderingEnvironmentViewController tableView:cellForRowAtIndexPath:];
  }

  v8 = [pathCopy row];
  v9 = [tableView_cellForRowAtIndexPath__keys objectAtIndex:v8];
  integerValue = [v9 integerValue];
  v11 = [tableView_cellForRowAtIndexPath__dixt objectForKey:v9];
  v12 = [viewCopy dequeueReusableCellWithIdentifier:v11 forIndexPath:pathCopy];

  [v12 setTag:integerValue];
  [v12 _configure];
  otherSettings = [(FBSMutableSceneSettings *)self->_settings otherSettings];
  v14 = [otherSettings objectForSetting:integerValue];
  [v12 _setCurrentValue:v14];

  if (integerValue == 20492 || integerValue == 20664 || integerValue == 20562)
  {
    caseColor = [(PRPosterEnvironmentImpl *)self->_environment caseColor];
    [v12 _setCurrentValue:caseColor];
  }

  return v12;
}

void __72__PRRenderingEnvironmentViewController_tableView_cellForRowAtIndexPath___block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = tableView_cellForRowAtIndexPath__keys;
  tableView_cellForRowAtIndexPath__keys = &unk_1F1C6BC50;

  v3[0] = &unk_1F1C6B8C0;
  v3[1] = &unk_1F1C6B8D8;
  v4[0] = @"segment";
  v4[1] = @"slider";
  v3[2] = &unk_1F1C6B8F0;
  v4[2] = @"color";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = tableView_cellForRowAtIndexPath__dixt;
  tableView_cellForRowAtIndexPath__dixt = v1;
}

- (void)cell:(id)cell valueChanged:(id)changed
{
  changedCopy = changed;
  v6 = [cell tag];
  switch(v6)
  {
    case 20664:
      settings = self->_settings;
      [changedCopy floatValue];
      [(FBSMutableSceneSettings *)settings pr_setUnlockProgress:v10];
      break;
    case 20562:
      v7 = self->_settings;
      bSColor = [changedCopy BSColor];
      [(FBSMutableSceneSettings *)v7 pr_setCaseColor:bSColor];

      break;
    case 20492:
      -[FBSMutableSceneSettings pui_setMode:](self->_settings, "pui_setMode:", [changedCopy integerValue]);
      break;
  }

  view = [(PRRenderingEnvironmentViewController *)self view];
  traitCollection = [view traitCollection];

  v13 = [[PRPosterEnvironmentImpl alloc] initWithSceneSettings:self->_settings traitCollection:traitCollection targetConfig:0 extensionBundleURL:0];
  environment = self->_environment;
  self->_environment = v13;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained environmentViewController:self didUpdateEnvironment:self->_environment];
}

@end