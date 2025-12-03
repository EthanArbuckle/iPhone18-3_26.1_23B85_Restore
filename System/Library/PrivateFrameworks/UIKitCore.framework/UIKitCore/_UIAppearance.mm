@interface _UIAppearance
+ (BOOL)_hasCustomizationsForClass:(Class)class guideClass:(Class)guideClass;
+ (id)_appearanceForClass:(Class)class withContainerList:(id)list;
+ (id)_appearanceNodeForClassInfo:(id)info containerList:(id)list;
+ (id)_appearanceWithClassInfo:(id)info containerList:(id)list;
+ (id)_newAppearanceWithClassInfo:(id)info containerList:(id)list;
+ (id)_pendingRecordInvocationsForSource:(id)source;
+ (id)_recorderForSource:(id)source;
+ (id)_recordersExcludingSource:(id)source withWindow:(id)window;
+ (id)_rootAppearancesNode;
+ (id)appearancesAtNode:(id)node withObject:(id)object;
+ (id)recursiveDescription;
+ (void)_addWindow:(id)window forSource:(id)source;
+ (void)_appendDescriptionOfNode:(id)node toString:(id)string atLevel:(unint64_t)level;
+ (void)_applyInvocationsTo:(id)to window:(id)window matchingSelector:(SEL)selector onlySystemInvocations:(BOOL)invocations;
+ (void)_removeInvocationsForSource:(id)source;
+ (void)_removeWindow:(id)window forSource:(id)source;
- (SEL)_beginListeningForAppearanceEventsForSetter:(SEL)setter;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_appendDescriptionToString:(id)string atLevel:(unint64_t)level;
- (void)_handleGetterInvocation:(id)invocation;
- (void)_handleSetterInvocation:(id)invocation;
- (void)_invalidateAppearanceInWindow:(id)window;
- (void)_removeInvocationsForSource:(id)source;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
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

+ (void)_addWindow:(id)window forSource:(id)source
{
  v6 = __appearanceSourceWindows;
  if (!__appearanceSourceWindows)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    __appearanceSourceWindows = v6;
  }

  array = [v6 objectForKey:source];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [__appearanceSourceWindows setObject:array forKey:source];
  }

  [array addObject:window];
}

+ (void)_removeWindow:(id)window forSource:(id)source
{
  v5 = [__appearanceSourceWindows objectForKey:source];

  [v5 removeObject:window];
}

+ (id)_recorderForSource:(id)source
{
  if (qword_1ED49E618 != -1)
  {
    dispatch_once(&qword_1ED49E618, &__block_literal_global_458);
  }

  if (byte_1ED49E5DB != 1)
  {
    return 0;
  }

  if (!source)
  {
    source = [MEMORY[0x1E695DFB0] null];
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
  v6[4] = source;
  v6[5] = &v7;
  dispatch_sync(qword_1ED49E5F0, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

+ (id)_pendingRecordInvocationsForSource:(id)source
{
  sourceCopy = source;
  if (!source)
  {
    sourceCopy = [MEMORY[0x1E695DFB0] null];
  }

  v4 = __pendingRecordInvocations;
  if (!__pendingRecordInvocations)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    __pendingRecordInvocations = v4;
  }

  v5 = [v4 objectForKey:sourceCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [__pendingRecordInvocations setObject:v5 forKey:sourceCopy];
  }

  return v5;
}

+ (id)_recordersExcludingSource:(id)source withWindow:(id)window
{
  array = [MEMORY[0x1E695DF70] array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54___UIAppearance__recordersExcludingSource_withWindow___block_invoke;
  v9[3] = &unk_1E710BAD0;
  v9[4] = source;
  v9[5] = self;
  v9[6] = window;
  v9[7] = array;
  [__pendingRecordInvocations enumerateKeysAndObjectsUsingBlock:v9];
  return array;
}

+ (id)appearancesAtNode:(id)node withObject:(id)object
{
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = [node objectForKey:@"_UIAppearanceKey"];
  if ((dyld_program_sdk_at_least() & 1) == 0 && v6)
  {
    v56[0] = v6;
    v7 = v56;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  if ([objc_msgSend(node objectForKey:{@"_UIAppearanceHasExtendedAppearancesKey", "BOOLValue"}])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(node, "count")}];
    if (dyld_program_sdk_at_least())
    {
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v46 = __46___UIAppearance_appearancesAtNode_withObject___block_invoke;
      v47 = &unk_1E710BAF8;
      nodeCopy = node;
      objectCopy = object;
      v50 = v6;
      __46___UIAppearance_appearancesAtNode_withObject___block_invoke(v45, @"_UIAppearanceKey");
      array = [MEMORY[0x1E695DF70] array];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v9 = [node countByEnumeratingWithState:&v41 objects:v55 count:16];
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
              objc_enumerationMutation(node);
            }

            v13 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [array addObject:v13];
            }
          }

          v10 = [node countByEnumeratingWithState:&v41 objects:v55 count:16];
        }

        while (v10);
      }

      [array sortUsingSelector:sel__compare_];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = [array countByEnumeratingWithState:&v37 objects:v54 count:16];
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
              objc_enumerationMutation(array);
            }

            v46(v45, *(*(&v37 + 1) + 8 * j));
          }

          v15 = [array countByEnumeratingWithState:&v37 objects:v54 count:16];
        }

        while (v15);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = [node countByEnumeratingWithState:&v33 objects:v53 count:16];
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
              objc_enumerationMutation(node);
            }

            v22 = *(*(&v33 + 1) + 8 * k);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v22 isEqualToString:@"_UIAppearanceKey"] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"_UIAppearanceHasExtendedAppearancesKey") & 1) == 0)
            {
              v46(v45, v22);
            }
          }

          v19 = [node countByEnumeratingWithState:&v33 objects:v53 count:16];
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
      v24 = [node countByEnumeratingWithState:&v29 objects:v52 count:16];
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
              objc_enumerationMutation(node);
            }

            v28 = [node objectForKey:*(*(&v29 + 1) + 8 * m)];
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v28 _isValidAppearanceForCustomizableObject:object])
            {
              [v6 addObject:v28];
            }
          }

          v25 = [node countByEnumeratingWithState:&v29 objects:v52 count:16];
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

+ (void)_removeInvocationsForSource:(id)source
{
  _rootAppearancesNode = [objc_opt_class() _rootAppearancesNode];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___UIAppearance__removeInvocationsForSource___block_invoke;
  v5[3] = &unk_1E710BB20;
  v5[4] = source;
  _enumerateAppearancesHelper(_rootAppearancesNode, v5);
}

- (void)_removeInvocationsForSource:(id)source
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
        if ([-[NSMapTable objectForKey:](self->_invocationSources objectForKey:{v7), "isEqual:", source}])
        {
          [v8 addIndex:i];
          [(NSMapTable *)self->_invocationSources removeObjectForKey:v7];
        }
      }
    }

    [(NSMutableArray *)self->_appearanceInvocations removeObjectsAtIndexes:v8];
  }
}

+ (void)_applyInvocationsTo:(id)to window:(id)window matchingSelector:(SEL)selector onlySystemInvocations:(BOOL)invocations
{
  invocationsCopy = invocations;
  v70 = *MEMORY[0x1E69E9840];
  v11 = +[_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:withGuideClass:](_UIAppearanceCustomizableClassInfo, "_customizableClassInfoForViewClass:withGuideClass:", objc_opt_class(), [to _appearanceGuideClass]);
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
    selfCopy = self;
    toCopy = to;
    windowCopy = window;
    v64 = v14;
    v31 = v14;
    v32 = v13;
    v65 = v13;
    selectorCopy = selector;
    __83___UIAppearance__applyInvocationsTo_window_matchingSelector_onlySystemInvocations___block_invoke(v58, v12, invocationsCopy ^ 1);
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (objc_opt_respondsToSelector())
    {
      _appearanceContainer = [to _appearanceContainer];
    }

    else
    {
      _appearanceContainer = 0;
    }

    v41 = v15;
    object = to;
    if (objc_opt_respondsToSelector())
    {
      obj = v12;
      do
      {
        v35 = _appearanceContainer;
        v17 = +[_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:withGuideClass:](_UIAppearanceCustomizableClassInfo, "_customizableClassInfoForViewClass:withGuideClass:", objc_opt_class(), [_appearanceContainer _appearanceGuideClass]);
        _customizableViewClass = [v17 _customizableViewClass];
        if (invocationsCopy)
        {
          invocationsCopy = 1;
        }

        else
        {
          invocationsCopy = [_customizableViewClass _preventsAppearanceProxyCustomization];
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
                                  v59(v58, v29, invocationsCopy ^ 1);
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
                        v59(v58, v30, invocationsCopy ^ 1);
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

        _appearanceContainer = [v35 _appearanceContainer];
      }

      while ((objc_opt_respondsToSelector() & 1) != 0);
    }

    applyInvocationsToTarget(v31, object);
    if ((invocationsCopy & 1) == 0)
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

+ (id)_appearanceForClass:(Class)class withContainerList:(id)list
{
  v6 = [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:class withGuideClass:0];

  return [self _appearanceWithClassInfo:v6 containerList:list];
}

+ (id)_appearanceNodeForClassInfo:(id)info containerList:(id)list
{
  v16 = *MEMORY[0x1E69E9840];
  IfNecessary = appearancesNodeInNodeForClassCreateIfNecessary([self _rootAppearancesNode], info);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [list countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(list);
      }

      if (!IfNecessary)
      {
        break;
      }

      IfNecessary = appearancesNodeInNodeForClassCreateIfNecessary(IfNecessary, [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:*(*(&v11 + 1) + 8 * v9++) withGuideClass:0]);
      if (v7 == v9)
      {
        v7 = [list countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (id)_newAppearanceWithClassInfo:(id)info containerList:(id)list
{
  v6 = objc_alloc_init(self);
  v6[4] = info;
  v6[1] = [list copy];

  return v6;
}

+ (id)_appearanceWithClassInfo:(id)info containerList:(id)list
{
  v7 = [self _appearanceNodeForClassInfo:? containerList:?];
  v8 = [v7 objectForKey:@"_UIAppearanceKey"];
  if (!v8)
  {
    v8 = [self _newAppearanceWithClassInfo:info containerList:list];
    [v7 setObject:v8 forKey:@"_UIAppearanceKey"];
  }

  return v8;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  _customizableViewClass = [(_UIAppearanceCustomizableClassInfo *)self->_customizableClassInfo _customizableViewClass];

  return [(objc_class *)_customizableViewClass instanceMethodSignatureForSelector:selector];
}

- (SEL)_beginListeningForAppearanceEventsForSetter:(SEL)setter
{
  setterCopy = setter;
  v6 = NSStringFromSelector(setter);
  v7 = UIAppearancePrefixedSelectorForSelectorString(v6);
  _customizableViewClass = [(_UIAppearanceCustomizableClassInfo *)self->_customizableClassInfo _customizableViewClass];
  v9 = _classWithImplementationOfSelector(_customizableViewClass, v7, 0);
  v10 = _classWithImplementationOfSelector(_customizableViewClass, setterCopy, 1);
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

      setterCopy = NSSelectorFromString(v12);
      if (_classWithImplementationOfSelector(_customizableViewClass, setterCopy, 1) != v9)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }
    }

    else
    {
      [(objc_class *)v11 _installAppearanceSwizzlesForSetter:v6];
    }
  }

  return setterCopy;
}

- (void)_handleSetterInvocation:(id)invocation
{
  v26 = *MEMORY[0x1E69E9840];
  selector = [invocation selector];
  v6 = NSStringFromSelector(selector);
  _customizableViewClass = [(_UIAppearanceCustomizableClassInfo *)self->_customizableClassInfo _customizableViewClass];
  if (!self->_appearanceInvocations)
  {
    self->_appearanceInvocations = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v8 = UIAppearancePrefixedSelectorForSelectorString(v6);
  [invocation setSelector:{-[_UIAppearance _beginListeningForAppearanceEventsForSetter:](self, "_beginListeningForAppearanceEventsForSetter:", selector)}];
  [invocation setTarget:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  [invocation retainArguments];
  [(NSMutableArray *)self->_appearanceInvocations addObject:invocation];
  if (__isSettingUpSystemAppearanceProxyModifications == 1)
  {
    objc_setAssociatedObject(invocation, &_MergedGlobals_1142, [MEMORY[0x1E696AD98] numberWithBool:1], 3);
  }

  _currentAppearanceSource = [objc_opt_class() _currentAppearanceSource];
  if ([(_UIAppearance *)self _isRecordingInvocations])
  {
    v10 = [objc_opt_class() _pendingRecordInvocationsForSource:_currentAppearanceSource];
    if ((-[objc_class instancesRespondToSelector:](_customizableViewClass, "instancesRespondToSelector:", [invocation selector]) & 1) == 0)
    {
      v6 = NSStringFromSelector(v8);
    }

    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v6, @"_UIAppearanceWrapperKeySelector", invocation, @"_UIAppearanceWrapperKeyInvocation", _customizableViewClass, @"_UIAppearanceWrapperKeyClass", 0}];
    v12 = v11;
    containerList = self->_containerList;
    if (containerList)
    {
      [v11 setObject:containerList forKey:@"_UIAppearanceWrapperKeyContainerClasses"];
    }

    _traitCollection = [(_UIAppearance *)self _traitCollection];
    if (_traitCollection)
    {
      [v12 setObject:_traitCollection forKey:@"_UIAppearanceWrapperKeyTraitCollection"];
    }

    [v10 addObject:v12];
  }

  if (_currentAppearanceSource)
  {
    invocationSources = self->_invocationSources;
    if (!invocationSources)
    {
      invocationSources = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:0];
      self->_invocationSources = invocationSources;
    }

    [(NSMapTable *)invocationSources setObject:_currentAppearanceSource forKey:invocation];
  }

  if (byte_1ED49E5D9 == 1)
  {
    v16 = [objc_opt_class() _windowsForSource:_currentAppearanceSource];
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

- (void)_handleGetterInvocation:(id)invocation
{
  v25 = *MEMORY[0x1E69E9840];
  methodSignature = [invocation methodSignature];
  v6 = NSStringFromSelector([invocation selector]);
  numberOfArguments = [methodSignature numberOfArguments];
  if ([(NSString *)v6 characterAtIndex:0]== 95)
  {
    v6 = [(NSString *)v6 substringFromIndex:1];
  }

  if (numberOfArguments < 3)
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
  v17[8] = numberOfArguments;
  v17[4] = v12;
  v17[5] = invocation;
  v17[6] = methodSignature;
  [(NSMutableArray *)appearanceInvocations enumerateObjectsWithOptions:2 usingBlock:v17];
  methodReturnLength = [methodSignature methodReturnLength];
  v15 = methodReturnLength;
  memset(v24, 0, sizeof(v24));
  if (methodReturnLength < 0x21)
  {
    v16 = v24;
  }

  else
  {
    v16 = malloc_type_calloc(methodReturnLength, 1uLL, 0x100004077774924uLL);
  }

  [v19[5] getArgument:v16 atIndex:2];
  [invocation setReturnValue:v16];
  if (v15 >= 0x21)
  {
    free(v16);
  }

  _Block_object_dispose(&v18, 8);
}

- (void)forwardInvocation:(id)invocation
{
  if ([objc_msgSend(invocation "methodSignature")])
  {

    [(_UIAppearance *)self _handleGetterInvocation:invocation];
  }

  else
  {

    [(_UIAppearance *)self _handleSetterInvocation:invocation];
  }
}

- (void)_invalidateAppearanceInWindow:(id)window
{
  _customizableViewClass = [(_UIAppearanceCustomizableClassInfo *)self->_customizableClassInfo _customizableViewClass];

  [window _invalidateAppearanceForSubviewsOfClass:_customizableViewClass];
}

+ (BOOL)_hasCustomizationsForClass:(Class)class guideClass:(Class)guideClass
{
  _hasAnyCustomizations = [self _hasAnyCustomizations];
  if (_hasAnyCustomizations)
  {
    _rootAppearancesNode = [objc_opt_class() _rootAppearancesNode];
    LOBYTE(_hasAnyCustomizations) = existingAppearancesNodeInNodeForClass(_rootAppearancesNode, [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:class withGuideClass:guideClass]) != 0;
  }

  return _hasAnyCustomizations;
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

- (void)_appendDescriptionToString:(id)string atLevel:(unint64_t)level
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
        v7 = level + 1;
        if (level != -1)
        {
          do
          {
            [string appendString:@"    "];
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
          [string appendFormat:@"%@ = %@", v26, v25];
        }

        else
        {
          [string appendFormat:@"%@ = %ld", v26, v25];
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
              [string appendString:@" for "];
              v14 = [objc_msgSend(objc_msgSend(v24 substringFromIndex:{3), "substringToIndex:", 1), "lowercaseString"}];
              v15 = [v14 stringByAppendingString:{objc_msgSend(v24, "substringFromIndex:", 4)}];
              v24 = v15;
            }

            else
            {
              [string appendString:{@", "}];
              v15 = v24;
            }

            [string appendFormat:@"%@ = %ld", v15, v23];
          }
        }

        v16 = [(NSMapTable *)self->_invocationSources objectForKey:v6];
        v17 = @" pid";
        if (!v16)
        {
          v17 = &stru_1EFB14550;
        }

        [string appendFormat:@" (source%@ = %@)\n", v17, v16];
      }

      v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }
}

+ (void)_appendDescriptionOfNode:(id)node toString:(id)string atLevel:(unint64_t)level
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nodeCopy = node;
    node = 0;
  }

  else
  {
    nodeCopy = [node objectForKey:@"_UIAppearanceKey"];
  }

  [nodeCopy _appendDescriptionToString:string atLevel:level];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [node keyEnumerator];
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = @"_UIAppearanceKey";
    v12 = *v26;
    v24 = level + 1;
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
          nodeCopy2 = node;
          v19 = [node objectForKey:*(*(&v25 + 1) + 8 * v13)];
          for (i = v24; i; --i)
          {
            [string appendString:@"    "];
          }

          [string appendFormat:@"-> when contained in %@\n", v14];
          [self _appendDescriptionOfNode:v19 toString:string atLevel:v24];
          node = nodeCopy2;
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
  _rootAppearancesNode = [self _rootAppearancesNode];
  string = [MEMORY[0x1E696AD60] string];
  keyEnumerator = [_rootAppearancesNode keyEnumerator];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != @"_UIAppearanceKey")
        {
          [string appendFormat:@"%@\n", *(*(&v12 + 1) + 8 * v9)];
          [self _appendDescriptionOfNode:objc_msgSend(_rootAppearancesNode toString:"objectForKey:" atLevel:{v10), string, 0}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([string length])
  {
    return string;
  }

  else
  {
    return @"No appearance invocations have been saved.";
  }
}

@end