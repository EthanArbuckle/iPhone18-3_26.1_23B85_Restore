@interface TPSCloudDeviceValidation
+ (NSArray)idsDevices;
+ (id)deviceInfoForIdentifier:(id)a3 name:(id)a4 symbol:(id)a5 dataSource:(id)a6;
+ (id)deviceInfoForIdentifier:(id)a3 preferredIdentifiers:(id)a4 productIdentifier:(id)a5 name:(id)a6 symbol:(id)a7 dataSource:(id)a8;
+ (id)idsService;
+ (id)normalizedVersion:(id)a3;
- (TPSCloudDeviceDataSource)dataSource;
- (TPSCloudDeviceValidation)initWithDeviceInfo:(id)a3;
- (id)description;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSCloudDeviceValidation

+ (id)idsService
{
  if (idsService_predicate != -1)
  {
    +[TPSCloudDeviceValidation idsService];
  }

  v3 = idsService_service;

  return v3;
}

uint64_t __38__TPSCloudDeviceValidation_idsService__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D18778]);
  idsService_service = [v0 initWithService:*MEMORY[0x277D71880]];

  return MEMORY[0x2821F96F8]();
}

+ (NSArray)idsDevices
{
  v2 = [a1 idsService];
  v3 = [v2 devices];

  return v3;
}

+ (id)normalizedVersion:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = [v3 mutableCopy];

  v5 = [v4 count];
  v6 = v5 - 4;
  if (v5 <= 4)
  {
    if (v5 != 4)
    {
      do
      {
        [v4 addObject:@"0"];
      }

      while (!__CFADD__(v6++, 1));
    }
  }

  else
  {
    [v4 removeObjectsInRange:{3, v6}];
  }

  v8 = [v4 componentsJoinedByString:@"."];

  return v8;
}

+ (id)deviceInfoForIdentifier:(id)a3 name:(id)a4 symbol:(id)a5 dataSource:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() deviceInfoForIdentifier:v12 preferredIdentifiers:0 productIdentifier:v12 name:v11 symbol:v10 dataSource:v9];

  return v13;
}

+ (id)deviceInfoForIdentifier:(id)a3 preferredIdentifiers:(id)a4 productIdentifier:(id)a5 name:(id)a6 symbol:(id)a7 dataSource:(id)a8
{
  v64 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v15)
  {
    v15 = v13;
  }

  v19 = [v18 registeredDevices];
  v56 = v14;
  v57 = [v14 count];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v59 objects:v63 count:16];
  v58 = v20;
  if (!v21)
  {

    goto LABEL_27;
  }

  v22 = v21;
  v50 = v18;
  v51 = v17;
  v52 = v16;
  v53 = v15;
  v23 = 0;
  v24 = *v60;
  v25 = v20;
  v54 = v13;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v60 != v24)
      {
        objc_enumerationMutation(v25);
      }

      v27 = *(*(&v59 + 1) + 8 * i);
      v28 = [v27 modelIdentifier];
      v29 = [v28 lowercaseString];

      if ([v29 containsString:v13])
      {
        if (!v23)
        {
          v23 = v27;
          goto LABEL_22;
        }

        if (v57)
        {
          v30 = v23;
          v31 = [v23 modelIdentifier];
          v32 = [v31 lowercaseString];

          v33 = [v56 containsObject:v32];
          v34 = [v56 containsObject:v29];
          if ((v34 & 1) != 0 || !v33)
          {
            if (v33 & 1 | ((v34 & 1) == 0))
            {

              v23 = v30;
              goto LABEL_15;
            }

            v40 = v27;

            v30 = v40;
          }

          v23 = v30;
        }

        else
        {
LABEL_15:
          v35 = [v27 productVersion];
          v36 = [a1 normalizedVersion:v35];

          v37 = [v23 productVersion];
          v38 = [a1 normalizedVersion:v37];

          if ([v38 compare:v36 options:64] == -1)
          {
            v39 = v27;

            v23 = v39;
          }

          v13 = v54;
        }

        v25 = v58;
      }

LABEL_22:
    }

    v22 = [v25 countByEnumeratingWithState:&v59 objects:v63 count:16];
  }

  while (v22);

  v16 = v52;
  v15 = v53;
  v18 = v50;
  v17 = v51;
  if (v23)
  {
    v41 = v23;
    v42 = [v23 productVersion];
    v43 = [v56 containsObject:v53];
    goto LABEL_30;
  }

LABEL_27:
  v44 = MGCopyAnswer();
  v45 = [v44 lowercaseString];
  v46 = [v45 containsString:v13];

  v42 = 0;
  if (v46)
  {
    v42 = [MEMORY[0x277D716E8] productVersion];
  }

  v41 = 0;
  v43 = 0;
LABEL_30:
  if (v42)
  {
    v47 = [[TPSCloudDeviceInfo alloc] initWithModel:v15];
    [(TPSCloudDeviceInfo *)v47 setMaxOSVersion:v42];
    [(TPSCloudDeviceInfo *)v47 setPreferred:v43];
  }

  else if ([MEMORY[0x277D71740] ignoreTargetingValidator])
  {
    v47 = [[TPSCloudDeviceInfo alloc] initWithModel:v15];
  }

  else
  {
    v47 = 0;
  }

  [(TPSCloudDeviceInfo *)v47 setDisplayName:v16];
  [(TPSCloudDeviceInfo *)v47 setSymbolIdentifier:v17];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (TPSCloudDeviceValidation)initWithDeviceInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSCloudDeviceValidation;
  v6 = [(TPSCloudDeviceValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceInfo, a3);
  }

  return v7;
}

- (void)validateWithCompletion:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v5 = [(TPSCloudDeviceValidation *)self dataSource];
  v6 = [v5 registeredDevices];

  v7 = [(TPSCloudDeviceValidation *)self deviceInfo];
  v8 = [v7 model];

  v9 = [(TPSCloudDeviceValidation *)self deviceInfo];
  v10 = [v9 minOSVersion];

  v11 = [(TPSCloudDeviceValidation *)self deviceInfo];
  v12 = [v11 maxOSVersion];

  if ([v8 length])
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __51__TPSCloudDeviceValidation_validateWithCompletion___block_invoke;
    v22 = &unk_2789B0810;
    v23 = v8;
    v26 = &v27;
    v24 = v10;
    v25 = v12;
    [v6 enumerateObjectsUsingBlock:&v19];
  }

  v13 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(TPSTargetingValidation *)self name];
    v16 = [(TPSCloudDeviceValidation *)self deviceInfo];
    v17 = [v16 debugDescription];
    v18 = *(v28 + 24);
    *buf = 138412802;
    v32 = v15;
    v33 = 2112;
    v34 = v17;
    v35 = 1024;
    v36 = v18;
    _os_log_debug_impl(&dword_232D6F000, v13, OS_LOG_TYPE_DEBUG, "%@ - device info: %@. Valid: %d", buf, 0x1Cu);
  }

  (*(v4 + 2))(v4, *(v28 + 24), 0);
  _Block_object_dispose(&v27, 8);

  v14 = *MEMORY[0x277D85DE8];
}

void __51__TPSCloudDeviceValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 modelIdentifier];
  v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:*(a1 + 32) options:1 error:0];
  if ([v7 numberOfMatchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if ([*(a1 + 40) length])
    {
      v8 = [v10 productVersion];
      *(*(*(a1 + 56) + 8) + 24) = [v8 compare:*(a1 + 40) options:64] != -1;
    }

    if (*(*(*(a1 + 56) + 8) + 24) == 1 && [*(a1 + 48) length])
    {
      v9 = [v10 productVersion];
      *(*(*(a1 + 56) + 8) + 24) = [v9 compare:*(a1 + 48) options:64] != 1;
    }

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TPSCloudDeviceValidation *)self deviceInfo];
  v7 = [v6 debugDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p deviceInfo = %@>", v5, self, v7];;

  return v8;
}

- (TPSCloudDeviceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end