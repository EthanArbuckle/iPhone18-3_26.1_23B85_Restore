@interface SSRBiometricMatch
+ (id)sharedInstance;
- (BOOL)_getLastBiometricMatchEvent:(BOOL *)a3 atTime:(unint64_t *)a4;
- (SSRBiometricMatch)init;
- (unint64_t)getLastBiometricMatchForVoiceTriggerTimeStamp:(unint64_t)a3;
@end

@implementation SSRBiometricMatch

- (BOOL)_getLastBiometricMatchEvent:(BOOL *)a3 atTime:(unint64_t *)a4
{
  *&v22[13] = *MEMORY[0x277D85DE8];
  biometricDevice = self->_biometricDevice;
  if (!biometricDevice)
  {
    v15 = *MEMORY[0x277D01970];
    v14 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR);
    if (!v14)
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v20 = "[SSRBiometricMatch _getLastBiometricMatchEvent:atTime:]";
    _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s ERR: Biometric device is nil - Bailing out", buf, 0xCu);
LABEL_15:
    LOBYTE(v14) = 0;
    goto LABEL_16;
  }

  v18 = 0;
  v7 = [(BKDevice *)biometricDevice lastMatchEventWithError:&v18];
  v8 = v18;
  v9 = *MEMORY[0x277D01970];
  v10 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v10)
    {
      *buf = 136315394;
      v20 = "[SSRBiometricMatch _getLastBiometricMatchEvent:atTime:]";
      v21 = 2112;
      *v22 = v8;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s BiometricMatchEvents unavailable with error %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v11 = v9;
    v12 = [v7 result];
    v13 = [v7 timeStamp];
    *buf = 136315650;
    v20 = "[SSRBiometricMatch _getLastBiometricMatchEvent:atTime:]";
    v21 = 1024;
    *v22 = v12;
    v22[2] = 2048;
    *&v22[3] = v13;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s BiometricMatchEvent: result = %u, timeStamp = %llu", buf, 0x1Cu);
  }

  if (a3)
  {
    *a3 = [v7 result];
  }

  if (a4)
  {
    *a4 = [v7 timeStamp];
  }

  LOBYTE(v14) = 1;
LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)getLastBiometricMatchForVoiceTriggerTimeStamp:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[SSRBiometricMatch getLastBiometricMatchForVoiceTriggerTimeStamp:]";
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s triggerTimeStamp is nil - Bailing out", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v15 = 0;
  v14 = 0;
  CSMachAbsoluteTimeToMachContinuousTime();
  if (![(SSRBiometricMatch *)self _getLastBiometricMatchEvent:&v15 atTime:&v14])
  {
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[SSRBiometricMatch getLastBiometricMatchForVoiceTriggerTimeStamp:]";
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s No biometric information available", buf, 0xCu);
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  CSMachAbsoluteTimeGetTimeInterval();
  v5 = v4;
  v6 = v15;
  v7 = *MEMORY[0x277D01970];
  v8 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (v6 == 1 && v5 < 3.0)
  {
    if (v8)
    {
      *buf = 136315394;
      v17 = "[SSRBiometricMatch getLastBiometricMatchForVoiceTriggerTimeStamp:]";
      v18 = 2048;
      v19 = v5;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Biometric match happened in last %f secs", buf, 0x16u);
    }

    result = 1;
  }

  else
  {
    if (v8)
    {
      v13 = @"MIS-MATCH";
      v17 = "[SSRBiometricMatch getLastBiometricMatchForVoiceTriggerTimeStamp:]";
      *buf = 136315650;
      if (v6)
      {
        v13 = @"MATCH";
      }

      v18 = 2112;
      v19 = *&v13;
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Biometric match result: %@ happened in last %f secs", buf, 0x20u);
      LOBYTE(v6) = v15;
    }

    if (v6)
    {
      result = 3;
    }

    else
    {
      result = 2;
    }
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (SSRBiometricMatch)init
{
  v24 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SSRBiometricMatch;
  v2 = [(SSRBiometricMatch *)&v16 init];
  if (v2)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v3 = getBKDeviceClass_softClass;
    v20 = getBKDeviceClass_softClass;
    if (!getBKDeviceClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getBKDeviceClass_block_invoke;
      v22 = &unk_278579720;
      v23 = &v17;
      __getBKDeviceClass_block_invoke(buf);
      v3 = v18[3];
    }

    v4 = v3;
    _Block_object_dispose(&v17, 8);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v5 = getBKDeviceManagerClass_softClass;
    v20 = getBKDeviceManagerClass_softClass;
    if (!getBKDeviceManagerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getBKDeviceManagerClass_block_invoke;
      v22 = &unk_278579720;
      v23 = &v17;
      __getBKDeviceManagerClass_block_invoke(buf);
      v5 = v18[3];
    }

    v6 = v5;
    _Block_object_dispose(&v17, 8);
    v7 = [v5 availableDevices];
    v8 = [v7 firstObject];
    v15 = 0;
    v9 = [v3 deviceWithDescriptor:v8 error:&v15];
    v10 = v15;
    biometricDevice = v2->_biometricDevice;
    v2->_biometricDevice = v9;

    if (v10 || !v2->_biometricDevice)
    {
      v12 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[SSRBiometricMatch init]";
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s Failed to create biometricdevice with error %@", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)sharedInstance
{
  if (CSIsCommunalDevice() & 1) != 0 || ([MEMORY[0x277D018F8] isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (sharedInstance_onceToken_8498 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_8498, &__block_literal_global_8499);
    }

    v2 = sharedInstance_biometricMatchMonitor;
  }

  return v2;
}

uint64_t __35__SSRBiometricMatch_sharedInstance__block_invoke()
{
  sharedInstance_biometricMatchMonitor = objc_alloc_init(SSRBiometricMatch);

  return MEMORY[0x2821F96F8]();
}

@end