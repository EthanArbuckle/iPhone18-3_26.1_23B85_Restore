@interface VUIJSTimerContext
- (VUIJSTimerContext)initWithCallback:(id)a3 callbackArgs:(id)a4 repeating:(BOOL)a5 ownerObject:(id)a6 timer:(id)a7;
- (id)description;
- (void)dealloc;
- (void)removeManagedReferences;
@end

@implementation VUIJSTimerContext

- (VUIJSTimerContext)initWithCallback:(id)a3 callbackArgs:(id)a4 repeating:(BOOL)a5 ownerObject:(id)a6 timer:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = VUIJSTimerContext;
  v16 = [(VUIJSTimerContext *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_ownerObject, a6);
    v18 = [MEMORY[0x1E696EB48] managedValueWithValue:v12];
    managedCallback = v17->_managedCallback;
    v17->_managedCallback = v18;

    v20 = [v12 context];
    v21 = [v20 virtualMachine];
    [v21 addManagedReference:v17->_managedCallback withOwner:v14];

    v22 = [v13 count];
    if (v22)
    {
      v22 = [[VUIJSManagedArray alloc] initWithArray:v13 ownerObject:v14];
    }

    managedArgs = v17->_managedArgs;
    v17->_managedArgs = v22;

    v17->_isRepeating = a5;
    objc_storeStrong(&v17->_timer, a7);
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(VUIJSTimerContext *)self timer];
  v5 = [v3 stringWithFormat:@"Timer:%p Context:%p Repeating:%d", v4, self, -[VUIJSTimerContext isRepeating](self, "isRepeating")];

  return v5;
}

- (void)removeManagedReferences
{
  v3 = [(VUIJSTimerContext *)self managedCallback];
  v11 = [v3 value];

  v4 = [v11 context];
  v5 = [v4 virtualMachine];
  v6 = [(VUIJSTimerContext *)self managedCallback];
  v7 = [(VUIJSTimerContext *)self ownerObject];
  [v5 removeManagedReference:v6 withOwner:v7];

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