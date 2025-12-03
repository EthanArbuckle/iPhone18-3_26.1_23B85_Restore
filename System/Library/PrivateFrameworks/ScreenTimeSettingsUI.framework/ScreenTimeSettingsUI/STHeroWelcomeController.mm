@interface STHeroWelcomeController
- (STHeroWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout topInset:(double)inset;
- (void)loadView;
- (void)setView:(id)view;
@end

@implementation STHeroWelcomeController

- (STHeroWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout topInset:(double)inset
{
  v9.receiver = self;
  v9.super_class = STHeroWelcomeController;
  result = [(STHeroWelcomeController *)&v9 initWithTitle:title detailText:text icon:icon contentLayout:layout];
  result->_topInset = inset;
  return result;
}

- (void)setView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5.receiver = self;
    v5.super_class = STHeroWelcomeController;
    [(STHeroWelcomeController *)&v5 setView:viewCopy];
  }
}

- (void)loadView
{
  v3 = [STOnboardingView alloc];
  [(STHeroWelcomeController *)self topInset];
  v4 = [(STOnboardingView *)v3 initWithTopInset:?];
  [(STHeroWelcomeController *)self setView:v4];

  v5.receiver = self;
  v5.super_class = STHeroWelcomeController;
  [(OBBaseWelcomeController *)&v5 loadView];
}

@end