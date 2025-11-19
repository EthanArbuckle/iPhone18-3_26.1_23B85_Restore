@interface _UIRemoteViewService
+ (_UIRemoteViewService)allocWithZone:(_NSZone *)a3;
- (_UIRemoteViewService)init;
- (_UIRemoteViewService)initWithExtension:(id)a3 andContextToken:(id)a4;
- (_UIRemoteViewService)initWithPlugIn:(id)a3 andContextToken:(id)a4;
- (id)_init;
- (void)beginUsing:(id)a3;
- (void)endUsing:(id)a3;
@end

@implementation _UIRemoteViewService

+ (_UIRemoteViewService)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38___UIRemoteViewService_allocWithZone___block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a3;
    block[5] = a1;
    if (qword_1ED4994E0 != -1)
    {
      dispatch_once(&qword_1ED4994E0, block);
    }

    v6 = _MergedGlobals_1_30;

    return v6;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS____UIRemoteViewService;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _UIRemoteViewService;
  return [(_UIRemoteViewService *)&v3 init];
}

- (_UIRemoteViewService)initWithPlugIn:(id)a3 andContextToken:(id)a4
{
  v7 = a4;
  v8 = MEMORY[0x1E696ABD0];
  v9 = [a3 identifier];
  v16 = 0;
  v10 = [v8 extensionWithIdentifier:v9 error:&v16];
  v11 = v16;

  if (!v10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [v11 localizedDescription];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIRemoteViewService.m" lineNumber:48 description:{@"extension was nil - error %@", v15}];
  }

  v12 = [(_UIRemoteViewService *)self initWithExtension:v10 andContextToken:v7];

  return v12;
}

- (_UIRemoteViewService)initWithExtension:(id)a3 andContextToken:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_UIConcreteRemoteViewService alloc] initWithExtension:v7 andContextToken:v6];

  return &v8->super;
}

- (_UIRemoteViewService)init
{
  v3 = objc_alloc_init(_UIConcreteRemoteViewService);

  return &v3->super;
}

- (void)beginUsing:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIRemoteViewService.m" lineNumber:83 description:{@"Abstract method called %s", "-[_UIRemoteViewService beginUsing:]"}];
}

- (void)endUsing:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIRemoteViewService.m" lineNumber:87 description:{@"Abstract method called %s", "-[_UIRemoteViewService endUsing:]"}];
}

@end