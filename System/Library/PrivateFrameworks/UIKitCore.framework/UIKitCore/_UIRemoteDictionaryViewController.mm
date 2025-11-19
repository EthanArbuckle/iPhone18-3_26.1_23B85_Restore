@interface _UIRemoteDictionaryViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (_UIRemoteDictionaryViewController)initWithStyle:(int64_t)a3;
- (id)_downloadButton;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_handleDownloadButton:(id)a3;
- (void)_startDownloadForDictionary:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation _UIRemoteDictionaryViewController

- (_UIRemoteDictionaryViewController)initWithStyle:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = _UIRemoteDictionaryViewController;
  v3 = [(UITableViewController *)&v9 initWithStyle:a3];
  if (v3)
  {
    v4 = +[_UIDictionaryManager assetManager];
    dictionaryAssetManager = v3->_dictionaryAssetManager;
    v3->_dictionaryAssetManager = v4;

    v6 = [(_UIDictionaryManager *)v3->_dictionaryAssetManager availableDefinitionDictionaries];
    availableDictionaries = v3->_availableDictionaries;
    v3->_availableDictionaries = v6;
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _UIRemoteDictionaryViewController;
  [(UIViewController *)&v5 viewDidLoad];
  [UIApp _beginShowingNetworkActivityIndicator];
  dictionaryAssetManager = self->_dictionaryAssetManager;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48___UIRemoteDictionaryViewController_viewDidLoad__block_invoke;
  v4[3] = &unk_1E70F5AC0;
  v4[4] = self;
  [(_UIDictionaryManager *)dictionaryAssetManager _downloadDictionaryAssetCatalog:v4];
}

- (id)_downloadButton
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = +[UIColor tintColor];
  v10[0] = v3;
  v4 = +[UIColor systemGrayColor];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [UIImageSymbolConfiguration configurationWithPaletteColors:v5];

  v7 = [UIButton buttonWithType:0];
  [v7 setPreferredSymbolConfiguration:v6 forImageInState:0];
  v8 = [UIImage systemImageNamed:@"icloud.and.arrow.down"];
  [v7 setImage:v8 forState:0];

  [v7 addTarget:self action:sel__handleDownloadButton_ forControlEvents:0x2000];
  [v7 sizeToFit];

  return v7;
}

- (void)_handleDownloadButton:(id)a3
{
  v4 = objc_getAssociatedObject(a3, &_UIReferenceLibraryViewController_definitionDictionary);
  v5 = [v4 rawAsset];
  v6 = [v5 state];

  if (v6 == 1)
  {
    [(_UIRemoteDictionaryViewController *)self _startDownloadForDictionary:v4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59___UIRemoteDictionaryViewController__handleDownloadButton___block_invoke;
    v7[3] = &unk_1E70F35B8;
    v8 = v4;
    v9 = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)_startDownloadForDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 rawAsset];
  if (!self->_downloadingAssets)
  {
    v6 = objc_opt_new();
    [(_UIRemoteDictionaryViewController *)self setDownloadingAssets:v6];
  }

  v7 = [v5 assetId];
  downloadingAssets = self->_downloadingAssets;
  v9 = [MEMORY[0x1E695DFB0] null];
  [(NSMutableDictionary *)downloadingAssets setObject:v9 forKey:v7];

  v10 = objc_opt_new();
  [v10 setAllowsCellularAccess:1];
  [v10 setAllowsExpensiveAccess:1];
  [v10 setDiscretionary:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___UIRemoteDictionaryViewController__startDownloadForDictionary___block_invoke;
  v14[3] = &unk_1E7103508;
  v15 = v5;
  v16 = v4;
  v17 = self;
  v18 = v7;
  v11 = v7;
  v12 = v4;
  v13 = v5;
  [v13 startDownload:v10 then:v14];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"downloadable_dictionary_cell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"downloadable_dictionary_cell"];
  }

  v8 = [(UITableViewCell *)v7 textLabel];
  [v8 setText:0];

  v9 = [(UITableViewCell *)v7 detailTextLabel];
  [v9 setText:0];

  availableDictionaries = self->_availableDictionaries;
  v11 = [v6 row];

  v12 = [(NSArray *)availableDictionaries objectAtIndex:v11];
  v13 = [v12 rawAsset];
  v14 = [v13 attributes];
  v15 = [v14 objectForKey:@"DictionaryPackageName"];
  v16 = [v15 isEqual:@"Apple Dictionary.dictionary"];

  if (v16)
  {
    v17 = [(UITableViewCell *)v7 textLabel];
    v18 = _UINSLocalizedStringWithDefaultValue(@"Apple Dictionary", @"Apple Dictionary");
  }

  else
  {
    v19 = [v14 objectForKey:@"DictionaryPackageName"];
    v20 = [v19 isEqualToString:@"TTY Abbreviations Dictionary.dictionary"];

    if (!v20)
    {
      v21 = [(UITableViewCell *)v7 detailTextLabel];
      v22 = [v12 localizedDictionaryName];
      [v21 setText:v22];
    }

    v17 = [(UITableViewCell *)v7 textLabel];
    v18 = [v12 localizedLanguageName];
  }

  v23 = v18;
  [v17 setText:v18];

  v24 = [v13 state];
  if (v24 == 4)
  {
    v25 = [(UITableViewCell *)v7 accessoryView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v27 = [(UITableViewCell *)v7 accessoryView];
    }

    else
    {
      [(UITableViewCell *)v7 setAccessoryView:0];
      v27 = 0;
    }

    if (([v12 assetIsLocal] & 1) == 0)
    {
      downloadingAssets = self->_downloadingAssets;
      v31 = [v13 assetId];
      v32 = [(NSMutableDictionary *)downloadingAssets objectForKeyedSubscript:v31];

      if (v32)
      {
        if (v27)
        {
LABEL_17:
          v33 = v27;
          goto LABEL_28;
        }
      }

      else
      {
        [(_UIRemoteDictionaryViewController *)self _startDownloadForDictionary:v12];
        if (v27)
        {
          goto LABEL_17;
        }
      }

      v33 = [[_UICircleProgressIndicator alloc] initWithFrame:0.0, 0.0, 26.0, 26.0];
LABEL_28:
      v35 = v33;
      v36 = +[UIColor clearColor];
      [v35 setBackgroundColor:v36];

      if (!v27)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __69___UIRemoteDictionaryViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
        v39[3] = &unk_1E7103530;
        v37 = v35;
        v40 = v37;
        [v13 attachProgressCallBack:v39];
        objc_setAssociatedObject(v37, &_UIReferenceLibraryViewController_definitionDictionary, v12, 1);
        [(UITableViewCell *)v7 setAccessoryView:v37];
      }

LABEL_30:

      goto LABEL_31;
    }
  }

  else
  {
    v28 = v24;
    [(UITableViewCell *)v7 setAccessoryView:0];
    if (v28 == 1)
    {
      v29 = [(_UIRemoteDictionaryViewController *)self _downloadButton];
      objc_setAssociatedObject(v29, &_UIReferenceLibraryViewController_definitionDictionary, v12, 1);
      [(UITableViewCell *)v7 setAccessoryView:v29];

      v27 = 0;
      goto LABEL_31;
    }

    v27 = 0;
    if (![v12 assetIsLocal])
    {
      goto LABEL_31;
    }
  }

  v34 = [v12 assetToUpgrade];

  if (!v34)
  {
    if ([v12 activated])
    {
      goto LABEL_31;
    }

    v35 = [(_UIRemoteDictionaryViewController *)self _downloadButton];
    objc_setAssociatedObject(v35, &_UIReferenceLibraryViewController_definitionDictionary, v12, 1);
    [(UITableViewCell *)v7 setAccessoryView:v35];
    goto LABEL_30;
  }

  if ([v12 assetIsDeletable])
  {
    [v13 purgeSync];
  }

  [v12 updateAsset];
  if (([v12 assetIsLocal] & 1) == 0)
  {
    [(_UIRemoteDictionaryViewController *)self _startDownloadForDictionary:v12];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___UIRemoteDictionaryViewController_tableView_cellForRowAtIndexPath___block_invoke;
    block[3] = &unk_1E70F35B8;
    v42 = v12;
    v43 = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_31:

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v7 setEditing:0 animated:1];
  v9 = -[NSArray objectAtIndex:](self->_availableDictionaries, "objectAtIndex:", [v8 row]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___UIRemoteDictionaryViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
  block[3] = &unk_1E70F6228;
  v14 = v9;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = -[NSArray objectAtIndex:](self->_availableDictionaries, "objectAtIndex:", [a4 row]);
  v5 = [v4 assetIsDeletable];

  return v5;
}

@end