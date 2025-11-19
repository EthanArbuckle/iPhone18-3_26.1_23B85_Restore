@interface UIStoryboardSegueTemplate
- (NSString)customPrepareForChildViewControllerSelectorName;
- (SEL)prepareForChildViewControllerSelector;
- (UIStoryboardSegueTemplate)init;
- (UIStoryboardSegueTemplate)initWithCoder:(id)a3;
- (UIViewController)viewController;
- (id)_perform:(id)a3;
- (id)_performWithDestinationViewController:(id)a3 sender:(id)a4;
- (id)instantiateOrFindDestinationViewControllerWithSender:(id)a3;
- (id)perform:(id)a3;
- (id)segueWithDestinationViewController:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCustomPrepareForChildViewControllerSelectorName:(id)a3;
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

- (UIStoryboardSegueTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = UIStoryboardSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIIdentifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectForKey:@"UISegueClassName"];
    v10 = [v9 copy];
    segueClassName = v5->_segueClassName;
    v5->_segueClassName = v10;

    v12 = [v4 decodeObjectForKey:@"UIDestinationViewControllerIdentifier"];
    v13 = [v12 copy];
    destinationViewControllerIdentifier = v5->_destinationViewControllerIdentifier;
    v5->_destinationViewControllerIdentifier = v13;

    v5->_performOnViewLoad = [v4 decodeBoolForKey:@"UIPerformOnViewLoad"];
    if ([v4 containsValueForKey:@"UIAnimates"])
    {
      v15 = [v4 decodeBoolForKey:@"UIAnimates"];
    }

    else
    {
      v15 = 1;
    }

    v5->_animates = v15;
    v16 = [v4 decodeObjectForKey:@"UICustomPrepareForChildViewControllersSegueName"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v9 = v4;
  if (identifier)
  {
    [v4 encodeObject:identifier forKey:@"UIIdentifier"];
    v4 = v9;
  }

  segueClassName = self->_segueClassName;
  if (segueClassName)
  {
    [v4 encodeObject:segueClassName forKey:@"UISegueClassName"];
    v4 = v9;
  }

  [v4 encodeObject:self->_destinationViewControllerIdentifier forKey:@"UIDestinationViewControllerIdentifier"];
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

- (void)setCustomPrepareForChildViewControllerSelectorName:(id)a3
{
  p_prepareForChildViewControllerSelector = &self->_prepareForChildViewControllerSelector;
  v4 = NSSelectorFromString(a3);
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

- (id)instantiateOrFindDestinationViewControllerWithSender:(id)a3
{
  v4 = a3;
  v5 = [(UIStoryboardSegueTemplate *)self viewController];
  v6 = [v5 storyboard];
  v7 = [v6 _instantiateViewControllerWithIdentifier:self->_destinationViewControllerIdentifier creator:0 storyboardSegueTemplate:self sender:v4];

  return v7;
}

- (id)segueWithDestinationViewController:(id)a3
{
  v5 = a3;
  segueClassName = self->_segueClassName;
  if (segueClassName)
  {
    v7 = NSClassFromString(segueClassName);
    if (!v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UIStoryboardSegueTemplate.m" lineNumber:104 description:{@"Could not create a segue of class '%@'", 0}];

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
  v12 = [v9 initWithIdentifier:identifier source:WeakRetained destination:v5];

  v13 = [(UIStoryboardSegueTemplate *)self newDefaultPrepareHandlerForSegue:v12];
  [v12 setPrepareHandler:v13];
  v14 = [(UIStoryboardSegueTemplate *)self newDefaultPerformHandlerForSegue:v12];
  [v12 setPerformHandler:v14];

  return v12;
}

- (id)_perform:(id)a3
{
  v4 = a3;
  v5 = [(UIStoryboardSegueTemplate *)self instantiateOrFindDestinationViewControllerWithSender:v4];
  v6 = [(UIStoryboardSegueTemplate *)self _performWithDestinationViewController:v5 sender:v4];

  return v6;
}

- (id)_performWithDestinationViewController:(id)a3 sender:(id)a4
{
  v7 = a4;
  v8 = [(UIStoryboardSegueTemplate *)self segueWithDestinationViewController:a3];
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIStoryboardSegueTemplate.m" lineNumber:126 description:@"Failed to create a segue"];
  }

  [v8 setSender:v7];
  [v8 _prepare];
  v9 = [(UIStoryboardSegueTemplate *)self viewController];
  [v9 prepareForSegue:v8 sender:v7];

  v10 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:[(UIStoryboardSegueTemplate *)self animates]];
  [v8 perform];
  [UIView setAnimationsEnabled:v10];
  [v8 setSender:0];

  return v8;
}

- (id)perform:(id)a3
{
  v4 = a3;
  v5 = [(UIStoryboardSegueTemplate *)self viewController];
  v6 = [(UIStoryboardSegueTemplate *)self identifier];
  v7 = [v5 shouldPerformSegueWithIdentifier:v6 sender:v4];

  if (v7)
  {
    v8 = [(UIStoryboardSegueTemplate *)self _perform:v4];
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