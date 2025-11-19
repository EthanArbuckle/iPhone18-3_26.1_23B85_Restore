void sub_DD8()
{
  v0 = _MCLogObjects[3];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_DEFAULT, "Lock status changed.", buf, 2u);
  }

  v1 = MKBGetDeviceLockState();
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:MCFeaturePasscodeRequired];

  if (v1 == 3 || !v1)
  {
    v4 = dispatch_time(0, 800000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1854;
    block[3] = &unk_41C0;
    v6 = v3 == 1;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

void *UserEventAgentFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xFCu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = CFUUIDGetConstantUUIDWithBytes(0, 0xFBu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  v5 = malloc_type_malloc(0x20uLL, 0x10E0040E9A6435BuLL);
  *v5 = &unk_4CC0;
  v5[3] = objc_alloc_init(MCUEAPlugin);
  if (v4)
  {
    v5[1] = CFRetain(v4);
    CFPlugInAddInstanceForFactory(v4);
  }

  *(v5 + 4) = 1;
  return v5;
}

void sub_1854(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v1 = +[MCProfileConnection sharedConnection];
    [v1 notifyDeviceUnlockedAndPasscodeRequired];
  }

  v2 = +[MCProfileConnection sharedConnection];
  [v2 notifyDeviceUnlocked];
}

uint64_t sub_18C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = _MCLogObjects[3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Querying interface", buf, 2u);
  }

  *&v15.byte0 = a2;
  *&v15.byte8 = a3;
  v9 = CFUUIDCreateFromUUIDBytes(0, v15);
  v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xFDu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  if (CFEqual(v9, v10) || (v11 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v9, v11)))
  {
    (*(*a1 + 16))(a1);
    v12 = 0;
  }

  else
  {
    a1 = 0;
    v12 = 2147483652;
  }

  *a4 = a1;
  CFRelease(v9);
  return v12;
}

uint64_t sub_1A34(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_1A48(_DWORD *a1)
{
  v1 = a1[4];
  v2 = (v1 - 1);
  a1[4] = v2;
  if (v1 == 1)
  {
    v4 = *(a1 + 3);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 1);
    free(a1);
    if (v5)
    {
      CFPlugInRemoveInstanceForFactory(v5);
      CFRelease(v5);
    }
  }

  return v2;
}

void sub_1AB0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 24) install];

  objc_autoreleasePoolPop(v2);
}