@interface VUIJSObject
- (VUIAppContext)appContext;
- (VUIJSObject)initWithAppContext:(id)context;
- (id)invokeMethod:(id)method withArguments:(id)arguments;
- (id)jsValueForProperty:(id)property;
- (void)setJSValue:(id)value forProperty:(id)property;
@end

@implementation VUIJSObject

- (VUIJSObject)initWithAppContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = VUIJSObject;
  v5 = [(VUIJSObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appContext, contextCopy);
  }

  return v6;
}

- (void)setJSValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  if (!+[VUIJSThreadUtils isVideosUICoreJSThread])
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VUIJSObject setJSValue:forProperty:];
    }
  }

  appContext = [(VUIJSObject *)self appContext];
  managedProperties = [(VUIJSObject *)self managedProperties];
  v11 = [managedProperties objectForKey:propertyCopy];

  if (v11)
  {
    jsContext = [appContext jsContext];
    virtualMachine = [jsContext virtualMachine];
    [virtualMachine removeManagedReference:v11 withOwner:self];

    managedProperties2 = [(VUIJSObject *)self managedProperties];
    [managedProperties2 removeObjectForKey:propertyCopy];
  }

  if (valueCopy)
  {
    managedProperties3 = [(VUIJSObject *)self managedProperties];

    if (!managedProperties3)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(VUIJSObject *)self setManagedProperties:dictionary];
    }

    v17 = [MEMORY[0x1E696EB48] managedValueWithValue:valueCopy];
    jsContext2 = [appContext jsContext];
    virtualMachine2 = [jsContext2 virtualMachine];
    [virtualMachine2 addManagedReference:v17 withOwner:self];

    managedProperties4 = [(VUIJSObject *)self managedProperties];
    [managedProperties4 setObject:v17 forKey:propertyCopy];
  }
}

- (id)jsValueForProperty:(id)property
{
  propertyCopy = property;
  if (!+[VUIJSThreadUtils isVideosUICoreJSThread])
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [VUIJSObject jsValueForProperty:];
    }
  }

  managedProperties = [(VUIJSObject *)self managedProperties];
  v7 = [managedProperties objectForKey:propertyCopy];
  value = [v7 value];

  return value;
}

- (id)invokeMethod:(id)method withArguments:(id)arguments
{
  methodCopy = method;
  argumentsCopy = arguments;
  if (!+[VUIJSThreadUtils isVideosUICoreJSThread])
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VUIJSObject invokeMethod:withArguments:];
    }
  }

  appContext = [(VUIJSObject *)self appContext];
  v10 = MEMORY[0x1E696EB58];
  jsContext = [appContext jsContext];
  v12 = [v10 valueWithObject:self inContext:jsContext];

  if ([v12 hasProperty:methodCopy])
  {
    v13 = [v12 invokeMethod:methodCopy withArguments:argumentsCopy];
  }

  else
  {
    v14 = MEMORY[0x1E696EB58];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invokeMethod: failed - Method [%@] not defined in [%@]", methodCopy, objc_opt_class()];
    jsContext2 = [appContext jsContext];
    v13 = [v14 valueWithNewErrorFromMessage:v15 inContext:jsContext2];
  }

  return v13;
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end