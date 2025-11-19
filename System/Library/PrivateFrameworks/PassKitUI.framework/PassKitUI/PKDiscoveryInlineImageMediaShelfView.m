@interface PKDiscoveryInlineImageMediaShelfView
- (PKDiscoveryInlineImageMediaShelfView)initWithShelf:(id)a3;
- (void)_loadImageFromBundle;
- (void)setImage:(id)a3 animated:(BOOL)a4;
@end

@implementation PKDiscoveryInlineImageMediaShelfView

- (PKDiscoveryInlineImageMediaShelfView)initWithShelf:(id)a3
{
  v4 = MEMORY[0x1E69DCAE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithImage:0];
  v9.receiver = self;
  v9.super_class = PKDiscoveryInlineImageMediaShelfView;
  v7 = [(PKDiscoveryInlineCaptionedMediaShelfView *)&v9 initWithShelf:v5 mediaView:v6];

  if (v7 && [(PKDiscoveryMedia *)v7->super._media type]== 3)
  {
    [(PKDiscoveryInlineImageMediaShelfView *)v7 _loadImageFromBundle];
  }

  return v7;
}

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = MEMORY[0x1E69DD250];
    v8 = [(PKDiscoveryInlineImageMediaShelfView *)self imageMediaView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PKDiscoveryInlineImageMediaShelfView_setImage_animated___block_invoke;
    v10[3] = &unk_1E8010A10;
    v10[4] = self;
    v11 = v6;
    [v7 transitionWithView:v8 duration:5242880 options:v10 animations:0 completion:0.300000012];
  }

  else
  {
    v9 = [(PKDiscoveryInlineImageMediaShelfView *)self imageMediaView];
    [v9 setImage:v6];
  }
}

void __58__PKDiscoveryInlineImageMediaShelfView_setImage_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageMediaView];
  [v2 setImage:*(a1 + 40)];
}

- (void)_loadImageFromBundle
{
  v3 = [(PKDiscoveryMedia *)self->super._media bundleImageName];
  v4 = [(PKDiscoveryMedia *)self->super._media bundle];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = PKPassKitUIBundle();
  }

  v7 = v6;

  if (v3)
  {
    v9 = [MEMORY[0x1E69DCAB8] imageNamed:v3 inBundle:v7];
  }

  else
  {
    v9 = 0;
  }

  v8 = [(PKDiscoveryInlineImageMediaShelfView *)self imageMediaView];
  [v8 setImage:v9];
}

@end