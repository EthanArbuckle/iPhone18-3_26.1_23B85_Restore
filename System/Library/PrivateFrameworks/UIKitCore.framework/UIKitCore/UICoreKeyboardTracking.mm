@interface UICoreKeyboardTracking
+ (NSMapTable)windowMap;
+ (void)addTrackingElement:(id)element window:(id)window keyboardDelegate:(id)delegate;
+ (void)removeTrackingElement:(id)element window:(id)window keyboardDelegate:(id)delegate;
- (CGSize)trackingSize;
- (UICoreKeyboardTracking)initWithWindow:(id)window;
- (UIWindow)window;
- (id)sceneForTracker;
- (void)cleanupElements;
- (void)trackingSizeWillChange:(CGSize)change inWindow:(id)window animationInfo:(id)info;
@end

@implementation UICoreKeyboardTracking

+ (NSMapTable)windowMap
{
  if (qword_1ED49E5D0 != -1)
  {
    dispatch_once(&qword_1ED49E5D0, &__block_literal_global_300);
  }

  v3 = _MergedGlobals_1141;

  return v3;
}

void __35__UICoreKeyboardTracking_windowMap__block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v1 = _MergedGlobals_1141;
  _MergedGlobals_1141 = v0;
}

- (id)sceneForTracker
{
  window = [(UICoreKeyboardTracking *)self window];
  windowScene = [window windowScene];

  return windowScene;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (void)cleanupElements
{
  elements = [(UICoreKeyboardTracking *)self elements];
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_8_9];
  [elements filterUsingPredicate:v2];
}

BOOL __41__UICoreKeyboardTracking_cleanupElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 base];
  v3 = v2 != 0;

  return v3;
}

+ (void)addTrackingElement:(id)element window:(id)window keyboardDelegate:(id)delegate
{
  elementCopy = element;
  windowCopy = window;
  delegateCopy = delegate;
  v10 = +[UICoreKeyboardTracking windowMap];
  v11 = [v10 objectForKey:windowCopy];
  v12 = v11;
  if (v11)
  {
    [v11 trackingSize];
    [elementCopy prepareKeyboardWithSize:windowCopy inWindow:?];
    elements = [v12 elements];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69__UICoreKeyboardTracking_addTrackingElement_window_keyboardDelegate___block_invoke;
    v21[3] = &unk_1E710B970;
    v14 = elementCopy;
    v22 = v14;
    v15 = [elements indexOfObjectPassingTest:v21];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [[UIWeakCoreKeyboardTracking alloc] initWithBase:v14];
      elements2 = [v12 elements];
      [elements2 addObject:v16];
    }
  }

  else
  {
    v18 = [[UICoreKeyboardTracking alloc] initWithWindow:windowCopy];
    v19 = [[UIWeakCoreKeyboardTracking alloc] initWithBase:elementCopy];
    elements3 = [(UICoreKeyboardTracking *)v18 elements];
    [elements3 addObject:v19];

    [v10 setObject:v18 forKey:windowCopy];
    [delegateCopy registerKeyboardTracker:v18];
  }
}

BOOL __69__UICoreKeyboardTracking_addTrackingElement_window_keyboardDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 base];
  v4 = v3 == *(a1 + 32);

  return v4;
}

+ (void)removeTrackingElement:(id)element window:(id)window keyboardDelegate:(id)delegate
{
  elementCopy = element;
  windowCopy = window;
  delegateCopy = delegate;
  v10 = +[UICoreKeyboardTracking windowMap];
  v11 = [v10 objectForKey:windowCopy];
  v12 = v11;
  if (v11)
  {
    elements = [v11 elements];
    v14 = MEMORY[0x1E696AE18];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__UICoreKeyboardTracking_removeTrackingElement_window_keyboardDelegate___block_invoke;
    v20[3] = &unk_1E710B998;
    v21 = elementCopy;
    v15 = [v14 predicateWithBlock:v20];
    v16 = [elements filteredArrayUsingPredicate:v15];
    v17 = [v16 mutableCopy];
    [v12 setElements:v17];

    elements2 = [v12 elements];
    v19 = [elements2 count];

    if (!v19)
    {
      [delegateCopy removeKeyboardTracker:v12];
      [v10 removeObjectForKey:windowCopy];
    }
  }
}

BOOL __72__UICoreKeyboardTracking_removeTrackingElement_window_keyboardDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 base];
  v4 = v3 != *(a1 + 32);

  return v4;
}

- (UICoreKeyboardTracking)initWithWindow:(id)window
{
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = UICoreKeyboardTracking;
  v5 = [(UICoreKeyboardTracking *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_window, windowCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    elements = v6->_elements;
    v6->_elements = v7;

    v6->_trackingSize = *MEMORY[0x1E695F060];
  }

  return v6;
}

- (void)trackingSizeWillChange:(CGSize)change inWindow:(id)window animationInfo:(id)info
{
  height = change.height;
  width = change.width;
  v40 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  infoCopy = info;
  [(UICoreKeyboardTracking *)self cleanupElements];
  if (([infoCopy isLocalKeyboard] & 1) != 0 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "userInterfaceIdiom"), v11, v12))
  {
    [(UICoreKeyboardTracking *)self setTrackingSize:width, height];
    elements = [(UICoreKeyboardTracking *)self elements];
    v14 = [elements copy];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          base = [v21 base];
          v23 = base;
          if (base && [base prepareKeyboardWithSize:windowCopy inWindow:{width, height}])
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v18);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = v15;
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          base2 = [*(*(&v30 + 1) + 8 * j) base];
          [base2 updateKeyboard];
        }

        v26 = [v24 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v26);
    }
  }
}

- (CGSize)trackingSize
{
  width = self->_trackingSize.width;
  height = self->_trackingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end