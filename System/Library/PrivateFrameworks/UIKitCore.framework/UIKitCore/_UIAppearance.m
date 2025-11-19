@interface _UIAppearance
+ (BOOL)_hasCustomizationsForClass:(Class)a3 guideClass:(Class)a4;
+ (id)_appearanceForClass:(Class)a3 withContainerList:(id)a4;
+ (id)_appearanceNodeForClassInfo:(id)a3 containerList:(id)a4;
+ (id)_appearanceWithClassInfo:(id)a3 containerList:(id)a4;
+ (id)_newAppearanceWithClassInfo:(id)a3 containerList:(id)a4;
+ (id)_pendingRecordInvocationsForSource:(id)a3;
+ (id)_recorderForSource:(id)a3;
+ (id)_recordersExcludingSource:(id)a3 withWindow:(id)a4;
+ (id)_rootAppearancesNode;
+ (id)appearancesAtNode:(id)a3 withObject:(id)a4;
+ (id)recursiveDescription;
+ (void)_addWindow:(id)a3 forSource:(id)a4;
+ (void)_appendDescriptionOfNode:(id)a3 toString:(id)a4 atLevel:(unint64_t)a5;
+ (void)_applyInvocationsTo:(id)a3 window:(id)a4 matchingSelector:(SEL)a5 onlySystemInvocations:(BOOL)a6;
+ (void)_removeInvocationsForSource:(id)a3;
+ (void)_removeWindow:(id)a3 forSource:(id)a4;
- (SEL)_beginListeningForAppearanceEventsForSetter:(SEL)a3;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_appendDescriptionToString:(id)a3 atLevel:(unint64_t)a4;
- (void)_handleGetterInvocation:(id)a3;
- (void)_handleSetterInvocation:(id)a3;
- (void)_invalidateAppearanceInWindow:(id)a3;
- (void)_removeInvocationsForSource:(id)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation _UIAppearance

+ (id)_rootAppearancesNode
{
  result = __rootAppearances;
  if (!__rootAppearances)
  {
    result = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    __rootAppearances = result;
  }

  return result;
}

+ (void)_addWindow:(id)a3 forSource:(id)a4
{
  v6 = __appearanceSourceWindows;
  if (!__appearanceSourceWindows)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    __appearanceSourceWindows = v6;
  }

  v7 = [v6 objectForKey:a4];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    [__appearanceSourceWindows setObject:v7 forKey:a4];
  }

  [v7 addObject:a3];
}

+ (void)_removeWindow:(id)a3 forSource:(id)a4
{
  v5 = [__appearanceSourceWindows objectForKey:a4];

  [v5 removeObject:a3];
}

+ (id)_recorderForSource:(id)a3
{
  if (qword_1ED49E618 != -1)
  {
    dispatch_once(&qword_1ED49E618, &__block_literal_global_458);
  }

  if (byte_1ED49E5DB != 1)
  {
    return 0;
  }

  if (!a3)
  {
    a3 = [MEMORY[0x1E695DFB0] null];
  }

  if (qword_1ED49E5F8 != -1)
  {
    dispatch_once(&qword_1ED49E5F8, &__block_literal_global_303);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__105;
  v11 = __Block_byref_object_dispose__105;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36___UIAppearance__recorderForSource___block_invoke_107;
  v6[3] = &unk_1E7105E30;
  v6[4] = a3;
  v6[5] = &v7;
  dispatch_sync(qword_1ED49E5F0, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

+ (id)_pendingRecordInvocationsForSource:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = __pendingRecordInvocations;
  if (!__pendingRecordInvocations)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    __pendingRecordInvocations = v4;
  }

  v5 = [v4 objectForKey:v3];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [__pendingRecordInvocations setObject:v5 forKey:v3];
  }

  return v5;
}

+ (id)_recordersExcludingSource:(id)a3 withWindow:(id)a4
{
  v7 = [MEMORY[0x1E695DF70] array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54___UIAppearance__recordersExcludingSource_withWindow___block_invoke;
  v9[3] = &unk_1E710BAD0;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a4;
  v9[7] = v7;
  [__pendingRecordInvocations enumerateKeysAndObjectsUsingBlock:v9];
  return v7;
}

+ (id)appearancesAtNode:(id)a3 withObject:(id)a4
{
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKey:@"_UIAppearanceKey"];
  if ((dyld_program_sdk_at_least() & 1) == 0 && v6)
  {
    v56[0] = v6;
    v7 = v56;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  if ([objc_msgSend(a3 objectForKey:{@"_UIAppearanceHasExtendedAppearancesKey", "BOOLValue"}])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a3, "count")}];
    if (dyld_program_sdk_at_least())
    {
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v46 = __46___UIAppearance_appearancesAtNode_withObject___block_invoke;
      v47 = &unk_1E710BAF8;
      v48 = a3;
      v49 = a4;
      v50 = v6;
      __46___UIAppearance_appearancesAtNode_withObject___block_invoke(v45, @"_UIAppearanceKey");
      v8 = [MEMORY[0x1E695DF70] array];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v9 = [a3 countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v42;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v42 != v11)
            {
              objc_enumerationMutation(a3);
            }

            v13 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v8 addObject:v13];
            }
          }

          v10 = [a3 countByEnumeratingWithState:&v41 objects:v55 count:16];
        }

        while (v10);
      }

      [v8 sortUsingSelector:sel__compare_];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = [v8 countByEnumeratingWithState:&v37 objects:v54 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v8);
            }

            v46(v45, *(*(&v37 + 1) + 8 * j));
          }

          v15 = [v8 countByEnumeratingWithState:&v37 objects:v54 count:16];
        }

        while (v15);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = [a3 countByEnumeratingWithState:&v33 objects:v53 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
        do
        {
          for (k = 0; k != v19; ++k)
          {
            if (*v34 != v20)
            {
              objc_enumerationMutation(a3);
            }

            v22 = *(*(&v33 + 1) + 8 * k);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v22 isEqualToString:@"_UIAppearanceKey"] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"_UIAppearanceHasExtendedAppearancesKey") & 1) == 0)
            {
              v46(v45, v22);
            }
          }

          v19 = [a3 countByEnumeratingWithState:&v33 objects:v53 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v24 = [a3 countByEnumeratingWithState:&v29 objects:v52 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v30;
        do
        {
          for (m = 0; m != v25; ++m)
          {
            if (*v30 != v26)
            {
              objc_enumerationMutation(a3);
            }

            v28 = [a3 objectForKey:*(*(&v29 + 1) + 8 * m)];
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v28 _isValidAppearanceForCustomizableObject:a4])
            {
              [v6 addObject:v28];
            }
          }

          v25 = [a3 countByEnumeratingWithState:&v29 objects:v52 count:16];
        }

        while (v25);
      }
    }
  }

  else if (v6)
  {
    v51 = v6;
    v7 = &v51;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  return v6;
}

+ (void)_removeInvocationsForSource:(id)a3
{
  v4 = [objc_opt_class() _rootAppearancesNode];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___UIAppearance__removeInvocationsForSource___block_invoke;
  v5[3] = &unk_1E710BB20;
  v5[4] = a3;
  _enumerateAppearancesHelper(v4, v5);
}

- (void)_removeInvocationsForSource:(id)a3
{
  if ([(NSMapTable *)self->_invocationSources count])
  {
    v5 = [(NSMutableArray *)self->_appearanceInvocations count];
    v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSMutableArray *)self->_appearanceInvocations objectAtIndex:i];
        if ([-[NSMapTable objectForKey:](self->_invocationSources objectForKey:{v7), "isEqual:", a3}])
        {
          [v8 addIndex:i];
          [(NSMapTable *)self->_invocationSources removeObjectForKey:v7];
        }
      }
    }

    [(NSMutableArray *)self->_appearanceInvocations removeObjectsAtIndexes:v8];
  }
}

+ (void)_applyInvocationsTo:(id)a3 window:(id)a4 matchingSelector:(SEL)a5 onlySystemInvocations:(BOOL)a6
{
  v6 = a6;
  v70 = *MEMORY[0x1E69E9840];
  v11 = +[_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:withGuideClass:](_UIAppearanceCustomizableClassInfo, "_customizableClassInfoForViewClass:withGuideClass:", objc_opt_class(), [a3 _appearanceGuideClass]);
  v12 = existingAppearancesNodesInNodeForClassAndSuperclasses(+[_UIAppearance _rootAppearancesNode], v11);
  if ([v12 count])
  {
    context = objc_autoreleasePoolPush();
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v59 = __83___UIAppearance__applyInvocationsTo_window_matchingSelector_onlySystemInvocations___block_invoke;
    v60 = &unk_1E710BB48;
    v61 = a1;
    v62 = a3;
    v63 = a4;
    v64 = v14;
    v31 = v14;
    v32 = v13;
    v65 = v13;
    v66 = a5;
    __83___UIAppearance__applyInvocationsTo_window_matchingSelector_onlySystemInvocations___block_invoke(v58, v12, v6 ^ 1);
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (objc_opt_respondsToSelector())
    {
      v16 = [a3 _appearanceContainer];
    }

    else
    {
      v16 = 0;
    }

    v41 = v15;
    object = a3;
    if (objc_opt_respondsToSelector())
    {
      obj = v12;
      do
      {
        v35 = v16;
        v17 = +[_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:withGuideClass:](_UIAppearanceCustomizableClassInfo, "_customizableClassInfoForViewClass:withGuideClass:", objc_opt_class(), [v16 _appearanceGuideClass]);
        v18 = [v17 _customizableViewClass];
        if (v6)
        {
          v6 = 1;
        }

        else
        {
          v6 = [v18 _preventsAppearanceProxyCustomization];
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v38 = [obj countByEnumeratingWithState:&v54 objects:v69 count:{16, v31}];
        if (v38)
        {
          v37 = *v55;
          do
          {
            v19 = 0;
            do
            {
              if (*v55 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = v19;
              v40 = *(*(&v54 + 1) + 8 * v19);
              if (![v41 count] || objc_msgSend(objc_msgSend(v41, "objectAtIndex:", 0), "count"))
              {
                v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v41 insertObject:v20 atIndex:0];
              }

              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              v43 = [v41 countByEnumeratingWithState:&v50 objects:v68 count:16];
              if (v43)
              {
                v42 = *v51;
                do
                {
                  v21 = 0;
                  do
                  {
                    if (*v51 != v42)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v44 = v21;
                    v22 = *(*(&v50 + 1) + 8 * v21);
                    if ([v22 count])
                    {
                      v45 = [v22 count];
                      if (v45)
                      {
                        for (i = 0; i != v45; ++i)
                        {
                          v24 = [v22 objectAtIndex:i];
                          v46 = 0u;
                          v47 = 0u;
                          v48 = 0u;
                          v49 = 0u;
                          v25 = [v24 countByEnumeratingWithState:&v46 objects:v67 count:16];
                          if (v25)
                          {
                            v26 = v25;
                            v27 = *v47;
                            do
                            {
                              for (j = 0; j != v26; ++j)
                              {
                                if (*v47 != v27)
                                {
                                  objc_enumerationMutation(v24);
                                }

                                v29 = existingAppearancesNodesInNodeForClassAndSuperclasses(*(*(&v46 + 1) + 8 * j), v17);
                                if ([v29 count])
                                {
                                  [v22 addObject:v29];
                                  v59(v58, v29, v6 ^ 1);
                                }
                              }

                              v26 = [v24 countByEnumeratingWithState:&v46 objects:v67 count:16];
                            }

                            while (v26);
                          }
                        }
                      }
                    }

                    else
                    {
                      v30 = existingAppearancesNodesInNodeForClassAndSuperclasses(v40, v17);
                      if ([v30 count])
                      {
                        [v22 addObject:v30];
                        v59(v58, v30, v6 ^ 1);
                      }
                    }

                    v21 = v44 + 1;
                  }

                  while (v44 + 1 != v43);
                  v43 = [v41 countByEnumeratingWithState:&v50 objects:v68 count:16];
                }

                while (v43);
              }

              v19 = v39 + 1;
            }

            while (v39 + 1 != v38);
            v38 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
          }

          while (v38);
        }

        v16 = [v35 _appearanceContainer];
      }

      while ((objc_opt_respondsToSelector() & 1) != 0);
    }

    applyInvocationsToTarget(v31, object);
    if ((v6 & 1) == 0)
    {
      applyInvocationsToTarget(v32, object);
    }

    objc_autoreleasePoolPop(context);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIAppearance;
  [(_UIAppearance *)&v3 dealloc];
}

+ (id)_appearanceForClass:(Class)a3 withContainerList:(id)a4
{
  v6 = [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:a3 withGuideClass:0];

  return [a1 _appearanceWithClassInfo:v6 containerList:a4];
}

+ (id)_appearanceNodeForClassInfo:(id)a3 containerList:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  IfNecessary = appearancesNodeInNodeForClassCreateIfNecessary([a1 _rootAppearancesNode], a3);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(a4);
      }

      if (!IfNecessary)
      {
        break;
      }

      IfNecessary = appearancesNodeInNodeForClassCreateIfNecessary(IfNecessary, [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:*(*(&v11 + 1) + 8 * v9++) withGuideClass:0]);
      if (v7 == v9)
      {
        v7 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        return IfNecessary;
      }
    }
  }

  return IfNecessary;
}

+ (id)_newAppearanceWithClassInfo:(id)a3 containerList:(id)a4
{
  v6 = objc_alloc_init(a1);
  v6[4] = a3;
  v6[1] = [a4 copy];

  return v6;
}

+ (id)_appearanceWithClassInfo:(id)a3 containerList:(id)a4
{
  v7 = [a1 _appearanceNodeForClassInfo:? containerList:?];
  v8 = [v7 objectForKey:@"_UIAppearanceKey"];
  if (!v8)
  {
    v8 = [a1 _newAppearanceWithClassInfo:a3 containerList:a4];
    [v7 setObject:v8 forKey:@"_UIAppearanceKey"];
  }

  return v8;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(_UIAppearanceCustomizableClassInfo *)self->_customizableClassInfo _customizableViewClass];

  return [(objc_class *)v4 instanceMethodSignatureForSelector:a3];
}

- (SEL)_beginListeningForAppearanceEventsForSetter:(SEL)a3
{
  v3 = a3;
  v6 = NSStringFromSelector(a3);
  v7 = UIAppearancePrefixedSelectorForSelectorString(v6);
  v8 = [(_UIAppearanceCustomizableClassInfo *)self->_customizableClassInfo _customizableViewClass];
  v9 = _classWithImplementationOfSelector(v8, v7, 0);
  v10 = _classWithImplementationOfSelector(v8, v3, 1);
  if (v9 != v10)
  {
    v11 = v10;
    if (v9 && (!v10 || [(objc_class *)v9 isSubclassOfClass:v10]))
    {
      if ([[(NSString *)v6 substringToIndex:1] isEqualToString:@"_"])
      {
        v12 = [(NSString *)v6 substringFromIndex:1];
      }

      else
      {
        v12 = [@"_" stringByAppendingString:v6];
      }

      v3 = NSSelectorFromString(v12);
      if (_classWithImplementationOfSelector(v8, v3, 1) != v9)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }
    }

    else
    {
      [(objc_class *)v11 _installAppearanceSwizzlesForSetter:v6];
    }
  }

  return v3;
}

- (void)_handleSetterInvocation:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [a3 selector];
  v6 = NSStringFromSelector(v5);
  v7 = [(_UIAppearanceCustomizableClassInfo *)self->_customizableClassInfo _customizableViewClass];
  if (!self->_appearanceInvocations)
  {
    self->_appearanceInvocations = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v8 = UIAppearancePrefixedSelectorForSelectorString(v6);
  [a3 setSelector:{-[_UIAppearance _beginListeningForAppearanceEventsForSetter:](self, "_beginListeningForAppearanceEventsForSetter:", v5)}];
  [a3 setTarget:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  [a3 retainArguments];
  [(NSMutableArray *)self->_appearanceInvocations addObject:a3];
  if (__isSettingUpSystemAppearanceProxyModifications == 1)
  {
    objc_setAssociatedObject(a3, &_MergedGlobals_1142, [MEMORY[0x1E696AD98] numberWithBool:1], 3);
  }

  v9 = [objc_opt_class() _currentAppearanceSource];
  if ([(_UIAppearance *)self _isRecordingInvocations])
  {
    v10 = [objc_opt_class() _pendingRecordInvocationsForSource:v9];
    if ((-[objc_class instancesRespondToSelector:](v7, "instancesRespondToSelector:", [a3 selector]) & 1) == 0)
    {
      v6 = NSStringFromSelector(v8);
    }

    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v6, @"_UIAppearanceWrapperKeySelector", a3, @"_UIAppearanceWrapperKeyInvocation", v7, @"_UIAppearanceWrapperKeyClass", 0}];
    v12 = v11;
    containerList = self->_containerList;
    if (containerList)
    {
      [v11 setObject:containerList forKey:@"_UIAppearanceWrapperKeyContainerClasses"];
    }

    v14 = [(_UIAppearance *)self _traitCollection];
    if (v14)
    {
      [v12 setObject:v14 forKey:@"_UIAppearanceWrapperKeyTraitCollection"];
    }

    [v10 addObject:v12];
  }

  if (v9)
  {
    invocationSources = self->_invocationSources;
    if (!invocationSources)
    {
      invocationSources = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:0];
      self->_invocationSources = invocationSources;
    }

    [(NSMapTable *)invocationSources setObject:v9 forKey:a3];
  }

  if (byte_1ED49E5D9 == 1)
  {
    v16 = [objc_opt_class() _windowsForSource:v9];
    if (!v16)
    {
      v16 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [(_UIAppearance *)self _invalidateAppearanceInWindow:*(*(&v21 + 1) + 8 * v20++)];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v18);
    }
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)_handleGetterInvocation:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [a3 methodSignature];
  v6 = NSStringFromSelector([a3 selector]);
  v7 = [v5 numberOfArguments];
  if ([(NSString *)v6 characterAtIndex:0]== 95)
  {
    v6 = [(NSString *)v6 substringFromIndex:1];
  }

  if (v7 < 3)
  {
    v11 = [(NSString *)v6 stringByAppendingString:@":"];
  }

  else
  {
    v8 = [(NSString *)v6 rangeOfString:@"For"];
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      while (1)
      {
        v10 = [(NSString *)v6 characterAtIndex:v9 + 3];
        if (v10 == [[[(NSString *)v6 substringWithRange:v9 + 3 uppercaseString] characterAtIndex:0])
        {
          break;
        }

        v9 = [(NSString *)v6 rangeOfString:@"For" options:0 range:v9 + 1, [(NSString *)v6 length]- (v9 + 1)];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          break;
        }
      }
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:f%@", -[NSString substringToIndex:](v6, "substringToIndex:", v9), -[NSString substringFromIndex:](v6, "substringFromIndex:", v9 + 1)];
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"set%@%@", -[NSString uppercaseString](-[NSString substringToIndex:](v11, "substringToIndex:", 1), "uppercaseString"), -[NSString substringFromIndex:](v11, "substringFromIndex:", 1)];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__105;
  v22 = __Block_byref_object_dispose__105;
  v23 = 0;
  appearanceInvocations = self->_appearanceInvocations;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41___UIAppearance__handleGetterInvocation___block_invoke;
  v17[3] = &unk_1E710BB70;
  v17[7] = &v18;
  v17[8] = v7;
  v17[4] = v12;
  v17[5] = a3;
  v17[6] = v5;
  [(NSMutableArray *)appearanceInvocations enumerateObjectsWithOptions:2 usingBlock:v17];
  v14 = [v5 methodReturnLength];
  v15 = v14;
  memset(v24, 0, sizeof(v24));
  if (v14 < 0x21)
  {
    v16 = v24;
  }

  else
  {
    v16 = malloc_type_calloc(v14, 1uLL, 0x100004077774924uLL);
  }

  [v19[5] getArgument:v16 atIndex:2];
  [a3 setReturnValue:v16];
  if (v15 >= 0x21)
  {
    free(v16);
  }

  _Block_object_dispose(&v18, 8);
}

- (void)forwardInvocation:(id)a3
{
  if ([objc_msgSend(a3 "methodSignature")])
  {

    [(_UIAppearance *)self _handleGetterInvocation:a3];
  }

  else
  {

    [(_UIAppearance *)self _handleSetterInvocation:a3];
  }
}

- (void)_invalidateAppearanceInWindow:(id)a3
{
  v4 = [(_UIAppearanceCustomizableClassInfo *)self->_customizableClassInfo _customizableViewClass];

  [a3 _invalidateAppearanceForSubviewsOfClass:v4];
}

+ (BOOL)_hasCustomizationsForClass:(Class)a3 guideClass:(Class)a4
{
  v6 = [a1 _hasAnyCustomizations];
  if (v6)
  {
    v7 = [objc_opt_class() _rootAppearancesNode];
    LOBYTE(v6) = existingAppearancesNodeInNodeForClass(v7, [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:a3 withGuideClass:a4]) != 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  customizableClassInfo = self->_customizableClassInfo;
  if (self->_containerList)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" when contained in %@", self->_containerList];
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

  return [v3 stringWithFormat:@"<%@:%p> %@%@ with invocations %@>", v5, self, customizableClassInfo, v7, self->_appearanceInvocations];
}

- (void)_appendDescriptionToString:(id)a3 atLevel:(unint64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_appearanceInvocations;
  v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v22)
  {
    v19 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v7 = a4 + 1;
        if (a4 != -1)
        {
          do
          {
            [a3 appendString:@"    "];
            --v7;
          }

          while (v7);
        }

        v8 = [MEMORY[0x1E696AE88] scannerWithString:{NSStringFromSelector(objc_msgSend(v6, "selector"))}];
        v26 = 0;
        [v8 scanUpToString:@"s" intoString:0];
        [v8 scanString:@"set" intoString:0];
        [v8 scanUpToString:@":" intoString:&v26];
        [v8 scanString:@":" intoString:0];
        v9 = [objc_msgSend(v26 substringToIndex:{1), "lowercaseString"}];
        v10 = [v9 stringByAppendingString:{objc_msgSend(v26, "substringFromIndex:", 1)}];
        v25 = 0;
        v26 = v10;
        [v6 getArgument:&v25 atIndex:2];
        if (*[objc_msgSend(v6 "methodSignature")] == 64)
        {
          [a3 appendFormat:@"%@ = %@", v26, v25];
        }

        else
        {
          [a3 appendFormat:@"%@ = %ld", v26, v25];
        }

        v11 = [objc_msgSend(v6 "methodSignature")];
        if (v11 >= 4)
        {
          v12 = v11;
          for (j = 3; j != v12; ++j)
          {
            v24 = 0;
            [v8 scanUpToString:@":" intoString:&v24];
            [v8 scanString:@":" intoString:0];
            v23 = 0;
            [v6 getArgument:&v23 atIndex:j];
            if (j == 3)
            {
              [a3 appendString:@" for "];
              v14 = [objc_msgSend(objc_msgSend(v24 substringFromIndex:{3), "substringToIndex:", 1), "lowercaseString"}];
              v15 = [v14 stringByAppendingString:{objc_msgSend(v24, "substringFromIndex:", 4)}];
              v24 = v15;
            }

            else
            {
              [a3 appendString:{@", "}];
              v15 = v24;
            }

            [a3 appendFormat:@"%@ = %ld", v15, v23];
          }
        }

        v16 = [(NSMapTable *)self->_invocationSources objectForKey:v6];
        v17 = @" pid";
        if (!v16)
        {
          v17 = &stru_1EFB14550;
        }

        [a3 appendFormat:@" (source%@ = %@)\n", v17, v16];
      }

      v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }
}

+ (void)_appendDescriptionOfNode:(id)a3 toString:(id)a4 atLevel:(unint64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a3;
    a3 = 0;
  }

  else
  {
    v8 = [a3 objectForKey:@"_UIAppearanceKey"];
  }

  [v8 _appendDescriptionToString:a4 atLevel:a5];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [a3 keyEnumerator];
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = @"_UIAppearanceKey";
    v12 = *v26;
    v24 = a5 + 1;
    do
    {
      v13 = 0;
      v22 = v10;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        if (v14 != v11 && v14 != @"_UIAppearanceHasExtendedAppearancesKey")
        {
          v16 = v12;
          v17 = v11;
          v18 = a3;
          v19 = [a3 objectForKey:*(*(&v25 + 1) + 8 * v13)];
          for (i = v24; i; --i)
          {
            [a4 appendString:@"    "];
          }

          [a4 appendFormat:@"-> when contained in %@\n", v14];
          [a1 _appendDescriptionOfNode:v19 toString:a4 atLevel:v24];
          a3 = v18;
          v11 = v17;
          v12 = v16;
          v10 = v22;
        }

        ++v13;
      }

      while (v13 != v10);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }
}

+ (id)recursiveDescription
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a1 _rootAppearancesNode];
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 keyEnumerator];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != @"_UIAppearanceKey")
        {
          [v4 appendFormat:@"%@\n", *(*(&v12 + 1) + 8 * v9)];
          [a1 _appendDescriptionOfNode:objc_msgSend(v3 toString:"objectForKey:" atLevel:{v10), v4, 0}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([v4 length])
  {
    return v4;
  }

  else
  {
    return @"No appearance invocations have been saved.";
  }
}

@end