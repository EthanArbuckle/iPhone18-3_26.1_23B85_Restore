@interface PSHotspotModeSettingsDetail
+ (BOOL)isDiscoverable;
+ (BOOL)isEnabled;
+ (NETRBClient)getNETRBClient;
+ (void)setDiscoverable:(BOOL)a3;
+ (void)setEnabled:(BOOL)a3;
@end

@implementation PSHotspotModeSettingsDetail

+ (NETRBClient)getNETRBClient
{
  result = _netrbClient;
  if (!_netrbClient)
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
    v5 = v3;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v6 = get_NETRBClientCreateSymbolLoc_ptr;
    v14 = get_NETRBClientCreateSymbolLoc_ptr;
    if (!get_NETRBClientCreateSymbolLoc_ptr)
    {
      v7 = NetrbLibrary();
      v12[3] = dlsym(v7, "_NETRBClientCreate");
      get_NETRBClientCreateSymbolLoc_ptr = v12[3];
      v6 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v6)
    {
      v10 = [PSContactsAuthorizationLevelController dealloc];
      _Block_object_dispose(&v11, 8);
      _Unwind_Resume(v10);
    }

    v8 = MEMORY[0x1E69E96A0];
    v9 = (v6)(MEMORY[0x1E69E96A0], &__block_literal_global_37, 0);

    _netrbClient = v9;
    return _netrbClient;
  }

  return result;
}

+ (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[PSHotspotModeSettingsDetail getNETRBClient];
  if (v3)
  {
    v5 = 1023;
  }

  else
  {
    v5 = 1022;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr;
  v13 = get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr;
  if (!get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr)
  {
    v7 = NetrbLibrary();
    v11[3] = dlsym(v7, "_NETRBClientSetGlobalServiceState");
    get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    v9 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v6(v4, v5);
  v8 = wifiManager;
  if (!wifiManager)
  {
    v8 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480]);
  }

  wifiManager = v8;
  PSWiFiManagerClientSetMISDiscoveryState(v8, v3, v3 ^ 1);
}

+ (BOOL)isEnabled
{
  v2 = +[PSHotspotModeSettingsDetail getNETRBClient];
  v7 = 0;
  v8 = 1020;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr;
  v17 = get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr;
  if (!get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __get_NETRBClientGetGlobalServiceStateSymbolLoc_block_invoke;
    v12 = &unk_1E71DBC78;
    v13 = &v14;
    v4 = NetrbLibrary();
    v15[3] = dlsym(v4, "_NETRBClientGetGlobalServiceState");
    get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr = *(v13[1] + 24);
    v3 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v3)
  {
    v6 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v6);
  }

  v3(v2, &v8, &v7);
  return v8 == 1023;
}

+ (void)setDiscoverable:(BOOL)a3
{
  v3 = a3;
  if (a3 && !+[PSHotspotModeSettingsDetail isEnabled])
  {

    [PSHotspotModeSettingsDetail setEnabled:1];
  }

  else
  {
    v4 = wifiManager;
    if (!wifiManager)
    {
      v4 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480]);
    }

    wifiManager = v4;

    PSWiFiManagerClientSetMISDiscoveryState(v4, v3, v3 ^ 1);
  }
}

+ (BOOL)isDiscoverable
{
  v2 = wifiManager;
  if (!wifiManager)
  {
    v2 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480]);
  }

  wifiManager = v2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_ptr;
  v10 = getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_ptr;
  if (!getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_ptr)
  {
    v4 = MobileWiFiLibrary();
    v8[3] = dlsym(v4, "WiFiManagerClientGetMISDiscoveryState");
    getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    v6 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v3(v2);
}

@end