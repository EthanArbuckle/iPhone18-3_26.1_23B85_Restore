@interface _UIActionWhenIdle
+ (_UIActionWhenIdle)actionWhenIdleWithTarget:(id)target selector:(SEL)selector object:(id)object;
- (BOOL)isValid;
- (_UIActionWhenIdle)initWithInvocation:(id)invocation;
- (_UIActionWhenIdle)initWithTarget:(id)target selector:(SEL)selector object:(id)object;
- (void)addObserverToRunLoop;
- (void)invoke;
@end

@implementation _UIActionWhenIdle

- (void)addObserverToRunLoop
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___UIActionWhenIdle_addObserverToRunLoop__block_invoke;
  block[3] = &unk_1E7128178;
  block[4] = self;
  v2 = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, block);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddObserver(Current, v2, *MEMORY[0x1E695E8D0]);
  CFRelease(v2);
}

- (void)invoke
{
  invocation = [(_UIActionWhenIdle *)self invocation];
  [(_UIActionWhenIdle *)self setInvocation:0];
  [invocation invoke];
}

+ (_UIActionWhenIdle)actionWhenIdleWithTarget:(id)target selector:(SEL)selector object:(id)object
{
  objectCopy = object;
  targetCopy = target;
  v10 = [[self alloc] initWithTarget:targetCopy selector:selector object:objectCopy];

  return v10;
}

- (_UIActionWhenIdle)initWithTarget:(id)target selector:(SEL)selector object:(id)object
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
      NSLog(&cfstr_SMethodRequire.isa, "[_UIActionWhenIdle initWithTarget:selector:object:]", v15);
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

  v14 = [(_UIActionWhenIdle *)self initWithInvocation:v13];

LABEL_9:
  return v14;
}

- (_UIActionWhenIdle)initWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  v9.receiver = self;
  v9.super_class = _UIActionWhenIdle;
  v6 = [(_UIActionWhenIdle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_invocation, invocation);
    [(NSInvocation *)v7->_invocation retainArguments];
    [(_UIActionWhenIdle *)v7 addObserverToRunLoop];
  }

  return v7;
}

- (BOOL)isValid
{
  invocation = [(_UIActionWhenIdle *)self invocation];
  v3 = invocation != 0;

  return v3;
}

@end