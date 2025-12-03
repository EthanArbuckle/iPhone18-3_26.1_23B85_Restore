@interface SKUICountdownViewController
- (SKUICountdownViewController)initWithCountdownComponent:(id)component artworkLoader:(id)loader;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUICountdownViewController

- (SKUICountdownViewController)initWithCountdownComponent:(id)component artworkLoader:(id)loader
{
  componentCopy = component;
  loaderCopy = loader;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICountdownViewController initWithCountdownComponent:artworkLoader:];
  }

  v12.receiver = self;
  v12.super_class = SKUICountdownViewController;
  v9 = [(SKUICountdownViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countdownComponent, component);
    objc_storeStrong(&v10->_artworkLoader, loader);
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = SKUICountdownViewController;
  [(SKUICountdownViewController *)&v11 viewWillAppear:appear];
  countdown = [(SKUICountdownComponent *)self->_countdownComponent countdown];
  artworkProvider = [countdown artworkProvider];

  if (artworkProvider)
  {
    v6 = objc_alloc_init(SKUIArtworkRequest);
    [(SKUIArtworkRequest *)v6 setDelegate:self];
    v7 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    [(SKUIArtworkRequest *)v6 setDataConsumer:v7];

    largestArtwork = [artworkProvider largestArtwork];
    v9 = [largestArtwork URL];
    [(SKUIArtworkRequest *)v6 setURL:v9];

    [(SKUIResourceLoader *)self->_artworkLoader loadResourceWithRequest:v6 reason:1];
  }

  view = [(SKUICountdownViewController *)self view];
  [view start];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SKUICountdownViewController;
  [(SKUICountdownViewController *)&v5 viewDidDisappear:disappear];
  view = [(SKUICountdownViewController *)self view];
  [view stop];
}

- (void)loadView
{
  v3 = [SKUICountdownView alloc];
  countdown = [(SKUICountdownComponent *)self->_countdownComponent countdown];
  v5 = [(SKUICountdownView *)v3 initWithCountdown:countdown clientContext:self->_clientContext];

  [(SKUICountdownViewController *)self setView:v5];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  imageCopy = image;
  view = [(SKUICountdownViewController *)self view];
  [view setBackgroundImage:imageCopy];
}

- (void)initWithCountdownComponent:artworkLoader:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICountdownViewController initWithCountdownComponent:artworkLoader:]";
}

@end