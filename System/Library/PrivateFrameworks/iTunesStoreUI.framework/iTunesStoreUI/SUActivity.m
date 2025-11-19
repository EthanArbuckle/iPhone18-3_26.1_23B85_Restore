@interface SUActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)activityImage;
- (id)activityTitle;
- (id)activityType;
- (id)activityViewController;
- (void)dealloc;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
- (void)setActivityImage:(id)a3;
- (void)setActivityTitle:(id)a3;
- (void)setActivityType:(id)a3;
- (void)setActivityViewController:(id)a3;
@end

@implementation SUActivity

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUActivity;
  [(SUActivity *)&v3 dealloc];
}

- (void)setActivityImage:(id)a3
{
  suActivityImage = self->_suActivityImage;
  if (suActivityImage != a3)
  {

    self->_suActivityImage = a3;
  }
}

- (void)setActivityTitle:(id)a3
{
  suActivityTitle = self->_suActivityTitle;
  if (suActivityTitle != a3)
  {

    self->_suActivityTitle = [a3 copy];
  }
}

- (void)setActivityType:(id)a3
{
  suActivityType = self->_suActivityType;
  if (suActivityType != a3)
  {

    self->_suActivityType = [a3 copy];
  }
}

- (void)setActivityViewController:(id)a3
{
  suActivityViewController = self->_suActivityViewController;
  if (suActivityViewController != a3)
  {

    self->_suActivityViewController = a3;
  }
}

- (id)activityImage
{
  v2 = self->_suActivityImage;

  return v2;
}

- (id)activityTitle
{
  v2 = self->_suActivityTitle;

  return v2;
}

- (id)activityType
{
  v2 = self->_suActivityType;

  return v2;
}

- (id)activityViewController
{
  v2 = self->_suActivityViewController;

  return v2;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v5 = self;
  delegate = self->_delegate;

  return [(SUActivityDelegate *)delegate activity:self canPerformWithActivityItems:a3];
}

- (void)performActivity
{
  if (objc_opt_respondsToSelector())
  {
    v3 = self;
    delegate = self->_delegate;

    [(SUActivityDelegate *)delegate performActionForActivity:self];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUActivity;
    [(UIActivity *)&v5 performActivity];
  }
}

- (void)prepareWithActivityItems:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    v5 = self;
    delegate = self->_delegate;

    [(SUActivityDelegate *)delegate activity:self prepareWithActivityItems:a3];
  }
}

@end