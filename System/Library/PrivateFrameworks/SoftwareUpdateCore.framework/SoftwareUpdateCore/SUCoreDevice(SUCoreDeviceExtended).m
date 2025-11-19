@interface SUCoreDevice(SUCoreDeviceExtended)
- (uint64_t)rootVolumeSealValid;
- (uint64_t)rootVolumeUUID;
- (void)rootVolumeSealValid;
@end

@implementation SUCoreDevice(SUCoreDeviceExtended)

- (uint64_t)rootVolumeUUID
{
  v0 = [MEMORY[0x277D64460] sharedLogger];
  v1 = [v0 oslog];

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    [(SUCoreDevice(SUCoreDeviceExtended) *)v1 rootVolumeUUID:v2];
  }

  return 0;
}

- (uint64_t)rootVolumeSealValid
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = xmmword_2319EB528;
  v26 = 0;
  v24 = 1;
  if (getattrlist("/", &v25, &v27, 0x24uLL, 0))
  {
    v0 = [MEMORY[0x277D64460] sharedLogger];
    v1 = [v0 oslog];

    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice(SUCoreDeviceExtended) rootVolumeSealValid];
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  if ((BYTE7(v28) & 2) == 0)
  {
    v2 = [MEMORY[0x277D64460] sharedLogger];
    v1 = [v2 oslog];

    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDevice(SUCoreDeviceExtended) *)v1 rootVolumeSealValid:v3];
    }

    goto LABEL_16;
  }

  if ((BYTE7(v27) & 2) == 0)
  {
    v10 = [MEMORY[0x277D64460] sharedLogger];
    v1 = [v10 oslog];

    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDevice(SUCoreDeviceExtended) *)v1 rootVolumeSealValid:v11];
    }

    goto LABEL_16;
  }

  if (fsctl("/", 0x20006832uLL, 0, 0))
  {
    v18 = [MEMORY[0x277D64460] sharedLogger];
    v1 = [v18 oslog];

    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice(SUCoreDeviceExtended) rootVolumeSealValid];
    }

    goto LABEL_16;
  }

  v19 = fsctl("/", 0x80044A58uLL, &v24, 0);
  v20 = [MEMORY[0x277D64460] sharedLogger];
  v1 = [v20 oslog];

  if (v19)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice(SUCoreDeviceExtended) rootVolumeSealValid];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_23193C000, v1, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] RootVolumeSealValid: Root volume is sealed", v23, 2u);
  }

  v21 = 1;
LABEL_17:

  return v21;
}

- (void)rootVolumeSealValid
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_23193C000, v2, v3, "[SUCoreDevice] RootVolumeSealValid: Root hash evaluation failed (%d: %s)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

@end