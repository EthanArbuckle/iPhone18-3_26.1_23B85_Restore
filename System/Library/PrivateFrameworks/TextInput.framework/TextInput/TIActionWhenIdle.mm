@interface TIActionWhenIdle
+ (id)actionWhenIdleWithTarget:(id)target selector:(SEL)selector object:(id)object;
- (BOOL)isValid;
- (TIActionWhenIdle)initWithInvocation:(id)invocation;
- (TIActionWhenIdle)initWithTarget:(id)target selector:(SEL)selector object:(id)object;
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
  invocation = [(TIActionWhenIdle *)self invocation];
  [(TIActionWhenIdle *)self setInvocation:0];
  [invocation invoke];
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
  invocation = [(TIActionWhenIdle *)self invocation];
  v3 = invocation != 0;

  return v3;
}

- (TIActionWhenIdle)initWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  v9.receiver = self;
  v9.super_class = TIActionWhenIdle;
  v6 = [(TIActionWhenIdle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_invocation, invocation);
    [(NSInvocation *)v7->_invocation retainArguments];
    [(TIActionWhenIdle *)v7 addObserverToRunLoop];
  }

  return v7;
}

- (TIActionWhenIdle)initWithTarget:(id)target selector:(SEL)selector object:(id)object
{
  targetCopy = target;
  objectCopy = object;
  v9 = [targetCopy methodSignatureForSelector:selector];
  v10 = v9;
  if (!v9)
  {
LABEL_8:

    v14 = 0;
    goto LABEL_9;
  }

  numberOfArguments = [v9 numberOfArguments];
  v12 = numberOfArguments;
  if ((numberOfArguments & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (numberOfArguments >= 4)
    {
      v15 = NSStringFromSelector(selector);
      NSLog(&cfstr_SMethodRequire.isa, "[TIActionWhenIdle initWithTarget:selector:object:]", v15);
    }

    goto LABEL_8;
  }

  v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
  [v13 setTarget:targetCopy];
  [v13 setSelector:selector];
  if (v12 >= 3)
  {
    [v13 setArgument:&objectCopy atIndex:2];
  }

  v14 = [(TIActionWhenIdle *)self initWithInvocation:v13];

LABEL_9:
  return v14;
}

+ (id)actionWhenIdleWithTarget:(id)target selector:(SEL)selector object:(id)object
{
  objectCopy = object;
  targetCopy = target;
  v10 = [[self alloc] initWithTarget:targetCopy selector:selector object:objectCopy];

  return v10;
}

@end