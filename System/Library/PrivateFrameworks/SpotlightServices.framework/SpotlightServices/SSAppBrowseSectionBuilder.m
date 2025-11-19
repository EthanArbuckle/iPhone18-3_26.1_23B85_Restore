@interface SSAppBrowseSectionBuilder
+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4;
+ (id)_bundleIdToOnenessBundleId;
+ (id)appSectionWithTitle:(id)a3 identifier:(id)a4 style:(int)a5 appIdentities:(id)a6;
+ (void)updateBundleIdToOnenessBundleIdMapping:(id)a3;
- (id)buildSection;
@end

@implementation SSAppBrowseSectionBuilder

+ (void)updateBundleIdToOnenessBundleIdMapping:(id)a3
{
  v3 = a3;
  if (updateBundleIdToOnenessBundleIdMapping__onceToken != -1)
  {
    +[SSAppBrowseSectionBuilder updateBundleIdToOnenessBundleIdMapping:];
  }

  [_ssOnenessBundleIdMappingLock lock];
  v4 = _ssBundleIdToOnenessBundleId;
  _ssBundleIdToOnenessBundleId = v3;
  v5 = v3;

  [_ssOnenessBundleIdMappingLock unlock];
}

uint64_t __68__SSAppBrowseSectionBuilder_updateBundleIdToOnenessBundleIdMapping___block_invoke()
{
  _ssOnenessBundleIdMappingLock = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_bundleIdToOnenessBundleId
{
  [_ssOnenessBundleIdMappingLock lock];
  v2 = [_ssBundleIdToOnenessBundleId copy];
  [_ssOnenessBundleIdMappingLock unlock];

  return v2;
}

+ (id)appSectionWithTitle:(id)a3 identifier:(id)a4 style:(int)a5 appIdentities:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_opt_new();
  v13 = [a1 _bundleIdToOnenessBundleId];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [a1 _resultForAppIdentity:*(*(&v24 + 1) + 8 * i) bundleIdToOnenessBundleIdMapping:v13];
        [v12 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v20 = [a1 sectionWithTitle:v9 identifier:v10 style:a5 results:v12];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4
{
  if ([a4 queryKind] != 14)
  {
    return 0;
  }

  return isMacOS();
}

- (id)buildSection
{
  v3 = [(SSSectionBuilder *)self queryContext];
  if ([v3 displayAllResultsAsIcons])
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  v5 = [(SSSectionBuilder *)self section];
  v6 = [v5 resultSet];
  v7 = [v6 array];
  v8 = [SSAppBrowseSectionBuilder appSectionWithTitle:&stru_1F556FE60 identifier:@"com.apple.spotlight.zkw.apps" style:v4 results:v7];

  return v8;
}

@end