@interface UIStoryboardPopoverSegueTemplate
- (UIStoryboardPopoverSegueTemplate)initWithCoder:(id)a3;
- (id)segueWithDestinationViewController:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIStoryboardPopoverSegueTemplate

- (UIStoryboardPopoverSegueTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIStoryboardPopoverSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v14 initWithCoder:v4];
  if (v5)
  {
    v5->_permittedArrowDirections = [v4 decodeIntegerForKey:@"UIPermittedArrowDirections"];
    v6 = [v4 decodeObjectForKey:@"UIPassthroughViews"];
    v7 = [v6 copy];
    passthroughViews = v5->_passthroughViews;
    v5->_passthroughViews = v7;

    v9 = [v4 decodeObjectForKey:@"UIAnchorBarButtonItem"];
    anchorBarButtonItem = v5->_anchorBarButtonItem;
    v5->_anchorBarButtonItem = v9;

    v11 = [v4 decodeObjectForKey:@"UIAnchorView"];
    anchorView = v5->_anchorView;
    v5->_anchorView = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIStoryboardPopoverSegueTemplate;
  v4 = a3;
  [(UIStoryboardSegueTemplate *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_permittedArrowDirections forKey:{@"UIPermittedArrowDirections", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_passthroughViews forKey:@"UIPassthroughViews"];
  [v4 encodeObject:self->_anchorBarButtonItem forKey:@"UIAnchorBarButtonItem"];
  [v4 encodeObject:self->_anchorView forKey:@"UIAnchorView"];
}

- (id)segueWithDestinationViewController:(id)a3
{
  v4 = a3;
  v5 = [UIStoryboardPopoverSegue alloc];
  v6 = [(UIStoryboardSegueTemplate *)self identifier];
  v7 = [(UIStoryboardSegueTemplate *)self viewController];
  v8 = [(UIStoryboardSegue *)v5 initWithIdentifier:v6 source:v7 destination:v4];

  v9 = [(UIStoryboardPopoverSegueTemplate *)self passthroughViews];
  [(UIStoryboardPopoverSegue *)v8 _setPassthroughViews:v9];

  [(UIStoryboardPopoverSegue *)v8 _setPermittedArrowDirections:[(UIStoryboardPopoverSegueTemplate *)self permittedArrowDirections]];
  v10 = [(UIStoryboardPopoverSegueTemplate *)self anchorBarButtonItem];
  [(UIStoryboardPopoverSegue *)v8 _setAnchorBarButtonItem:v10];

  v11 = [(UIStoryboardPopoverSegueTemplate *)self anchorView];

  if (v11)
  {
    v12 = [(UIStoryboardPopoverSegueTemplate *)self anchorView];
    [(UIStoryboardPopoverSegue *)v8 _setAnchorView:v12];

    v13 = [(UIStoryboardPopoverSegueTemplate *)self anchorView];
    [v13 bounds];
    [(UIStoryboardPopoverSegue *)v8 _setAnchorRect:?];
  }

  return v8;
}

@end