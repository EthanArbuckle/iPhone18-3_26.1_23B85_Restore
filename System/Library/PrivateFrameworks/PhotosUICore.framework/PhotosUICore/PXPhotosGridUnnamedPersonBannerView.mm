@interface PXPhotosGridUnnamedPersonBannerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)actionString;
- (PXPhotosGridUnnamedPersonBannerDelegate)delegate;
- (PXPhotosGridUnnamedPersonBannerView)initWithType:(int64_t)type;
- (void)_handlePrimaryAction;
- (void)_updateButtonConfiguration;
- (void)layoutSubviews;
- (void)setSpec:(id)spec;
@end

@implementation PXPhotosGridUnnamedPersonBannerView

- (PXPhotosGridUnnamedPersonBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  spec = self->_spec;
  if (spec != specCopy)
  {
    v9 = specCopy;
    contentSizeCategory = [(PXFeatureSpec *)spec contentSizeCategory];
    objc_storeStrong(&self->_spec, spec);
    contentSizeCategory2 = [(PXFeatureSpec *)self->_spec contentSizeCategory];
    specCopy = v9;
    if (contentSizeCategory != contentSizeCategory2)
    {
      [(PXPhotosGridUnnamedPersonBannerView *)self _updateButtonConfiguration];
      specCopy = v9;
    }
  }
}

- (void)_handlePrimaryAction
{
  delegate = [(PXPhotosGridUnnamedPersonBannerView *)self delegate];
  [delegate didTapUnnamedPersonBanner:self];
}

- (void)_updateButtonConfiguration
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1A590C430](3, 32770, 0);
  v4 = *MEMORY[0x1E69DB648];
  v17[0] = v3;
  v5 = *MEMORY[0x1E69DB6A8];
  v16[0] = v4;
  v16[1] = v5;
  buttonShadow = [(PXPhotosGridUnnamedPersonBannerView *)self buttonShadow];
  v17[1] = buttonShadow;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  actionString = [(PXPhotosGridUnnamedPersonBannerView *)self actionString];
  v10 = [v8 initWithString:actionString attributes:v7];

  primaryActionButton = [(PXPhotosGridUnnamedPersonBannerView *)self primaryActionButton];
  configuration = [primaryActionButton configuration];
  v13 = [configuration copy];

  [v13 setAttributedTitle:v10];
  v14 = [MEMORY[0x1E69DCAD8] configurationWithFont:v3];
  [v13 setPreferredSymbolConfigurationForImage:v14];

  primaryActionButton2 = [(PXPhotosGridUnnamedPersonBannerView *)self primaryActionButton];
  [primaryActionButton2 setConfiguration:v13];
}

- (NSString)actionString
{
  type = [(PXPhotosGridUnnamedPersonBannerView *)self type];
  if (type)
  {
    if (type != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridUnnamedPersonBannerView.m" lineNumber:78 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v5 = @"PXPeopleBannerNameThisPet";
  }

  else
  {
    v5 = @"PXPeopleBannerNameThisPerson";
  }

  v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXPhotosGridUnnamedPersonBannerView;
  [(PXPhotosGridUnnamedPersonBannerView *)&v3 layoutSubviews];
  [(PXPhotosGridUnnamedPersonBannerView *)self bounds];
  PXEdgeInsetsMake();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = fits.height + -20.0;
  primaryActionButton = [(PXPhotosGridUnnamedPersonBannerView *)self primaryActionButton];
  [primaryActionButton sizeThatFits:{width, v4}];
  v7 = v6;
  v9 = v8;

  v10 = v9 + 20.0;
  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

- (PXPhotosGridUnnamedPersonBannerView)initWithType:(int64_t)type
{
  v22.receiver = self;
  v22.super_class = PXPhotosGridUnnamedPersonBannerView;
  v4 = [(PXPhotosGridUnnamedPersonBannerView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v6 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
    buttonShadow = v5->_buttonShadow;
    v5->_buttonShadow = v6;

    [(NSShadow *)v5->_buttonShadow setShadowBlurRadius:10.0];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setTitleAlignment:1];
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle"];
    [plainButtonConfiguration setImage:v9];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [plainButtonConfiguration setBaseForegroundColor:whiteColor];

    [plainButtonConfiguration setImagePadding:10.0];
    objc_initWeak(&location, v5);
    v11 = MEMORY[0x1E69DC628];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __52__PXPhotosGridUnnamedPersonBannerView_initWithType___block_invoke;
    v19 = &unk_1E774BB08;
    objc_copyWeak(&v20, &location);
    v12 = [v11 actionWithHandler:&v16];
    v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:{v12, v16, v17, v18, v19}];
    primaryActionButton = v5->_primaryActionButton;
    v5->_primaryActionButton = v13;

    [(PXPhotosGridUnnamedPersonBannerView *)v5 _updateButtonConfiguration];
    [(PXPhotosGridUnnamedPersonBannerView *)v5 addSubview:v5->_primaryActionButton];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __52__PXPhotosGridUnnamedPersonBannerView_initWithType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePrimaryAction];
}

@end