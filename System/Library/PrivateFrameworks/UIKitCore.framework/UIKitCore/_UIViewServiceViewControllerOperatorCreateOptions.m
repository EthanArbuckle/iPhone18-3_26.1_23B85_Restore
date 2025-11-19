@interface _UIViewServiceViewControllerOperatorCreateOptions
- (_UIViewServiceViewControllerOperatorCreateOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIViewServiceViewControllerOperatorCreateOptions

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self viewControllerClassName];

  if (v4)
  {
    v5 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self viewControllerClassName];
    [v14 encodeObject:v5 forKey:@"viewControllerClassName"];
  }

  v6 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self contextToken];

  if (v6)
  {
    v7 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self contextToken];
    [v14 encodeObject:v7 forKey:@"contextToken"];
  }

  v8 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self displayConfigurations];

  if (v8)
  {
    v9 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self displayConfigurations];
    [v14 encodeObject:v9 forKey:@"displayConfigurations"];
  }

  v10 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self traitCollection];

  if (v10)
  {
    v11 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self traitCollection];
    [v14 encodeObject:v11 forKey:@"traitCollection"];
  }

  v12 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self hostAccessibilityServerPort];

  if (v12)
  {
    v13 = [(_UIViewServiceViewControllerOperatorCreateOptions *)self hostAccessibilityServerPort];
    [v14 encodeObject:v13 forKey:@"hostAccessibilityServerPort"];
  }

  [v14 encodeInteger:-[_UIViewServiceViewControllerOperatorCreateOptions availableTextServices](self forKey:{"availableTextServices"), @"availableTextServices"}];
  [v14 encodeInteger:-[_UIViewServiceViewControllerOperatorCreateOptions initialInterfaceOrientation](self forKey:{"initialInterfaceOrientation"), @"initialInterfaceOrientation"}];
}

- (_UIViewServiceViewControllerOperatorCreateOptions)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _UIViewServiceViewControllerOperatorCreateOptions;
  v5 = [(_UIViewServiceViewControllerOperatorCreateOptions *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"viewControllerClassName"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setViewControllerClassName:v7];

    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"contextToken"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setContextToken:v9];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_self();
    v22[0] = v11;
    v12 = objc_opt_self();
    v22[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v14 = [v10 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"displayConfigurations"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setDisplayConfigurations:v15];

    v16 = objc_opt_self();
    v17 = [v4 decodeObjectOfClass:v16 forKey:@"traitCollection"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setTraitCollection:v17];

    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"hostAccessibilityServerPort"];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v5 setHostAccessibilityServerPort:v19];

    -[_UIViewServiceViewControllerOperatorCreateOptions setAvailableTextServices:](v5, "setAvailableTextServices:", [v4 decodeIntegerForKey:@"availableTextServices"]);
    -[_UIViewServiceViewControllerOperatorCreateOptions setInitialInterfaceOrientation:](v5, "setInitialInterfaceOrientation:", [v4 decodeIntegerForKey:@"initialInterfaceOrientation"]);
  }

  return v5;
}

@end