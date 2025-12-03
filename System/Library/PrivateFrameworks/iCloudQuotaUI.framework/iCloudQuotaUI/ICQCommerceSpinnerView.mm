@interface ICQCommerceSpinnerView
- (ICQCommerceSpinnerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ICQCommerceSpinnerView

- (ICQCommerceSpinnerView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = ICQCommerceSpinnerView;
  v3 = [(ICQCommerceSpinnerView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v4;

    [(UIActivityIndicatorView *)v3->_spinner startAnimating];
    [(ICQCommerceSpinnerView *)v3 addSubview:v3->_spinner];
    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    completeingPurchaseLabel = v3->_completeingPurchaseLabel;
    v3->_completeingPurchaseLabel = v7;

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"COMLPETING_PURCHASE" value:&stru_28844FC60 table:@"Localizable"];
    [(UILabel *)v3->_completeingPurchaseLabel setText:v10];

    grayColor = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v3->_completeingPurchaseLabel setTextColor:grayColor];

    v12 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    [(UILabel *)v3->_completeingPurchaseLabel setFont:v12];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v3->_completeingPurchaseLabel setBackgroundColor:clearColor];

    [(UILabel *)v3->_completeingPurchaseLabel sizeToFit];
    [(ICQCommerceSpinnerView *)v3 addSubview:v3->_completeingPurchaseLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(ICQCommerceSpinnerView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_completeingPurchaseLabel frame];
  v12 = v11;
  v14 = v13;
  v15 = floor((v4 - v8 - v11 + -5.0) * 0.5);
  v16 = floor((v6 - v10) * 0.5);
  v21.origin.x = v15;
  v21.origin.y = v16;
  v21.size.width = v8;
  v21.size.height = v10;
  v17 = CGRectGetMaxX(v21) + 5.0;
  [(UIActivityIndicatorView *)self->_spinner setFrame:v15, v16, v8, v10];
  completeingPurchaseLabel = self->_completeingPurchaseLabel;
  v19 = v16 + floor((v10 - v14) * 0.5);

  [(UILabel *)completeingPurchaseLabel setFrame:v17, v19, v12, v14];
}

@end