@interface PRRenderingEnvironmentViewController
- (PRRenderingEnvironmentViewController)initWithEnvironment:(id)a3 delegate:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)cell:(id)a3 valueChanged:(id)a4;
- (void)viewDidLoad;
@end

@implementation PRRenderingEnvironmentViewController

- (PRRenderingEnvironmentViewController)initWithEnvironment:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PRRenderingEnvironmentViewController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_environment, a3);
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
  v3 = [(PRRenderingEnvironmentViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD020]);
  [v3 bounds];
  v5 = [v4 initWithFrame:0 style:?];
  [v5 setDelegate:self];
  [v5 setDataSource:self];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"switch"];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"segment"];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"color"];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"slider"];
  [v5 setAutoresizingMask:18];
  v6 = [(PRRenderingEnvironmentViewController *)self view];
  v7 = [MEMORY[0x1E69DC888] systemOrangeColor];
  [v6 setBackgroundColor:v7];

  v8 = [(PRRenderingEnvironmentViewController *)self view];
  [v8 addSubview:v5];

  [v5 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (tableView_cellForRowAtIndexPath__onceToken != -1)
  {
    [PRRenderingEnvironmentViewController tableView:cellForRowAtIndexPath:];
  }

  v8 = [v7 row];
  v9 = [tableView_cellForRowAtIndexPath__keys objectAtIndex:v8];
  v10 = [v9 integerValue];
  v11 = [tableView_cellForRowAtIndexPath__dixt objectForKey:v9];
  v12 = [v6 dequeueReusableCellWithIdentifier:v11 forIndexPath:v7];

  [v12 setTag:v10];
  [v12 _configure];
  v13 = [(FBSMutableSceneSettings *)self->_settings otherSettings];
  v14 = [v13 objectForSetting:v10];
  [v12 _setCurrentValue:v14];

  if (v10 == 20492 || v10 == 20664 || v10 == 20562)
  {
    v15 = [(PRPosterEnvironmentImpl *)self->_environment caseColor];
    [v12 _setCurrentValue:v15];
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

- (void)cell:(id)a3 valueChanged:(id)a4
{
  v16 = a4;
  v6 = [a3 tag];
  switch(v6)
  {
    case 20664:
      settings = self->_settings;
      [v16 floatValue];
      [(FBSMutableSceneSettings *)settings pr_setUnlockProgress:v10];
      break;
    case 20562:
      v7 = self->_settings;
      v8 = [v16 BSColor];
      [(FBSMutableSceneSettings *)v7 pr_setCaseColor:v8];

      break;
    case 20492:
      -[FBSMutableSceneSettings pui_setMode:](self->_settings, "pui_setMode:", [v16 integerValue]);
      break;
  }

  v11 = [(PRRenderingEnvironmentViewController *)self view];
  v12 = [v11 traitCollection];

  v13 = [[PRPosterEnvironmentImpl alloc] initWithSceneSettings:self->_settings traitCollection:v12 targetConfig:0 extensionBundleURL:0];
  environment = self->_environment;
  self->_environment = v13;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained environmentViewController:self didUpdateEnvironment:self->_environment];
}

@end