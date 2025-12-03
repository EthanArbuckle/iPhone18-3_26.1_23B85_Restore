@interface _UIViewServiceControllerOperatorCreateResult
- (_UIViewServiceControllerOperatorCreateResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIViewServiceControllerOperatorCreateResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceWindowHostingHandle = [(_UIViewServiceControllerOperatorCreateResult *)self serviceWindowHostingHandle];

  if (serviceWindowHostingHandle)
  {
    serviceWindowHostingHandle2 = [(_UIViewServiceControllerOperatorCreateResult *)self serviceWindowHostingHandle];
    [coderCopy encodeObject:serviceWindowHostingHandle2 forKey:@"serviceWindowHostingHandle"];
  }

  supportedInterfaceOrientations = [(_UIViewServiceControllerOperatorCreateResult *)self supportedInterfaceOrientations];

  if (supportedInterfaceOrientations)
  {
    supportedInterfaceOrientations2 = [(_UIViewServiceControllerOperatorCreateResult *)self supportedInterfaceOrientations];
    [coderCopy encodeObject:supportedInterfaceOrientations2 forKey:@"supportedInterfaceOrientations"];
  }

  [coderCopy encodeInteger:-[_UIViewServiceControllerOperatorCreateResult preferredStatusBarStyle](self forKey:{"preferredStatusBarStyle"), @"preferredStatusBarStyle"}];
  [coderCopy encodeInteger:-[_UIViewServiceControllerOperatorCreateResult preferredStatusBarVisibility](self forKey:{"preferredStatusBarVisibility"), @"preferredStatusBarVisibility"}];
  accessibilityServerPort = [(_UIViewServiceControllerOperatorCreateResult *)self accessibilityServerPort];

  if (accessibilityServerPort)
  {
    accessibilityServerPort2 = [(_UIViewServiceControllerOperatorCreateResult *)self accessibilityServerPort];
    [coderCopy encodeObject:accessibilityServerPort2 forKey:@"accessibilityServerPort"];
  }
}

- (_UIViewServiceControllerOperatorCreateResult)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _UIViewServiceControllerOperatorCreateResult;
  v5 = [(_UIViewServiceControllerOperatorCreateResult *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"serviceWindowHostingHandle"];
    [(_UIViewServiceControllerOperatorCreateResult *)v5 setServiceWindowHostingHandle:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_self();
    v18[0] = v9;
    v10 = objc_opt_self();
    v18[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v12 = [v8 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"supportedInterfaceOrientations"];
    [(_UIViewServiceControllerOperatorCreateResult *)v5 setSupportedInterfaceOrientations:v13];

    -[_UIViewServiceControllerOperatorCreateResult setPreferredStatusBarStyle:](v5, "setPreferredStatusBarStyle:", [coderCopy decodeIntegerForKey:@"preferredStatusBarStyle"]);
    -[_UIViewServiceControllerOperatorCreateResult setPreferredStatusBarVisibility:](v5, "setPreferredStatusBarVisibility:", [coderCopy decodeIntegerForKey:@"preferredStatusBarVisibility"]);
    v14 = objc_opt_self();
    v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"accessibilityServerPort"];
    [(_UIViewServiceControllerOperatorCreateResult *)v5 setAccessibilityServerPort:v15];
  }

  return v5;
}

@end