@interface PXPhotosGridUnnamedPersonBannerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)actionString;
- (PXPhotosGridUnnamedPersonBannerDelegate)delegate;
- (PXPhotosGridUnnamedPersonBannerView)initWithType:(int64_t)a3;
- (void)_handlePrimaryAction;
- (void)_updateButtonConfiguration;
- (void)layoutSubviews;
- (void)setSpec:(id)a3;
@end

@implementation PXPhotosGridUnnamedPersonBannerView

- (PXPhotosGridUnnamedPersonBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  spec = self->_spec;
  if (spec != v5)
  {
    v9 = v5;
    v7 = [(PXFeatureSpec *)spec contentSizeCategory];
    objc_storeStrong(&self->_spec, a3);
    v8 = [(PXFeatureSpec *)self->_spec contentSizeCategory];
    v5 = v9;
    if (v7 != v8)
    {
      [(PXPhotosGridUnnamedPersonBannerView *)self _updateButtonConfiguration];
      v5 = v9;
    }
  }
}

- (void)_handlePrimaryAction
{
  v3 = [(PXPhotosGridUnnamedPersonBannerView *)self delegate];
  [v3 didTapUnnamedPersonBanner:self];
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
  v6 = [(PXPhotosGridUnnamedPersonBannerView *)self buttonShadow];
  v17[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v9 = [(PXPhotosGridUnnamedPersonBannerView *)self actionString];
  v10 = [v8 initWithString:v9 attributes:v7];

  v11 = [(PXPhotosGridUnnamedPersonBannerView *)self primaryActionButton];
  v12 = [v11 configuration];
  v13 = [v12 copy];

  [v13 setAttributedTitle:v10];
  v14 = [MEMORY[0x1E69DCAD8] configurationWithFont:v3];
  [v13 setPreferredSymbolConfigurationForImage:v14];

  v15 = [(PXPhotosGridUnnamedPersonBannerView *)self primaryActionButton];
  [v15 setConfiguration:v13];
}

- (NSString)actionString
{
  v4 = [(PXPhotosGridUnnamedPersonBannerView *)self type];
  if (v4)
  {
    if (v4 != 1)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PXPhotosGridUnnamedPersonBannerView.m" lineNumber:78 description:@"Code which should be unreachable has been reached"];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = a3.height + -20.0;
  v5 = [(PXPhotosGridUnnamedPersonBannerView *)self primaryActionButton];
  [v5 sizeThatFits:{width, v4}];
  v7 = v6;
  v9 = v8;

  v10 = v9 + 20.0;
  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

- (PXPhotosGridUnnamedPersonBannerView)initWithType:(int64_t)a3
{
  v22.receiver = self;
  v22.super_class = PXPhotosGridUnnamedPersonBannerView;
  v4 = [(PXPhotosGridUnnamedPersonBannerView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
    buttonShadow = v5->_buttonShadow;
    v5->_buttonShadow = v6;

    [(NSShadow *)v5->_buttonShadow setShadowBlurRadius:10.0];
    v8 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v8 setTitleAlignment:1];
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle"];
    [v8 setImage:v9];

    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [v8 setBaseForegroundColor:v10];

    [v8 setImagePadding:10.0];
    objc_initWeak(&location, v5);
    v11 = MEMORY[0x1E69DC628];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __52__PXPhotosGridUnnamedPersonBannerView_initWithType___block_invoke;
    v19 = &unk_1E774BB08;
    objc_copyWeak(&v20, &location);
    v12 = [v11 actionWithHandler:&v16];
    v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v8 primaryAction:{v12, v16, v17, v18, v19}];
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