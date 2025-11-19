@interface STHeroWelcomeController
- (STHeroWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6 topInset:(double)a7;
- (void)loadView;
- (void)setView:(id)a3;
@end

@implementation STHeroWelcomeController

- (STHeroWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6 topInset:(double)a7
{
  v9.receiver = self;
  v9.super_class = STHeroWelcomeController;
  result = [(STHeroWelcomeController *)&v9 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:a6];
  result->_topInset = a7;
  return result;
}

- (void)setView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5.receiver = self;
    v5.super_class = STHeroWelcomeController;
    [(STHeroWelcomeController *)&v5 setView:v4];
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