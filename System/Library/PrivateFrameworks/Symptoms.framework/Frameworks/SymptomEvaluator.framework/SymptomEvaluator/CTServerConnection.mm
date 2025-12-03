@interface CTServerConnection
+ (void)registerForCTNofication:(const __CFString *)nofication ctShim:(id)shim completion:(id)completion;
+ (void)unregisterForCTNotification:(const __CFString *)notification ctShim:(id)shim completion:(id)completion;
@end

@implementation CTServerConnection

+ (void)registerForCTNofication:(const __CFString *)nofication ctShim:(id)shim completion:(id)completion
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  shimCopy = shim;
  completionCopy = completion;
  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    *v19 = nofication;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Registering for CT notification %@", &v18, 0xCu);
  }

  [shimCopy ctServerConnection];
  v10 = _CTServerConnectionRegisterForNotification();
  v11 = v10;
  v12 = HIDWORD(v10);
  if (!HIDWORD(v10) && !v10)
  {
    goto LABEL_5;
  }

  if (v10 == 2)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CCA4A8];
    goto LABEL_10;
  }

  if (v10 == 1)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CCA5B8];
LABEL_10:
    v15 = [v13 errorWithDomain:*v14 code:v11 >> 32 userInfo:0];
    completionCopy[2](completionCopy, 0, v15);

    goto LABEL_11;
  }

  v17 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v18 = 67109376;
    v19[0] = v11;
    LOWORD(v19[1]) = 1024;
    *(&v19[1] + 2) = v12;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "CT notification registration responded with unknown error domain %d and code %d. Assuming success", &v18, 0xEu);
  }

LABEL_5:
  completionCopy[2](completionCopy, 1, 0);
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)unregisterForCTNotification:(const __CFString *)notification ctShim:(id)shim completion:(id)completion
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  shimCopy = shim;
  completionCopy = completion;
  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    *v19 = notification;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Unregistering from CT notification %@", &v18, 0xCu);
  }

  [shimCopy ctServerConnection];
  v10 = _CTServerConnectionUnregisterForNotification();
  v11 = v10;
  v12 = HIDWORD(v10);
  if (!HIDWORD(v10) && !v10)
  {
    goto LABEL_5;
  }

  if (v10 == 2)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CCA4A8];
    goto LABEL_10;
  }

  if (v10 == 1)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CCA5B8];
LABEL_10:
    v15 = [v13 errorWithDomain:*v14 code:v11 >> 32 userInfo:0];
    completionCopy[2](completionCopy, 0, v15);

    goto LABEL_11;
  }

  v17 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v18 = 67109376;
    v19[0] = v11;
    LOWORD(v19[1]) = 1024;
    *(&v19[1] + 2) = v12;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "CT notification registration responded with unknown error domain %d and code %d. Assuming success", &v18, 0xEu);
  }

LABEL_5:
  completionCopy[2](completionCopy, 1, 0);
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

@end