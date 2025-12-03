@interface TPSDeviceValidation
- (BOOL)_matchesDevices:(id)devices;
- (TPSDeviceValidation)initWithTargetDevices:(id)devices excludeDevices:(id)excludeDevices;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSDeviceValidation

- (TPSDeviceValidation)initWithTargetDevices:(id)devices excludeDevices:(id)excludeDevices
{
  v5.receiver = self;
  v5.super_class = TPSDeviceValidation;
  return [(TPSInclusivityValidation *)&v5 initWithTargetValues:devices excludeValues:excludeDevices];
}

- (BOOL)_matchesDevices:(id)devices
{
  devicesCopy = devices;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = MGCopyAnswer();
  v5 = MGCopyAnswer();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__TPSDeviceValidation__matchesDevices___block_invoke;
  v10[3] = &unk_2789B0F28;
  v6 = v4;
  v11 = v6;
  v13 = &v14;
  v7 = v5;
  v12 = v7;
  [devicesCopy enumerateObjectsUsingBlock:v10];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __39__TPSDeviceValidation__matchesDevices___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = [a2 componentsSeparatedByString:@"/"];
  if ([v11 count] >= 2)
  {
    v6 = [v11 objectAtIndexedSubscript:1];
    v7 = [v11 firstObject];
    v8 = [v7 caseInsensitiveCompare:@"deviceFamily"];

    if (v8)
    {
      v9 = [v11 firstObject];
      v10 = [v9 caseInsensitiveCompare:@"model"];

      if (v10 || [v6 caseInsensitiveCompare:a1[5]])
      {
        goto LABEL_8;
      }
    }

    else if (([v6 containsString:a1[4]] & 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  targetDevices = [(TPSDeviceValidation *)self targetDevices];
  if ([targetDevices count])
  {

LABEL_4:
    targetDevices2 = [(TPSDeviceValidation *)self targetDevices];
    if ([targetDevices2 count])
    {
      targetDevices3 = [(TPSDeviceValidation *)self targetDevices];
      v10 = [(TPSDeviceValidation *)self _matchesDevices:targetDevices3];
    }

    else
    {
      v10 = 1;
    }

    excludeDevices = [(TPSDeviceValidation *)self excludeDevices];
    v12 = [(TPSDeviceValidation *)self _matchesDevices:excludeDevices];

    v13 = v10 && !v12;
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      [(TPSDeviceValidation *)self validateWithCompletion:v13, targeting];
    }

    goto LABEL_9;
  }

  excludeValues = [(TPSInclusivityValidation *)self excludeValues];
  v7 = [excludeValues count];

  if (v7)
  {
    goto LABEL_4;
  }

  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDeviceValidation *)self validateWithCompletion:targeting];
  }

  v13 = 1;
LABEL_9:

  completionCopy[2](completionCopy, v13, 0);
}

- (void)validateWithCompletion:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = v6;
  v8 = [a1 targetDevices];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [a1 excludeDevices];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v13 = 138413058;
  v14 = v6;
  v15 = 2112;
  v16 = v9;
  v17 = 2112;
  v18 = v11;
  v19 = 1024;
  v20 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - target devices: %@, exclude devices: %@. Valid: %d", &v13, 0x26u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - neither target nor exclude device(s) is specified.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end