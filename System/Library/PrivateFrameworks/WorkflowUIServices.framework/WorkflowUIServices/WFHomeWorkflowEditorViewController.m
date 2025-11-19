@interface WFHomeWorkflowEditorViewController
+ (void)preloadActionRegistryIfNeeded;
+ (void)preloadHomeManager;
- (WFHomeWorkflowEditorViewController)initWithHomeWorkflow:(id)a3 actionSetBuilder:(id)a4 home:(id)a5;
- (WFHomeWorkflowEditorViewControllerDelegate)delegate;
- (void)composeViewControllerRequestsDismissal:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFHomeWorkflowEditorViewController

- (WFHomeWorkflowEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)composeViewControllerRequestsDismissal:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 workflow];
  v6 = [v5 record];
  v7 = [v6 fileRepresentation];
  v15 = 0;
  v8 = [v7 fileDataWithError:&v15];
  v9 = v15;

  if (v8)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v10 = getWFHomeWorkflowClass_softClass;
    v19 = getWFHomeWorkflowClass_softClass;
    if (!getWFHomeWorkflowClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getWFHomeWorkflowClass_block_invoke;
      v21 = &unk_1E8308088;
      v22 = &v16;
      __getWFHomeWorkflowClass_block_invoke(buf);
      v10 = v17[3];
    }

    v11 = v10;
    _Block_object_dispose(&v16, 8);
    v12 = [[v10 alloc] initWithData:v8];
    v13 = [(WFHomeWorkflowEditorViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v13 homeWorkflowEditorViewController:self didFinishWithHomeWorkflow:v12 includesSecureAccessory:{-[NSObject requiresDeviceUnlock](v12, "requiresDeviceUnlock")}];
    }

    else
    {
      [(WFHomeWorkflowEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [v4 workflow];
      *buf = 136315650;
      *&buf[4] = "[WFHomeWorkflowEditorViewController composeViewControllerRequestsDismissal:]";
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2114;
      v21 = v9;
      _os_log_impl(&dword_1C830A000, v12, OS_LOG_TYPE_ERROR, "%s Failed to get file data from Workflow: %@. Error: %{public}@", buf, 0x20u);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = [(WFComposeViewController *)self->_composeViewController navigationItem:a3];
  v7 = [v9 rightBarButtonItems];
  v8 = [(WFHomeWorkflowEditorViewController *)self navigationItem];
  [v8 setRightBarButtonItems:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WFHomeWorkflowEditorViewController;
  [(WFHomeWorkflowEditorViewController *)&v7 viewWillAppear:a3];
  [objc_opt_class() preloadActionRegistryIfNeeded];
  v4 = [MEMORY[0x1E69DC888] wf_homeTintColor];
  v5 = [(WFHomeWorkflowEditorViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 setTintColor:v4];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = WFHomeWorkflowEditorViewController;
  [(WFHomeWorkflowEditorViewController *)&v12 viewDidLoad];
  v3 = WFLocalizedString(@"Shortcut");
  [(WFHomeWorkflowEditorViewController *)self setTitle:v3];

  v4 = [MEMORY[0x1E69DC888] wf_homeTintColor];
  v5 = [(WFHomeWorkflowEditorViewController *)self view];
  [v5 setTintColor:v4];

  v6 = [(WFHomeWorkflowEditorViewController *)self composeViewController];

  if (v6)
  {
    v7 = [(WFHomeWorkflowEditorViewController *)self composeViewController];
    [(WFHomeWorkflowEditorViewController *)self addChildViewController:v7];

    v8 = [(WFHomeWorkflowEditorViewController *)self view];
    v9 = [(WFHomeWorkflowEditorViewController *)self composeViewController];
    v10 = [v9 view];
    [v8 addSubview:v10];

    v11 = [(WFHomeWorkflowEditorViewController *)self composeViewController];
    [v11 didMoveToParentViewController:self];
  }
}

- (void)dealloc
{
  v3 = [(WFComposeViewController *)self->_composeViewController navigationItem];
  [v3 removeObserver:self forKeyPath:@"rightBarButtonItems" context:0];

  v4.receiver = self;
  v4.super_class = WFHomeWorkflowEditorViewController;
  [(WFHomeWorkflowEditorViewController *)&v4 dealloc];
}

- (WFHomeWorkflowEditorViewController)initWithHomeWorkflow:(id)a3 actionSetBuilder:(id)a4 home:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v49 = a4;
  v50 = a5;
  v55.receiver = self;
  v55.super_class = WFHomeWorkflowEditorViewController;
  v9 = [(WFHomeWorkflowEditorViewController *)&v55 initWithNibName:0 bundle:0];
  if (!v9)
  {
    v22 = 0;
    goto LABEL_33;
  }

  v56 = 0;
  if (!ActionKitLibraryCore_frameworkLibrary)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __ActionKitLibraryCore_block_invoke;
    v60 = &__block_descriptor_40_e5_v8__0l;
    v61 = &v56;
    v62 = xmmword_1E8307A98;
    v63 = 0;
    ActionKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ActionKitLibraryCore_frameworkLibrary)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ActionKitLibrary(void)"];
    [v8 handleFailureInFunction:v47 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:21 description:{@"%s", v56}];

    goto LABEL_35;
  }

  v10 = v56;
  if (v56)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v11 = [v8 data];
    if (v11)
    {
      *&v62 = 0;
      *(&v62 + 1) = &v62;
      v63 = 0x2050000000;
      v12 = getWFWorkflowFileClass_softClass;
      v64 = getWFWorkflowFileClass_softClass;
      if (!getWFWorkflowFileClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getWFWorkflowFileClass_block_invoke;
        v60 = &unk_1E8308088;
        v61 = &v62;
        __getWFWorkflowFileClass_block_invoke(buf);
        v12 = *(*(&v62 + 1) + 24);
      }

      v13 = v12;
      _Block_object_dispose(&v62, 8);
      v14 = [v12 alloc];
      v54 = 0;
      v15 = [v14 initWithFileData:v11 name:0 error:&v54];
      v16 = v54;
      v53 = v16;
      v17 = [v15 recordRepresentationWithError:&v53];
      v18 = v53;

      if (v17)
      {
        v19 = objc_alloc(getWFWorkflowClass());
        v52 = v18;
        v20 = [v19 initWithRecord:v17 reference:0 storageProvider:0 migrateIfNecessary:1 environment:2 error:&v52];
        v21 = v52;

        v18 = v21;
        goto LABEL_21;
      }

      v44 = getWFGeneralLogObject();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFHomeWorkflowEditorViewController initWithHomeWorkflow:actionSetBuilder:home:]";
        *&buf[12] = 2114;
        *&buf[14] = v18;
        _os_log_impl(&dword_1C830A000, v44, OS_LOG_TYPE_ERROR, "%s Could not load shortcut record from file data. error: %{public}@", buf, 0x16u);
      }

LABEL_31:
      v22 = 0;
      goto LABEL_32;
    }

    if (!v49)
    {
      v18 = 0;
LABEL_29:
      v15 = getWFHomeLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v45 = [v11 length];
        *buf = 136315650;
        *&buf[4] = "[WFHomeWorkflowEditorViewController initWithHomeWorkflow:actionSetBuilder:home:]";
        *&buf[12] = 2048;
        *&buf[14] = v45;
        *&buf[22] = 2112;
        v60 = v18;
        _os_log_impl(&dword_1C830A000, v15, OS_LOG_TYPE_ERROR, "%s Could not create workflow from data: %lu with error: %@", buf, 0x20u);
      }

      goto LABEL_31;
    }

    v23 = objc_alloc(getWFWorkflowClass());
    *&v62 = 0;
    *(&v62 + 1) = &v62;
    v63 = 0x2050000000;
    v24 = getWFWorkflowRecordClass_softClass;
    v64 = getWFWorkflowRecordClass_softClass;
    if (!getWFWorkflowRecordClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getWFWorkflowRecordClass_block_invoke;
      v60 = &unk_1E8308088;
      v61 = &v62;
      __getWFWorkflowRecordClass_block_invoke(buf);
      v24 = *(*(&v62 + 1) + 24);
    }

    v25 = v24;
    _Block_object_dispose(&v62, 8);
    v26 = objc_alloc_init(v24);
    v51 = 0;
    v20 = [v23 initWithRecord:v26 reference:0 storageProvider:0 migrateIfNecessary:1 environment:2 error:&v51];
    v18 = v51;

    *&v62 = 0;
    *(&v62 + 1) = &v62;
    v63 = 0x2050000000;
    v27 = getWFHFTriggerActionSetsBuilderParameterStateClass_softClass;
    v64 = getWFHFTriggerActionSetsBuilderParameterStateClass_softClass;
    if (!getWFHFTriggerActionSetsBuilderParameterStateClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getWFHFTriggerActionSetsBuilderParameterStateClass_block_invoke;
      v60 = &unk_1E8308088;
      v61 = &v62;
      __getWFHFTriggerActionSetsBuilderParameterStateClass_block_invoke(buf);
      v27 = *(*(&v62 + 1) + 24);
    }

    v28 = v27;
    _Block_object_dispose(&v62, 8);
    v29 = [v27 alloc];
    v30 = [v49 allActionSets];
    v31 = v50;
    *&v62 = 0;
    *(&v62 + 1) = &v62;
    v63 = 0x2020000000;
    v32 = getWFSerializableHomeIdentifierSymbolLoc_ptr;
    v64 = getWFSerializableHomeIdentifierSymbolLoc_ptr;
    if (!getWFSerializableHomeIdentifierSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getWFSerializableHomeIdentifierSymbolLoc_block_invoke;
      v60 = &unk_1E8308088;
      v61 = &v62;
      v33 = WorkflowKitLibrary();
      v34 = dlsym(v33, "WFSerializableHomeIdentifier");
      *(v61[1] + 3) = v34;
      getWFSerializableHomeIdentifierSymbolLoc_ptr = *(v61[1] + 3);
      v32 = *(*(&v62 + 1) + 24);
    }

    _Block_object_dispose(&v62, 8);
    if (v32)
    {
      break;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull soft_WFSerializableHomeIdentifier(HMHome * _Nonnull __strong)"];
    [v8 handleFailureInFunction:v48 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:113 description:{@"%s", dlerror()}];

LABEL_35:
    __break(1u);
LABEL_36:
    free(v10);
  }

  v35 = v32(v31);

  v15 = [v29 initWithActionSets:v30 homeIdentifier:v35];
  v36 = [getWFActionRegistryClass() sharedRegistry];
  v57 = @"WFHomeTriggerActionSets";
  v37 = [v15 serializedRepresentation];
  v58 = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v17 = [v36 createActionWithIdentifier:@"is.workflow.actions.homeaccessory" serializedParameters:v38];

  [v20 addAction:v17];
LABEL_21:

  if (!v20)
  {
    goto LABEL_29;
  }

  *&v62 = 0;
  *(&v62 + 1) = &v62;
  v63 = 0x2050000000;
  v39 = getWFComposeViewControllerClass_softClass;
  v64 = getWFComposeViewControllerClass_softClass;
  if (!getWFComposeViewControllerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getWFComposeViewControllerClass_block_invoke;
    v60 = &unk_1E8308088;
    v61 = &v62;
    __getWFComposeViewControllerClass_block_invoke(buf);
    v39 = *(*(&v62 + 1) + 24);
  }

  v40 = v39;
  _Block_object_dispose(&v62, 8);
  v41 = [[v39 alloc] initForHomeEditingWithWorkflow:v20 home:v50];
  composeViewController = v9->_composeViewController;
  v9->_composeViewController = v41;

  [(WFComposeViewController *)v9->_composeViewController setDelegate:v9];
  v43 = [(WFComposeViewController *)v9->_composeViewController navigationItem];
  [v43 addObserver:v9 forKeyPath:@"rightBarButtonItems" options:0 context:0];

  v22 = v9;
  v15 = v20;
LABEL_32:

LABEL_33:
  return v22;
}

+ (void)preloadActionRegistryIfNeeded
{
  v2 = [getWFActionRegistryClass() sharedRegistry];
  [v2 fill];
}

+ (void)preloadHomeManager
{
  v2 = [getWFHomeManagerClass() sharedManager];
  v3 = [v2 hasLoadedHomes];

  if ((v3 & 1) == 0)
  {
    v4 = [getWFHomeManagerClass() sharedManager];
    [v4 reloadData];
  }
}

@end