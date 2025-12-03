@interface PUBrowsingOneUpVisibilityHelper
- (PUBrowsingOneUpVisibilityHelper)initWithBrowsingViewModel:(id)model isPresentedForSecondScreen:(BOOL)screen;
- (void)dealloc;
- (void)setIsOneUpVisible:(BOOL)visible;
@end

@implementation PUBrowsingOneUpVisibilityHelper

- (void)setIsOneUpVisible:(BOOL)visible
{
  if (self->_isOneUpVisible != visible)
  {
    self->_isOneUpVisible = visible;
  }
}

- (void)dealloc
{
  browsingViewModel = [(PUBrowsingOneUpVisibilityHelper *)self browsingViewModel];
  [browsingViewModel unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = PUBrowsingOneUpVisibilityHelper;
  [(PUBrowsingOneUpVisibilityHelper *)&v4 dealloc];
}

- (PUBrowsingOneUpVisibilityHelper)initWithBrowsingViewModel:(id)model isPresentedForSecondScreen:(BOOL)screen
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = PUBrowsingOneUpVisibilityHelper;
  v8 = [(PUBrowsingOneUpVisibilityHelper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_isOneUpVisible = 0;
    v8->_isPresentedForSecondScreen = screen;
    objc_storeStrong(&v8->_browsingViewModel, model);
    [(PUBrowsingViewModel *)v9->_browsingViewModel registerChangeObserver:v9];
  }

  return v9;
}

@end