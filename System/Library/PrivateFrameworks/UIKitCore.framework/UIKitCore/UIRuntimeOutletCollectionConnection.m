@interface UIRuntimeOutletCollectionConnection
- (UIRuntimeOutletCollectionConnection)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)performConnect;
@end

@implementation UIRuntimeOutletCollectionConnection

- (UIRuntimeOutletCollectionConnection)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIRuntimeOutletCollectionConnection;
  v5 = [(UIRuntimeConnection *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"runtimeCollectionClassName"];
    runtimeCollectionClassName = v5->runtimeCollectionClassName;
    v5->runtimeCollectionClassName = v6;

    v5->addsContentToExistingCollection = [v4 decodeBoolForKey:@"addsContentToExistingCollection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UIRuntimeOutletCollectionConnection;
  [(UIRuntimeConnection *)&v6 encodeWithCoder:v4];
  runtimeCollectionClassName = self->runtimeCollectionClassName;
  if (runtimeCollectionClassName)
  {
    [v4 encodeObject:runtimeCollectionClassName forKey:@"runtimeCollectionClassName"];
  }

  [v4 encodeBool:self->addsContentToExistingCollection forKey:@"addsContentToExistingCollection"];
}

- (void)performConnect
{
  v4 = [(UIRuntimeOutletCollectionConnection *)self runtimeCollectionClassName];
  v5 = NSClassFromString(v4);

  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [(UIRuntimeOutletCollectionConnection *)self runtimeCollectionClassName];
    [v16 handleFailureInMethod:a2 object:self file:@"UIRuntimeOutletCollectionConnection.m" lineNumber:37 description:{@"No class named '%@'.", v17}];
  }

  if ([(objc_class *)v5 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [v5 alloc];
    v7 = [(UIRuntimeConnection *)self destination];
    v18 = [v6 initWithArray:v7];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromClass(v5);
    [v7 handleFailureInMethod:a2 object:self file:@"UIRuntimeOutletCollectionConnection.m" lineNumber:41 description:{@"'%@' is not a supported collection class. Expected subclass of NSArray.", v8}];

    v18 = 0;
  }

  if (self->addsContentToExistingCollection && (-[UIRuntimeConnection source](self, "source"), v9 = objc_claimAutoreleasedReturnValue(), -[UIRuntimeConnection label](self, "label"), v10 = objc_claimAutoreleasedReturnValue(), [v9 valueForKeyPath:v10], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v11))
  {
    v12 = [(UIRuntimeConnection *)self source];
    v13 = [(UIRuntimeConnection *)self label];
    v14 = [v12 mutableArrayValueForKeyPath:v13];

    [v14 addObjectsFromArray:v18];
  }

  else
  {
    v14 = [(UIRuntimeConnection *)self source];
    v15 = [(UIRuntimeConnection *)self label];
    [v14 setValue:v18 forKeyPath:v15];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIRuntimeConnection *)self source];
  v5 = [(UIRuntimeConnection *)self destination];
  v6 = [(UIRuntimeConnection *)self label];
  v7 = [(UIRuntimeOutletCollectionConnection *)self runtimeCollectionClassName];
  v8 = [v3 stringWithFormat:@"Outlet collection connection with source %@, value %@, variable name %@, and runtime collection class name %@.", v4, v5, v6, v7];

  return v8;
}

@end