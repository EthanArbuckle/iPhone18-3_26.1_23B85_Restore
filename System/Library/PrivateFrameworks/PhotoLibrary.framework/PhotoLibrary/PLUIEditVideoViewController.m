@interface PLUIEditVideoViewController
- (CGRect)previewFrame;
- (PLUIEditVideoViewController)initWithPhoto:(id)a3 trimTitle:(id)a4;
- (PLUIEditVideoViewController)initWithProperties:(id)a3;
- (PLUIEditVideoViewController)initWithVideoURL:(id)a3 trimTitle:(id)a4;
- (id)_trimMessage;
- (id)navigationItem;
- (void)_cancelTrim:(id)a3;
- (void)_trimVideo:(id)a3;
- (void)dealloc;
- (void)didChooseVideoAtURL:(id)a3 options:(id)a4;
- (void)loadView;
- (void)setImagePickerOptions:(id)a3;
- (void)setupNavigationItem;
- (void)videoRemakerDidEndRemaking:(id)a3 temporaryPath:(id)a4;
- (void)videoViewPlaybackDidFail:(id)a3;
- (void)viewDidLoad;
@end

@implementation PLUIEditVideoViewController

- (void)videoViewPlaybackDidFail:(id)a3
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = objc_alloc(MEMORY[0x277CBEAC0]);
    v5 = [v4 initWithObjectsAndKeys:{PLLocalizedFrameworkString(), *MEMORY[0x277CCA450], 0}];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D3B260] code:-1100 userInfo:v5];

    delegate = self->_delegate;

    [delegate editVideoViewController:self didFailWithError:v6];
  }
}

- (void)_trimVideo:(id)a3
{
  v3.receiver = self;
  v3.super_class = PLUIEditVideoViewController;
  [(PLUIImageViewController *)&v3 cropOverlayWasOKed:0];
}

- (CGRect)previewFrame
{
  v2 = 320.0;
  v3 = 426.0;
  v4 = 0.0;
  v5 = 20.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_cancelTrim:(id)a3
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate editVideoViewControllerDidCancel:self];
  }
}

- (void)videoRemakerDidEndRemaking:(id)a3 temporaryPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = PLUIEditVideoViewController;
  [(PLUIImageViewController *)&v8 videoRemakerDidEndRemaking:a3 temporaryPath:?];
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (a4)
    {
      v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:a4 isDirectory:0];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277D76A78]];
    }

    else
    {
      v7 = 0;
    }

    [self->_delegate editVideoViewController:self didTrimVideoWithOptions:v7];
  }
}

- (void)didChooseVideoAtURL:(id)a3 options:(id)a4
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a4];
  v7 = v6;
  if (a3)
  {
    [v6 setObject:a3 forKey:*MEMORY[0x277D76A78]];
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate editVideoViewController:self didTrimVideoWithOptions:v7];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PLUIEditVideoViewController;
  [(PLUIEditVideoViewController *)&v5 viewDidLoad];
  v3 = [-[PLUIEditVideoViewController navigationController](self "navigationController")];
  [v3 setScrollEdgeAppearance:{objc_msgSend(v3, "standardAppearance")}];
  v4 = [-[PLUIEditVideoViewController navigationController](self "navigationController")];
  [v4 setScrollEdgeAppearance:{objc_msgSend(v4, "standardAppearance")}];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PLUIEditVideoViewController;
  [(PLUIImageViewController *)&v5 loadView];
  v3 = [(PLUIEditVideoViewController *)self view];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 setDisableViewInPopoverRule:{-[PLUIEditVideoViewController parentInPopoverException](self, "parentInPopoverException")}];
    }
  }
}

- (id)_trimMessage
{
  [(PLUIEditVideoViewController *)self _editingForThirdParty];

  return PLLocalizedFrameworkString();
}

- (void)setImagePickerOptions:(id)a3
{
  options = self->_options;
  if (options != a3)
  {

    self->_options = [a3 copy];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLUIEditVideoViewController;
  [(PLUIImageViewController *)&v3 dealloc];
}

- (id)navigationItem
{
  result = self->_navItem;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x277D757A8]) initWithTitle:{-[PLUIEditVideoViewController title](self, "title")}];
    self->_navItem = result;
  }

  return result;
}

- (PLUIEditVideoViewController)initWithVideoURL:(id)a3 trimTitle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PLUIEditVideoViewController;
  v4 = [(PLUIImageViewController *)&v7 initWithVideoURL:a3, a4];
  v5 = v4;
  if (v4)
  {
    [(PLUIImageViewController *)v4 setAllowsEditing:1];
    v5->_canCreateMetadata = 0;
    v5->_viewClass = objc_opt_class();
  }

  return v5;
}

- (PLUIEditVideoViewController)initWithProperties:(id)a3
{
  v5 = [a3 objectForKey:*MEMORY[0x277D77610]];
  v9.receiver = self;
  v9.super_class = PLUIEditVideoViewController;
  v6 = [(PLUIImageViewController *)&v9 initWithVideoURL:v5];
  v7 = v6;
  if (v6)
  {
    [(PLUIEditVideoViewController *)v6 setImagePickerOptions:a3];
    [(PLUIImageViewController *)v7 setAllowsEditing:1];
    v7->_canCreateMetadata = 0;
    v7->_viewClass = objc_opt_class();
  }

  return v7;
}

- (PLUIEditVideoViewController)initWithPhoto:(id)a3 trimTitle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PLUIEditVideoViewController;
  v4 = [(PLUIImageViewController *)&v7 initWithPhoto:a3, a4];
  v5 = v4;
  if (v4)
  {
    [(PLUIImageViewController *)v4 setAllowsEditing:1];
    [(PLUIEditVideoViewController *)v5 setParentInPopoverException:0];
    v5->_canCreateMetadata = PLIsAssetsd();
    v5->_viewClass = objc_opt_class();
  }

  return v5;
}

- (void)setupNavigationItem
{
  [(PLUIEditVideoViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  v3 = [(PLUIEditVideoViewController *)self navigationItem];
  [(PLUIEditVideoViewController *)self _editingForThirdParty];
  [v3 setTitle:PLLocalizedFrameworkString()];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelTrim_];
  [v3 setLeftBarButtonItem:v4];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:3 target:self action:sel__trimVideo_];
  [v3 setRightBarButtonItem:v5];
}

@end