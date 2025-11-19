@interface SKUICountdownViewController
- (SKUICountdownViewController)initWithCountdownComponent:(id)a3 artworkLoader:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SKUICountdownViewController

- (SKUICountdownViewController)initWithCountdownComponent:(id)a3 artworkLoader:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    objc_storeStrong(&v9->_countdownComponent, a3);
    objc_storeStrong(&v10->_artworkLoader, a4);
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = SKUICountdownViewController;
  [(SKUICountdownViewController *)&v11 viewWillAppear:a3];
  v4 = [(SKUICountdownComponent *)self->_countdownComponent countdown];
  v5 = [v4 artworkProvider];

  if (v5)
  {
    v6 = objc_alloc_init(SKUIArtworkRequest);
    [(SKUIArtworkRequest *)v6 setDelegate:self];
    v7 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    [(SKUIArtworkRequest *)v6 setDataConsumer:v7];

    v8 = [v5 largestArtwork];
    v9 = [v8 URL];
    [(SKUIArtworkRequest *)v6 setURL:v9];

    [(SKUIResourceLoader *)self->_artworkLoader loadResourceWithRequest:v6 reason:1];
  }

  v10 = [(SKUICountdownViewController *)self view];
  [v10 start];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SKUICountdownViewController;
  [(SKUICountdownViewController *)&v5 viewDidDisappear:a3];
  v4 = [(SKUICountdownViewController *)self view];
  [v4 stop];
}

- (void)loadView
{
  v3 = [SKUICountdownView alloc];
  v4 = [(SKUICountdownComponent *)self->_countdownComponent countdown];
  v5 = [(SKUICountdownView *)v3 initWithCountdown:v4 clientContext:self->_clientContext];

  [(SKUICountdownViewController *)self setView:v5];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v5 = a4;
  v6 = [(SKUICountdownViewController *)self view];
  [v6 setBackgroundImage:v5];
}

- (void)initWithCountdownComponent:artworkLoader:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICountdownViewController initWithCountdownComponent:artworkLoader:]";
}

@end