@interface UIAccessibilityBridgeElement
- (UIAccessibilityBridgeAXActionHandler)axActionHandler;
- (void)overrideAccessibilityMethodsForRemoteDevice;
@end

@implementation UIAccessibilityBridgeElement

- (void)overrideAccessibilityMethodsForRemoteDevice
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(UIAccessibilityBridgeElement *)self accessibilityActionsForRemoteDevice];
  v17 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v17)
  {
    v16 = *v31;
    do
    {
      v3 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v4 = [*(*(&v30 + 1) + 8 * v3) integerValue];
        v34[0] = &unk_1F1DC29E0;
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:UIAccessibilityScrollToVisibleAction];
        v35[0] = v5;
        v34[1] = &unk_1F1DC29F8;
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:UIAccessibilityScrollUpPageAction];
        v35[1] = v6;
        v34[2] = &unk_1F1DC2A10;
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:UIAccessibilityScrollDownPageAction];
        v35[2] = v7;
        v34[3] = &unk_1F1DC2A28;
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:UIAccessibilityScrollLeftPageAction];
        v35[3] = v8;
        v34[4] = &unk_1F1DC2A40;
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:UIAccessibilityScrollRightPageAction];
        v35[4] = v9;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:5];

        objc_initWeak(&location, self);
        if (v4 <= 2005)
        {
          switch(v4)
          {
            case 0x7D3:
LABEL_8:
              v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
              v12 = [v10 objectForKeyedSubscript:v11];

              if (v12)
              {
                [(UIAccessibilityBridgeElement *)self setIsAXScrollAncestor:1];
                v13 = [v12 intValue];
                v18[0] = MEMORY[0x1E69E9820];
                v18[1] = 3221225472;
                v18[2] = __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke_5;
                v18[3] = &unk_1E78AB9C0;
                objc_copyWeak(&v19, &location);
                v20 = v4;
                [self _accessibilitySetActionBlock:v18 withValue:0 forKey:v13];
                objc_destroyWeak(&v19);
              }

              break;
            case 0x7D4:
              v23[0] = MEMORY[0x1E69E9820];
              v23[1] = 3221225472;
              v23[2] = __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke_3;
              v23[3] = &unk_1E78AB970;
              objc_copyWeak(&v24, &location);
              [self _setAccessibilityIncrementBlock:v23];
              objc_destroyWeak(&v24);
              break;
            case 0x7D5:
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke_4;
              v21[3] = &unk_1E78AB970;
              objc_copyWeak(&v22, &location);
              [self _setAccessibilityDecrementBlock:v21];
              objc_destroyWeak(&v22);
              break;
          }
        }

        else
        {
          if ((v4 - 2006) < 4)
          {
            goto LABEL_8;
          }

          if (v4 == 2013)
          {
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke_2;
            v25[3] = &unk_1E78AB998;
            objc_copyWeak(&v26, &location);
            [self _setAccessibilityPerformEscapeBlock:v25];
            objc_destroyWeak(&v26);
          }

          else if (v4 == 2010)
          {
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke;
            v27[3] = &unk_1E78AB998;
            objc_copyWeak(&v28, &location);
            [self _setAccessibilityActivateBlock:v27];
            objc_destroyWeak(&v28);
          }
        }

        objc_destroyWeak(&location);

        ++v3;
      }

      while (v17 != v3);
      v14 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      v17 = v14;
    }

    while (v14);
  }
}

uint64_t __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained axActionHandler];
  v3 = [v2 performAXAction:2010 withValue:0 onBridgeElement:WeakRetained];

  return v3;
}

uint64_t __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained axActionHandler];
  v3 = [v2 performAXAction:2013 withValue:0 onBridgeElement:WeakRetained];

  return v3;
}

void __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained axActionHandler];
  [v1 performAXAction:2004 withValue:0 onBridgeElement:WeakRetained];
}

void __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained axActionHandler];
  [v1 performAXAction:2005 withValue:0 onBridgeElement:WeakRetained];
}

uint64_t __75__UIAccessibilityBridgeElement_overrideAccessibilityMethodsForRemoteDevice__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained axActionHandler];
  v4 = [v3 performAXAction:*(a1 + 40) withValue:0 onBridgeElement:WeakRetained];

  return v4;
}

- (UIAccessibilityBridgeAXActionHandler)axActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_axActionHandler);

  return WeakRetained;
}

@end