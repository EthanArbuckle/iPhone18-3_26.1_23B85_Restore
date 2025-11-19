@interface PKMapsMerchantStylingInfoViewController
- (PKMapsMerchantStylingInfoViewController)initWithStylingInfo:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKMapsMerchantStylingInfoViewController

- (PKMapsMerchantStylingInfoViewController)initWithStylingInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKMapsMerchantStylingInfoViewController;
  v6 = [(PKMapsMerchantStylingInfoViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stylingInfo, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKMapsMerchantStylingInfoViewController;
  [(PKMapsMerchantStylingInfoViewController *)&v9 viewDidLoad];
  v3 = PKUIScreenScale();
  v4 = [(MKWalletMerchantStylingInfo *)self->_stylingInfo tintColorForScale:?];
  v5 = [(MKWalletMerchantStylingInfo *)self->_stylingInfo imageForSize:4 scale:v3];
  v6 = [(PKMapsMerchantStylingInfoViewController *)self view];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v7;

  [v6 addSubview:self->_iconImageView];
  [v6 setBackgroundColor:v4];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKMapsMerchantStylingInfoViewController;
  [(PKMapsMerchantStylingInfoViewController *)&v5 viewDidLayoutSubviews];
  iconImageView = self->_iconImageView;
  v4 = [(PKMapsMerchantStylingInfoViewController *)self view];
  [v4 bounds];
  PKSizeAlignedInRect();
  [(UIImageView *)iconImageView setFrame:?];
}

@end