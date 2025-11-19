void registerOnceForFirstUnlock(void *a1)
{
  v4 = a1;
  v1 = objc_opt_class();
  objc_sync_enter(v1);
  if (!_firstUnlockCallback)
  {
    v2 = [v4 copy];
    v3 = _firstUnlockCallback;
    _firstUnlockCallback = v2;
  }

  objc_sync_exit(v1);
}

void unregisterForAKSEvents(uint64_t a1)
{
  if (a1)
  {
    obj = objc_opt_class();
    objc_sync_enter(obj);
    v2 = _callbackMapAKS;
    if (_callbackMapAKS)
    {
      v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
      [v2 removeObjectForKey:v3];
    }

    objc_sync_exit(obj);
  }
}

uint64_t registerForAKSEvents(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  ++_tokenCounter;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [v4 copy];
  v8 = MEMORY[0x2666F0150]();
  [_callbackMapAKS setObject:v8 forKeyedSubscript:v6];

  v9 = [v6 integerValue];
  objc_sync_exit(v5);

  return v9;
}

void unregisterForLockStateChangesForDevice(void *a1)
{
  v2 = a1;
  v1 = objc_opt_class();
  objc_sync_enter(v1);
  if (_callbackMap)
  {
    [_callbackMap removeObjectForKey:v2];
  }

  objc_sync_exit(v1);
}

id registerForLockStateChangesForDevice(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  ++_tokenCounter;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [v4 copy];
  v8 = MEMORY[0x2666F0150]();
  [_callbackMap setObject:v8 forKeyedSubscript:v6];

  objc_sync_exit(v5);

  return v6;
}

void unregisterForLockStateChanges(void *a1)
{
  v2 = a1;
  v1 = objc_opt_class();
  objc_sync_enter(v1);
  if (_callbackMap)
  {
    [_callbackMap removeObjectForKey:v2];
  }

  objc_sync_exit(v1);
}

id registerForLockStateChanges(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  ++_tokenCounter;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [v4 copy];
  v8 = MEMORY[0x2666F0150]();
  [_callbackMap setObject:v8 forKeyedSubscript:v6];

  objc_sync_exit(v5);

  return v6;
}

id currentOsBuild()
{
  v0 = objc_opt_class();
  objc_sync_enter(v0);
  v1 = _currentOsBuild;
  if (!_currentOsBuild)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *currentOsBuild(void)"];
    [v4 handleFailureInFunction:v5 file:@"_PASDeviceStateStub.m" lineNumber:54 description:@"You must set the current Os Build"];

    v1 = _currentOsBuild;
  }

  v2 = v1;
  objc_sync_exit(v0);

  return v2;
}

uint64_t deviceLockState()
{
  v0 = objc_opt_class();
  objc_sync_enter(v0);
  v1 = _lockState;
  objc_sync_exit(v0);

  return v1;
}

uint64_t lockState()
{
  v0 = objc_opt_class();
  objc_sync_enter(v0);
  v1 = _lockState;
  objc_sync_exit(v0);

  return v1;
}

uint64_t formattedForContentProtection()
{
  v0 = objc_opt_class();
  objc_sync_enter(v0);
  v1 = _deviceFormattedForProtection;
  objc_sync_exit(v0);

  return v1;
}

BOOL unlockedSinceBoot()
{
  v0 = objc_opt_class();
  objc_sync_enter(v0);
  v1 = _classCLocked;
  objc_sync_exit(v0);

  return (v1 & 1) == 0;
}