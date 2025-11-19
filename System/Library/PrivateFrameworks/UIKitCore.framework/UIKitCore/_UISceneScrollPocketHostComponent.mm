@interface _UISceneScrollPocketHostComponent
+ (void)bsAssert:(void *)a3 message:;
- (NSString)debugDescription;
- (id)makeRegistrationInteraction;
- (id)succinctDescription;
- (int64_t)bridgedLumaUserInterfaceStyleFor:(unint64_t)a3;
- (uint64_t)_pocketElements;
- (void)_scrollPocketRegistrationInteractionDidInvalidatePosition:(id)a3;
- (void)_typedStorage;
- (void)appendDescriptionToStream:(id)a3;
- (void)bridgedSetLumaUserInterfaceStyle:(int64_t)a3 forEdge:(unint64_t)a4;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setScene:(id)a3;
- (void)updatePocketSettings;
@end

@implementation _UISceneScrollPocketHostComponent

- (void)updatePocketSettings
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [a1[3] objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          if ([v8 hasValidFrame])
          {
            v9 = [v8 copy];
            [v2 addObject:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57___UISceneScrollPocketHostComponent_updatePocketSettings__block_invoke;
    v13[3] = &unk_1E712BC68;
    v14 = v2;
    v10 = v2;
    v11 = v13;
    v12 = [a1 hostScene];
    [v12 updateSettings:v11];
  }
}

- (int64_t)bridgedLumaUserInterfaceStyleFor:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1891D86FC(a3);

  return v5;
}

- (void)bridgedSetLumaUserInterfaceStyle:(int64_t)a3 forEdge:(unint64_t)a4
{
  v6 = self;
  sub_1891D8804(a3, a4);
}

- (id)makeRegistrationInteraction
{
  v3 = objc_allocWithZone(_UIScrollPocketRegistrationInteraction);
  v4 = self;
  v5 = [v3 init];
  *&v5[OBJC_IVAR____UIScrollPocketRegistrationInteraction_receiver + 8] = &off_1EFAF3B28;
  swift_unknownObjectWeakAssign();

  return v5;
}

- (void)setScene:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UISceneScrollPocketHostComponent;
  [(FBSSceneComponent *)&v9 setScene:a3];
  v4 = [(_UISceneScrollPocketHostComponent *)self makeRegistrationInteraction];
  [v4 setDelegate:self];
  registrationInteraction = self->_registrationInteraction;
  self->_registrationInteraction = v4;
  v6 = v4;

  v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  pocketElements = self->_pocketElements;
  self->_pocketElements = v7;
}

- (void)_typedStorage
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      v4 = objc_alloc_init(_UITypedStorage);
      v5 = v2[5];
      v2[5] = v4;

      v3 = v2[5];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

+ (void)bsAssert:(void *)a3 message:
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = objc_opt_self();
  if ((a2 & 1) == 0)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(sel_bsAssert_message_);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v12 = v7;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      v16 = v5;
      v17 = 2114;
      v18 = @"_UISceneScrollPocketHostComponent.m";
      v19 = 1024;
      v20 = 70;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A3F0D48);
  }
}

- (void)_scrollPocketRegistrationInteractionDidInvalidatePosition:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMapTable *)self->_pocketElements keyEnumerator:a3];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_pocketElements objectForKey:v9];
        v11 = [(_UISceneScrollPocketHostComponent *)self registrationInteraction];
        v12 = [v11 view];
        [v10 updateWithElement:v9 coordinateSpace:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(_UISceneScrollPocketHostComponent *)&self->super.super.isa updatePocketSettings];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v9 = [a4 settingsDiff];
  if ([v9 containsProperty:sel_topScrollPocketLuma])
  {
    v5 = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
    -[_UISceneScrollPocketHostComponent bridgedSetLumaUserInterfaceStyle:forEdge:](self, "bridgedSetLumaUserInterfaceStyle:forEdge:", [v5 topScrollPocketLuma], 1);
  }

  if ([v9 containsProperty:sel_leftScrollPocketLuma])
  {
    v6 = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
    -[_UISceneScrollPocketHostComponent bridgedSetLumaUserInterfaceStyle:forEdge:](self, "bridgedSetLumaUserInterfaceStyle:forEdge:", [v6 leftScrollPocketLuma], 2);
  }

  if ([v9 containsProperty:sel_bottomScrollPocketLuma])
  {
    v7 = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
    -[_UISceneScrollPocketHostComponent bridgedSetLumaUserInterfaceStyle:forEdge:](self, "bridgedSetLumaUserInterfaceStyle:forEdge:", [v7 bottomScrollPocketLuma], 4);
  }

  if ([v9 containsProperty:sel_rightScrollPocketLuma])
  {
    v8 = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
    -[_UISceneScrollPocketHostComponent bridgedSetLumaUserInterfaceStyle:forEdge:](self, "bridgedSetLumaUserInterfaceStyle:forEdge:", [v8 rightScrollPocketLuma], 8);
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___UISceneScrollPocketHostComponent_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [v5 appendProem:self block:v11];
  v6 = [v5 style];
  v7 = [v6 verbosity];

  if (v7 != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63___UISceneScrollPocketHostComponent_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (uint64_t)_pocketElements
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

@end