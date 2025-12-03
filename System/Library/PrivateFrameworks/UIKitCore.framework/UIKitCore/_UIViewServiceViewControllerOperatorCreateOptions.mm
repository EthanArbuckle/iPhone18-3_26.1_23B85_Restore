@interface _UIViewServiceViewControllerOperatorCreateOptions
- (_UIViewServiceViewControllerOperatorCreateOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIViewServiceViewControllerOperatorCreateOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  viewControllerClassName = [(_UIViewServiceViewControllerOperatorCreateOptions *)self viewControllerClassName];

  if (viewControllerClassName)
  {
    viewControllerClassName2 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self viewControllerClassName];
    [coderCopy encodeObject:viewControllerClassName2 forKey:@"viewControllerClassName"];
  }

  contextToken = [(_UIViewServiceViewControllerOperatorCreateOptions *)self contextToken];

  if (contextToken)
  {
    contextToken2 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self contextToken];
    [coderCopy encodeObject:contextToken2 forKey:@"contextToken"];
  }

  displayConfigurations = [(_UIViewServiceViewControllerOperatorCreateOptions *)self displayConfigurations];

  if (displayConfigurations)
  {
    displayConfigurations2 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self displayConfigurations];
    [coderCopy encodeObject:displayConfigurations2 forKey:@"displayConfigurations"];
  }

  traitCollection = [(_UIViewServiceViewControllerOperatorCreateOptions *)self traitCollection];

  if (traitCollection)
  {
    traitCollection2 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self traitCollection];
    [coderCopy encodeObject:traitCollection2 forKey:@"traitCollection"];
  }

  hostAccessibilityServerPort = [(_UIViewServiceViewControllerOperatorCreateOptions *)self hostAccessibilityServerPort];

  if (hostAccessibilityServerPort)
  {
    hostAccessibilityServerPort2 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self hostAccessibilityServerPort];
    [coderCopy encodeObject:hostAccessibilityServerPort2 forKey:@"hostAccessibilityServerPort"];
  }

  [coderCopy encodeInteger:-[_UIViewServiceViewControllerOperatorCreateOptions availableTextServices](self forKey:{"availableTextServices"), @"availableTextServices"}];
  [coderCopy encodeInteger:-[_UIViewServiceViewControllerOperatorCreateOptions initialInterfaceOrientation](self forKey:{"initialInterfaceOrientation"), @"initialInterfaceOrientation"}];
}

- (_UIViewServiceViewControllerOperatorCreateOptions)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _UIViewServiceViewControllerOperatorCreateOptions;
  v5 = [(_UIViewServiceViewControllerOperatorCreateOptions *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"viewControllerClassName"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setViewControllerClassName:v7];

    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"contextToken"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setContextToken:v9];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_self();
    v22[0] = v11;
    v12 = objc_opt_self();
    v22[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v14 = [v10 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"displayConfigurations"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setDisplayConfigurations:v15];

    v16 = objc_opt_self();
    v17 = [coderCopy decodeObjectOfClass:v16 forKey:@"traitCollection"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setTraitCollection:v17];

    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"hostAccessibilityServerPort"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setHostAccessibilityServerPort:v19];

    -[_UIViewServiceViewControllerOperatorCreateOptions setAvailableTextServices:](v5, "setAvailableTextServices:", [coderCopy decodeIntegerForKey:@"availableTextServices"]);
    -[_UIViewServiceViewControllerOperatorCreateOptions setInitialInterfaceOrientation:](v5, "setInitialInterfaceOrientation:", [coderCopy decodeIntegerForKey:@"initialInterfaceOrientation"]);
  }

  return v5;
}

@end