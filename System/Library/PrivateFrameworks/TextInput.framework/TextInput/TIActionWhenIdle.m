@interface TIActionWhenIdle
+ (id)actionWhenIdleWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5;
- (BOOL)isValid;
- (TIActionWhenIdle)initWithInvocation:(id)a3;
- (TIActionWhenIdle)initWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5;
- (void)addObserverToRunLoop;
- (void)invoke;
@end

@implementation TIActionWhenIdle

void __40__TIActionWhenIdle_addObserverToRunLoop__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invoke];
}

- (void)invoke
{
  v3 = [(TIActionWhenIdle *)self invocation];
  [(TIActionWhenIdle *)self setInvocation:0];
  [v3 invoke];
}

- (void)addObserverToRunLoop
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__TIActionWhenIdle_addObserverToRunLoop__block_invoke;
  v4[3] = &unk_1E6F4BB60;
  objc_copyWeak(&v5, &location);
  v2 = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, v4);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddObserver(Current, v2, *MEMORY[0x1E695E8D0]);
  CFRelease(v2);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)isValid
{
  v2 = [(TIActionWhenIdle *)self invocation];
  v3 = v2 != 0;

  return v3;
}

- (TIActionWhenIdle)initWithInvocation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIActionWhenIdle;
  v6 = [(TIActionWhenIdle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_invocation, a3);
    [(NSInvocation *)v7->_invocation retainArguments];
    [(TIActionWhenIdle *)v7 addObserverToRunLoop];
  }

  return v7;
}

- (TIActionWhenIdle)initWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5
{
  v8 = a3;
  v17 = a5;
  v9 = [v8 methodSignatureForSelector:a4];
  v10 = v9;
  if (!v9)
  {
LABEL_8:

    v14 = 0;
    goto LABEL_9;
  }

  v11 = [v9 numberOfArguments];
  v12 = v11;
  if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (v11 >= 4)
    {
      v15 = NSStringFromSelector(a4);
      NSLog(&cfstr_SMethodRequire.isa, "[TIActionWhenIdle initWithTarget:selector:object:]", v15);
    }

    goto LABEL_8;
  }

  v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
  [v13 setTarget:v8];
  [v13 setSelector:a4];
  if (v12 >= 3)
  {
    [v13 setArgument:&v17 atIndex:2];
  }

  v14 = [(TIActionWhenIdle *)self initWithInvocation:v13];

LABEL_9:
  return v14;
}

+ (id)actionWhenIdleWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithTarget:v9 selector:a4 object:v8];

  return v10;
}

@end