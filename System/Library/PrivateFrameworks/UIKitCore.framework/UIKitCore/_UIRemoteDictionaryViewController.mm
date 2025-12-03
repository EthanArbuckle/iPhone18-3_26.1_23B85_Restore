@interface _UIRemoteDictionaryViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (_UIRemoteDictionaryViewController)initWithStyle:(int64_t)style;
- (id)_downloadButton;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_handleDownloadButton:(id)button;
- (void)_startDownloadForDictionary:(id)dictionary;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation _UIRemoteDictionaryViewController

- (_UIRemoteDictionaryViewController)initWithStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = _UIRemoteDictionaryViewController;
  v3 = [(UITableViewController *)&v9 initWithStyle:style];
  if (v3)
  {
    v4 = +[_UIDictionaryManager assetManager];
    dictionaryAssetManager = v3->_dictionaryAssetManager;
    v3->_dictionaryAssetManager = v4;

    availableDefinitionDictionaries = [(_UIDictionaryManager *)v3->_dictionaryAssetManager availableDefinitionDictionaries];
    availableDictionaries = v3->_availableDictionaries;
    v3->_availableDictionaries = availableDefinitionDictionaries;
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

- (void)_handleDownloadButton:(id)button
{
  v4 = objc_getAssociatedObject(button, &_UIReferenceLibraryViewController_definitionDictionary);
  rawAsset = [v4 rawAsset];
  state = [rawAsset state];

  if (state == 1)
  {
    [(_UIRemoteDictionaryViewController *)self _startDownloadForDictionary:v4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59___UIRemoteDictionaryViewController__handleDownloadButton___block_invoke;
    v7[3] = &unk_1E70F35B8;
    v8 = v4;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)_startDownloadForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  rawAsset = [dictionaryCopy rawAsset];
  if (!self->_downloadingAssets)
  {
    v6 = objc_opt_new();
    [(_UIRemoteDictionaryViewController *)self setDownloadingAssets:v6];
  }

  assetId = [rawAsset assetId];
  downloadingAssets = self->_downloadingAssets;
  null = [MEMORY[0x1E695DFB0] null];
  [(NSMutableDictionary *)downloadingAssets setObject:null forKey:assetId];

  v10 = objc_opt_new();
  [v10 setAllowsCellularAccess:1];
  [v10 setAllowsExpensiveAccess:1];
  [v10 setDiscretionary:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___UIRemoteDictionaryViewController__startDownloadForDictionary___block_invoke;
  v14[3] = &unk_1E7103508;
  v15 = rawAsset;
  v16 = dictionaryCopy;
  selfCopy = self;
  v18 = assetId;
  v11 = assetId;
  v12 = dictionaryCopy;
  v13 = rawAsset;
  [v13 startDownload:v10 then:v14];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"downloadable_dictionary_cell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"downloadable_dictionary_cell"];
  }

  textLabel = [(UITableViewCell *)v7 textLabel];
  [textLabel setText:0];

  detailTextLabel = [(UITableViewCell *)v7 detailTextLabel];
  [detailTextLabel setText:0];

  availableDictionaries = self->_availableDictionaries;
  v11 = [pathCopy row];

  v12 = [(NSArray *)availableDictionaries objectAtIndex:v11];
  rawAsset = [v12 rawAsset];
  attributes = [rawAsset attributes];
  v15 = [attributes objectForKey:@"DictionaryPackageName"];
  v16 = [v15 isEqual:@"Apple Dictionary.dictionary"];

  if (v16)
  {
    textLabel2 = [(UITableViewCell *)v7 textLabel];
    localizedLanguageName = _UINSLocalizedStringWithDefaultValue(@"Apple Dictionary", @"Apple Dictionary");
  }

  else
  {
    v19 = [attributes objectForKey:@"DictionaryPackageName"];
    v20 = [v19 isEqualToString:@"TTY Abbreviations Dictionary.dictionary"];

    if (!v20)
    {
      detailTextLabel2 = [(UITableViewCell *)v7 detailTextLabel];
      localizedDictionaryName = [v12 localizedDictionaryName];
      [detailTextLabel2 setText:localizedDictionaryName];
    }

    textLabel2 = [(UITableViewCell *)v7 textLabel];
    localizedLanguageName = [v12 localizedLanguageName];
  }

  v23 = localizedLanguageName;
  [textLabel2 setText:localizedLanguageName];

  state = [rawAsset state];
  if (state == 4)
  {
    accessoryView = [(UITableViewCell *)v7 accessoryView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      accessoryView2 = [(UITableViewCell *)v7 accessoryView];
    }

    else
    {
      [(UITableViewCell *)v7 setAccessoryView:0];
      accessoryView2 = 0;
    }

    if (([v12 assetIsLocal] & 1) == 0)
    {
      downloadingAssets = self->_downloadingAssets;
      assetId = [rawAsset assetId];
      v32 = [(NSMutableDictionary *)downloadingAssets objectForKeyedSubscript:assetId];

      if (v32)
      {
        if (accessoryView2)
        {
LABEL_17:
          v33 = accessoryView2;
          goto LABEL_28;
        }
      }

      else
      {
        [(_UIRemoteDictionaryViewController *)self _startDownloadForDictionary:v12];
        if (accessoryView2)
        {
          goto LABEL_17;
        }
      }

      v33 = [[_UICircleProgressIndicator alloc] initWithFrame:0.0, 0.0, 26.0, 26.0];
LABEL_28:
      _downloadButton2 = v33;
      v36 = +[UIColor clearColor];
      [_downloadButton2 setBackgroundColor:v36];

      if (!accessoryView2)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __69___UIRemoteDictionaryViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
        v39[3] = &unk_1E7103530;
        v37 = _downloadButton2;
        v40 = v37;
        [rawAsset attachProgressCallBack:v39];
        objc_setAssociatedObject(v37, &_UIReferenceLibraryViewController_definitionDictionary, v12, 1);
        [(UITableViewCell *)v7 setAccessoryView:v37];
      }

LABEL_30:

      goto LABEL_31;
    }
  }

  else
  {
    v28 = state;
    [(UITableViewCell *)v7 setAccessoryView:0];
    if (v28 == 1)
    {
      _downloadButton = [(_UIRemoteDictionaryViewController *)self _downloadButton];
      objc_setAssociatedObject(_downloadButton, &_UIReferenceLibraryViewController_definitionDictionary, v12, 1);
      [(UITableViewCell *)v7 setAccessoryView:_downloadButton];

      accessoryView2 = 0;
      goto LABEL_31;
    }

    accessoryView2 = 0;
    if (![v12 assetIsLocal])
    {
      goto LABEL_31;
    }
  }

  assetToUpgrade = [v12 assetToUpgrade];

  if (!assetToUpgrade)
  {
    if ([v12 activated])
    {
      goto LABEL_31;
    }

    _downloadButton2 = [(_UIRemoteDictionaryViewController *)self _downloadButton];
    objc_setAssociatedObject(_downloadButton2, &_UIReferenceLibraryViewController_definitionDictionary, v12, 1);
    [(UITableViewCell *)v7 setAccessoryView:_downloadButton2];
    goto LABEL_30;
  }

  if ([v12 assetIsDeletable])
  {
    [rawAsset purgeSync];
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
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_31:

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy setEditing:0 animated:1];
  v9 = -[NSArray objectAtIndex:](self->_availableDictionaries, "objectAtIndex:", [pathCopy row]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___UIRemoteDictionaryViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
  block[3] = &unk_1E70F6228;
  v14 = v9;
  v15 = viewCopy;
  v16 = pathCopy;
  v10 = pathCopy;
  v11 = viewCopy;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = -[NSArray objectAtIndex:](self->_availableDictionaries, "objectAtIndex:", [path row]);
  assetIsDeletable = [v4 assetIsDeletable];

  return assetIsDeletable;
}

@end