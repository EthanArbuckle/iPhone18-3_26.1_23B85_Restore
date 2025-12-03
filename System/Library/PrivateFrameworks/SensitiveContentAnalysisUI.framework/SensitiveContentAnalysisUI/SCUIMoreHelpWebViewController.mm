@interface SCUIMoreHelpWebViewController
- (SCUIMoreHelpWebViewController)init;
- (SCUIMoreHelpWebViewController)initWithType:(int64_t)type;
- (SCUIMoreHelpWebViewController)initWithURL:(id)l;
@end

@implementation SCUIMoreHelpWebViewController

- (SCUIMoreHelpWebViewController)init
{
  v3 = SCUICurrentInterventionType();

  return [(SCUIMoreHelpWebViewController *)self initWithType:v3];
}

- (SCUIMoreHelpWebViewController)initWithType:(int64_t)type
{
  v4 = [SCUIMoreHelpWebResources waysToGetHelpURLForInterventionType:type];
  v5 = [(SCUIMoreHelpWebViewController *)self initWithURL:v4];

  return v5;
}

- (SCUIMoreHelpWebViewController)initWithURL:(id)l
{
  v4 = MEMORY[0x1E69853A8];
  lCopy = l;
  v6 = objc_alloc_init(v4);
  nonPersistentDataStore = [MEMORY[0x1E69853B8] nonPersistentDataStore];
  [v6 setWebsiteDataStore:nonPersistentDataStore];
  v8 = objc_alloc(MEMORY[0x1E69853A0]);
  v9 = [v8 initWithFrame:v6 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v9 _setUseSystemAppearance:1];
  v10 = [objc_alloc(MEMORY[0x1E696AF68]) initWithURL:lCopy];

  v11 = [v9 loadRequest:v10];
  v12 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v12 setView:v9];
  [v12 setEdgesForExtendedLayout:0];
  v24.receiver = self;
  v24.super_class = SCUIMoreHelpWebViewController;
  v13 = [(SCUIMoreHelpWebViewController *)&v24 initWithRootViewController:v12];
  v14 = v13;
  if (v13)
  {
    navigationBar = [(SCUIMoreHelpWebViewController *)v13 navigationBar];
    standardAppearance = [navigationBar standardAppearance];
    v17 = [standardAppearance copy];

    [v17 configureWithOpaqueBackground];
    navigationBar2 = [(SCUIMoreHelpWebViewController *)v14 navigationBar];
    [navigationBar2 setScrollEdgeAppearance:v17];

    navigationBar3 = [(SCUIMoreHelpWebViewController *)v14 navigationBar];
    [navigationBar3 setStandardAppearance:v17];

    navigationBar4 = [(SCUIMoreHelpWebViewController *)v14 navigationBar];
    [navigationBar4 setCompactAppearance:v17];

    [(SCUIMoreHelpWebViewController *)v14 setModalPresentationStyle:2];
    v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v14 action:sel_dismissMoreHelpView];
    navigationItem = [v12 navigationItem];
    [navigationItem setRightBarButtonItem:v21];
  }

  return v14;
}

@end