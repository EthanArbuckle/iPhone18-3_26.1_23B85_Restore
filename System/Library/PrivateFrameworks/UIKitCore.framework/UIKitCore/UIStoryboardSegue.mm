@interface UIStoryboardSegue
+ (UIStoryboardSegue)segueWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination performHandler:(void *)performHandler;
- (UIStoryboardSegue)init;
- (UIStoryboardSegue)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination;
- (void)_prepare;
- (void)perform;
@end

@implementation UIStoryboardSegue

- (UIStoryboardSegue)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
  v9 = identifier;
  v10 = source;
  v11 = destination;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIStoryboardSegue.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"source"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIStoryboardSegue.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"destination"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = UIStoryboardSegue;
  v13 = [(UIStoryboardSegue *)&v19 init];
  if (v13)
  {
    v14 = [(NSString *)v9 copy];
    v15 = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_sourceViewController, source);
    objc_storeStrong(&v13->_destinationViewController, destination);
  }

  return v13;
}

+ (UIStoryboardSegue)segueWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination performHandler:(void *)performHandler
{
  v11 = identifier;
  v12 = source;
  v13 = destination;
  v14 = performHandler;
  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIStoryboardSegue.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"performHandler != NULL"}];
  }

  v15 = [[self alloc] initWithIdentifier:v11 source:v12 destination:v13];
  [v15 setPerformHandler:v14];

  return v15;
}

- (UIStoryboardSegue)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIStoryboardSegue init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (void)perform
{
  performHandler = self->_performHandler;
  if (!performHandler)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];
    v8 = MEMORY[0x1E696AEC0];
    identifier = [(UIStoryboardSegue *)self identifier];
    v10 = [v8 stringWithFormat:@"Could not perform segue with identifier '%@'. A segue must either have a performHandler or it must override -perform.", identifier];
    v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v4 = performHandler[2];
  v5 = self->_performHandler;

  v4(v5);
}

- (void)_prepare
{
  prepareHandler = self->_prepareHandler;
  if (prepareHandler)
  {
    prepareHandler[2]();
  }
}

@end