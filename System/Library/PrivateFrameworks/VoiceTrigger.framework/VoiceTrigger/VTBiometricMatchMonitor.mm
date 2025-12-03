@interface VTBiometricMatchMonitor
+ (VTBiometricMatchMonitor)sharedInstance;
- (BOOL)getLastBiometricMatchEvent:(BOOL *)event atTime:(unint64_t *)time;
- (VTBiometricMatchMonitor)init;
- (VTBiometricMatchMonitorDelegate)delegate;
- (void)device:(id)device matchEventOccurred:(id)occurred;
- (void)startObserving;
@end

@implementation VTBiometricMatchMonitor

- (VTBiometricMatchMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)device:(id)device matchEventOccurred:(id)occurred
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  occurredCopy = occurred;
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v13[0] = 67109376;
    v13[1] = [occurredCopy result];
    v14 = 2048;
    timeStamp = [occurredCopy timeStamp];
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "BiometricMatchEventOccurred: result = %u, timeStamp = %llu", v13, 0x12u);
  }

  if (occurredCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 biometricMatchMonitorDidReceiveMatchAttempt:objc_msgSend(occurredCopy atTime:{"result"), objc_msgSend(occurredCopy, "timeStamp")}];
    }
  }
}

- (BOOL)getLastBiometricMatchEvent:(BOOL *)event atTime:(unint64_t *)time
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  biometricDevice = self->_biometricDevice;
  if (!biometricDevice)
  {
    v15 = VTLogContextFacilityVoiceTrigger;
    v14 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR);
    if (!v14)
    {
      return v14;
    }

    *buf = 0;
    _os_log_error_impl(&dword_223A31000, v15, OS_LOG_TYPE_ERROR, "ERR: Biometric device is nil - Bailing out", buf, 2u);
LABEL_15:
    LOBYTE(v14) = 0;
    return v14;
  }

  v17 = 0;
  v7 = [(BKDevice *)biometricDevice lastMatchEventWithError:&v17];
  v8 = v17;
  v9 = VTLogContextFacilityVoiceTrigger;
  v10 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v10)
    {
      *buf = 138412290;
      *v19 = v8;
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "BiometricMatchEvents unavailable with error %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v11 = v9;
    result = [v7 result];
    timeStamp = [v7 timeStamp];
    *buf = 67109376;
    v19[0] = result;
    LOWORD(v19[1]) = 2048;
    *(&v19[1] + 2) = timeStamp;
    _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "BiometricMatchEvent: result = %u, timeStamp = %llu", buf, 0x12u);
  }

  if (event)
  {
    *event = [v7 result];
  }

  if (time)
  {
    *time = [v7 timeStamp];
  }

  LOBYTE(v14) = 1;
  return v14;
}

- (void)startObserving
{
  biometricDevice = self->_biometricDevice;
  if (biometricDevice)
  {
    [(BKDevice *)biometricDevice setDelegate:self];
  }
}

- (VTBiometricMatchMonitor)init
{
  v34 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = VTBiometricMatchMonitor;
  v2 = [(VTEventMonitor *)&v17 init];
  if (!v2)
  {
    return v2;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v3 = getBKDeviceClass_softClass;
  v26 = getBKDeviceClass_softClass;
  if (!getBKDeviceClass_softClass)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __getBKDeviceClass_block_invoke;
    v21 = &unk_2784ED270;
    v22 = &v23;
    v27 = 0;
    if (!BiometricKitLibraryCore_frameworkLibrary)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v29 = __BiometricKitLibraryCore_block_invoke;
      v30 = &__block_descriptor_40_e5_v8__0l;
      v31 = &v27;
      v32 = xmmword_2784ED290;
      v33 = 0;
      BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
      if (!BiometricKitLibraryCore_frameworkLibrary)
      {
        goto LABEL_22;
      }

      if (v27)
      {
        free(v27);
      }
    }

    Class = objc_getClass("BKDevice");
    *(v22[1] + 24) = Class;
    if (!*(v22[1] + 24))
    {
      goto LABEL_22;
    }

    getBKDeviceClass_softClass = *(v22[1] + 24);
    v3 = v24[3];
  }

  v5 = v3;
  _Block_object_dispose(&v23, 8);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v6 = getBKDeviceManagerClass_softClass;
  v26 = getBKDeviceManagerClass_softClass;
  if (getBKDeviceManagerClass_softClass)
  {
    goto LABEL_16;
  }

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __getBKDeviceManagerClass_block_invoke;
  v21 = &unk_2784ED270;
  v22 = &v23;
  v27 = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v29 = __BiometricKitLibraryCore_block_invoke;
    v30 = &__block_descriptor_40_e5_v8__0l;
    v31 = &v27;
    v32 = xmmword_2784ED290;
    v33 = 0;
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
    if (!BiometricKitLibraryCore_frameworkLibrary)
    {
      goto LABEL_22;
    }

    if (v27)
    {
      free(v27);
    }
  }

  v7 = objc_getClass("BKDeviceManager");
  *(v22[1] + 24) = v7;
  if (!*(v22[1] + 24))
  {
LABEL_22:
    abort_report_np();
    __break(1u);
  }

  getBKDeviceManagerClass_softClass = *(v22[1] + 24);
  v6 = v24[3];
LABEL_16:
  v8 = v6;
  _Block_object_dispose(&v23, 8);
  availableDevices = [v6 availableDevices];
  firstObject = [availableDevices firstObject];
  v16 = 0;
  v11 = [v3 deviceWithDescriptor:firstObject error:&v16];
  v12 = v16;
  biometricDevice = v2->_biometricDevice;
  v2->_biometricDevice = v11;

  if (v12 || !v2->_biometricDevice)
  {
    v14 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_error_impl(&dword_223A31000, v14, OS_LOG_TYPE_ERROR, "Failed to create biometricdevice with error %@", &buf, 0xCu);
    }
  }

  return v2;
}

+ (VTBiometricMatchMonitor)sharedInstance
{
  if (sharedInstance_onceToken_6745 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6745, &__block_literal_global_6746);
  }

  v3 = sharedInstance_biometricMatchMonitor;

  return v3;
}

uint64_t __41__VTBiometricMatchMonitor_sharedInstance__block_invoke()
{
  sharedInstance_biometricMatchMonitor = objc_alloc_init(VTBiometricMatchMonitor);

  return MEMORY[0x2821F96F8]();
}

@end