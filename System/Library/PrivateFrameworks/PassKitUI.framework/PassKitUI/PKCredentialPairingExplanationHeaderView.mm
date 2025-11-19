@interface PKCredentialPairingExplanationHeaderView
- (CGSize)sizeThatFits:(CGSize)result;
- (PKCredentialPairingExplanationHeaderView)initWithConfiguration:(id)a3;
- (id)_fallbackPairingImage;
- (void)_loadPairingImage;
- (void)_setPairingImage:(id)a3;
- (void)_showLoadingContent;
- (void)layoutSubviews;
- (void)setUseCompactLayout:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKCredentialPairingExplanationHeaderView

- (PKCredentialPairingExplanationHeaderView)initWithConfiguration:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PKCredentialPairingExplanationHeaderView;
  v6 = [(PKCredentialPairingExplanationHeaderView *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v7->_imageView;
    v7->_imageView = v8;

    [(PKCredentialPairingExplanationHeaderView *)v7 addSubview:v7->_imageView];
    v10 = v7->_imageView;
    v11 = PKProvisioningBackgroundColor();
    [(UIImageView *)v10 setBackgroundColor:v11];

    v12 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    spinner = v7->_spinner;
    v7->_spinner = v12;

    v14 = objc_alloc(MEMORY[0x1E69DD298]);
    v15 = [MEMORY[0x1E69DC730] effectWithStyle:4];
    v16 = [v14 initWithEffect:v15];
    blurView = v7->_blurView;
    v7->_blurView = v16;

    [(PKCredentialPairingExplanationHeaderView *)v7 _showLoadingContent];
    [(PKCredentialPairingExplanationHeaderView *)v7 _loadPairingImage];
    v18 = [MEMORY[0x1E69DC888] systemLightGrayColor];
    [(PKCredentialPairingExplanationHeaderView *)v7 setBackgroundColor:v18];

    [(PKCredentialPairingExplanationHeaderView *)v7 setClipsToBounds:1];
    [(PKCredentialPairingExplanationHeaderView *)v7 setUseCompactLayout:PKUIGetMinScreenType() < 4];
  }

  return v7;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKCredentialPairingExplanationHeaderView;
  [(PKCredentialPairingExplanationHeaderView *)&v17 layoutSubviews];
  v3 = [(UIImageView *)self->_imageView image];
  [(PKCredentialPairingExplanationHeaderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 size];
  PKSizeAspectFill();
  PKSizeAlignedInRect();
  [(UIImageView *)self->_imageView setFrame:v12 + 0.0, v13 + 1.0, v15, v14 + -2.0];
  [(UIActivityIndicatorView *)self->_spinner frame];
  spinner = self->_spinner;
  PKSizeAlignedInRect();
  [(UIActivityIndicatorView *)spinner setFrame:?];
  [(UIVisualEffectView *)self->_blurView setFrame:v5, v7, v9, v11];
}

- (void)_loadPairingImage
{
  if (([(PKAddCarKeyPassConfiguration *)self->_configuration supportedRadioTechnologies]& 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(PKCredentialPairingExplanationHeaderView *)self traitCollection];
  v5 = [v4 userInterfaceStyle] == 2;

  v6 = [(PKAddCarKeyPassConfiguration *)self->_configuration provisioningTemplateIdentifier];
  v7 = [MEMORY[0x1E69B90D8] sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PKCredentialPairingExplanationHeaderView__loadPairingImage__block_invoke;
  v8[3] = &unk_1E801A860;
  v8[4] = self;
  [v7 carPairingImageForRadioTechnology:v3 templateIdentifier:v6 darkMode:v5 completion:v8];
}

void __61__PKCredentialPairingExplanationHeaderView__loadPairingImage__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6];
    v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v3];
    [*(a1 + 32) _setPairingImage:v4];
  }

  else
  {
    v5 = *(a1 + 32);
    v3 = [v5 _fallbackPairingImage];
    [v5 _setPairingImage:v3];
  }
}

- (void)_showLoadingContent
{
  imageView = self->_imageView;
  v4 = [(PKCredentialPairingExplanationHeaderView *)self _fallbackPairingImage];
  [(UIImageView *)imageView setImage:v4];

  [(UIVisualEffectView *)self->_blurView setAlpha:1.0];
  [(PKCredentialPairingExplanationHeaderView *)self addSubview:self->_blurView];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  spinner = self->_spinner;

  [(PKCredentialPairingExplanationHeaderView *)self addSubview:spinner];
}

- (void)_setPairingImage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) stopAnimating];
  [*(*(a1 + 32) + 424) removeFromSuperview];
  v2 = MEMORY[0x1E69DD250];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = v3;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke_3;
  v4[3] = &unk_1E8011D28;
  v4[4] = *(a1 + 32);
  [v2 transitionWithView:v3 duration:5242880 options:v5 animations:v4 completion:0.300000012];
}

uint64_t __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setImage:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 432);

  return [v2 setAlpha:0.0];
}

uint64_t __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 432) removeFromSuperview];
  }

  return result;
}

- (id)_fallbackPairingImage
{
  v2 = [(PKAddCarKeyPassConfiguration *)self->_configuration provisioningTemplateIdentifier];
  if ([v2 containsString:@"RHD"])
  {
    v3 = @"CarPairingLightRHD";
    v4 = @"CarPairingDarkRHD";
  }

  else
  {
    v3 = @"CarPairingLightLHD";
    v4 = @"CarPairingDarkLHD";
  }

  v5 = PKUIDynamicImageNamed(v3, v4);

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 268.0;
  if (self->_useCompactLayout)
  {
    v3 = 183.0;
  }

  result.height = v3;
  return result;
}

- (void)setUseCompactLayout:(BOOL)a3
{
  if (self->_useCompactLayout != a3)
  {
    self->_useCompactLayout = a3;
    [(PKCredentialPairingExplanationHeaderView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PKCredentialPairingExplanationHeaderView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {

    [(PKCredentialPairingExplanationHeaderView *)self _loadPairingImage];
  }
}

@end