@interface VUIJSTimerContext
- (VUIJSTimerContext)initWithCallback:(id)callback callbackArgs:(id)args repeating:(BOOL)repeating ownerObject:(id)object timer:(id)timer;
- (id)description;
- (void)dealloc;
- (void)removeManagedReferences;
@end

@implementation VUIJSTimerContext

- (VUIJSTimerContext)initWithCallback:(id)callback callbackArgs:(id)args repeating:(BOOL)repeating ownerObject:(id)object timer:(id)timer
{
  callbackCopy = callback;
  argsCopy = args;
  objectCopy = object;
  timerCopy = timer;
  v25.receiver = self;
  v25.super_class = VUIJSTimerContext;
  v16 = [(VUIJSTimerContext *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_ownerObject, object);
    v18 = [MEMORY[0x1E696EB48] managedValueWithValue:callbackCopy];
    managedCallback = v17->_managedCallback;
    v17->_managedCallback = v18;

    context = [callbackCopy context];
    virtualMachine = [context virtualMachine];
    [virtualMachine addManagedReference:v17->_managedCallback withOwner:objectCopy];

    v22 = [argsCopy count];
    if (v22)
    {
      v22 = [[VUIJSManagedArray alloc] initWithArray:argsCopy ownerObject:objectCopy];
    }

    managedArgs = v17->_managedArgs;
    v17->_managedArgs = v22;

    v17->_isRepeating = repeating;
    objc_storeStrong(&v17->_timer, timer);
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  timer = [(VUIJSTimerContext *)self timer];
  v5 = [v3 stringWithFormat:@"Timer:%p Context:%p Repeating:%d", timer, self, -[VUIJSTimerContext isRepeating](self, "isRepeating")];

  return v5;
}

- (void)removeManagedReferences
{
  managedCallback = [(VUIJSTimerContext *)self managedCallback];
  value = [managedCallback value];

  context = [value context];
  virtualMachine = [context virtualMachine];
  managedCallback2 = [(VUIJSTimerContext *)self managedCallback];
  ownerObject = [(VUIJSTimerContext *)self ownerObject];
  [virtualMachine removeManagedReference:managedCallback2 withOwner:ownerObject];

  managedCallback = self->_managedCallback;
  self->_managedCallback = 0;

  managedArgs = self->_managedArgs;
  self->_managedArgs = 0;

  timer = self->_timer;
  self->_timer = 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VUIJSTimerContext;
  [(VUIJSTimerContext *)&v2 dealloc];
}

@end