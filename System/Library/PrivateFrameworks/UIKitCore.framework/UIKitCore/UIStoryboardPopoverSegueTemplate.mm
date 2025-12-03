@interface UIStoryboardPopoverSegueTemplate
- (UIStoryboardPopoverSegueTemplate)initWithCoder:(id)coder;
- (id)segueWithDestinationViewController:(id)controller;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIStoryboardPopoverSegueTemplate

- (UIStoryboardPopoverSegueTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = UIStoryboardPopoverSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_permittedArrowDirections = [coderCopy decodeIntegerForKey:@"UIPermittedArrowDirections"];
    v6 = [coderCopy decodeObjectForKey:@"UIPassthroughViews"];
    v7 = [v6 copy];
    passthroughViews = v5->_passthroughViews;
    v5->_passthroughViews = v7;

    v9 = [coderCopy decodeObjectForKey:@"UIAnchorBarButtonItem"];
    anchorBarButtonItem = v5->_anchorBarButtonItem;
    v5->_anchorBarButtonItem = v9;

    v11 = [coderCopy decodeObjectForKey:@"UIAnchorView"];
    anchorView = v5->_anchorView;
    v5->_anchorView = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIStoryboardPopoverSegueTemplate;
  coderCopy = coder;
  [(UIStoryboardSegueTemplate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_permittedArrowDirections forKey:{@"UIPermittedArrowDirections", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_passthroughViews forKey:@"UIPassthroughViews"];
  [coderCopy encodeObject:self->_anchorBarButtonItem forKey:@"UIAnchorBarButtonItem"];
  [coderCopy encodeObject:self->_anchorView forKey:@"UIAnchorView"];
}

- (id)segueWithDestinationViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [UIStoryboardPopoverSegue alloc];
  identifier = [(UIStoryboardSegueTemplate *)self identifier];
  viewController = [(UIStoryboardSegueTemplate *)self viewController];
  v8 = [(UIStoryboardSegue *)v5 initWithIdentifier:identifier source:viewController destination:controllerCopy];

  passthroughViews = [(UIStoryboardPopoverSegueTemplate *)self passthroughViews];
  [(UIStoryboardPopoverSegue *)v8 _setPassthroughViews:passthroughViews];

  [(UIStoryboardPopoverSegue *)v8 _setPermittedArrowDirections:[(UIStoryboardPopoverSegueTemplate *)self permittedArrowDirections]];
  anchorBarButtonItem = [(UIStoryboardPopoverSegueTemplate *)self anchorBarButtonItem];
  [(UIStoryboardPopoverSegue *)v8 _setAnchorBarButtonItem:anchorBarButtonItem];

  anchorView = [(UIStoryboardPopoverSegueTemplate *)self anchorView];

  if (anchorView)
  {
    anchorView2 = [(UIStoryboardPopoverSegueTemplate *)self anchorView];
    [(UIStoryboardPopoverSegue *)v8 _setAnchorView:anchorView2];

    anchorView3 = [(UIStoryboardPopoverSegueTemplate *)self anchorView];
    [anchorView3 bounds];
    [(UIStoryboardPopoverSegue *)v8 _setAnchorRect:?];
  }

  return v8;
}

@end