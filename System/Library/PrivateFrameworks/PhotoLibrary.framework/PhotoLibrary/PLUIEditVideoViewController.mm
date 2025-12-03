@interface PLUIEditVideoViewController
- (CGRect)previewFrame;
- (PLUIEditVideoViewController)initWithPhoto:(id)photo trimTitle:(id)title;
- (PLUIEditVideoViewController)initWithProperties:(id)properties;
- (PLUIEditVideoViewController)initWithVideoURL:(id)l trimTitle:(id)title;
- (id)_trimMessage;
- (id)navigationItem;
- (void)_cancelTrim:(id)trim;
- (void)_trimVideo:(id)video;
- (void)dealloc;
- (void)didChooseVideoAtURL:(id)l options:(id)options;
- (void)loadView;
- (void)setImagePickerOptions:(id)options;
- (void)setupNavigationItem;
- (void)videoRemakerDidEndRemaking:(id)remaking temporaryPath:(id)path;
- (void)videoViewPlaybackDidFail:(id)fail;
- (void)viewDidLoad;
@end

@implementation PLUIEditVideoViewController

- (void)videoViewPlaybackDidFail:(id)fail
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

- (void)_trimVideo:(id)video
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

- (void)_cancelTrim:(id)trim
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate editVideoViewControllerDidCancel:self];
  }
}

- (void)videoRemakerDidEndRemaking:(id)remaking temporaryPath:(id)path
{
  v8.receiver = self;
  v8.super_class = PLUIEditVideoViewController;
  [(PLUIImageViewController *)&v8 videoRemakerDidEndRemaking:remaking temporaryPath:?];
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (path)
    {
      v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:path isDirectory:0];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277D76A78]];
    }

    else
    {
      v7 = 0;
    }

    [self->_delegate editVideoViewController:self didTrimVideoWithOptions:v7];
  }
}

- (void)didChooseVideoAtURL:(id)l options:(id)options
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:options];
  v7 = v6;
  if (l)
  {
    [v6 setObject:l forKey:*MEMORY[0x277D76A78]];
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
  view = [(PLUIEditVideoViewController *)self view];
  if (view)
  {
    v4 = view;
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

- (void)setImagePickerOptions:(id)options
{
  options = self->_options;
  if (options != options)
  {

    self->_options = [options copy];
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

- (PLUIEditVideoViewController)initWithVideoURL:(id)l trimTitle:(id)title
{
  v7.receiver = self;
  v7.super_class = PLUIEditVideoViewController;
  title = [(PLUIImageViewController *)&v7 initWithVideoURL:l, title];
  v5 = title;
  if (title)
  {
    [(PLUIImageViewController *)title setAllowsEditing:1];
    v5->_canCreateMetadata = 0;
    v5->_viewClass = objc_opt_class();
  }

  return v5;
}

- (PLUIEditVideoViewController)initWithProperties:(id)properties
{
  v5 = [properties objectForKey:*MEMORY[0x277D77610]];
  v9.receiver = self;
  v9.super_class = PLUIEditVideoViewController;
  v6 = [(PLUIImageViewController *)&v9 initWithVideoURL:v5];
  v7 = v6;
  if (v6)
  {
    [(PLUIEditVideoViewController *)v6 setImagePickerOptions:properties];
    [(PLUIImageViewController *)v7 setAllowsEditing:1];
    v7->_canCreateMetadata = 0;
    v7->_viewClass = objc_opt_class();
  }

  return v7;
}

- (PLUIEditVideoViewController)initWithPhoto:(id)photo trimTitle:(id)title
{
  v7.receiver = self;
  v7.super_class = PLUIEditVideoViewController;
  title = [(PLUIImageViewController *)&v7 initWithPhoto:photo, title];
  v5 = title;
  if (title)
  {
    [(PLUIImageViewController *)title setAllowsEditing:1];
    [(PLUIEditVideoViewController *)v5 setParentInPopoverException:0];
    v5->_canCreateMetadata = PLIsAssetsd();
    v5->_viewClass = objc_opt_class();
  }

  return v5;
}

- (void)setupNavigationItem
{
  [(PLUIEditVideoViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  navigationItem = [(PLUIEditVideoViewController *)self navigationItem];
  [(PLUIEditVideoViewController *)self _editingForThirdParty];
  [navigationItem setTitle:PLLocalizedFrameworkString()];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelTrim_];
  [navigationItem setLeftBarButtonItem:v4];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:3 target:self action:sel__trimVideo_];
  [navigationItem setRightBarButtonItem:v5];
}

@end