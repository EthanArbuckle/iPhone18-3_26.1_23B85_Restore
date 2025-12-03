@interface TUICursorAccessoryAssertionController
- (TUICursorAccessoryAssertionControllerSubject)subject;
- (id)createAssertionWithType:(unint64_t)type accessory:(id)accessory;
- (id)debugDescription;
- (void)beginTrackingAssertion:(id)assertion;
- (void)dealloc;
- (void)endTrackingAssertion:(id)assertion;
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
  assertions = [(TUICursorAccessoryAssertionController *)self assertions];
  allObjects = [assertions allObjects];
  v8 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, allObjects];

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
  assertions = [(TUICursorAccessoryAssertionController *)self assertions];
  v5 = [assertions countByEnumeratingWithState:&v27 objects:v31 count:16];
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
        objc_enumerationMutation(assertions);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      accessoryType = [v13 accessoryType];
      if (accessoryType > 3)
      {
        if (accessoryType == 4)
        {
          accessory = [v13 accessory];
          v16 = v7;
          v7 = accessory;
        }

        else
        {
          if (accessoryType != 8)
          {
            continue;
          }

          accessory2 = [v13 accessory];
          v16 = v8;
          v8 = accessory2;
        }
      }

      else if (accessoryType == 1)
      {
        accessory3 = [v13 accessory];
        v16 = v9;
        v9 = accessory3;
      }

      else
      {
        if (accessoryType != 2)
        {
          continue;
        }

        accessory4 = [v13 accessory];
        v16 = v10;
        v10 = accessory4;
      }
    }

    v6 = [assertions countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v6);
LABEL_22:

  array = [MEMORY[0x1E695DF70] array];
  v21 = array;
  if (v8)
  {
    [array addObject:v8];
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
      [array addObject:v7];
      goto LABEL_27;
    }

    if (v10)
    {
      [array addObject:v10];
    }

    if (v9)
    {
      [v21 addObject:v9];
    }

LABEL_32:
    v22 = 0;
  }

  subject = [(TUICursorAccessoryAssertionController *)self subject];
  [subject setScrollAwayIndicatorEnabled:v22];

  subject2 = [(TUICursorAccessoryAssertionController *)self subject];
  [subject2 setSelectedTextIndicatorEnabled:v22];

  subject3 = [(TUICursorAccessoryAssertionController *)self subject];
  [subject3 setAutoHideEnabled:v8 == 0];

  subject4 = [(TUICursorAccessoryAssertionController *)self subject];
  [subject4 setCursorAccessories:v21];
}

- (void)dealloc
{
  subject = [(TUICursorAccessoryAssertionController *)self subject];

  if (subject)
  {
    assertions = [(TUICursorAccessoryAssertionController *)self assertions];
    [assertions removeAllObjects];

    [(TUICursorAccessoryAssertionController *)self updateSubjectWithAssertionState];
    [(TUICursorAccessoryAssertionController *)self setSubject:0];
  }

  v5.receiver = self;
  v5.super_class = TUICursorAccessoryAssertionController;
  [(TUICursorAccessoryAssertionController *)&v5 dealloc];
}

- (void)endTrackingAssertion:(id)assertion
{
  v21 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  accessoryType = [assertionCopy accessoryType];
  assertions = [(TUICursorAccessoryAssertionController *)self assertions];
  [assertions removeObject:assertionCopy];

  if (accessoryType == 4)
  {
    assertions2 = [(TUICursorAccessoryAssertionController *)self assertions];
    allObjects = [assertions2 allObjects];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = allObjects;
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
            assertions3 = [(TUICursorAccessoryAssertionController *)self assertions];
            [assertions3 removeObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  [(TUICursorAccessoryAssertionController *)self updateSubjectWithAssertionState];
}

- (void)beginTrackingAssertion:(id)assertion
{
  assertionCopy = assertion;
  assertions = [(TUICursorAccessoryAssertionController *)self assertions];

  if (!assertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(TUICursorAccessoryAssertionController *)self setAssertions:weakObjectsHashTable];
  }

  assertions2 = [(TUICursorAccessoryAssertionController *)self assertions];
  [assertions2 addObject:assertionCopy];

  [(TUICursorAccessoryAssertionController *)self updateSubjectWithAssertionState];
}

- (id)createAssertionWithType:(unint64_t)type accessory:(id)accessory
{
  accessoryCopy = accessory;
  v7 = [[TUICursorAccessoryAssertion alloc] initWithAccessoryType:type accessory:accessoryCopy controller:self];

  [(TUICursorAccessoryAssertionController *)self beginTrackingAssertion:v7];

  return v7;
}

@end