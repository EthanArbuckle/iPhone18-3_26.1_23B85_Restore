@interface TRIPurgeabilityLevelMapper
+ (id)purgeabilityLevelFromCacheDeleteUrgency:(int)urgency;
+ (int)availableSpaceClassFromPurgeabilityLevel:(int)level;
- (TRIPurgeabilityLevelMapper)initWithPaths:(id)paths namespaceMetadataStorage:(id)storage;
- (int)availableSpaceClassForFactorNames:(id)names namespaceName:(id)name;
- (int)purgeabilityLevelForNamespace:(id)namespace;
@end

@implementation TRIPurgeabilityLevelMapper

- (TRIPurgeabilityLevelMapper)initWithPaths:(id)paths namespaceMetadataStorage:(id)storage
{
  pathsCopy = paths;
  storageCopy = storage;
  v12.receiver = self;
  v12.super_class = TRIPurgeabilityLevelMapper;
  v9 = [(TRIPurgeabilityLevelMapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, paths);
    objc_storeStrong(&v10->_namespaceMetadataStorage, storage);
  }

  return v10;
}

+ (id)purgeabilityLevelFromCacheDeleteUrgency:(int)urgency
{
  if ((urgency - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_27885DE98 + (urgency - 1));
  }
}

+ (int)availableSpaceClassFromPurgeabilityLevel:(int)level
{
  if ((level - 1) > 2)
  {
    return 1;
  }

  else
  {
    return dword_22EADCA2C[level - 1];
  }
}

- (int)purgeabilityLevelForNamespace:(id)namespace
{
  paths = self->_paths;
  namespaceCopy = namespace;
  namespaceDescriptorsDefaultDir = [(TRIPaths *)paths namespaceDescriptorsDefaultDir];
  v6 = [TRINamespaceDescriptor loadWithNamespaceName:namespaceCopy fromDirectory:namespaceDescriptorsDefaultDir];

  if (v6)
  {
    purgeabilityLevel = [v6 purgeabilityLevel];
  }

  else
  {
    purgeabilityLevel = 3;
  }

  return purgeabilityLevel;
}

- (int)availableSpaceClassForFactorNames:(id)names namespaceName:(id)name
{
  v28 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  nameCopy = name;
  v8 = [(TRIClientNamespaceMetadataStoring *)self->_namespaceMetadataStorage loadNamespaceMetadataForNamespaceName:nameCopy error:0];
  v9 = v8;
  if (namesCopy && v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = namesCopy;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      selfCopy = self;
      LODWORD(v13) = 0;
      v14 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v22 = 0;
          factorNamePurgeabilityLevels = [v9 factorNamePurgeabilityLevels];
          LOBYTE(v16) = [factorNamePurgeabilityLevels getEnum:&v22 forKey:v16];

          if ((v16 & 1) == 0)
          {
            v13 = [(TRIPurgeabilityLevelMapper *)selfCopy purgeabilityLevelForNamespace:nameCopy];
            goto LABEL_18;
          }

          if (v13 <= v22)
          {
            v13 = v22;
          }

          else
          {
            v13 = v13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_18:
  }

  else
  {
    v13 = [(TRIPurgeabilityLevelMapper *)self purgeabilityLevelForNamespace:nameCopy];
  }

  v18 = [TRIPurgeabilityLevelMapper availableSpaceClassFromPurgeabilityLevel:v13];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

@end