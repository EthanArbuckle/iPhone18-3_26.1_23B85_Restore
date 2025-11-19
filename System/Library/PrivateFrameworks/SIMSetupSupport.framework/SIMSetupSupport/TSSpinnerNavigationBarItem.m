@interface TSSpinnerNavigationBarItem
- (TSSpinnerNavigationBarItem)init;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation TSSpinnerNavigationBarItem

- (TSSpinnerNavigationBarItem)init
{
  v14.receiver = self;
  v14.super_class = TSSpinnerNavigationBarItem;
  v2 = [(TSSpinnerNavigationBarItem *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(TSSpinnerNavigationBarItem *)v2 setActivityIndicator:v3];

    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [v5 frame];
    v7 = v6;
    v8 = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [v8 frame];
    v9 = [v4 initWithFrame:{0.0, 0.0, v7}];

    v10 = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [v9 addSubview:v10];

    v11 = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [v12 pinToEdges:v9];

    [(TSSpinnerNavigationBarItem *)v2 setCustomView:v9];
  }

  return v2;
}

- (void)startAnimating
{
  v2 = [(TSSpinnerNavigationBarItem *)self activityIndicator];
  [v2 startAnimating];
}

- (void)stopAnimating
{
  v2 = [(TSSpinnerNavigationBarItem *)self activityIndicator];
  [v2 stopAnimating];
}

@end