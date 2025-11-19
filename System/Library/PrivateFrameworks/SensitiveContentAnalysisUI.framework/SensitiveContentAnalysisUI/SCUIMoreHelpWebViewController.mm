@interface SCUIMoreHelpWebViewController
- (SCUIMoreHelpWebViewController)init;
- (SCUIMoreHelpWebViewController)initWithType:(int64_t)a3;
- (SCUIMoreHelpWebViewController)initWithURL:(id)a3;
@end

@implementation SCUIMoreHelpWebViewController

- (SCUIMoreHelpWebViewController)init
{
  v3 = SCUICurrentInterventionType();

  return [(SCUIMoreHelpWebViewController *)self initWithType:v3];
}

- (SCUIMoreHelpWebViewController)initWithType:(int64_t)a3
{
  v4 = [SCUIMoreHelpWebResources waysToGetHelpURLForInterventionType:a3];
  v5 = [(SCUIMoreHelpWebViewController *)self initWithURL:v4];

  return v5;
}

- (SCUIMoreHelpWebViewController)initWithURL:(id)a3
{
  v4 = MEMORY[0x1E69853A8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E69853B8] nonPersistentDataStore];
  [v6 setWebsiteDataStore:v7];
  v8 = objc_alloc(MEMORY[0x1E69853A0]);
  v9 = [v8 initWithFrame:v6 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v9 _setUseSystemAppearance:1];
  v10 = [objc_alloc(MEMORY[0x1E696AF68]) initWithURL:v5];

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
    v15 = [(SCUIMoreHelpWebViewController *)v13 navigationBar];
    v16 = [v15 standardAppearance];
    v17 = [v16 copy];

    [v17 configureWithOpaqueBackground];
    v18 = [(SCUIMoreHelpWebViewController *)v14 navigationBar];
    [v18 setScrollEdgeAppearance:v17];

    v19 = [(SCUIMoreHelpWebViewController *)v14 navigationBar];
    [v19 setStandardAppearance:v17];

    v20 = [(SCUIMoreHelpWebViewController *)v14 navigationBar];
    [v20 setCompactAppearance:v17];

    [(SCUIMoreHelpWebViewController *)v14 setModalPresentationStyle:2];
    v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v14 action:sel_dismissMoreHelpView];
    v22 = [v12 navigationItem];
    [v22 setRightBarButtonItem:v21];
  }

  return v14;
}

@end