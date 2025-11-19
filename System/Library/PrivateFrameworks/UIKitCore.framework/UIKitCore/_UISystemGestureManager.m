@interface _UISystemGestureManager
+ (id)sharedInstance;
+ (void)_cancelTouchesWithIdentifiers:(id)a3 forDisplayWithIdentity:(id)a4;
- (BOOL)_displayRequiresClientManagement:(id)a3;
- (BOOL)gestureRecognizersAllowedOnDisplayWithIdentity:(id)a3;
- (NSString)description;
- (_UISystemGestureManager)init;
- (id)_displayIdentityForTrackingGestureManagers:(id)a3;
- (id)_systemGestureManagerForDisplayWithIdentityCreatingIfNeeded:(id)a3;
- (id)allowGestureRecognizersOnDisplayWithIdentity:(id)a3;
- (id)windowForSystemGesturesForDisplayWithIdentity:(id)a3;
- (void)addGestureRecognizer:(id)a3 recognitionEvent:(int64_t)a4 toDisplayWithIdentity:(id)a5;
- (void)addGestureRecognizer:(id)a3 toDisplayWithIdentity:(id)a4;
- (void)clearTransformFromDisplayWithIdentity:(id)a3;
- (void)dealloc;
- (void)removeGestureRecognizer:(id)a3 fromDisplayWithIdentity:(id)a4;
- (void)setTransform:(CGAffineTransform *)a3 onDisplayWithIdentity:(id)a4;
@end

@implementation _UISystemGestureManager

+ (id)sharedInstance
{
  if (_MergedGlobals_1128 != -1)
  {
    dispatch_once(&_MergedGlobals_1128, &__block_literal_global_285);
  }

  v3 = qword_1ED49E438;

  return v3;
}

- (_UISystemGestureManager)init
{
  if (([UIApp isFrontBoard] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:56 description:@"Only FrontBoard apps may use UISystemGestureManager."];
  }

  v11.receiver = self;
  v11.super_class = _UISystemGestureManager;
  v4 = [(_UISystemGestureManager *)&v11 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    displayIdentityToManagerMap = v4->_displayIdentityToManagerMap;
    v4->_displayIdentityToManagerMap = v5;

    v7 = objc_alloc_init(MEMORY[0x1E699FB10]);
    displayMonitor = v4->_displayMonitor;
    v4->_displayMonitor = v7;

    [(FBSDisplayMonitor *)v4->_displayMonitor addObserver:v4];
  }

  return v4;
}

- (void)dealloc
{
  [(FBSDisplayMonitor *)self->_displayMonitor invalidate];
  v3.receiver = self;
  v3.super_class = _UISystemGestureManager;
  [(_UISystemGestureManager *)&v3 dealloc];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = _UISystemGestureManager;
  v3 = [(_UISystemGestureManager *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" - _displayIdentityToManagerMap : %@", self->_displayIdentityToManagerMap];

  return v4;
}

- (void)addGestureRecognizer:(id)a3 toDisplayWithIdentity:(id)a4
{
  if (!a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];
  }

  v12 = [(_UISystemGestureManager *)self _displayIdentityForTrackingGestureManagers:a4];
  if ([(_UISystemGestureManager *)self _displayRequiresClientManagement:?])
  {
    v8 = [(NSMapTable *)self->_systemShellManagedDisplayIdentityToInvalidatableMap objectForKey:v12];

    if (!v8)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:78 description:{@"Attempting to manage gesture recognizers on an unmanaged display: %@", v12}];
    }
  }

  v9 = [(_UISystemGestureManager *)self _systemGestureManagerForDisplayWithIdentityCreatingIfNeeded:v12];
  [v9 addGestureRecognizer:a3];
}

- (void)addGestureRecognizer:(id)a3 recognitionEvent:(int64_t)a4 toDisplayWithIdentity:(id)a5
{
  if (!a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];
  }

  v14 = [(_UISystemGestureManager *)self _displayIdentityForTrackingGestureManagers:a5];
  if ([(_UISystemGestureManager *)self _displayRequiresClientManagement:?])
  {
    v10 = [(NSMapTable *)self->_systemShellManagedDisplayIdentityToInvalidatableMap objectForKey:v14];

    if (!v10)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:86 description:{@"Attempting to manage gesture recognizers on an unmanaged display: %@", v14}];
    }
  }

  v11 = [(_UISystemGestureManager *)self _systemGestureManagerForDisplayWithIdentityCreatingIfNeeded:v14];
  [v11 addGestureRecognizer:a3 recognitionEvent:a4];
}

- (void)removeGestureRecognizer:(id)a3 fromDisplayWithIdentity:(id)a4
{
  if (!a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_12:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"displayIdentity"}];

    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_3:
  v15 = [(_UISystemGestureManager *)self _displayIdentityForTrackingGestureManagers:a4];
  if ([(_UISystemGestureManager *)self _displayRequiresClientManagement:?])
  {
    v8 = [(NSMapTable *)self->_systemShellManagedDisplayIdentityToInvalidatableMap objectForKey:v15];

    if (!v8)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:95 description:{@"Attempting to manage gesture recognizers on an unmanaged display: %@", v15}];
    }
  }

  v9 = [(NSMutableDictionary *)self->_displayIdentityToManagerMap objectForKey:v15];
  [v9 removeGestureRecognizer:a3];
  v10 = [v9 gestureRecognizers];
  v11 = [v10 count];

  if (!v11)
  {
    [(NSMutableDictionary *)self->_displayIdentityToManagerMap removeObjectForKey:v15];
  }
}

- (id)windowForSystemGesturesForDisplayWithIdentity:(id)a3
{
  if (!a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:106 description:@"You can't get a window for system gestures without a display."];
  }

  v6 = [(_UISystemGestureManager *)self _displayIdentityForTrackingGestureManagers:a3];
  if ([(_UISystemGestureManager *)self _displayRequiresClientManagement:v6])
  {
    v7 = [(NSMapTable *)self->_systemShellManagedDisplayIdentityToInvalidatableMap objectForKey:v6];

    if (!v7)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:108 description:{@"Attempting to manage gesture recognizers on an unmanaged display: %@", v6}];
    }
  }

  v8 = [(NSMutableDictionary *)self->_displayIdentityToManagerMap objectForKey:v6];
  v9 = [v8 windowForSystemGestures];

  return v9;
}

- (id)allowGestureRecognizersOnDisplayWithIdentity:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:115 description:@"You cannot manage gesture recognizers without a display."];
  }

  v6 = [(NSMapTable *)self->_systemShellManagedDisplayIdentityToInvalidatableMap objectForKey:a3];
  if (v6)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:118 description:{@"We're already tracking system gestures for this display: %@", v6}];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_systemShellManagedDisplayIdentityToInvalidatableMap;
  v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v31 + 1) + 8 * i) rootIdentity];
        v12 = [v11 isEqual:a3];

        if (v12)
        {
          v13 = [MEMORY[0x1E696AAA8] currentHandler];
          [v13 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:122 description:@"We're already tracking system gestures for a display with the same rootIdentity. These assertions must be mutually exclusive."];
        }
      }

      v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  v14 = [(_UISystemGestureManager *)self _displayIdentityForTrackingGestureManagers:a3];
  objc_initWeak(&location, self);
  v15 = objc_alloc(MEMORY[0x1E698E778]);
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.UIKit._UISystemGestureManager.%@", v14];
  v17 = MEMORY[0x1E69E96A0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __72___UISystemGestureManager_allowGestureRecognizersOnDisplayWithIdentity___block_invoke;
  v27[3] = &unk_1E71030A0;
  objc_copyWeak(&v29, &location);
  v18 = v14;
  v28 = v18;
  v19 = [v15 initWithIdentifier:v16 forReason:@"__UISystemGestureManager.lifecycle" queue:MEMORY[0x1E69E96A0] invalidationBlock:v27];

  systemShellManagedDisplayIdentityToInvalidatableMap = self->_systemShellManagedDisplayIdentityToInvalidatableMap;
  if (!systemShellManagedDisplayIdentityToInvalidatableMap)
  {
    v21 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v23 = self->_systemShellManagedDisplayIdentityToInvalidatableMap;
    p_systemShellManagedDisplayIdentityToInvalidatableMap = &self->_systemShellManagedDisplayIdentityToInvalidatableMap;
    *p_systemShellManagedDisplayIdentityToInvalidatableMap = v21;

    systemShellManagedDisplayIdentityToInvalidatableMap = *p_systemShellManagedDisplayIdentityToInvalidatableMap;
  }

  [(NSMapTable *)systemShellManagedDisplayIdentityToInvalidatableMap setObject:v19 forKey:v18];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  return v19;
}

- (BOOL)gestureRecognizersAllowedOnDisplayWithIdentity:(id)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"displayIdentity"}];
  }

  if (![(_UISystemGestureManager *)self _displayRequiresClientManagement:a3])
  {
    return 1;
  }

  v5 = [(NSMapTable *)self->_systemShellManagedDisplayIdentityToInvalidatableMap objectForKey:a3];
  v6 = v5 != 0;

  return v6;
}

- (void)setTransform:(CGAffineTransform *)a3 onDisplayWithIdentity:(id)a4
{
  if (!a4)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"displayIdentity"}];
  }

  v8 = [(_UISystemGestureManager *)self _displayIdentityForTrackingGestureManagers:a4];
  if ([(_UISystemGestureManager *)self _displayRequiresClientManagement:v8])
  {
    v9 = [(NSMapTable *)self->_systemShellManagedDisplayIdentityToInvalidatableMap objectForKey:v8];

    if (!v9)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:164 description:{@"Attempting to manage gesture recognizers on an unmanaged display: %@", v8}];
    }
  }

  v10 = [(_UISystemGestureManager *)self _systemGestureManagerForDisplayWithIdentityCreatingIfNeeded:v8];
  v11 = *&a3->c;
  v14[0] = *&a3->a;
  v14[1] = v11;
  v14[2] = *&a3->tx;
  [v10 setTransform:v14];
}

- (void)clearTransformFromDisplayWithIdentity:(id)a3
{
  v8 = [(_UISystemGestureManager *)self _displayIdentityForTrackingGestureManagers:a3];
  if ([(_UISystemGestureManager *)self _displayRequiresClientManagement:?])
  {
    v5 = [(NSMapTable *)self->_systemShellManagedDisplayIdentityToInvalidatableMap objectForKey:v8];

    if (!v5)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:171 description:{@"Attempting to manage gesture recognizers on an unmanaged display: %@", v8}];
    }
  }

  v6 = [(_UISystemGestureManager *)self _systemGestureManagerForDisplayWithIdentityCreatingIfNeeded:v8];
  [v6 clearTransform];
}

+ (void)_cancelTouchesWithIdentifiers:(id)a3 forDisplayWithIdentity:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = [a1 _sharedInstanceIfExists];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 windowForSystemGesturesForDisplayWithIdentity:a4];
    if (v8)
    {
      v9 = [UIApp _touchesEventForWindow:v8];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 _touchesForWindow:v8];
        if ([v11 count])
        {
          v22 = v10;
          v23 = v7;
          v12 = objc_opt_new();
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v21 = v11;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v24 + 1) + 8 * i);
                v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v18, "_touchIdentifier", v21)}];
                v20 = [a3 containsObject:v19];

                if (v20)
                {
                  [v12 addObject:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
            }

            while (v15);
          }

          v10 = v22;
          [UIApp _cancelTouchesOrPresses:v12 withEvent:v22];

          v7 = v23;
          v11 = v21;
        }
      }
    }
  }
}

- (BOOL)_displayRequiresClientManagement:(id)a3
{
  v4 = [a3 isExternal];
  if (v4)
  {
    if ([a3 isMainDisplay] & 1) != 0 || (objc_msgSend(a3, "isCarDisplay"))
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      LOBYTE(v4) = [a3 isCarInstrumentsDisplay] ^ 1;
    }
  }

  return v4;
}

- (id)_displayIdentityForTrackingGestureManagers:(id)a3
{
  if ([(_UISystemGestureManager *)self _displayRequiresClientManagement:?])
  {
    v4 = a3;
  }

  else
  {
    v4 = [a3 rootIdentity];
  }

  return v4;
}

- (id)_systemGestureManagerForDisplayWithIdentityCreatingIfNeeded:(id)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"displayIdentity"}];
  }

  if (!-[_UISystemGestureManager _displayRequiresClientManagement:](self, "_displayRequiresClientManagement:", a3) && ([a3 isRootIdentity] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UISystemGestureManager.m" lineNumber:241 description:@"displayIdentity is not a rootIdentity"];
  }

  v6 = [(NSMutableDictionary *)self->_displayIdentityToManagerMap objectForKey:a3];
  if (!v6)
  {
    v6 = [[__UISystemGestureManager alloc] initWithDisplayIdentity:a3];
    [(NSMutableDictionary *)self->_displayIdentityToManagerMap setObject:v6 forKey:a3];
  }

  return v6;
}

@end