@interface SBSystemApertureSceneElementSecureFlipBookConfiguration
- (SBSystemApertureSceneElementSecureFlipBookConfiguration)initWithConfiguration:(id)configuration scene:(id)scene delegate:(id)delegate;
- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)mode;
- (id)referenceViewForDescription:(id)description;
@end

@implementation SBSystemApertureSceneElementSecureFlipBookConfiguration

- (SBSystemApertureSceneElementSecureFlipBookConfiguration)initWithConfiguration:(id)configuration scene:(id)scene delegate:(id)delegate
{
  v52 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  sceneCopy = scene;
  delegateCopy = delegate;
  v49.receiver = self;
  v49.super_class = SBSystemApertureSceneElementSecureFlipBookConfiguration;
  v11 = [(SBSystemApertureSceneElementSecureFlipBookConfiguration *)&v49 init];
  if (v11)
  {
    configurationName = [configurationCopy configurationName];
    v13 = [configurationName copy];
    configurationName = v11->_configurationName;
    v11->_configurationName = v13;

    objc_storeWeak(&v11->_scene, sceneCopy);
    v32 = delegateCopy;
    objc_storeWeak(&v11->_delegate, delegateCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v33 = configurationCopy;
    [configurationCopy layoutModesToComponentFlipBookDescriptions];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v48 = 0u;
    v37 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v37)
    {
      v35 = *v46;
      do
      {
        v15 = 0;
        do
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v39 = v15;
          v16 = *(*(&v45 + 1) + 8 * v15);
          layoutMode = [v16 layoutMode];
          v38 = SALayoutModeForClientLayoutMode([layoutMode integerValue]);
          array = [MEMORY[0x277CBEB18] array];
          descriptions = [v16 descriptions];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v40 = descriptions;
          v20 = [descriptions countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v42;
            do
            {
              v23 = 0;
              do
              {
                if (*v42 != v22)
                {
                  objc_enumerationMutation(v40);
                }

                v24 = *(*(&v41 + 1) + 8 * v23);
                v25 = [SBSystemApertureSceneElementSecureFlipBookDescription alloc];
                configurationName2 = [(SBSystemApertureSceneElementSecureFlipBookConfiguration *)v11 configurationName];
                v27 = [(SBSystemApertureSceneElementSecureFlipBookDescription *)v25 initWithConfigurationName:configurationName2 layoutMode:layoutMode clientDescription:v24 scene:sceneCopy delegate:v11];

                [array addObject:v27];
                ++v23;
              }

              while (v21 != v23);
              v21 = [v40 countByEnumeratingWithState:&v41 objects:v50 count:16];
            }

            while (v21);
          }

          v28 = [MEMORY[0x277CCABB0] numberWithInteger:v38];
          [dictionary setObject:array forKey:v28];

          v15 = v39 + 1;
        }

        while (v39 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v37);
    }

    v29 = [dictionary copy];
    layoutModesToComponentFlipBookDescriptions = v11->_layoutModesToComponentFlipBookDescriptions;
    v11->_layoutModesToComponentFlipBookDescriptions = v29;

    delegateCopy = v32;
    configurationCopy = v33;
  }

  return v11;
}

- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)mode
{
  layoutModesToComponentFlipBookDescriptions = self->_layoutModesToComponentFlipBookDescriptions;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v5 = [(NSDictionary *)layoutModesToComponentFlipBookDescriptions objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

- (id)referenceViewForDescription:(id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained referenceViewForConfiguration:self];

  return v5;
}

@end