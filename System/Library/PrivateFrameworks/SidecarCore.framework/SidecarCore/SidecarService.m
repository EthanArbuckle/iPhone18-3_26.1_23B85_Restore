@interface SidecarService
+ (NSArray)allMenuServices;
+ (NSArray)allServices;
+ (NSArray)returnTypes;
+ (NSSet)allReturnTypes;
+ (id)extensionForIdentifier:(id)a3;
+ (id)menuServices;
+ (id)name;
+ (id)serviceWithIdentifier:(id)a3;
+ (id)serviceWithName:(id)a3;
+ (id)services;
+ (id)servicesForPasteboardSendTypes:(id)a3 returnTypes:(id)a4;
+ (int64_t)minimumRapportVersion;
- (BOOL)isEnabled;
- (NSArray)returnTypes;
- (NSString)localizedDescription;
- (NSString)localizedItemName;
- (NSString)name;
- (NSString)serviceExtension;
- (NSString)serviceIdentifier;
- (NSString)symbolName;
- (SidecarService)init;
- (SidecarService)initWithDevice:(id)a3;
- (id)copyWithDevice:(id)a3;
- (id)makeRequestToDevice:(id)a3;
- (id)mutableRequestMessage;
@end

@implementation SidecarService

void __37__SidecarService_Scanner_returnTypes__block_invoke()
{
  v0 = MEMORY[0x277CBEA60];
  v5 = [*MEMORY[0x277CE1DC0] identifier];
  v1 = [*MEMORY[0x277CE1E08] identifier];
  v2 = [*MEMORY[0x277CE1E80] identifier];
  v3 = [v0 arrayWithObjects:{v5, v1, v2, 0}];
  v4 = returnTypes_types;
  returnTypes_types = v3;
}

uint64_t __45__SidecarService_LosslessScanner_returnTypes__block_invoke()
{
  returnTypes_types_333 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"com.apple.DocumentCamera.scan-archive", 0}];

  return MEMORY[0x2821F96F8]();
}

void __36__SidecarService_Camera_returnTypes__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 stringForKey:@"ContinuityCameraImageType"];

  if (v1)
  {
    v2 = [MEMORY[0x277CE1CB8] _typeWithIdentifier:v1 allowUndeclared:1];
    if ([v2 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v3 = MEMORY[0x277CBEA60];
  v4 = [*MEMORY[0x277CE1DC0] identifier];
  v5 = [*MEMORY[0x277CE1E80] identifier];
  v6 = [v3 arrayWithObjects:{v4, v5, v8, 0}];
  v7 = returnTypes_types_611;
  returnTypes_types_611 = v6;
}

- (id)copyWithDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDevice:v3];

  return v4;
}

- (id)makeRequestToDevice:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = filterTargetDevice(self, v4, 0);
  if (v5)
  {
    goto LABEL_4;
  }

  v6 = SidecarCoreLogSubsystem(OS_LOG_TYPE_DEFAULT);
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v4 identifier];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_26604C000, v7, OS_LOG_TYPE_DEFAULT, "While trying to make a request to device with IDS identifier [%@], the target device was not found. Forcing a fetch to SidecarRelay to find the device.", &v15, 0xCu);
  }

  v5 = filterTargetDevice(self, v4, 1);
  if (v5)
  {
LABEL_4:
    v8 = v5;
    v9 = makeRequest(self, v5);
  }

  else
  {
    v12 = SidecarCoreLogSubsystem(OS_LOG_TYPE_DEFAULT);
    v8 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v4 identifier];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_26604C000, v8, OS_LOG_TYPE_DEFAULT, "Even after forcing a fetch to SidecarRelay, the device with identifier [%@] could not be found.  Will not be able to make a request to it.", &v15, 0xCu);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSString)symbolName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSString)localizedItemName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_2877BC080;
}

- (NSString)localizedDescription
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_2877BC080;
}

- (id)mutableRequestMessage
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  SidecarMessageSetType(v3, 1);
  v4 = [(SidecarService *)self name];
  [v3 setObject:v4 forKey:&unk_2877BFCB0];

  return v3;
}

- (NSString)serviceExtension
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSString)serviceIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isEnabled
{
  v2 = [(SidecarService *)self devices];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)returnTypes
{
  v2 = objc_opt_class();

  return [v2 returnTypes];
}

- (NSString)name
{
  v2 = objc_opt_class();

  return [v2 name];
}

- (SidecarService)initWithDevice:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() minimumRapportVersion];
  if ([v5 rapportVersion] >= v6)
  {
    v8 = [(SidecarService *)self init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_targetDevice, a3);
    }

    self = v9;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SidecarService)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    _NSRequestConcreteObject();
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SidecarService;
    self = [(SidecarService *)&v6 init];
    v4 = self;
  }

  return v4;
}

+ (int64_t)minimumRapportVersion
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return -1;
}

+ (NSSet)allReturnTypes
{
  if (allReturnTypes_once != -1)
  {
    dispatch_once(&allReturnTypes_once, &__block_literal_global_48);
  }

  v3 = allReturnTypes_allTypes;

  return v3;
}

void __32__SidecarService_allReturnTypes__block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = +[SidecarService services];
  v1 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v0, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = MEMORY[0x277CBEB98];
        v8 = [*(*(&v13 + 1) + 8 * v6) returnTypes];
        v9 = [v7 setWithArray:v8];

        [v1 unionSet:v9];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = [v1 copy];
  v11 = allReturnTypes_allTypes;
  allReturnTypes_allTypes = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (NSArray)returnTypes
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)name
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)servicesForPasteboardSendTypes:(id)a3 returnTypes:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = +[SidecarService services];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = v4;
  v7 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = MEMORY[0x277CBEB98];
        v14 = [*(*(&v20 + 1) + 8 * i) returnTypes];
        v15 = [v13 setWithArray:v14];

        if ([v15 intersectsSet:v7])
        {
          v16 = objc_opt_new();
          [v6 addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)extensionForIdentifier:(id)a3
{
  v3 = extensionForIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&extensionForIdentifier__onceToken, &__block_literal_global_44);
  }

  v5 = [extensionForIdentifier__serviceToExtension objectForKeyedSubscript:v4];

  return v5;
}

void __41__SidecarService_extensionForIdentifier___block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = +[SidecarService allServices];
  v1 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v0, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 serviceExtension];
        v9 = [v7 serviceIdentifier];
        [v1 setObject:v8 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = extensionForIdentifier__serviceToExtension;
  extensionForIdentifier__serviceToExtension = v1;

  v11 = *MEMORY[0x277D85DE8];
}

+ (NSArray)allMenuServices
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = +[SidecarService menuServices];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v3 addObject:{v10, v13}];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (NSArray)allServices
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = +[SidecarService services];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v3 addObject:{v10, v13}];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)serviceWithName:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  +[SidecarService services];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) name];
        v9 = [v3 isEqualToString:v8];

        if (v9)
        {
          v5 = objc_opt_new();
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)serviceWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  +[SidecarService allServices];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 serviceIdentifier];
        v10 = [v3 isEqualToString:v9];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)menuServices
{
  if (menuServices_once != -1)
  {
    dispatch_once(&menuServices_once, &__block_literal_global_39);
  }

  v3 = menuServices_services;

  return v3;
}

void __30__SidecarService_menuServices__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v6[0] = v0;
  v1 = objc_opt_self();
  v6[1] = v1;
  v2 = objc_opt_self();
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = menuServices_services;
  menuServices_services = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)services
{
  if (services_once != -1)
  {
    dispatch_once(&services_once, &__block_literal_global_924);
  }

  v3 = services_services;

  return v3;
}

void __26__SidecarService_services__block_invoke()
{
  v11[8] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v11[0] = v0;
  v1 = objc_opt_self();
  v11[1] = v1;
  v2 = objc_opt_self();
  v11[2] = v2;
  v3 = objc_opt_self();
  v11[3] = v3;
  v4 = objc_opt_self();
  v11[4] = v4;
  v5 = objc_opt_self();
  v11[5] = v5;
  v6 = objc_opt_self();
  v11[6] = v6;
  v7 = objc_opt_self();
  v11[7] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:8];
  v9 = services_services;
  services_services = v8;

  v10 = *MEMORY[0x277D85DE8];
}

void __36__SidecarService_Sketch_returnTypes__block_invoke()
{
  v0 = MEMORY[0x277CBEA60];
  v3 = [*MEMORY[0x277CE1E10] identifier];
  v1 = [v0 arrayWithObjects:{v3, @"com.apple.drawing", 0}];
  v2 = returnTypes_types_1060;
  returnTypes_types_1060 = v1;
}

@end