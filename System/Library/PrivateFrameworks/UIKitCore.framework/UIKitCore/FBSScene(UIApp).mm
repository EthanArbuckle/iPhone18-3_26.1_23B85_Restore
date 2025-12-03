@interface FBSScene(UIApp)
- (BOOL)isPersistable;
- (BOOL)uiAlwaysSupportsAllInterfaceOrientations;
- (id)uiClientSettings;
- (id)uiSettings;
- (uint64_t)uiCanReceiveDeviceOrientationEvents;
- (void)updateUIClientSettingsWithBlock:()UIApp;
- (void)updateUIClientSettingsWithTransitionBlock:()UIApp;
@end

@implementation FBSScene(UIApp)

- (uint64_t)uiCanReceiveDeviceOrientationEvents
{
  settings = [self settings];
  if ([settings isUISubclass])
  {
    deviceOrientationEventsEnabled = [settings deviceOrientationEventsEnabled];
  }

  else
  {
    deviceOrientationEventsEnabled = 1;
  }

  return deviceOrientationEventsEnabled;
}

- (id)uiSettings
{
  settings = [self settings];
  if (([settings isUISubclass] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FBSScene+UIApp.m" lineNumber:32 description:{@"settings is of an unexpected class : %@", settings}];
  }

  return settings;
}

- (id)uiClientSettings
{
  clientSettings = [self clientSettings];
  if (([clientSettings isUISubclass] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FBSScene+UIApp.m" lineNumber:38 description:{@"clientSettings is of an unexpected class : %@", clientSettings}];
  }

  return clientSettings;
}

- (BOOL)isPersistable
{
  settings = [self settings];
  if ([settings isUISubclass])
  {
    uiSettings = [self uiSettings];
    persistenceIdentifier = [uiSettings persistenceIdentifier];
    v5 = persistenceIdentifier != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)uiAlwaysSupportsAllInterfaceOrientations
{
  settings = [self settings];
  if ([settings isUISubclass])
  {
    v2 = [settings interfaceOrientationMode] == 2;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (void)updateUIClientSettingsWithBlock:()UIApp
{
  v5 = a3;
  if ((dyld_program_sdk_at_least() & 1) == 0 && pthread_main_np() != 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__FBSScene_UIApp__updateUIClientSettingsWithBlock___block_invoke;
    block[3] = &unk_1E70F37C0;
    block[4] = self;
    v11 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = v11;
    goto LABEL_7;
  }

  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__FBSScene_UIApp__updateUIClientSettingsWithBlock___block_invoke_2;
    v7[3] = &unk_1E7109B28;
    v9 = a2;
    v7[4] = self;
    v8 = v5;
    [self updateClientSettingsWithBlock:v7];
    v6 = v8;
LABEL_7:

    goto LABEL_8;
  }

  [self updateClientSettingsWithBlock:0];
LABEL_8:
}

- (void)updateUIClientSettingsWithTransitionBlock:()UIApp
{
  v5 = a3;
  if ((dyld_program_sdk_at_least() & 1) == 0 && pthread_main_np() != 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__FBSScene_UIApp__updateUIClientSettingsWithTransitionBlock___block_invoke;
    block[3] = &unk_1E70F37C0;
    block[4] = self;
    v11 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = v11;
    goto LABEL_7;
  }

  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__FBSScene_UIApp__updateUIClientSettingsWithTransitionBlock___block_invoke_2;
    v7[3] = &unk_1E70F41D0;
    v9 = a2;
    v7[4] = self;
    v8 = v5;
    [self updateClientSettingsWithTransitionBlock:v7];
    v6 = v8;
LABEL_7:

    goto LABEL_8;
  }

  [self updateClientSettingsWithTransitionBlock:0];
LABEL_8:
}

@end