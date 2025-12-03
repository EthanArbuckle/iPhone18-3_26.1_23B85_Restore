@interface _UISceneScrollPocketHostComponent
+ (void)bsAssert:(void *)assert message:;
- (NSString)debugDescription;
- (id)makeRegistrationInteraction;
- (id)succinctDescription;
- (int64_t)bridgedLumaUserInterfaceStyleFor:(unint64_t)for;
- (uint64_t)_pocketElements;
- (void)_scrollPocketRegistrationInteractionDidInvalidatePosition:(id)position;
- (void)_typedStorage;
- (void)appendDescriptionToStream:(id)stream;
- (void)bridgedSetLumaUserInterfaceStyle:(int64_t)style forEdge:(unint64_t)edge;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)setScene:(id)scene;
- (void)updatePocketSettings;
@end

@implementation _UISceneScrollPocketHostComponent

- (void)updatePocketSettings
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    objectEnumerator = [self[3] objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          if ([v8 hasValidFrame])
          {
            v9 = [v8 copy];
            [v2 addObject:v9];
          }
        }

        v5 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    hostScene = [self hostScene];
    [hostScene updateSettings:v11];
  }
}

- (int64_t)bridgedLumaUserInterfaceStyleFor:(unint64_t)for
{
  selfCopy = self;
  v5 = sub_1891D86FC(for);

  return v5;
}

- (void)bridgedSetLumaUserInterfaceStyle:(int64_t)style forEdge:(unint64_t)edge
{
  selfCopy = self;
  sub_1891D8804(style, edge);
}

- (id)makeRegistrationInteraction
{
  v3 = objc_allocWithZone(_UIScrollPocketRegistrationInteraction);
  selfCopy = self;
  v5 = [v3 init];
  *&v5[OBJC_IVAR____UIScrollPocketRegistrationInteraction_receiver + 8] = &off_1EFAF3B28;
  swift_unknownObjectWeakAssign();

  return v5;
}

- (void)setScene:(id)scene
{
  v9.receiver = self;
  v9.super_class = _UISceneScrollPocketHostComponent;
  [(FBSSceneComponent *)&v9 setScene:scene];
  makeRegistrationInteraction = [(_UISceneScrollPocketHostComponent *)self makeRegistrationInteraction];
  [makeRegistrationInteraction setDelegate:self];
  registrationInteraction = self->_registrationInteraction;
  self->_registrationInteraction = makeRegistrationInteraction;
  v6 = makeRegistrationInteraction;

  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  pocketElements = self->_pocketElements;
  self->_pocketElements = strongToStrongObjectsMapTable;
}

- (void)_typedStorage
{
  if (self)
  {
    selfCopy = self;
    v3 = self[5];
    if (!v3)
    {
      v4 = objc_alloc_init(_UITypedStorage);
      v5 = selfCopy[5];
      selfCopy[5] = v4;

      v3 = selfCopy[5];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

+ (void)bsAssert:(void *)assert message:
{
  v23 = *MEMORY[0x1E69E9840];
  assertCopy = assert;
  v4 = objc_opt_self();
  if ((a2 & 1) == 0)
  {
    v5 = v4;
    assertCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", assertCopy];
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
      v22 = assertCopy;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [assertCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A3F0D48);
  }
}

- (void)_scrollPocketRegistrationInteractionDidInvalidatePosition:(id)position
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMapTable *)self->_pocketElements keyEnumerator:position];
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
        registrationInteraction = [(_UISceneScrollPocketHostComponent *)self registrationInteraction];
        view = [registrationInteraction view];
        [v10 updateWithElement:v9 coordinateSpace:view];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(_UISceneScrollPocketHostComponent *)&self->super.super.isa updatePocketSettings];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsDiff = [settings settingsDiff];
  if ([settingsDiff containsProperty:sel_topScrollPocketLuma])
  {
    clientSettings = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
    -[_UISceneScrollPocketHostComponent bridgedSetLumaUserInterfaceStyle:forEdge:](self, "bridgedSetLumaUserInterfaceStyle:forEdge:", [clientSettings topScrollPocketLuma], 1);
  }

  if ([settingsDiff containsProperty:sel_leftScrollPocketLuma])
  {
    clientSettings2 = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
    -[_UISceneScrollPocketHostComponent bridgedSetLumaUserInterfaceStyle:forEdge:](self, "bridgedSetLumaUserInterfaceStyle:forEdge:", [clientSettings2 leftScrollPocketLuma], 2);
  }

  if ([settingsDiff containsProperty:sel_bottomScrollPocketLuma])
  {
    clientSettings3 = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
    -[_UISceneScrollPocketHostComponent bridgedSetLumaUserInterfaceStyle:forEdge:](self, "bridgedSetLumaUserInterfaceStyle:forEdge:", [clientSettings3 bottomScrollPocketLuma], 4);
  }

  if ([settingsDiff containsProperty:sel_rightScrollPocketLuma])
  {
    clientSettings4 = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
    -[_UISceneScrollPocketHostComponent bridgedSetLumaUserInterfaceStyle:forEdge:](self, "bridgedSetLumaUserInterfaceStyle:forEdge:", [clientSettings4 rightScrollPocketLuma], 8);
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___UISceneScrollPocketHostComponent_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v12 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v11];
  style = [v5 style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63___UISceneScrollPocketHostComponent_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy2 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

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