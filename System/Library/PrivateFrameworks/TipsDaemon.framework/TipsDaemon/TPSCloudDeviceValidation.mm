@interface TPSCloudDeviceValidation
+ (NSArray)idsDevices;
+ (id)deviceInfoForIdentifier:(id)identifier name:(id)name symbol:(id)symbol dataSource:(id)source;
+ (id)deviceInfoForIdentifier:(id)identifier preferredIdentifiers:(id)identifiers productIdentifier:(id)productIdentifier name:(id)name symbol:(id)symbol dataSource:(id)source;
+ (id)idsService;
+ (id)normalizedVersion:(id)version;
- (TPSCloudDeviceDataSource)dataSource;
- (TPSCloudDeviceValidation)initWithDeviceInfo:(id)info;
- (id)description;
- (void)validateWithCompletion:(id)completion;
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
  idsService = [self idsService];
  devices = [idsService devices];

  return devices;
}

+ (id)normalizedVersion:(id)version
{
  v3 = [version componentsSeparatedByString:@"."];
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

+ (id)deviceInfoForIdentifier:(id)identifier name:(id)name symbol:(id)symbol dataSource:(id)source
{
  sourceCopy = source;
  symbolCopy = symbol;
  nameCopy = name;
  identifierCopy = identifier;
  v13 = [objc_opt_class() deviceInfoForIdentifier:identifierCopy preferredIdentifiers:0 productIdentifier:identifierCopy name:nameCopy symbol:symbolCopy dataSource:sourceCopy];

  return v13;
}

+ (id)deviceInfoForIdentifier:(id)identifier preferredIdentifiers:(id)identifiers productIdentifier:(id)productIdentifier name:(id)name symbol:(id)symbol dataSource:(id)source
{
  v64 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  productIdentifierCopy = productIdentifier;
  nameCopy = name;
  symbolCopy = symbol;
  sourceCopy = source;
  if (!productIdentifierCopy)
  {
    productIdentifierCopy = identifierCopy;
  }

  registeredDevices = [sourceCopy registeredDevices];
  v56 = identifiersCopy;
  v57 = [identifiersCopy count];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v20 = registeredDevices;
  v21 = [v20 countByEnumeratingWithState:&v59 objects:v63 count:16];
  v58 = v20;
  if (!v21)
  {

    goto LABEL_27;
  }

  v22 = v21;
  v50 = sourceCopy;
  v51 = symbolCopy;
  v52 = nameCopy;
  v53 = productIdentifierCopy;
  v23 = 0;
  v24 = *v60;
  v25 = v20;
  v54 = identifierCopy;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v60 != v24)
      {
        objc_enumerationMutation(v25);
      }

      v27 = *(*(&v59 + 1) + 8 * i);
      modelIdentifier = [v27 modelIdentifier];
      lowercaseString = [modelIdentifier lowercaseString];

      if ([lowercaseString containsString:identifierCopy])
      {
        if (!v23)
        {
          v23 = v27;
          goto LABEL_22;
        }

        if (v57)
        {
          v30 = v23;
          modelIdentifier2 = [v23 modelIdentifier];
          lowercaseString2 = [modelIdentifier2 lowercaseString];

          v33 = [v56 containsObject:lowercaseString2];
          v34 = [v56 containsObject:lowercaseString];
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
          productVersion = [v27 productVersion];
          v36 = [self normalizedVersion:productVersion];

          productVersion2 = [v23 productVersion];
          v38 = [self normalizedVersion:productVersion2];

          if ([v38 compare:v36 options:64] == -1)
          {
            v39 = v27;

            v23 = v39;
          }

          identifierCopy = v54;
        }

        v25 = v58;
      }

LABEL_22:
    }

    v22 = [v25 countByEnumeratingWithState:&v59 objects:v63 count:16];
  }

  while (v22);

  nameCopy = v52;
  productIdentifierCopy = v53;
  sourceCopy = v50;
  symbolCopy = v51;
  if (v23)
  {
    v41 = v23;
    productVersion3 = [v23 productVersion];
    v43 = [v56 containsObject:v53];
    goto LABEL_30;
  }

LABEL_27:
  v44 = MGCopyAnswer();
  lowercaseString3 = [v44 lowercaseString];
  v46 = [lowercaseString3 containsString:identifierCopy];

  productVersion3 = 0;
  if (v46)
  {
    productVersion3 = [MEMORY[0x277D716E8] productVersion];
  }

  v41 = 0;
  v43 = 0;
LABEL_30:
  if (productVersion3)
  {
    v47 = [[TPSCloudDeviceInfo alloc] initWithModel:productIdentifierCopy];
    [(TPSCloudDeviceInfo *)v47 setMaxOSVersion:productVersion3];
    [(TPSCloudDeviceInfo *)v47 setPreferred:v43];
  }

  else if ([MEMORY[0x277D71740] ignoreTargetingValidator])
  {
    v47 = [[TPSCloudDeviceInfo alloc] initWithModel:productIdentifierCopy];
  }

  else
  {
    v47 = 0;
  }

  [(TPSCloudDeviceInfo *)v47 setDisplayName:nameCopy];
  [(TPSCloudDeviceInfo *)v47 setSymbolIdentifier:symbolCopy];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (TPSCloudDeviceValidation)initWithDeviceInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = TPSCloudDeviceValidation;
  v6 = [(TPSCloudDeviceValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceInfo, info);
  }

  return v7;
}

- (void)validateWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  dataSource = [(TPSCloudDeviceValidation *)self dataSource];
  registeredDevices = [dataSource registeredDevices];

  deviceInfo = [(TPSCloudDeviceValidation *)self deviceInfo];
  model = [deviceInfo model];

  deviceInfo2 = [(TPSCloudDeviceValidation *)self deviceInfo];
  minOSVersion = [deviceInfo2 minOSVersion];

  deviceInfo3 = [(TPSCloudDeviceValidation *)self deviceInfo];
  maxOSVersion = [deviceInfo3 maxOSVersion];

  if ([model length])
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __51__TPSCloudDeviceValidation_validateWithCompletion___block_invoke;
    v22 = &unk_2789B0810;
    v23 = model;
    v26 = &v27;
    v24 = minOSVersion;
    v25 = maxOSVersion;
    [registeredDevices enumerateObjectsUsingBlock:&v19];
  }

  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    name = [(TPSTargetingValidation *)self name];
    deviceInfo4 = [(TPSCloudDeviceValidation *)self deviceInfo];
    v17 = [deviceInfo4 debugDescription];
    v18 = *(v28 + 24);
    *buf = 138412802;
    v32 = name;
    v33 = 2112;
    v34 = v17;
    v35 = 1024;
    v36 = v18;
    _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - device info: %@. Valid: %d", buf, 0x1Cu);
  }

  (*(completionCopy + 2))(completionCopy, *(v28 + 24), 0);
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
  deviceInfo = [(TPSCloudDeviceValidation *)self deviceInfo];
  v7 = [deviceInfo debugDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p deviceInfo = %@>", v5, self, v7];;

  return v8;
}

- (TPSCloudDeviceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end