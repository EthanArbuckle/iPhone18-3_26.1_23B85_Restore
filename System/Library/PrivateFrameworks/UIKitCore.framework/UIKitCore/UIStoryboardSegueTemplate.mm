@interface UIStoryboardSegueTemplate
- (NSString)customPrepareForChildViewControllerSelectorName;
- (SEL)prepareForChildViewControllerSelector;
- (UIStoryboardSegueTemplate)init;
- (UIStoryboardSegueTemplate)initWithCoder:(id)coder;
- (UIViewController)viewController;
- (id)_perform:(id)_perform;
- (id)_performWithDestinationViewController:(id)controller sender:(id)sender;
- (id)instantiateOrFindDestinationViewControllerWithSender:(id)sender;
- (id)perform:(id)perform;
- (id)segueWithDestinationViewController:(id)controller;
- (void)encodeWithCoder:(id)coder;
- (void)setCustomPrepareForChildViewControllerSelectorName:(id)name;
@end

@implementation UIStoryboardSegueTemplate

- (UIStoryboardSegueTemplate)init
{
  v3.receiver = self;
  v3.super_class = UIStoryboardSegueTemplate;
  result = [(UIStoryboardSegueTemplate *)&v3 init];
  if (result)
  {
    result->_animates = 1;
    result->_prepareForChildViewControllerSelector = 0;
  }

  return result;
}

- (UIStoryboardSegueTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = UIStoryboardSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIIdentifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectForKey:@"UISegueClassName"];
    v10 = [v9 copy];
    segueClassName = v5->_segueClassName;
    v5->_segueClassName = v10;

    v12 = [coderCopy decodeObjectForKey:@"UIDestinationViewControllerIdentifier"];
    v13 = [v12 copy];
    destinationViewControllerIdentifier = v5->_destinationViewControllerIdentifier;
    v5->_destinationViewControllerIdentifier = v13;

    v5->_performOnViewLoad = [coderCopy decodeBoolForKey:@"UIPerformOnViewLoad"];
    if ([coderCopy containsValueForKey:@"UIAnimates"])
    {
      v15 = [coderCopy decodeBoolForKey:@"UIAnimates"];
    }

    else
    {
      v15 = 1;
    }

    v5->_animates = v15;
    v16 = [coderCopy decodeObjectForKey:@"UICustomPrepareForChildViewControllersSegueName"];
    v17 = v16;
    if (v16 && (v18 = NSSelectorFromString(v16)) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v5->_prepareForChildViewControllerSelector = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = self->_identifier;
  v9 = coderCopy;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"UIIdentifier"];
    coderCopy = v9;
  }

  segueClassName = self->_segueClassName;
  if (segueClassName)
  {
    [coderCopy encodeObject:segueClassName forKey:@"UISegueClassName"];
    coderCopy = v9;
  }

  [coderCopy encodeObject:self->_destinationViewControllerIdentifier forKey:@"UIDestinationViewControllerIdentifier"];
  if (self->_performOnViewLoad)
  {
    [v9 encodeBool:1 forKey:@"UIPerformOnViewLoad"];
  }

  if (!self->_animates)
  {
    [v9 encodeBool:0 forKey:@"UIAnimates"];
  }

  prepareForChildViewControllerSelector = self->_prepareForChildViewControllerSelector;
  if (prepareForChildViewControllerSelector)
  {
    v8 = NSStringFromSelector(prepareForChildViewControllerSelector);
    [v9 encodeObject:v8 forKey:@"UICustomPrepareForChildViewControllersSegueName"];
  }
}

- (NSString)customPrepareForChildViewControllerSelectorName
{
  prepareForChildViewControllerSelector = self->_prepareForChildViewControllerSelector;
  if (prepareForChildViewControllerSelector)
  {
    return NSStringFromSelector(prepareForChildViewControllerSelector);
  }

  else
  {
    return NSStringFromSelector(0);
  }
}

- (void)setCustomPrepareForChildViewControllerSelectorName:(id)name
{
  p_prepareForChildViewControllerSelector = &self->_prepareForChildViewControllerSelector;
  v4 = NSSelectorFromString(name);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *p_prepareForChildViewControllerSelector = v5;
}

- (SEL)prepareForChildViewControllerSelector
{
  if (self->_prepareForChildViewControllerSelector)
  {
    return self->_prepareForChildViewControllerSelector;
  }

  else
  {
    return 0;
  }
}

- (id)instantiateOrFindDestinationViewControllerWithSender:(id)sender
{
  senderCopy = sender;
  viewController = [(UIStoryboardSegueTemplate *)self viewController];
  storyboard = [viewController storyboard];
  v7 = [storyboard _instantiateViewControllerWithIdentifier:self->_destinationViewControllerIdentifier creator:0 storyboardSegueTemplate:self sender:senderCopy];

  return v7;
}

- (id)segueWithDestinationViewController:(id)controller
{
  controllerCopy = controller;
  segueClassName = self->_segueClassName;
  if (segueClassName)
  {
    v7 = NSClassFromString(segueClassName);
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIStoryboardSegueTemplate.m" lineNumber:104 description:{@"Could not create a segue of class '%@'", 0}];

      v7 = 0;
    }
  }

  else
  {
    v7 = objc_opt_class();
  }

  v9 = [v7 alloc];
  identifier = self->_identifier;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = [v9 initWithIdentifier:identifier source:WeakRetained destination:controllerCopy];

  v13 = [(UIStoryboardSegueTemplate *)self newDefaultPrepareHandlerForSegue:v12];
  [v12 setPrepareHandler:v13];
  v14 = [(UIStoryboardSegueTemplate *)self newDefaultPerformHandlerForSegue:v12];
  [v12 setPerformHandler:v14];

  return v12;
}

- (id)_perform:(id)_perform
{
  _performCopy = _perform;
  v5 = [(UIStoryboardSegueTemplate *)self instantiateOrFindDestinationViewControllerWithSender:_performCopy];
  v6 = [(UIStoryboardSegueTemplate *)self _performWithDestinationViewController:v5 sender:_performCopy];

  return v6;
}

- (id)_performWithDestinationViewController:(id)controller sender:(id)sender
{
  senderCopy = sender;
  v8 = [(UIStoryboardSegueTemplate *)self segueWithDestinationViewController:controller];
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIStoryboardSegueTemplate.m" lineNumber:126 description:@"Failed to create a segue"];
  }

  [v8 setSender:senderCopy];
  [v8 _prepare];
  viewController = [(UIStoryboardSegueTemplate *)self viewController];
  [viewController prepareForSegue:v8 sender:senderCopy];

  v10 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:[(UIStoryboardSegueTemplate *)self animates]];
  [v8 perform];
  [UIView setAnimationsEnabled:v10];
  [v8 setSender:0];

  return v8;
}

- (id)perform:(id)perform
{
  performCopy = perform;
  viewController = [(UIStoryboardSegueTemplate *)self viewController];
  identifier = [(UIStoryboardSegueTemplate *)self identifier];
  v7 = [viewController shouldPerformSegueWithIdentifier:identifier sender:performCopy];

  if (v7)
  {
    v8 = [(UIStoryboardSegueTemplate *)self _perform:performCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end