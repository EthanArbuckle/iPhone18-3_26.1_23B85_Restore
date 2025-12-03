@interface CTMessageManager
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)symptom;
- (int)read:(id)read returnedValues:(id)values;
@end

@implementation CTMessageManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CTMessageManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_36 != -1)
  {
    dispatch_once(&sharedInstance_pred_36, block);
  }

  v2 = sharedInstance_sharedInstance_37;

  return v2;
}

void __34__CTMessageManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_37;
  sharedInstance_sharedInstance_37 = v1;

  v3 = sharedInstance_sharedInstance_37;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[CTMessageManager sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (BOOL)noteSymptom:(id)symptom
{
  v18 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v5 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = symptomCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CTMessageManager receive symptom %@", buf, 0xCu);
  }

  eventData = [symptomCopy eventData];
  if (eventData && (*(eventData + 4) & 1) != 0)
  {
    v8 = *(eventData + 24);
    v9 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v17) = v8;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "CTMessageManager receive override value %d", buf, 8u);
    }

    v10 = SFGetStandardQueue(1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__CTMessageManager_noteSymptom___block_invoke;
    block[3] = &unk_27898A7A8;
    v15 = v8;
    block[4] = self;
    v14 = symptomCopy;
    dispatch_async(v10, block);
  }

  else
  {
    v7 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = symptomCopy;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "CTMessageManager missing qualifier in %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

void __32__CTMessageManager_noteSymptom___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 <= 19)
  {
    if (v2 >= 5)
    {
      v3 = (v2 - 10);
      if (v3 < 5)
      {
        v4 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 67109120;
          *v25 = v3;
          _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "CTMessageManager: Forcing target advice level  to %d", &v24, 8u);
        }

        v5 = +[CellThroughputAdviser sharedInstance];
        [v5 setTargetAdviceLevel:v3];
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v9 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v24 = 67109120;
      *v25 = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "CTMessageManager: Forcing adminAdviceOverride to %d", &v24, 8u);
    }

    v11 = *(a1 + 48);
    v12 = +[CellThroughputAdviser sharedInstance];
    [(__CFString *)v12 setAdminAdviceOverride:v11];
LABEL_19:

    goto LABEL_30;
  }

  if (v2 > 22)
  {
    if ((v2 - 40) < 2)
    {
      v12 = @"kNotificationCellThroughputAdvisoryCapable";
      v26 = @"State";
      v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48) == 40];
      v27[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

      v15 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48) == 40;
        v24 = 138412546;
        *v25 = v12;
        *&v25[8] = 1024;
        *&v25[10] = v16;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "CTMessageManager: Posting throughput advisory notification with label = %@, cellHighThroughputState = %d", &v24, 0x12u);
      }

      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      [v17 postNotificationName:v12 object:*(a1 + 32) userInfo:v14];

      goto LABEL_19;
    }

    if (v2 == 23)
    {
      v19 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "CTMessageManager: Forcing frequency band to mmWave", &v24, 2u);
      }

      v7 = +[CellThroughputAdviser sharedInstance];
      v5 = v7;
      v8 = 2;
      goto LABEL_28;
    }
  }

  else
  {
    if ((v2 - 20) < 2)
    {
      v6 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "CTMessageManager: Forcing cell technology to LTE", &v24, 2u);
      }

      v7 = +[CellThroughputAdviser sharedInstance];
      v5 = v7;
      v8 = 0;
LABEL_28:
      [v7 setNrFrequencyBand:v8];
LABEL_29:

      goto LABEL_30;
    }

    if (v2 == 22)
    {
      v18 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "CTMessageManager: Forcing frequency band to sub6", &v24, 2u);
      }

      v7 = +[CellThroughputAdviser sharedInstance];
      v5 = v7;
      v8 = 1;
      goto LABEL_28;
    }
  }

LABEL_31:
  v21 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 48);
    v23 = *(a1 + 40);
    v24 = 67109378;
    *v25 = v22;
    *&v25[4] = 2112;
    *&v25[6] = v23;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "CTMessageManager unsupported qualifier value %d in %@", &v24, 0x12u);
  }

LABEL_30:
  v20 = *MEMORY[0x277D85DE8];
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end