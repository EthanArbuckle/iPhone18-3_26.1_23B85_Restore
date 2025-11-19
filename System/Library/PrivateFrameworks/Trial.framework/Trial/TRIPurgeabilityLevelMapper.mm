@interface TRIPurgeabilityLevelMapper
+ (id)purgeabilityLevelFromCacheDeleteUrgency:(int)a3;
+ (int)availableSpaceClassFromPurgeabilityLevel:(int)a3;
- (TRIPurgeabilityLevelMapper)initWithPaths:(id)a3 namespaceMetadataStorage:(id)a4;
- (int)availableSpaceClassForFactorNames:(id)a3 namespaceName:(id)a4;
- (int)purgeabilityLevelForNamespace:(id)a3;
@end

@implementation TRIPurgeabilityLevelMapper

- (TRIPurgeabilityLevelMapper)initWithPaths:(id)a3 namespaceMetadataStorage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRIPurgeabilityLevelMapper;
  v9 = [(TRIPurgeabilityLevelMapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, a3);
    objc_storeStrong(&v10->_namespaceMetadataStorage, a4);
  }

  return v10;
}

+ (id)purgeabilityLevelFromCacheDeleteUrgency:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_27885DE98 + (a3 - 1));
  }
}

+ (int)availableSpaceClassFromPurgeabilityLevel:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return dword_22EADCA2C[a3 - 1];
  }
}

- (int)purgeabilityLevelForNamespace:(id)a3
{
  paths = self->_paths;
  v4 = a3;
  v5 = [(TRIPaths *)paths namespaceDescriptorsDefaultDir];
  v6 = [TRINamespaceDescriptor loadWithNamespaceName:v4 fromDirectory:v5];

  if (v6)
  {
    v7 = [v6 purgeabilityLevel];
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (int)availableSpaceClassForFactorNames:(id)a3 namespaceName:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TRIClientNamespaceMetadataStoring *)self->_namespaceMetadataStorage loadNamespaceMetadataForNamespaceName:v7 error:0];
  v9 = v8;
  if (v6 && v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v21 = self;
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
          v17 = [v9 factorNamePurgeabilityLevels];
          LOBYTE(v16) = [v17 getEnum:&v22 forKey:v16];

          if ((v16 & 1) == 0)
          {
            v13 = [(TRIPurgeabilityLevelMapper *)v21 purgeabilityLevelForNamespace:v7];
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
    v13 = [(TRIPurgeabilityLevelMapper *)self purgeabilityLevelForNamespace:v7];
  }

  v18 = [TRIPurgeabilityLevelMapper availableSpaceClassFromPurgeabilityLevel:v13];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

@end