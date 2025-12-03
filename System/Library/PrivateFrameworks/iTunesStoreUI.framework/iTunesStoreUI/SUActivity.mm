@interface SUActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityImage;
- (id)activityTitle;
- (id)activityType;
- (id)activityViewController;
- (void)dealloc;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
- (void)setActivityImage:(id)image;
- (void)setActivityTitle:(id)title;
- (void)setActivityType:(id)type;
- (void)setActivityViewController:(id)controller;
@end

@implementation SUActivity

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUActivity;
  [(SUActivity *)&v3 dealloc];
}

- (void)setActivityImage:(id)image
{
  suActivityImage = self->_suActivityImage;
  if (suActivityImage != image)
  {

    self->_suActivityImage = image;
  }
}

- (void)setActivityTitle:(id)title
{
  suActivityTitle = self->_suActivityTitle;
  if (suActivityTitle != title)
  {

    self->_suActivityTitle = [title copy];
  }
}

- (void)setActivityType:(id)type
{
  suActivityType = self->_suActivityType;
  if (suActivityType != type)
  {

    self->_suActivityType = [type copy];
  }
}

- (void)setActivityViewController:(id)controller
{
  suActivityViewController = self->_suActivityViewController;
  if (suActivityViewController != controller)
  {

    self->_suActivityViewController = controller;
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

- (BOOL)canPerformWithActivityItems:(id)items
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  selfCopy = self;
  delegate = self->_delegate;

  return [(SUActivityDelegate *)delegate activity:self canPerformWithActivityItems:items];
}

- (void)performActivity
{
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
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

- (void)prepareWithActivityItems:(id)items
{
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
    delegate = self->_delegate;

    [(SUActivityDelegate *)delegate activity:self prepareWithActivityItems:items];
  }
}

@end