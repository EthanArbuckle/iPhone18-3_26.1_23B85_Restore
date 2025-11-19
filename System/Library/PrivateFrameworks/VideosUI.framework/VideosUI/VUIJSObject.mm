@interface VUIJSObject
- (VUIAppContext)appContext;
- (VUIJSObject)initWithAppContext:(id)a3;
- (id)invokeMethod:(id)a3 withArguments:(id)a4;
- (id)jsValueForProperty:(id)a3;
- (void)setJSValue:(id)a3 forProperty:(id)a4;
@end

@implementation VUIJSObject

- (VUIJSObject)initWithAppContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VUIJSObject;
  v5 = [(VUIJSObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appContext, v4);
  }

  return v6;
}

- (void)setJSValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[VUIJSThreadUtils isVideosUICoreJSThread])
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VUIJSObject setJSValue:forProperty:];
    }
  }

  v9 = [(VUIJSObject *)self appContext];
  v10 = [(VUIJSObject *)self managedProperties];
  v11 = [v10 objectForKey:v7];

  if (v11)
  {
    v12 = [v9 jsContext];
    v13 = [v12 virtualMachine];
    [v13 removeManagedReference:v11 withOwner:self];

    v14 = [(VUIJSObject *)self managedProperties];
    [v14 removeObjectForKey:v7];
  }

  if (v6)
  {
    v15 = [(VUIJSObject *)self managedProperties];

    if (!v15)
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
      [(VUIJSObject *)self setManagedProperties:v16];
    }

    v17 = [MEMORY[0x1E696EB48] managedValueWithValue:v6];
    v18 = [v9 jsContext];
    v19 = [v18 virtualMachine];
    [v19 addManagedReference:v17 withOwner:self];

    v20 = [(VUIJSObject *)self managedProperties];
    [v20 setObject:v17 forKey:v7];
  }
}

- (id)jsValueForProperty:(id)a3
{
  v4 = a3;
  if (!+[VUIJSThreadUtils isVideosUICoreJSThread])
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [VUIJSObject jsValueForProperty:];
    }
  }

  v6 = [(VUIJSObject *)self managedProperties];
  v7 = [v6 objectForKey:v4];
  v8 = [v7 value];

  return v8;
}

- (id)invokeMethod:(id)a3 withArguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[VUIJSThreadUtils isVideosUICoreJSThread])
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VUIJSObject invokeMethod:withArguments:];
    }
  }

  v9 = [(VUIJSObject *)self appContext];
  v10 = MEMORY[0x1E696EB58];
  v11 = [v9 jsContext];
  v12 = [v10 valueWithObject:self inContext:v11];

  if ([v12 hasProperty:v6])
  {
    v13 = [v12 invokeMethod:v6 withArguments:v7];
  }

  else
  {
    v14 = MEMORY[0x1E696EB58];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invokeMethod: failed - Method [%@] not defined in [%@]", v6, objc_opt_class()];
    v16 = [v9 jsContext];
    v13 = [v14 valueWithNewErrorFromMessage:v15 inContext:v16];
  }

  return v13;
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end