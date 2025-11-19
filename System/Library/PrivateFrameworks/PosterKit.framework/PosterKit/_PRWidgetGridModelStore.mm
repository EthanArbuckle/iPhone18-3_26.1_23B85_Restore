@interface _PRWidgetGridModelStore
- (BOOL)containsComplication:(id)a3;
- (BOOL)containsComplicationForIdentifier:(id)a3;
- (BOOL)containsComplicationPassingTest:(id)a3;
- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)a3 error:(id *)a4;
- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4;
- (BOOL)updateComplicationsWithArray:(id)a3;
- (BOOL)updateIntent:(id)a3 forComplicationDescriptor:(id)a4;
- (_PRWidgetGridModelStore)initWithComplicationDescriptors:(id)a3 iconLayout:(id)a4;
- (_PRWidgetGridModelStoreDelegate)delegate;
- (id)applicationRecordForComplication:(id)a3 error:(id *)a4;
- (id)containerBundleIdentifierForComplicationDescriptor:(id)a3 error:(id *)a4;
- (id)intentForDescriptor:(id)a3;
- (id)intentForDescriptorIdentifier:(id)a3;
- (unint64_t)indexOfComplicationDescriptor:(id)a3;
- (void)addComplicationDescriptor:(id)a3;
- (void)removeComplicationDescriptor:(id)a3;
- (void)removeComplicationDescriptorForIdentifier:(id)a3;
@end

@implementation _PRWidgetGridModelStore

- (_PRWidgetGridModelStore)initWithComplicationDescriptors:(id)a3 iconLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _PRWidgetGridModelStore;
  v8 = [(_PRWidgetGridModelStore *)&v18 init];
  if (v8)
  {
    v9 = [v7 copy];
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

    [(_PRWidgetGridModelStore *)v8 updateComplicationsWithArray:v6];
  }

  return v8;
}

- (BOOL)updateComplicationsWithArray:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = v5;
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
        v13 = [v12 uniqueIdentifier];
        if (!v13)
        {
          [(_PRWidgetGridModelStore *)a2 updateComplicationsWithArray:?];
        }

        v14 = v13;
        [v6 setObject:v12 forKey:v13];
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

        v25 = [v22 uniqueIdentifier];
        v26 = [v22 widget];
        v27 = [v26 intentReference];
        v28 = [v27 intent];

        if (v28)
        {
          [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier setObject:v28 forKeyedSubscript:v25];
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

- (BOOL)containsComplicationPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(_PRWidgetGridModelStore *)self complicationDescriptors];
  v6 = [v5 bs_containsObjectPassingTest:v4];

  return v6;
}

- (void)addComplicationDescriptor:(id)a3
{
  v8 = a3;
  if (v8)
  {
    if ([(_PRWidgetGridModelStore *)self containsComplication:v8])
    {
      [(_PRWidgetGridModelStore *)self removeComplicationDescriptor:v8];
    }

    v4 = [v8 uniqueIdentifier];
    [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier setObject:v8 forKey:v4];
    v5 = [v8 widget];
    v6 = [v5 intentReference];
    v7 = [v6 intent];

    [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier bs_setSafeObject:v7 forKey:v4];
  }
}

- (void)removeComplicationDescriptor:(id)a3
{
  v6 = a3;
  v4 = [v6 uniqueIdentifier];
  if ([(_PRWidgetGridModelStore *)self containsComplicationForIdentifier:v4])
  {
    [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier removeObjectForKey:v4];
    if ([(NSMutableDictionary *)self->_applicationRecordsByWidgetBundleIdentifier count])
    {
      v5 = [(_PRWidgetGridModelStore *)self containerBundleIdentifierForComplicationDescriptor:v6 error:0];
      if (v5)
      {
        [(NSMutableDictionary *)self->_applicationRecordsByWidgetBundleIdentifier removeObjectForKey:v5];
      }
    }
  }
}

- (void)removeComplicationDescriptorForIdentifier:(id)a3
{
  v4 = [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier objectForKey:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(_PRWidgetGridModelStore *)self removeComplicationDescriptor:v4];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)intentForDescriptor:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [(_PRWidgetGridModelStore *)self intentForDescriptorIdentifier:v4];

  return v5;
}

- (id)intentForDescriptorIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier objectForKey:v4];
  if (!v5)
  {
    v6 = [(_PRWidgetGridModelStore *)self complicationDescriptorForIdentifier:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 widget];
      v9 = [v8 intentReference];
      v5 = [v9 intent];

      [(NSMutableDictionary *)self->_intentsByDescriptorIdentifier bs_setSafeObject:v5 forKey:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)updateIntent:(id)a3 forComplicationDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_PRWidgetGridModelStore *)self containsComplication:v7];
  if (v8)
  {
    v9 = [v7 uniqueIdentifier];
    v10 = [v7 widget];
    v11 = [v10 widgetByReplacingIntent:v6];

    v12 = [v7 copy];
    [v12 setWidget:v11];
    [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier setObject:v12 forKey:v9];
    intentsByDescriptorIdentifier = self->_intentsByDescriptorIdentifier;
    if (v6)
    {
      [(NSMutableDictionary *)intentsByDescriptorIdentifier setObject:v6 forKey:v9];
    }

    else
    {
      [(NSMutableDictionary *)intentsByDescriptorIdentifier removeObjectForKey:v9];
    }
  }

  return v8;
}

- (id)applicationRecordForComplication:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = [_PRWidgetGridModelStore containerBundleIdentifierForComplicationDescriptor:"containerBundleIdentifierForComplicationDescriptor:error:" error:?];
    if (v6 && ([(NSMutableDictionary *)self->_applicationRecordsByWidgetBundleIdentifier objectForKey:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:a4];

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

- (id)containerBundleIdentifierForComplicationDescriptor:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 widget];
  v7 = [v6 extensionIdentity];
  v8 = [v7 containerBundleIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else if (a4)
  {
    v17 = *MEMORY[0x1E696A588];
    v18[0] = @"containerBundleIdentifier could not be looked up for complicationDescriptor";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [v11 mutableCopy];

    v13 = [v5 description];
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

    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PosterKit.PRWidgetGridModel" code:-1 userInfo:v12];
  }

  return v9;
}

- (BOOL)containsComplicationForIdentifier:(id)a3
{
  v3 = [(BSMutableOrderedDictionary *)self->_complicationDescriptorsByUniqueIdentifier objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsComplication:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  LOBYTE(self) = [(_PRWidgetGridModelStore *)self containsComplicationForIdentifier:v4];

  return self;
}

- (unint64_t)indexOfComplicationDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(_PRWidgetGridModelStore *)self complicationDescriptors];
  v6 = [v5 indexOfObject:v4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 uniqueIdentifier];
    if ([(_PRWidgetGridModelStore *)self containsComplicationForIdentifier:v7])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __57___PRWidgetGridModelStore_indexOfComplicationDescriptor___block_invoke;
      v11[3] = &unk_1E7845218;
      v12 = v7;
      v8 = v7;
      v9 = [v5 indexOfObjectPassingTest:v11];

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

- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4
{
  objc_storeStrong(&self->_iconLayout, a3);
  v5 = [(_PRWidgetGridModelStore *)self delegate];
  [v5 widgetGridModelStoreDidUpdateContent:self];

  return 1;
}

- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)a3 error:(id *)a4
{
  iconLayout = self->_iconLayout;
  self->_iconLayout = 0;

  v6 = [(_PRWidgetGridModelStore *)self delegate];
  [v6 widgetGridModelStoreDidUpdateContent:self];

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