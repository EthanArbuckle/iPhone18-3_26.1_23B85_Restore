@interface _UIViewServiceControllerOperatorCreateResult
- (_UIViewServiceControllerOperatorCreateResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIViewServiceControllerOperatorCreateResult

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(_UIViewServiceControllerOperatorCreateResult *)self serviceWindowHostingHandle];

  if (v4)
  {
    v5 = [(_UIViewServiceControllerOperatorCreateResult *)self serviceWindowHostingHandle];
    [v10 encodeObject:v5 forKey:@"serviceWindowHostingHandle"];
  }

  v6 = [(_UIViewServiceControllerOperatorCreateResult *)self supportedInterfaceOrientations];

  if (v6)
  {
    v7 = [(_UIViewServiceControllerOperatorCreateResult *)self supportedInterfaceOrientations];
    [v10 encodeObject:v7 forKey:@"supportedInterfaceOrientations"];
  }

  [v10 encodeInteger:-[_UIViewServiceControllerOperatorCreateResult preferredStatusBarStyle](self forKey:{"preferredStatusBarStyle"), @"preferredStatusBarStyle"}];
  [v10 encodeInteger:-[_UIViewServiceControllerOperatorCreateResult preferredStatusBarVisibility](self forKey:{"preferredStatusBarVisibility"), @"preferredStatusBarVisibility"}];
  v8 = [(_UIViewServiceControllerOperatorCreateResult *)self accessibilityServerPort];

  if (v8)
  {
    v9 = [(_UIViewServiceControllerOperatorCreateResult *)self accessibilityServerPort];
    [v10 encodeObject:v9 forKey:@"accessibilityServerPort"];
  }
}

- (_UIViewServiceControllerOperatorCreateResult)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UIViewServiceControllerOperatorCreateResult;
  v5 = [(_UIViewServiceControllerOperatorCreateResult *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"serviceWindowHostingHandle"];
    [(_UIViewServiceControllerOperatorCreateResult *)v5 setServiceWindowHostingHandle:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_self();
    v18[0] = v9;
    v10 = objc_opt_self();
    v18[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v12 = [v8 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"supportedInterfaceOrientations"];
    [(_UIViewServiceControllerOperatorCreateResult *)v5 setSupportedInterfaceOrientations:v13];

    -[_UIViewServiceControllerOperatorCreateResult setPreferredStatusBarStyle:](v5, "setPreferredStatusBarStyle:", [v4 decodeIntegerForKey:@"preferredStatusBarStyle"]);
    -[_UIViewServiceControllerOperatorCreateResult setPreferredStatusBarVisibility:](v5, "setPreferredStatusBarVisibility:", [v4 decodeIntegerForKey:@"preferredStatusBarVisibility"]);
    v14 = objc_opt_self();
    v15 = [v4 decodeObjectOfClass:v14 forKey:@"accessibilityServerPort"];
    [(_UIViewServiceControllerOperatorCreateResult *)v5 setAccessibilityServerPort:v15];
  }

  return v5;
}

@end