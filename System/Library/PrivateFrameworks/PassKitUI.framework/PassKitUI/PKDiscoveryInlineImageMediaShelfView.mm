@interface PKDiscoveryInlineImageMediaShelfView
- (PKDiscoveryInlineImageMediaShelfView)initWithShelf:(id)shelf;
- (void)_loadImageFromBundle;
- (void)setImage:(id)image animated:(BOOL)animated;
@end

@implementation PKDiscoveryInlineImageMediaShelfView

- (PKDiscoveryInlineImageMediaShelfView)initWithShelf:(id)shelf
{
  v4 = MEMORY[0x1E69DCAE0];
  shelfCopy = shelf;
  v6 = [[v4 alloc] initWithImage:0];
  v9.receiver = self;
  v9.super_class = PKDiscoveryInlineImageMediaShelfView;
  v7 = [(PKDiscoveryInlineCaptionedMediaShelfView *)&v9 initWithShelf:shelfCopy mediaView:v6];

  if (v7 && [(PKDiscoveryMedia *)v7->super._media type]== 3)
  {
    [(PKDiscoveryInlineImageMediaShelfView *)v7 _loadImageFromBundle];
  }

  return v7;
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (animatedCopy)
  {
    v7 = MEMORY[0x1E69DD250];
    imageMediaView = [(PKDiscoveryInlineImageMediaShelfView *)self imageMediaView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PKDiscoveryInlineImageMediaShelfView_setImage_animated___block_invoke;
    v10[3] = &unk_1E8010A10;
    v10[4] = self;
    v11 = imageCopy;
    [v7 transitionWithView:imageMediaView duration:5242880 options:v10 animations:0 completion:0.300000012];
  }

  else
  {
    imageMediaView2 = [(PKDiscoveryInlineImageMediaShelfView *)self imageMediaView];
    [imageMediaView2 setImage:imageCopy];
  }
}

void __58__PKDiscoveryInlineImageMediaShelfView_setImage_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageMediaView];
  [v2 setImage:*(a1 + 40)];
}

- (void)_loadImageFromBundle
{
  bundleImageName = [(PKDiscoveryMedia *)self->super._media bundleImageName];
  bundle = [(PKDiscoveryMedia *)self->super._media bundle];
  v5 = bundle;
  if (bundle)
  {
    v6 = bundle;
  }

  else
  {
    v6 = PKPassKitUIBundle();
  }

  v7 = v6;

  if (bundleImageName)
  {
    v9 = [MEMORY[0x1E69DCAB8] imageNamed:bundleImageName inBundle:v7];
  }

  else
  {
    v9 = 0;
  }

  imageMediaView = [(PKDiscoveryInlineImageMediaShelfView *)self imageMediaView];
  [imageMediaView setImage:v9];
}

@end