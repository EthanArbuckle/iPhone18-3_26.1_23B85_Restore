@interface ICQCommerceSpinner
- (void)loadView;
@end

@implementation ICQCommerceSpinner

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = ICQCommerceSpinner;
  [(ICQCommerceSpinner *)&v7 loadView];
  v3 = [ICQCommerceSpinnerView alloc];
  view = [(ICQCommerceSpinner *)self view];
  [view frame];
  v5 = [(ICQCommerceSpinnerView *)v3 initWithFrame:?];

  [(ICQCommerceSpinnerView *)v5 setAutoresizingMask:18];
  view2 = [(ICQCommerceSpinner *)self view];
  [view2 addSubview:v5];
}

@end