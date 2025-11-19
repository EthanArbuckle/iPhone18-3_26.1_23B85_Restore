@interface _UIKeyWindowSceneStack
+ (void)moveWindowSceneWithoutPushing:(uint64_t)a3 fromStack:(uint64_t)a4 toStack:(uint64_t)a5 withStackEvaluationStrategy:(void *)a6 reason:;
- (_UIKeyWindowSceneStack)init;
- (id)_initWithName:(char)a3 affectsApplicationKeyWindow:;
- (id)_recordForWindowScene:(id *)a1;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)keyWindowSceneInStack;
- (id)keyWindowSceneInStackPassingTest:(uint64_t)a1;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_addWindowSceneIfNeeded:(uint64_t)a3 withEvaluationStrategy:(void *)a4 forReason:;
- (void)_evaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:(void *)a3 forReason:;
- (void)_sortAndEvaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:(void *)a3 forReason:;
- (void)migrateFromEvaluationStrategy:(uint64_t)a3 toEvaluationStrategy:(uint64_t)a4 windowScenesPassingTest:;
- (void)pushWindowScene:(uint64_t)a3 withEvaluationStrategy:(void *)a4 forReason:;
- (void)removeWindowScene:(void *)a3 forReason:;
@end

@implementation _UIKeyWindowSceneStack

- (id)keyWindowSceneInStack
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

- (_UIKeyWindowSceneStack)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIKeyWindowSceneStack.m" lineNumber:173 description:@"init is not allowed on _UIKeyWindowSceneStack"];

  return 0;
}

- (id)_initWithName:(char)a3 affectsApplicationKeyWindow:
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = _UIKeyWindowSceneStack;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 5, a2);
    *(v6 + 32) = v6[4] & 0xFE | a3;
    if (_UIApplicationMayVendViews())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 32) = v6[4] & 0xFD | v7;
  }

  return v6;
}

- (id)succinctDescription
{
  v2 = [(_UIKeyWindowSceneStack *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:@"name"];
  v5 = [v3 appendBool:*&self->_sceneStackFlags & 1 withName:@"affectsApplicationKeyWindow"];
  v6 = [v3 appendBool:(*&self->_sceneStackFlags >> 1) & 1 withName:@"hasViewServiceEntitlement"];
  v7 = [v3 appendUnsignedInteger:-[NSMapTable count](self->_recordsByWindowScene withName:{"count"), @"windowSceneRecords.count"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIKeyWindowSceneStack *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIKeyWindowSceneStack *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v6 = [v5 appendObject:self->_name withName:@"name"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___UIKeyWindowSceneStack_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v7 = v5;
  v12 = v7;
  v13 = self;
  v8 = [v7 modifyBody:v11];
  v9 = v7;

  return v7;
}

- (id)_recordForWindowScene:(id *)a1
{
  if (a1)
  {
    a1 = [a1[1] objectForKey:a2];
    v2 = vars8;
  }

  return a1;
}

+ (void)moveWindowSceneWithoutPushing:(uint64_t)a3 fromStack:(uint64_t)a4 toStack:(uint64_t)a5 withStackEvaluationStrategy:(void *)a6 reason:
{
  v44 = *MEMORY[0x1E69E9840];
  v23 = objc_opt_self();
  if (a3)
  {
    v11 = *(a3 + 40);
  }

  else
  {
    v11 = 0;
  }

  v25 = [v11 UTF8String];
  if (a4)
  {
    v12 = *(a4 + 40);
  }

  else
  {
    v12 = 0;
  }

  v24 = [v12 UTF8String];
  v13 = objc_opt_class();
  Name = class_getName(v13);
  v15 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(a2);
  v16 = _NSStringFromUIKeyWindowEvaluationStrategy(a5);
  v17 = [v16 UTF8String];

  v18 = [a6 UTF8String];
  v19 = *(__UILogGetCategoryCachedImpl("KeyWindow", &moveWindowSceneWithoutPushing_fromStack_toStack_withStackEvaluationStrategy_reason____s_category) + 8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448258;
    v27 = Name;
    v28 = 2050;
    v29 = a2;
    v30 = 2082;
    v31 = v25;
    v32 = 2050;
    v33 = a3;
    v34 = 2082;
    v35 = v24;
    v36 = 2050;
    v37 = a4;
    v38 = 2082;
    v39 = v15;
    v40 = 2082;
    v41 = v17;
    v42 = 2082;
    v43 = v18;
    _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "Moving scene: %{public}s: %{public}p; fromStack: [%{public}s] %{public}p; toStack: [%{public}s] %{public}p; scene identity: %{public}s; evaluation strategy: %{public}s; reason: %{public}s", buf, 0x5Cu);
  }

  v20 = [(_UIKeyWindowSceneStack *)a3 _recordForWindowScene:a2];
  if (([a2 _hasInvalidated] & 1) != 0 || !v20)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:sel_moveWindowSceneWithoutPushing_fromStack_toStack_withStackEvaluationStrategy_reason_ object:v23 file:@"_UIKeyWindowSceneStack.m" lineNumber:275 description:{@"Invalid stack move request for scene: %s: %p; fromStack: [%s] %p; toStack: [%s] %p; scene identity: %s; reason: %s", Name, a2, v25, a3, v24, a4, v15, v18}];
  }

  else
  {
    [(_UIKeyWindowSceneStack *)a3 removeWindowScene:a2 forReason:a6];
    [(_UIKeyWindowSceneStack *)a4 _addWindowSceneIfNeeded:a2 withEvaluationStrategy:a5 forReason:a6];
    v21 = [(_UIKeyWindowSceneStack *)a4 _recordForWindowScene:a2];
    v22 = v21;
    if (v21)
    {
      *(v21 + 24) = 0;
    }

    [(_UIKeyWindowSceneStack *)a4 _sortAndEvaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:a6 forReason:?];
  }
}

- (void)removeWindowScene:(void *)a3 forReason:
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [*(a1 + 8) objectForKey:a2];
    if (v6)
    {
      if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C640))
      {
        v7 = [*(a1 + 40) UTF8String];
        v8 = objc_opt_class();
        Name = class_getName(v8);
        v10 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(a2);
        v11 = [a3 UTF8String];
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C648);
        if (*CategoryCachedImpl)
        {
          v13 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 32) & 1;
            v15 = 136447746;
            v16 = v7;
            v17 = 2050;
            v18 = a1;
            v19 = 1026;
            v20 = v14;
            v21 = 2082;
            v22 = Name;
            v23 = 2050;
            v24 = a2;
            v25 = 2082;
            v26 = v10;
            v27 = 2082;
            v28 = v11;
            _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Stack[%{public}s] %{public}p: Remove window scene from stack affectingApplicationKeyWindow: %{public}d;  %{public}s: %{public}p: scene identity: %{public}s; reason: %{public}s", &v15, 0x44u);
          }
        }
      }

      [*(a1 + 8) removeObjectForKey:a2];
      [*(a1 + 16) removeObject:v6];
      [(_UIKeyWindowSceneStack *)a1 _sortAndEvaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:a3 forReason:?];
    }
  }
}

- (uint64_t)_addWindowSceneIfNeeded:(uint64_t)a3 withEvaluationStrategy:(void *)a4 forReason:
{
  v4 = a1;
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = [*(a1 + 8) objectForKey:a2];
    v9 = [a2 _hasInvalidated];
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if ((v10 & 1) == 0)
    {
      if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C620))
      {
        v28 = [*(v4 + 40) UTF8String];
        v19 = objc_opt_class();
        Name = class_getName(v19);
        v21 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(a2);
        v22 = _NSStringFromUIKeyWindowEvaluationStrategy(a3);
        v23 = [v22 UTF8String];

        v24 = [a4 UTF8String];
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C628);
        if (*CategoryCachedImpl)
        {
          v26 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = *(v4 + 32) & 1;
            *v29 = 136448002;
            *&v29[4] = v28;
            *&v29[12] = 2050;
            *&v29[14] = v4;
            v30 = 1026;
            v31 = v27;
            v32 = 2082;
            v33 = Name;
            v34 = 2050;
            v35 = a2;
            v36 = 2082;
            v37 = v21;
            v38 = 2082;
            v39 = v23;
            v40 = 2082;
            v41 = v24;
            _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Stack[%{public}s] %{public}p: Adding window scene to stack affectingApplicationKeyWindow: %{public}d; %{public}s: %{public}p; scene identity: %{public}s; for evaluation strategy: %{public}s; reason: %{public}s", v29, 0x4Eu);
          }
        }
      }

      if (!*(v4 + 8))
      {
        v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:1];
        v12 = *(v4 + 8);
        *(v4 + 8) = v11;
      }

      if (!*(v4 + 16))
      {
        v13 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:1];
        v14 = *(v4 + 16);
        *(v4 + 16) = v13;
      }

      v15 = [_UIWindowSceneStackRecord alloc];
      if (v15)
      {
        *v29 = v15;
        *&v29[8] = _UIWindowSceneStackRecord;
        v16 = objc_msgSendSuper2(v29, sel_init);
        v17 = v16;
        if (v16)
        {
          objc_storeStrong(v16 + 1, a2);
          v17[2] = a3;
          v17[3] = mach_absolute_time();
        }
      }

      else
      {
        v17 = 0;
      }

      [*(v4 + 8) setObject:v17 forKey:a2];
      [*(v4 + 16) addObject:v17];
    }

    v4 = v10 ^ 1u;
  }

  return v4;
}

- (void)_sortAndEvaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:(void *)a3 forReason:
{
  if (a1)
  {
    if ([*(a1 + 8) count] >= 2)
    {
      v6 = *(a1 + 16);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __99___UIKeyWindowSceneStack__sortAndEvaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene_forReason___block_invoke;
      v7[3] = &unk_1E70F39C0;
      v7[4] = a1;
      [v6 sortWithOptions:16 usingComparator:v7];
    }

    [(_UIKeyWindowSceneStack *)a1 _evaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:a2 forReason:a3];
  }
}

- (void)pushWindowScene:(uint64_t)a3 withEvaluationStrategy:(void *)a4 forReason:
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1 && ([a2 _hasInvalidated] & 1) == 0)
  {
    if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C630))
    {
      v11 = [*(a1 + 40) UTF8String];
      v12 = objc_opt_class();
      Name = class_getName(v12);
      v14 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(a2);
      v15 = _NSStringFromUIKeyWindowEvaluationStrategy(a3);
      v16 = [v15 UTF8String];

      v17 = [a4 UTF8String];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C638);
      if (*CategoryCachedImpl)
      {
        v19 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a1 + 32) & 1;
          v21 = 136448002;
          v22 = v11;
          v23 = 2050;
          v24 = a1;
          v25 = 1026;
          v26 = v20;
          v27 = 2082;
          v28 = Name;
          v29 = 2050;
          v30 = a2;
          v31 = 2082;
          v32 = v14;
          v33 = 2082;
          v34 = v16;
          v35 = 2082;
          v36 = v17;
          _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Stack[%{public}s] %{public}p: Pushing window scene on stack affectingApplicationKeyWindow: %{public}d; %{public}s: %{public}p; scene identity: %{public}s; for evaluation strategy: %{public}s; reason: %{public}s", &v21, 0x4Eu);
        }
      }
    }

    v8 = [(_UIKeyWindowSceneStack *)a1 _addWindowSceneIfNeeded:a2 withEvaluationStrategy:a3 forReason:a4];
    v9 = [*(a1 + 8) objectForKey:a2];
    v10 = v9;
    if ((v8 & 1) == 0)
    {
      if (v9)
      {
        *(v9 + 16) = a3;
        *(v9 + 24) = mach_absolute_time();
      }

      else
      {
        mach_absolute_time();
      }

      [*(a1 + 16) removeObject:v10];
      [*(a1 + 16) addObject:v10];
    }

    [(_UIKeyWindowSceneStack *)a1 _sortAndEvaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:a4 forReason:?];
  }
}

- (void)migrateFromEvaluationStrategy:(uint64_t)a3 toEvaluationStrategy:(uint64_t)a4 windowScenesPassingTest:
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = [*(a1 + 40) UTF8String];
    v9 = _NSStringFromUIKeyWindowEvaluationStrategy(a2);
    v10 = [v9 UTF8String];

    v11 = _NSStringFromUIKeyWindowEvaluationStrategy(a3);
    v12 = [v11 UTF8String];

    if ([*(a1 + 8) count])
    {
      v13 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C658) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v30 = v8;
        v31 = 2050;
        v32 = a1;
        v33 = 2082;
        v34 = v10;
        v35 = 2082;
        v36 = v12;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Stack[%{public}s] %{public}p: Migrate scenes from %{public}s -> %{public}s", buf, 0x2Au);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = NSAllMapTableValues(*(a1 + 8));
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          v18 = 0;
          do
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v24 + 1) + 8 * v18);
            if (!a4)
            {
              if (!v19)
              {
                goto LABEL_20;
              }

LABEL_19:
              *(v19 + 16) = a3;
              goto LABEL_20;
            }

            if (v19)
            {
              v20 = *(v19 + 8);
            }

            else
            {
              v20 = 0;
            }

            if ((*(a4 + 16))(a4, v20))
            {
              v21 = v19 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              goto LABEL_19;
            }

LABEL_20:
            ++v18;
          }

          while (v16 != v18);
          v22 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
          v16 = v22;
        }

        while (v22);
      }
    }

    else
    {
      v23 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C650) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v30 = v8;
        v31 = 2050;
        v32 = a1;
        v33 = 2082;
        v34 = v10;
        v35 = 2082;
        v36 = v12;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "Stack[%{public}s] %{public}p: Taking no further action for migration from %{public}s -> %{public}s as there are no scenes", buf, 0x2Au);
      }
    }
  }
}

- (void)_evaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:(void *)a3 forReason:
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [*(a1 + 40) UTF8String];
    v7 = [a3 UTF8String];
    if ([*(a1 + 8) count])
    {
      if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C670))
      {
        v15 = *(a1 + 24);
        if (v15)
        {
          v16 = objc_opt_class();
          Name = class_getName(v16);
          v15 = *(a1 + 24);
        }

        else
        {
          Name = "(nil)";
        }

        v21 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(v15);
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C678);
        if (*CategoryCachedImpl)
        {
          v23 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 32) & 1;
            v25 = *(a1 + 24);
            *buf = 136447746;
            v39 = v6;
            v40 = 2050;
            v41 = a1;
            v42 = 1026;
            v43 = v24;
            v44 = 2082;
            v45 = Name;
            v46 = 2050;
            v47 = v25;
            v48 = 2082;
            v49 = v21;
            v50 = 2082;
            v51 = v7;
            _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Stack[%{public}s] %{public}p: Evaluating key window scene in stack affectingApplicationKeyWindow: %{public}d; current: %{public}s: %{public}p; current scene identity: %{public}s; reason: %{public}s", buf, 0x44u);
          }
        }
      }

      if (a2)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(a1 + 24);
      }

      v12 = v8;
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__3;
      v36 = __Block_byref_object_dispose__3;
      v37 = 0;
      v13 = *(a1 + 16);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __92___UIKeyWindowSceneStack__evaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene_forReason___block_invoke;
      v31[3] = &unk_1E70F39E8;
      v31[4] = &v32;
      [v13 enumerateObjectsWithOptions:2 usingBlock:v31];
      v14 = v33[5];
      if (!v14)
      {
        v14 = v12;
      }

      *(a1 + 24) = v14;
      if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C680))
      {
        v18 = *(a1 + 24);
        if (v18)
        {
          v19 = objc_opt_class();
          v20 = class_getName(v19);
          v18 = *(a1 + 24);
        }

        else
        {
          v20 = "(nil)";
        }

        v26 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(v18);
        v27 = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C688);
        if (*v27)
        {
          v28 = *(v27 + 8);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = *(a1 + 32) & 1;
            v30 = *(a1 + 24);
            *buf = 136447746;
            v39 = v6;
            v40 = 2050;
            v41 = a1;
            v42 = 1026;
            v43 = v29;
            v44 = 2082;
            v45 = v20;
            v46 = 2050;
            v47 = v30;
            v48 = 2082;
            v49 = v26;
            v50 = 2082;
            v51 = v7;
            _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Stack[%{public}s] %{public}p: Evaluated key window scene in stack affectingApplicationKeyWindow: %{public}d; new: %{public}s: %{public}p; new scene identity: %{public}s; reason: %{public}s", buf, 0x44u);
          }
        }
      }

      _Block_object_dispose(&v32, 8);
    }

    else
    {
      *(a1 + 24) = 0;
      if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C660))
      {
        v9 = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49C668);
        if (*v9)
        {
          v10 = *(v9 + 8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 32) & 1;
            *buf = 136446978;
            v39 = v6;
            v40 = 2050;
            v41 = a1;
            v42 = 1026;
            v43 = v11;
            v44 = 2082;
            v45 = v7;
            _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Stack[%{public}s] %{public}p: Evaluated key window scene to nil due to zero records in stack affectingApplicationKeyWindow: %{public}d; reason: %{public}s", buf, 0x26u);
          }
        }
      }
    }
  }
}

- (id)keyWindowSceneInStackPassingTest:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_keyWindowSceneInStackPassingTest_ object:a1 file:@"_UIKeyWindowSceneStack.m" lineNumber:597 description:{@"Invalid parameter not satisfying: %@", @"test"}];
    }

    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__3;
    v13 = __Block_byref_object_dispose__3;
    v14 = 0;
    v4 = *(a1 + 16);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59___UIKeyWindowSceneStack_keyWindowSceneInStackPassingTest___block_invoke;
    v8[3] = &unk_1E70F3A10;
    v8[4] = a2;
    v8[5] = &v9;
    [v4 enumerateObjectsWithOptions:2 usingBlock:v8];
    v5 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end