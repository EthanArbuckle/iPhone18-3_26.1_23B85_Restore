@interface _UIRemoteViewService
+ (_UIRemoteViewService)allocWithZone:(_NSZone *)zone;
- (_UIRemoteViewService)init;
- (_UIRemoteViewService)initWithExtension:(id)extension andContextToken:(id)token;
- (_UIRemoteViewService)initWithPlugIn:(id)in andContextToken:(id)token;
- (id)_init;
- (void)beginUsing:(id)using;
- (void)endUsing:(id)using;
@end

@implementation _UIRemoteViewService

+ (_UIRemoteViewService)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38___UIRemoteViewService_allocWithZone___block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = zone;
    block[5] = self;
    if (qword_1ED4994E0 != -1)
    {
      dispatch_once(&qword_1ED4994E0, block);
    }

    v6 = _MergedGlobals_1_30;

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS____UIRemoteViewService;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _UIRemoteViewService;
  return [(_UIRemoteViewService *)&v3 init];
}

- (_UIRemoteViewService)initWithPlugIn:(id)in andContextToken:(id)token
{
  tokenCopy = token;
  v8 = MEMORY[0x1E696ABD0];
  identifier = [in identifier];
  v16 = 0;
  v10 = [v8 extensionWithIdentifier:identifier error:&v16];
  v11 = v16;

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    localizedDescription = [v11 localizedDescription];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIRemoteViewService.m" lineNumber:48 description:{@"extension was nil - error %@", localizedDescription}];
  }

  v12 = [(_UIRemoteViewService *)self initWithExtension:v10 andContextToken:tokenCopy];

  return v12;
}

- (_UIRemoteViewService)initWithExtension:(id)extension andContextToken:(id)token
{
  tokenCopy = token;
  extensionCopy = extension;
  v8 = [[_UIConcreteRemoteViewService alloc] initWithExtension:extensionCopy andContextToken:tokenCopy];

  return &v8->super;
}

- (_UIRemoteViewService)init
{
  v3 = objc_alloc_init(_UIConcreteRemoteViewService);

  return &v3->super;
}

- (void)beginUsing:(id)using
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIRemoteViewService.m" lineNumber:83 description:{@"Abstract method called %s", "-[_UIRemoteViewService beginUsing:]"}];
}

- (void)endUsing:(id)using
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIRemoteViewService.m" lineNumber:87 description:{@"Abstract method called %s", "-[_UIRemoteViewService endUsing:]"}];
}

@end