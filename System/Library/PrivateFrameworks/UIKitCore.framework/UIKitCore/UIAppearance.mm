@interface UIAppearance
@end

@implementation UIAppearance

id __36___UIAppearance__recorderForSource___block_invoke()
{
  qword_1ED49E5F0 = dispatch_queue_create("com.apple.UIKit.UIAppearance.sharedRecorderAccessQueue", 0);
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1ED49E5E8 = result;
  return result;
}

id __36___UIAppearance__recorderForSource___block_invoke_107(uint64_t a1)
{
  result = [qword_1ED49E5E8 objectForKey:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(_UIAppearanceRecorder);
    v3 = qword_1ED49E5E8;
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return [v3 setObject:v5 forKey:v4];
  }

  return result;
}

uint64_t __54___UIAppearance__recordersExcludingSource_withWindow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) || (result = [a2 isEqual:?], (result & 1) == 0))
  {
    v6 = [*(a1 + 40) _windowsForSource:a2];
    if (!v6 || (result = [v6 containsObject:*(a1 + 48)], result))
    {
      result = [*(a1 + 40) _recorderForSource:a2];
      v17 = result;
      if (result)
      {
        v7 = [MEMORY[0x1E696AAE8] mainBundle];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v20 = [a3 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v20)
        {
          v19 = *v27;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(a3);
              }

              v9 = *(*(&v26 + 1) + 8 * i);
              aClass = [v9 objectForKey:@"_UIAppearanceWrapperKeyClass"];
              if ([MEMORY[0x1E696AAE8] bundleForClass:?] != v7)
              {
                v10 = [MEMORY[0x1E695DF70] array];
                v22 = 0u;
                v23 = 0u;
                v24 = 0u;
                v25 = 0u;
                v11 = [v9 objectForKey:@"_UIAppearanceWrapperKeyContainerClasses"];
                v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v23;
LABEL_14:
                  v15 = 0;
                  while (1)
                  {
                    if (*v23 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = *(*(&v22 + 1) + 8 * v15);
                    if ([MEMORY[0x1E696AAE8] bundleForClass:v16] == v7)
                    {
                      break;
                    }

                    [v10 addObject:NSStringFromClass(v16)];
                    if (v13 == ++v15)
                    {
                      v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
                      if (v13)
                      {
                        goto LABEL_14;
                      }

                      goto LABEL_20;
                    }
                  }
                }

                else
                {
LABEL_20:
                  [v17 _recordInvocation:objc_msgSend(v9 withClassName:"objectForKey:" containerClassNames:@"_UIAppearanceWrapperKeyInvocation" traitCollection:NSStringFromClass(aClass) selectorString:v10 forRemoteProcess:{objc_msgSend(v9, "objectForKey:", @"_UIAppearanceWrapperKeyTraitCollection", objc_msgSend(v9, "objectForKey:", @"_UIAppearanceWrapperKeySelector", 1}];
                }
              }
            }

            v20 = [a3 countByEnumeratingWithState:&v26 objects:v31 count:16];
          }

          while (v20);
        }

        [a3 removeAllObjects];
        return [*(a1 + 56) addObject:v17];
      }
    }
  }

  return result;
}

uint64_t __46___UIAppearance_appearancesAtNode_withObject___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [v3 _isValidAppearanceForCustomizableObject:*(a1 + 40)];
    if (result)
    {
      v5 = *(a1 + 48);

      return [v5 addObject:v3];
    }
  }

  return result;
}

uint64_t __45___UIAppearance__removeInvocationsForSource___block_invoke(uint64_t a1, id *a2, void *a3, uint64_t a4)
{
  [a2 _removeInvocationsForSource:*(a1 + 32)];
  result = [a2[2] count];
  if (!result)
  {

    return [a3 removeObjectForKey:a4];
  }

  return result;
}

uint64_t __83___UIAppearance__applyInvocationsTo_window_matchingSelector_onlySystemInvocations___block_invoke(uint64_t a1, void *a2, int a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  result = [a2 countByEnumeratingWithState:&v45 objects:v55 count:16];
  v29 = result;
  if (result)
  {
    v28 = *v46;
    v31 = a1;
    do
    {
      v6 = 0;
      do
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(a2);
        }

        v30 = v6;
        v7 = [*(a1 + 32) appearancesAtNode:*(*(&v45 + 1) + 8 * v6) withObject:*(a1 + 40)];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v32 = v7;
        v34 = [v7 countByEnumeratingWithState:&v41 objects:v54 count:16];
        if (v34)
        {
          v33 = *v42;
          do
          {
            v8 = 0;
            do
            {
              if (*v42 != v33)
              {
                objc_enumerationMutation(v32);
              }

              v9 = *(*(&v41 + 1) + 8 * v8);
              v36 = *(a1 + 48);
              v10 = *(a1 + 72);
              if (v9)
              {
                v11 = *(v9 + 16);
                v12 = *(v9 + 24);
              }

              else
              {
                v11 = 0;
                v12 = 0;
              }

              v35 = v8;
              if (v10 | v12)
              {
                v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v14 = [v11 countByEnumeratingWithState:&v49 objects:v56 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v50;
                  do
                  {
                    for (i = 0; i != v15; ++i)
                    {
                      if (*v50 != v16)
                      {
                        objc_enumerationMutation(v11);
                      }

                      v18 = *(*(&v49 + 1) + 8 * i);
                      v19 = +[_UIAppearance _windowsForSource:](_UIAppearance, "_windowsForSource:", [v12 objectForKey:v18]);
                      if ((!v10 || [v18 selector] == v10) && (!v19 || objc_msgSend(v19, "containsObject:", v36)))
                      {
                        [v13 addObject:v18];
                      }
                    }

                    v15 = [v11 countByEnumeratingWithState:&v49 objects:v56 count:16];
                  }

                  while (v15);
                }

                v11 = v13;
                a1 = v31;
              }

              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v20 = [v11 countByEnumeratingWithState:&v37 objects:v53 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v38;
                do
                {
                  for (j = 0; j != v21; ++j)
                  {
                    if (*v38 != v22)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v24 = *(*(&v37 + 1) + 8 * j);
                    v25 = [objc_getAssociatedObject(v24 &:"BOOLValue" MergedGlobals:?1142)];
                    if ((v25 & 1) != 0 || a3)
                    {
                      if (v25)
                      {
                        v26 = 56;
                      }

                      else
                      {
                        v26 = 64;
                      }

                      [*(a1 + v26) addObject:v24];
                    }
                  }

                  v21 = [v11 countByEnumeratingWithState:&v37 objects:v53 count:16];
                }

                while (v21);
              }

              v8 = v35 + 1;
            }

            while (v35 + 1 != v34);
            v34 = [v32 countByEnumeratingWithState:&v41 objects:v54 count:16];
          }

          while (v34);
        }

        v6 = v30 + 1;
      }

      while (v30 + 1 != v29);
      result = [a2 countByEnumeratingWithState:&v45 objects:v55 count:16];
      v29 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __41___UIAppearance__handleGetterInvocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = NSStringFromSelector([a2 selector]);
  if ([(NSString *)v7 characterAtIndex:0]== 95)
  {
    v7 = [(NSString *)v7 substringFromIndex:1];
  }

  result = [(NSString *)v7 isEqualToString:*(a1 + 32)];
  if (!result)
  {
    return result;
  }

  if (*(a1 + 64) < 3uLL)
  {
    goto LABEL_18;
  }

  for (i = 2; ; ++i)
  {
    v13 = 0;
    v14 = 0;
    v10 = i + 1;
    [a2 getArgument:&v13 atIndex:i + 1];
    [*(a1 + 40) getArgument:&v14 atIndex:i];
    result = [*(a1 + 48) getArgumentTypeAtIndex:i];
    if (*result != 64)
    {
      break;
    }

    v11 = result;
    result = [v14 isEqual:v13];
    if (!result)
    {
      return result;
    }

    if (*v11 != 64)
    {
      break;
    }

    if (v10 >= *(a1 + 64))
    {
      goto LABEL_18;
    }

LABEL_16:
    ;
  }

  if (v10 < *(a1 + 64) && v14 == v13)
  {
    goto LABEL_16;
  }

  if (v14 == v13)
  {
LABEL_18:
    *(*(*(a1 + 56) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

@end