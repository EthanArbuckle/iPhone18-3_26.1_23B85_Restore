@interface PTDefaults
+ (id)sharedInstance;
- (BOOL)_eventShowsUI:(int64_t)a3;
- (BOOL)activeTestRecipeEatsEvent:(int64_t)a3;
- (BOOL)displayedShowsUIValueForEvent:(int64_t)a3;
- (BOOL)prototypingServerWantsEvent:(int64_t)a3;
- (BOOL)testRecipeIsActive;
- (id)_eventDefaults;
- (id)_testRecipeDefaults;
- (id)activeTestRecipeDescription;
- (id)activeTestRecipeEventDescription;
- (id)activeTestRecipeIdentifier;
- (id)observeEventDefaultsOnQueue:(id)a3 withBlock:(id)a4;
- (id)observeShowUISwitchDefaultsOnQueue:(id)a3 withBlock:(id)a4;
- (id)observeTestRecipeDefaultsOnQueue:(id)a3 withBlock:(id)a4;
- (void)_bindAndRegisterDefaults;
- (void)deactivateTestRecipe;
- (void)setShowsUI:(BOOL)a3 forEvent:(int64_t)a4;
@end

@implementation PTDefaults

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[PTDefaults sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __28__PTDefaults_sharedInstance__block_invoke()
{
  sharedInstance___instance = [(BSAbstractDefaultDomain *)[PTDefaults alloc] _initWithDomain:@"com.apple.PrototypeTools"];

  return MEMORY[0x2821F96F8]();
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"prototypeSettingsEnabled"];
  v4 = MEMORY[0x277CBEC28];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"PrototypeSettingsEnabled" toDefaultValue:MEMORY[0x277CBEC28] options:1];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"activePrototypingEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"ActivePrototypingEnabled" toDefaultValue:v4 options:1];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"remotePrototypingEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"RemotePrototypingEnabled" toDefaultValue:v4 options:1];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"multiWindowEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"MultiWindowEnabled" toDefaultValue:v4 options:1];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volumeUpShowsUI"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"VolumeUpShowsUI" toDefaultValue:MEMORY[0x277CBEC38] options:1];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volumeDownShowsUI"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"VolumeDownShowsUI" toDefaultValue:v4 options:1];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ringerSwitchShowsUI"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"RingerSwitchShowsUI" toDefaultValue:v4 options:1];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ringerButtonShowsUI"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"RingerButtonShowsUI" toDefaultValue:v4 options:1];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeIdentifier"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"TestRecipeIdentifier" toDefaultValue:0 options:1];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeDescription"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"TestRecipeDescription" toDefaultValue:0 options:1];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsVolumeUp"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"TestRecipeEatsVolumeUp" toDefaultValue:v4 options:1];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsVolumeDown"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"TestRecipeEatsVolumeDown" toDefaultValue:v4 options:1];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsRingerSwitch"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"TestRecipeEatsRingerSwitch" toDefaultValue:v4 options:1];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsRingerButton"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"TestRecipeEatsRingerButton" toDefaultValue:v4 options:1];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldClearSettingsArchivesForMigration"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v18 withDefaultKey:@"ClearSettingsArchivesForMigration" toDefaultValue:v4 options:1];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldClearPrototypeCachesForMigration"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v19 withDefaultKey:@"ClearPrototypeCachesForMigration" toDefaultValue:v4 options:1];
}

- (id)_testRecipeDefaults
{
  v12[8] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"activePrototypingEnabled"];
  v12[0] = v2;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"remotePrototypingEnabled"];
  v12[1] = v3;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeIdentifier"];
  v12[2] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeDescription"];
  v12[3] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsVolumeUp"];
  v12[4] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsVolumeDown"];
  v12[5] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsRingerSwitch"];
  v12[6] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsRingerButton"];
  v12[7] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:8];

  return v10;
}

- (BOOL)displayedShowsUIValueForEvent:(int64_t)a3
{
  v5 = [(PTDefaults *)self _eventShowsUI:?];
  if (v5)
  {
    LOBYTE(v5) = ![(PTDefaults *)self activeTestRecipeEatsEvent:a3];
  }

  return v5;
}

- (void)setShowsUI:(BOOL)a3 forEvent:(int64_t)a4
{
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      [(PTDefaults *)self setRingerSwitchShowsUI:a3];
    }

    else if (a4 == 4)
    {
      [(PTDefaults *)self setRingerButtonShowsUI:a3];
    }
  }

  else if (a4 == 1)
  {
    [(PTDefaults *)self setVolumeUpShowsUI:a3];
  }

  else if (a4 == 2)
  {
    [(PTDefaults *)self setVolumeDownShowsUI:a3];
  }
}

- (id)observeShowUISwitchDefaultsOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PTDefaults *)self _eventDefaults];
  v9 = [(BSAbstractDefaultDomain *)self observeDefaults:v8 onQueue:v7 withBlock:v6];

  return v9;
}

- (BOOL)testRecipeIsActive
{
  if (![(PTDefaults *)self activePrototypingEnabled])
  {
    return 0;
  }

  v3 = [(PTDefaults *)self testRecipeIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (id)activeTestRecipeIdentifier
{
  if ([(PTDefaults *)self testRecipeIsActive])
  {
    v3 = [(PTDefaults *)self testRecipeIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)activeTestRecipeDescription
{
  if ([(PTDefaults *)self testRecipeIsActive])
  {
    v3 = [(PTDefaults *)self testRecipeDescription];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)activeTestRecipeEatsEvent:(int64_t)a3
{
  if (![(PTDefaults *)self testRecipeIsActive])
  {
    return 0;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {

      return [(PTDefaults *)self testRecipeEatsRingerSwitch];
    }

    else
    {
      if (a3 != 4)
      {
        return 0;
      }

      return [(PTDefaults *)self testRecipeEatsRingerButton];
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {

        return [(PTDefaults *)self testRecipeEatsVolumeDown];
      }

      return 0;
    }

    return [(PTDefaults *)self testRecipeEatsVolumeUp];
  }
}

- (id)activeTestRecipeEventDescription
{
  v3 = [MEMORY[0x277CCAB58] indexSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PTDefaults_activeTestRecipeEventDescription__block_invoke;
  v7[3] = &unk_27835EEC8;
  v7[4] = self;
  v8 = v3;
  v4 = v3;
  PTPrototypingEnumerateHardwareEventsWithBlock(v7);
  v5 = PTPrototypingEventsDescription(v4);

  return v5;
}

uint64_t __46__PTDefaults_activeTestRecipeEventDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) activeTestRecipeEatsEvent:a2];
  if (result)
  {
    v5 = *(a1 + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

- (void)deactivateTestRecipe
{
  [(PTDefaults *)self setTestRecipeIdentifier:0];
  [(PTDefaults *)self setTestRecipeDescription:0];
  [(PTDefaults *)self setTestRecipeEatsVolumeUp:0];
  [(PTDefaults *)self setTestRecipeEatsVolumeDown:0];
  [(PTDefaults *)self setTestRecipeEatsRingerSwitch:0];

  [(PTDefaults *)self setTestRecipeEatsRingerButton:0];
}

- (id)observeTestRecipeDefaultsOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PTDefaults *)self _testRecipeDefaults];
  v9 = [(BSAbstractDefaultDomain *)self observeDefaults:v8 onQueue:v7 withBlock:v6];

  return v9;
}

- (BOOL)prototypingServerWantsEvent:(int64_t)a3
{
  if ([(PTDefaults *)self _eventShowsUI:?])
  {
    return 1;
  }

  return [(PTDefaults *)self activeTestRecipeEatsEvent:a3];
}

- (id)observeEventDefaultsOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PTDefaults *)self _eventDefaults];
  v9 = [(BSAbstractDefaultDomain *)self observeDefaults:v8 onQueue:v7 withBlock:v6];

  return v9;
}

- (BOOL)_eventShowsUI:(int64_t)a3
{
  if (![(PTDefaults *)self activePrototypingEnabled])
  {
    return 0;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {

      return [(PTDefaults *)self ringerSwitchShowsUI];
    }

    else
    {
      if (a3 != 4)
      {
        return 0;
      }

      return [(PTDefaults *)self ringerButtonShowsUI];
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {

        return [(PTDefaults *)self volumeDownShowsUI];
      }

      return 0;
    }

    return [(PTDefaults *)self volumeUpShowsUI];
  }
}

- (id)_eventDefaults
{
  v15[11] = *MEMORY[0x277D85DE8];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"activePrototypingEnabled"];
  v15[0] = v14;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"remotePrototypingEnabled"];
  v15[1] = v13;
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volumeUpShowsUI"];
  v15[2] = v2;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"volumeDownShowsUI"];
  v15[3] = v3;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ringerSwitchShowsUI"];
  v15[4] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ringerButtonShowsUI"];
  v15[5] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeIdentifier"];
  v15[6] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsVolumeUp"];
  v15[7] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsVolumeDown"];
  v15[8] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsRingerSwitch"];
  v15[9] = v9;
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testRecipeEatsRingerButton"];
  v15[10] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:11];

  return v11;
}

@end