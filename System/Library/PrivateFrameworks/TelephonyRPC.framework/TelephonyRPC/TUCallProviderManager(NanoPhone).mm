@interface TUCallProviderManager(NanoPhone)
+ (id)nph_currentProviderManager;
+ (id)nph_localProviderManager;
+ (id)nph_pairedHostDeviceProviderManager;
@end

@implementation TUCallProviderManager(NanoPhone)

+ (id)nph_localProviderManager
{
  if (nph_localProviderManager_onceToken != -1)
  {
    +[TUCallProviderManager(NanoPhone) nph_localProviderManager];
  }

  v1 = nph_localProviderManager_localProviderManager;

  return v1;
}

+ (id)nph_pairedHostDeviceProviderManager
{
  if (nph_pairedHostDeviceProviderManager_onceToken != -1)
  {
    +[TUCallProviderManager(NanoPhone) nph_pairedHostDeviceProviderManager];
  }

  v1 = nph_pairedHostDeviceProviderManager_pairedHostDeviceProviderManager;

  return v1;
}

+ (id)nph_currentProviderManager
{
  if (+[NPHSharedUtilities isActiveDeviceTinker])
  {
    [self nph_localProviderManager];
  }

  else
  {
    [self nph_pairedHostDeviceProviderManager];
  }
  v2 = ;

  return v2;
}

@end