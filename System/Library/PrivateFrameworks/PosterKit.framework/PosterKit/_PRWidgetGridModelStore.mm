@interface _PRWidgetGridModelStore
- (BOOL)containsComplication:(id)complication;
- (BOOL)containsComplicationForIdentifier:(id)identifier;
- (BOOL)containsComplicationPassingTest:(id)test;
- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)options error:(id *)error;
- (BOOL)saveCurrentIconState:(id)state error:(id *)error;
- (BOOL)updateComplicationsWithArray:(id)array;
- (BOOL)updateIntent:(id)intent forComplicationDescriptor:(id)descriptor;
- (_PRWidgetGridModelStore)initWithComplicationDescriptors:(id)descriptors iconLayout:(id)layout;
- (_PRWidgetGridModelStoreDelegate)delegate;
- (id)applicationRecordForComplication:(id)complication error:(id *)error;
- (id)containerBundleIdentifierForComplicationDescriptor:(id)descriptor error:(id *)error;
- (id)intentForDescriptor:(id)descriptor;
- (id)intentForDescriptorIdentifier:(id)identifier;
- (unint64_t)indexOfComplicationDescriptor:(id)descriptor;
- (void)addComplicationDescriptor:(id)descriptor;
- (void)removeComplicationDescriptor:(id)descriptor;
- (void)removeComplicationDescriptorForIdentifier:(id)identifier;
@end

@implementation _PRWidgetGridModelStore

- (_PRWidgetGridModelStore)initWithComplicationDescriptors:(id)descriptors iconLayout:(id)layout
{
  descriptorsCopy = descriptors;
  layoutCopy = layout;
  v18.receiver = self;
  v18.super_class = _PRWidgetGridModelStore;
  v8 = [(_PRWidgetGridModelStore *)&v18 init];
  if (v8)
  {
    v9 = [layoutCopy copy];
    iconLayout = v8->_iconLayout;
    v8->_iconLayout = v9;

    v11 = objc_opt_new();
    complicationDescriptorsByUniqueIdentifier = v8->_complicationDescriptorsByUniqueIdentifier;
    v8->_complicationDescriptorsByUniqueIdentifier = v11;

    v13 = objc_opt_new();
    intentsByDescriptorIdentifier = v8->_intentsByDescriptorIdentifier;
    v8->_intentsByDescriptorIdentifier = v13;

    v15 = objc_opt_new();
    applicationRecordsByWidgetBundleIdentifier = v8->_applicationRecordsByWidgetBundleIdentifier;
    v8->_applicationRecordsByWidgetBundleIdentifier = v15;

    [(_PRWidgetGridModelStore *)v8 updateComplicationsWithArray:descriptorsCopy];
  }

  return v8;
}

- (BOOL)updateComplicationsWithArray:(id)array
{
  v43 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v6 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        uniqueIdentifier = [v12 uniqueIdentifier];
        if (!uniqueIdentifier)
        {
          [(_PRWidgetGridModelStore *)a2 updateComplicationsWithArray:?];
        }

        v14 = uniqueIdentifier;
        [v6 setObject:v12 forKey:uniqueIdentifier];
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v15 = [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier isEqual:v6];
  v16 = v15;
  if ((v15 & 1) == 0)
  {
    v30 = v15;
    [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier removeAllObjects];
    objc_storeStrong(&self->_complicationDescriptorsByUniqueIdentifier, v6);
    v17 = [(NSMutableDictionary *)self->_applicationRecordsByWidgetBundleIdentifier count];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = v7;
    obj = v7;
    v18 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = v18;
    v20 = *v34;
    while (1)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v33 + 1) + 8 * j);
        if (v17)
        {
          v23 = [(_PRWidgetGridModelStore *)self containerBundleIdentifierForComplicationDescriptor:*(*(&v33 + 1) + 8 * j) error:0];
          if (!v23)
          {
            continue;
          }

          v24 = v23;
          [(NSMutableDictionary *)self->_applicationRecordsByWidgetBundleIdentifier removeObjectForKey:v23];
        }

        uniqueIdentifier2 = [v22 uniqueIdentifier];
        widget = [v22 widget];
        intentReference = [widget intentReference];
        intent = [intentReference intent];

        if (intent)
        {
          [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier setObject:intent forKeyedSubscript:uniqueIdentifier2];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (!v19)
      {
LABEL_23:

        v7 = v31;
        v16 = v30;
        break;
      }
    }
  }

  return v16 ^ 1;
}

- (BOOL)containsComplicationPassingTest:(id)test
{
  testCopy = test;
  complicationDescriptors = [(_PRWidgetGridModelStore *)self complicationDescriptors];
  v6 = [complicationDescriptors bs_containsObjectPassingTest:testCopy];

  return v6;
}

- (void)addComplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    if ([(_PRWidgetGridModelStore *)self containsComplication:descriptorCopy])
    {
      [(_PRWidgetGridModelStore *)self removeComplicationDescriptor:descriptorCopy];
    }

    uniqueIdentifier = [descriptorCopy uniqueIdentifier];
    [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier setObject:descriptorCopy forKey:uniqueIdentifier];
    widget = [descriptorCopy widget];
    intentReference = [widget intentReference];
    intent = [intentReference intent];

    [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier bs_setSafeObject:intent forKey:uniqueIdentifier];
  }
}

- (void)removeComplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  uniqueIdentifier = [descriptorCopy uniqueIdentifier];
  if ([(_PRWidgetGridModelStore *)self containsComplicationForIdentifier:uniqueIdentifier])
  {
    [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier removeObjectForKey:uniqueIdentifier];
    [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier removeObjectForKey:uniqueIdentifier];
    if ([(NSMutableDictionary *)self->_applicationRecordsByWidgetBundleIdentifier count])
    {
      v5 = [(_PRWidgetGridModelStore *)self containerBundleIdentifierForComplicationDescriptor:descriptorCopy error:0];
      if (v5)
      {
        [(NSMutableDictionary *)self->_applicationRecordsByWidgetBundleIdentifier removeObjectForKey:v5];
      }
    }
  }
}

- (void)removeComplicationDescriptorForIdentifier:(id)identifier
{
  v4 = [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier objectForKey:identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(_PRWidgetGridModelStore *)self removeComplicationDescriptor:v4];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)intentForDescriptor:(id)descriptor
{
  uniqueIdentifier = [descriptor uniqueIdentifier];
  v5 = [(_PRWidgetGridModelStore *)self intentForDescriptorIdentifier:uniqueIdentifier];

  return v5;
}

- (id)intentForDescriptorIdentifier:(id)identifier
{
  identifierCopy = identifier;
  intent = [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier objectForKey:identifierCopy];
  if (!intent)
  {
    v6 = [(_PRWidgetGridModelStore *)self complicationDescriptorForIdentifier:identifierCopy];
    v7 = v6;
    if (v6)
    {
      widget = [v6 widget];
      intentReference = [widget intentReference];
      intent = [intentReference intent];

      [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier bs_setSafeObject:intent forKey:identifierCopy];
    }

    else
    {
      intent = 0;
    }
  }

  return intent;
}

- (BOOL)updateIntent:(id)intent forComplicationDescriptor:(id)descriptor
{
  intentCopy = intent;
  descriptorCopy = descriptor;
  v8 = [(_PRWidgetGridModelStore *)self containsComplication:descriptorCopy];
  if (v8)
  {
    uniqueIdentifier = [descriptorCopy uniqueIdentifier];
    widget = [descriptorCopy widget];
    v11 = [widget widgetByReplacingIntent:intentCopy];

    v12 = [descriptorCopy copy];
    [v12 setWidget:v11];
    [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier setObject:v12 forKey:uniqueIdentifier];
    intentsByDescriptorIdentifier = self->_intentsByDescriptorIdentifier;
    if (intentCopy)
    {
      [(NSMutableDictionary *)intentsByDescriptorIdentifier setObject:intentCopy forKey:uniqueIdentifier];
    }

    else
    {
      [(NSMutableDictionary *)intentsByDescriptorIdentifier removeObjectForKey:uniqueIdentifier];
    }
  }

  return v8;
}

- (id)applicationRecordForComplication:(id)complication error:(id *)error
{
  if (complication)
  {
    v6 = [_PRWidgetGridModelStore containerBundleIdentifierForComplicationDescriptor:"containerBundleIdentifierForComplicationDescriptor:error:" error:?];
    if (v6 && ([(NSMutableDictionary *)self->_applicationRecordsByWidgetBundleIdentifier objectForKey:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:error];

      [(NSMutableDictionary *)self->_applicationRecordsByWidgetBundleIdentifier bs_setSafeObject:v9 forKey:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)containerBundleIdentifierForComplicationDescriptor:(id)descriptor error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  widget = [descriptorCopy widget];
  extensionIdentity = [widget extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  v9 = containerBundleIdentifier;
  if (containerBundleIdentifier)
  {
    v10 = containerBundleIdentifier;
  }

  else if (error)
  {
    v17 = *MEMORY[0x1E696A588];
    v18[0] = @"containerBundleIdentifier could not be looked up for complicationDescriptor";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [v11 mutableCopy];

    v13 = [descriptorCopy description];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = @"(null)";
    }

    [v12 setObject:v15 forKeyedSubscript:@"complicationDescriptor"];

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PosterKit.PRWidgetGridModel" code:-1 userInfo:v12];
  }

  return v9;
}

- (BOOL)containsComplicationForIdentifier:(id)identifier
{
  v3 = [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier objectForKey:identifier];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsComplication:(id)complication
{
  uniqueIdentifier = [complication uniqueIdentifier];
  LOBYTE(self) = [(_PRWidgetGridModelStore *)self containsComplicationForIdentifier:uniqueIdentifier];

  return self;
}

- (unint64_t)indexOfComplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  complicationDescriptors = [(_PRWidgetGridModelStore *)self complicationDescriptors];
  v6 = [complicationDescriptors indexOfObject:descriptorCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    uniqueIdentifier = [descriptorCopy uniqueIdentifier];
    if ([(_PRWidgetGridModelStore *)self containsComplicationForIdentifier:uniqueIdentifier])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __57___PRWidgetGridModelStore_indexOfComplicationDescriptor___block_invoke;
      v11[3] = &unk_1E7845218;
      v12 = uniqueIdentifier;
      v8 = uniqueIdentifier;
      v9 = [complicationDescriptors indexOfObjectPassingTest:v11];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
      }
    }

    else
    {

      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (BOOL)saveCurrentIconState:(id)state error:(id *)error
{
  objc_storeStrong(&self->_iconLayout, state);
  delegate = [(_PRWidgetGridModelStore *)self delegate];
  [delegate widgetGridModelStoreDidUpdateContent:self];

  return 1;
}

- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)options error:(id *)error
{
  iconLayout = self->_iconLayout;
  self->_iconLayout = 0;

  delegate = [(_PRWidgetGridModelStore *)self delegate];
  [delegate widgetGridModelStoreDidUpdateContent:self];

  return 1;
}

- (_PRWidgetGridModelStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateComplicationsWithArray:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"uniqueIdentifier"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRWidgetGridModel.m";
    v16 = 1024;
    v17 = 769;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end