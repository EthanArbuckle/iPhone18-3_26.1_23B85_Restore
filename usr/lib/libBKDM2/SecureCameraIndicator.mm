@interface SecureCameraIndicator
+ (id)sharedInstance;
- (SecureCameraIndicator)init;
- (int)deactivate;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)init;
@end

@implementation SecureCameraIndicator

- (SecureCameraIndicator)init
{
  v27 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = SecureCameraIndicator;
  v2 = [(SecureCameraIndicator *)&v16 init];
  if (!v2)
  {
    if (__osLog)
    {
      v15 = __osLog;
    }

    else
    {
      v15 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v18 = "self != ((void *)0)";
      v19 = 2048;
      v20 = 0;
      v21 = 2080;
      v22 = &unk_296D32C0B;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Pearl/SecureCameraIndicator/SecureCameraIndicator.m";
      v25 = 1024;
      v26 = 34;
      _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    goto LABEL_14;
  }

  v3 = v2;
  v4 = objc_alloc_init(MEMORY[0x29EDC6DE0]);
  publisher = v3->_publisher;
  v3->_publisher = v4;

  if (!v3->_publisher)
  {
    [(SecureCameraIndicator *)v3 init];
LABEL_14:
    v9 = 0;
    v8 = 0;
    v7 = 0;
LABEL_19:
    v3 = 0;
    goto LABEL_7;
  }

  v6 = objc_alloc(MEMORY[0x29EDC6DC8]);
  BSAuditTokenForCurrentProcess();
  v7 = [v6 initWithAuditToken:buf];
  if (!v7)
  {
    [(SecureCameraIndicator *)v3 init];
    v9 = 0;
    v8 = 0;
    goto LABEL_19;
  }

  v8 = [objc_alloc(MEMORY[0x29EDC6DC0]) initWithAttributedEntity:v7];
  if (!v8)
  {
    [(SecureCameraIndicator *)v3 init];
    v9 = 0;
    goto LABEL_19;
  }

  v9 = [objc_alloc(MEMORY[0x29EDC6DD8]) initWithCameraIdentifier:0];
  if (!v9)
  {
    [(SecureCameraIndicator *)v3 init];
    goto LABEL_19;
  }

  v10 = [objc_alloc(MEMORY[0x29EDC6DD0]) initWithCameraDescriptor:v9 activityAttribution:v8];
  cameraAttribution = v3->_cameraAttribution;
  v3->_cameraAttribution = v10;

  if (!v3->_cameraAttribution)
  {
    [(SecureCameraIndicator *)v3 init];
    goto LABEL_19;
  }

LABEL_7:
  v12 = v3;

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __39__SecureCameraIndicator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __39__SecureCameraIndicator_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeCounter = selfCopy->_activeCounter;
  selfCopy->_activeCounter = activeCounter + 1;
  if (!activeCounter)
  {
    publisher = selfCopy->_publisher;
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __33__SecureCameraIndicator_activate__block_invoke;
    v5[3] = &unk_29EE54D38;
    v5[4] = selfCopy;
    [(STMediaStatusDomainPublisher *)publisher updateVolatileData:v5 completion:0];
  }

  objc_sync_exit(selfCopy);
}

- (int)deactivate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2020000000;
  v10 = 263;
  activeCounter = selfCopy->_activeCounter;
  if (activeCounter)
  {
    selfCopy->_activeCounter = activeCounter - 1;
    if (activeCounter == 1)
    {
      publisher = selfCopy->_publisher;
      v7[0] = MEMORY[0x29EDCA5F8];
      v7[1] = 3221225472;
      v7[2] = __35__SecureCameraIndicator_deactivate__block_invoke;
      v7[3] = &unk_29EE54D60;
      v7[4] = selfCopy;
      v7[5] = &v8;
      [(STMediaStatusDomainPublisher *)publisher updateVolatileData:v7 completion:0];
      v4 = *(v9[0] + 24);
    }

    else
    {
      v4 = 263;
    }
  }

  else
  {
    [(SecureCameraIndicator *)v9 deactivate];
    v4 = 267;
  }

  _Block_object_dispose(&v8, 8);
  objc_sync_exit(selfCopy);

  return v4;
}

uint64_t __35__SecureCameraIndicator_deactivate__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 removeCameraAttribution:*(*(a1 + 32) + 16)];
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v3 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v4 = 102;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, 0x30u);
  }

  v1 = *MEMORY[0x29EDCA608];
}

- (void)init
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)deactivate
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *(*self + 24) = 267;
  v8 = *MEMORY[0x29EDCA608];
}

@end