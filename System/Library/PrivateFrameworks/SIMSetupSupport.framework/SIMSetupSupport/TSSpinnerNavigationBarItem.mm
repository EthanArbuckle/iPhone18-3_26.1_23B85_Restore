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
    activityIndicator = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [activityIndicator frame];
    v7 = v6;
    activityIndicator2 = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [activityIndicator2 frame];
    v9 = [v4 initWithFrame:{0.0, 0.0, v7}];

    activityIndicator3 = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [v9 addSubview:activityIndicator3];

    activityIndicator4 = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [activityIndicator4 setTranslatesAutoresizingMaskIntoConstraints:0];

    activityIndicator5 = [(TSSpinnerNavigationBarItem *)v2 activityIndicator];
    [activityIndicator5 pinToEdges:v9];

    [(TSSpinnerNavigationBarItem *)v2 setCustomView:v9];
  }

  return v2;
}

- (void)startAnimating
{
  activityIndicator = [(TSSpinnerNavigationBarItem *)self activityIndicator];
  [activityIndicator startAnimating];
}

- (void)stopAnimating
{
  activityIndicator = [(TSSpinnerNavigationBarItem *)self activityIndicator];
  [activityIndicator stopAnimating];
}

@end