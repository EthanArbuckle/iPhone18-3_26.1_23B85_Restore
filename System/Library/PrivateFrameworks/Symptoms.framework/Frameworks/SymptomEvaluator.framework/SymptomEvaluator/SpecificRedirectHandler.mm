@interface SpecificRedirectHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)symptom;
- (id)evaluate:(id)evaluate forThreshold:(int64_t)threshold;
- (int)read:(id)read returnedValues:(id)values;
@end

@implementation SpecificRedirectHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SpecificRedirectHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_34 != -1)
  {
    dispatch_once(&sharedInstance_pred_34, block);
  }

  v2 = sharedInstance_sharedInstance_34;

  return v2;
}

void __41__SpecificRedirectHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_34;
  sharedInstance_sharedInstance_34 = v1;

  v3 = sharedInstance_sharedInstance_34;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[SpecificRedirectHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (id)evaluate:(id)evaluate forThreshold:(int64_t)threshold
{
  v18 = *MEMORY[0x277D85DE8];
  evaluateCopy = evaluate;
  v6 = evaluateCopy;
  if (!self->_triggerURL)
  {
    goto LABEL_8;
  }

  eventQualifiers = [evaluateCopy eventQualifiers];
  v8 = [eventQualifiers objectForKey:@"2"];

  if (!v8 || ![v8 isEqualToData:self->_triggerURL])
  {

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v9 = redirectLogHandle;
  if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    triggerURL = self->_triggerURL;
    v11 = v9;
    v12 = [(NSData *)triggerURL description];
    v16 = 136315138;
    uTF8String = [v12 UTF8String];
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Matched specific redirect lookup for destination URL %s", &v16, 0xCu);
  }

  v13 = objc_alloc_init(Evaluation);

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)noteSymptom:(id)symptom
{
  v33 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v5 = redirectLogHandle;
  if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    v7 = [symptomCopy description];
    uTF8String = [v7 UTF8String];
    v9 = [(SpecificRedirectHandler *)self description];
    *buf = 136315394;
    v30 = uTF8String;
    v31 = 2080;
    uTF8String2 = [v9 UTF8String];
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "noteSymptom %s, prior %s", buf, 0x16u);
  }

  triggerURL = self->_triggerURL;
  self->_triggerURL = 0;

  eventQualifiers = [symptomCopy eventQualifiers];
  v12 = [eventQualifiers objectForKey:@"2"];

  if (v12)
  {
    CC_SHA256([v12 bytes], objc_msgSend(v12, "length"), buf);
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
    v14 = self->_triggerURL;
    self->_triggerURL = v13;

    v15 = redirectLogHandle;
    if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = v15;
      v18 = [[v16 alloc] initWithData:v12 encoding:4];
      v19 = self->_triggerURL;
      v20 = v18;
      v21 = [(NSData *)v19 description];
      v25 = 138478083;
      v26 = v18;
      v27 = 2080;
      uTF8String3 = [v21 UTF8String];
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Set redirect URL %{private}@  SHA %s", &v25, 0x16u);
    }
  }

  else
  {
    v22 = redirectLogHandle;
    if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Clear redirect URL", buf, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return 0;
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