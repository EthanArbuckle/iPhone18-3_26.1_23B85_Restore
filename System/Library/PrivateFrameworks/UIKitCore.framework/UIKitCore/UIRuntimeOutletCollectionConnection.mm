@interface UIRuntimeOutletCollectionConnection
- (UIRuntimeOutletCollectionConnection)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)performConnect;
@end

@implementation UIRuntimeOutletCollectionConnection

- (UIRuntimeOutletCollectionConnection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIRuntimeOutletCollectionConnection;
  v5 = [(UIRuntimeConnection *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"runtimeCollectionClassName"];
    runtimeCollectionClassName = v5->runtimeCollectionClassName;
    v5->runtimeCollectionClassName = v6;

    v5->addsContentToExistingCollection = [coderCopy decodeBoolForKey:@"addsContentToExistingCollection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UIRuntimeOutletCollectionConnection;
  [(UIRuntimeConnection *)&v6 encodeWithCoder:coderCopy];
  runtimeCollectionClassName = self->runtimeCollectionClassName;
  if (runtimeCollectionClassName)
  {
    [coderCopy encodeObject:runtimeCollectionClassName forKey:@"runtimeCollectionClassName"];
  }

  [coderCopy encodeBool:self->addsContentToExistingCollection forKey:@"addsContentToExistingCollection"];
}

- (void)performConnect
{
  runtimeCollectionClassName = [(UIRuntimeOutletCollectionConnection *)self runtimeCollectionClassName];
  v5 = NSClassFromString(runtimeCollectionClassName);

  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    runtimeCollectionClassName2 = [(UIRuntimeOutletCollectionConnection *)self runtimeCollectionClassName];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIRuntimeOutletCollectionConnection.m" lineNumber:37 description:{@"No class named '%@'.", runtimeCollectionClassName2}];
  }

  if ([(objc_class *)v5 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [v5 alloc];
    destination = [(UIRuntimeConnection *)self destination];
    v18 = [v6 initWithArray:destination];
  }

  else
  {
    destination = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromClass(v5);
    [destination handleFailureInMethod:a2 object:self file:@"UIRuntimeOutletCollectionConnection.m" lineNumber:41 description:{@"'%@' is not a supported collection class. Expected subclass of NSArray.", v8}];

    v18 = 0;
  }

  if (self->addsContentToExistingCollection && (-[UIRuntimeConnection source](self, "source"), v9 = objc_claimAutoreleasedReturnValue(), -[UIRuntimeConnection label](self, "label"), v10 = objc_claimAutoreleasedReturnValue(), [v9 valueForKeyPath:v10], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v11))
  {
    source = [(UIRuntimeConnection *)self source];
    label = [(UIRuntimeConnection *)self label];
    source2 = [source mutableArrayValueForKeyPath:label];

    [source2 addObjectsFromArray:v18];
  }

  else
  {
    source2 = [(UIRuntimeConnection *)self source];
    label2 = [(UIRuntimeConnection *)self label];
    [source2 setValue:v18 forKeyPath:label2];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  source = [(UIRuntimeConnection *)self source];
  destination = [(UIRuntimeConnection *)self destination];
  label = [(UIRuntimeConnection *)self label];
  runtimeCollectionClassName = [(UIRuntimeOutletCollectionConnection *)self runtimeCollectionClassName];
  v8 = [v3 stringWithFormat:@"Outlet collection connection with source %@, value %@, variable name %@, and runtime collection class name %@.", source, destination, label, runtimeCollectionClassName];

  return v8;
}

@end