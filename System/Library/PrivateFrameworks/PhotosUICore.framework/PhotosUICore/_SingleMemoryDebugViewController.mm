@interface _SingleMemoryDebugViewController
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation _SingleMemoryDebugViewController

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SingleMemoryDebugViewController;
  [(_SingleMemoryDebugViewController *)&v3 viewWillLayoutSubviews];
  [(_SingleMemoryDebugViewController *)self view];
  [objc_claimAutoreleasedReturnValue() bounds];
  PXEdgeInsetsMake();
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = _SingleMemoryDebugViewController;
  [(_SingleMemoryDebugViewController *)&v21 viewDidLoad];
  view = [(_SingleMemoryDebugViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  [(_SingleMemoryDebugViewController *)self px_enableExtendedTraitCollection];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = [(PXMemoriesFeedDataSourceManagerBase *)[PXMemoriesFeedWidgetDataSourceManager alloc] initWithPhotoLibrary:px_deprecated_appPhotoLibrary];
  [(PXMemoriesFeedWidgetDataSourceManager *)v6 setMaxCount:1];
  [(PXMemoriesFeedWidgetDataSourceManager *)v6 startGeneratingMemories];
  dataSource = [(PXSectionedDataSourceManager *)v6 dataSource];
  v8 = dataSource;
  v19 = 0u;
  v20 = 0u;
  if (dataSource)
  {
    [dataSource firstItemIndexPath];
    v9 = v19;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != *off_1E7721F68)
  {
    v18[0] = v19;
    v18[1] = v20;
    v10 = [v8 objectAtIndexPath:v18];
    if (v10)
    {
      v11 = v10;
      v12 = objc_alloc_init(PXMemoryViewModel);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __47___SingleMemoryDebugViewController_viewDidLoad__block_invoke;
      v16[3] = &unk_1E7747C08;
      v17 = v11;
      v13 = v11;
      [(PXMemoryViewModel *)v12 performChanges:v16];
      v14 = objc_alloc_init(PXMemoryView);
      memoryView = self->_memoryView;
      self->_memoryView = v14;

      [(PXMemoryView *)self->_memoryView setViewModel:v12];
      [view addSubview:self->_memoryView];
    }
  }
}

@end