@interface PXPeopleBootstrapConfirmationPreviewViewController
- (PXPeopleBootstrapConfirmationPreviewViewController)initWithPerson:(id)person keyAsset:(id)asset useLowMemoryMode:(BOOL)mode;
- (void)dealloc;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation PXPeopleBootstrapConfirmationPreviewViewController

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = PXPeopleBootstrapConfirmationPreviewViewController;
  [(PXPeopleBootstrapConfirmationPreviewViewController *)&v23 viewDidLoad];
  keyAsset = [(PXPeopleBootstrapConfirmationPreviewViewController *)self keyAsset];
  traitCollection = [(PXPeopleBootstrapConfirmationPreviewViewController *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;

  v8 = [keyAsset pixelWidth] / v7;
  v9 = [keyAsset pixelHeight] / v7;
  [(PXPeopleBootstrapConfirmationPreviewViewController *)self setPreferredContentSize:v8, v9];
  view = [(PXPeopleBootstrapConfirmationPreviewViewController *)self view];
  if (!view)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationPreviewViewController.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.view", v17}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [view px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationPreviewViewController.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.view", v17, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  v11 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v11 setSynchronous:0];
  [v11 setNetworkAccessAllowed:1];
  [v11 setAllowSecondaryDegradedImage:1];
  [v11 setResizeMode:1];
  [v11 setDeliveryMode:0];
  [v11 setUseLowMemoryMode:{-[PXPeopleBootstrapConfirmationPreviewViewController useLowMemoryMode](self, "useLowMemoryMode")}];
  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__PXPeopleBootstrapConfirmationPreviewViewController_viewDidLoad__block_invoke;
  v20[3] = &unk_1E7745FC0;
  v21 = view;
  v22 = keyAsset;
  v13 = keyAsset;
  v14 = view;
  -[PXPeopleBootstrapConfirmationPreviewViewController setRequestID:](self, "setRequestID:", [defaultManager requestImageForAsset:v13 targetSize:0 contentMode:v11 options:v20 resultHandler:{v8, v9}]);
}

void __65__PXPeopleBootstrapConfirmationPreviewViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __65__PXPeopleBootstrapConfirmationPreviewViewController_viewDidLoad__block_invoke_2;
  v14 = &unk_1E774C620;
  v15 = *(a1 + 32);
  v6 = v5;
  v16 = v6;
  v7 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], &v11);
  v8 = [v7 objectForKeyedSubscript:{*MEMORY[0x1E6978DF0], v11, v12, v13, v14}];

  if (v8)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 40) uuid];
      *buf = 138412802;
      v18 = v10;
      v19 = 2112;
      v20 = v8;
      v21 = 2080;
      v22 = "[PXPeopleBootstrapConfirmationPreviewViewController viewDidLoad]_block_invoke";
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Error fetching image for asset UUID: %@ error: %@ function: %s", buf, 0x20u);
    }
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v3 setContentMode:2];
  [(PXPeopleBootstrapConfirmationPreviewViewController *)self setView:v3];
}

- (void)dealloc
{
  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  [defaultManager cancelImageRequest:{-[PXPeopleBootstrapConfirmationPreviewViewController requestID](self, "requestID")}];

  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapConfirmationPreviewViewController;
  [(PXPeopleBootstrapConfirmationPreviewViewController *)&v4 dealloc];
}

- (PXPeopleBootstrapConfirmationPreviewViewController)initWithPerson:(id)person keyAsset:(id)asset useLowMemoryMode:(BOOL)mode
{
  personCopy = person;
  assetCopy = asset;
  v14.receiver = self;
  v14.super_class = PXPeopleBootstrapConfirmationPreviewViewController;
  v11 = [(PXPeopleBootstrapConfirmationPreviewViewController *)&v14 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_person, person);
    objc_storeStrong(&v12->_keyAsset, asset);
    v12->_useLowMemoryMode = mode;
  }

  return v12;
}

@end