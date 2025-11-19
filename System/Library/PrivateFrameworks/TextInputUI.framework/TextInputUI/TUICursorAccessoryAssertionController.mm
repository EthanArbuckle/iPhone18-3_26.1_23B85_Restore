@interface TUICursorAccessoryAssertionController
- (TUICursorAccessoryAssertionControllerSubject)subject;
- (id)createAssertionWithType:(unint64_t)a3 accessory:(id)a4;
- (id)debugDescription;
- (void)beginTrackingAssertion:(id)a3;
- (void)dealloc;
- (void)endTrackingAssertion:(id)a3;
- (void)updateSubjectWithAssertionState;
@end

@implementation TUICursorAccessoryAssertionController

- (TUICursorAccessoryAssertionControllerSubject)subject
{
  WeakRetained = objc_loadWeakRetained(&self->_subject);

  return WeakRetained;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TUICursorAccessoryAssertionController *)self assertions];
  v7 = [v6 allObjects];
  v8 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v7];

  return v8;
}

- (void)updateSubjectWithAssertionState
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = TUIAssertionLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[TUICursorAccessoryAssertionController updateSubjectWithAssertionState]";
    _os_log_impl(&dword_18FFDC000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(TUICursorAccessoryAssertionController *)self assertions];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v28;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v4);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      v14 = [v13 accessoryType];
      if (v14 > 3)
      {
        if (v14 == 4)
        {
          v19 = [v13 accessory];
          v16 = v7;
          v7 = v19;
        }

        else
        {
          if (v14 != 8)
          {
            continue;
          }

          v17 = [v13 accessory];
          v16 = v8;
          v8 = v17;
        }
      }

      else if (v14 == 1)
      {
        v18 = [v13 accessory];
        v16 = v9;
        v9 = v18;
      }

      else
      {
        if (v14 != 2)
        {
          continue;
        }

        v15 = [v13 accessory];
        v16 = v10;
        v10 = v15;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v6);
LABEL_22:

  v20 = [MEMORY[0x1E695DF70] array];
  v21 = v20;
  if (v8)
  {
    [v20 addObject:v8];
    if (!v7)
    {
      goto LABEL_32;
    }

LABEL_27:
    v22 = 1;
  }

  else
  {
    if (v7)
    {
      [v20 addObject:v7];
      goto LABEL_27;
    }

    if (v10)
    {
      [v20 addObject:v10];
    }

    if (v9)
    {
      [v21 addObject:v9];
    }

LABEL_32:
    v22 = 0;
  }

  v23 = [(TUICursorAccessoryAssertionController *)self subject];
  [v23 setScrollAwayIndicatorEnabled:v22];

  v24 = [(TUICursorAccessoryAssertionController *)self subject];
  [v24 setSelectedTextIndicatorEnabled:v22];

  v25 = [(TUICursorAccessoryAssertionController *)self subject];
  [v25 setAutoHideEnabled:v8 == 0];

  v26 = [(TUICursorAccessoryAssertionController *)self subject];
  [v26 setCursorAccessories:v21];
}

- (void)dealloc
{
  v3 = [(TUICursorAccessoryAssertionController *)self subject];

  if (v3)
  {
    v4 = [(TUICursorAccessoryAssertionController *)self assertions];
    [v4 removeAllObjects];

    [(TUICursorAccessoryAssertionController *)self updateSubjectWithAssertionState];
    [(TUICursorAccessoryAssertionController *)self setSubject:0];
  }

  v5.receiver = self;
  v5.super_class = TUICursorAccessoryAssertionController;
  [(TUICursorAccessoryAssertionController *)&v5 dealloc];
}

- (void)endTrackingAssertion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 accessoryType];
  v6 = [(TUICursorAccessoryAssertionController *)self assertions];
  [v6 removeObject:v4];

  if (v5 == 4)
  {
    v7 = [(TUICursorAccessoryAssertionController *)self assertions];
    v8 = [v7 allObjects];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([v14 accessoryType] == 4)
          {
            v15 = [(TUICursorAccessoryAssertionController *)self assertions];
            [v15 removeObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  [(TUICursorAccessoryAssertionController *)self updateSubjectWithAssertionState];
}

- (void)beginTrackingAssertion:(id)a3
{
  v4 = a3;
  v5 = [(TUICursorAccessoryAssertionController *)self assertions];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(TUICursorAccessoryAssertionController *)self setAssertions:v6];
  }

  v7 = [(TUICursorAccessoryAssertionController *)self assertions];
  [v7 addObject:v4];

  [(TUICursorAccessoryAssertionController *)self updateSubjectWithAssertionState];
}

- (id)createAssertionWithType:(unint64_t)a3 accessory:(id)a4
{
  v6 = a4;
  v7 = [[TUICursorAccessoryAssertion alloc] initWithAccessoryType:a3 accessory:v6 controller:self];

  [(TUICursorAccessoryAssertionController *)self beginTrackingAssertion:v7];

  return v7;
}

@end