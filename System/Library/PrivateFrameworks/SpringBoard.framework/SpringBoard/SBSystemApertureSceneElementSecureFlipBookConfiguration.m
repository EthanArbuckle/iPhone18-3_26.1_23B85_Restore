@interface SBSystemApertureSceneElementSecureFlipBookConfiguration
- (SBSystemApertureSceneElementSecureFlipBookConfiguration)initWithConfiguration:(id)a3 scene:(id)a4 delegate:(id)a5;
- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)a3;
- (id)referenceViewForDescription:(id)a3;
@end

@implementation SBSystemApertureSceneElementSecureFlipBookConfiguration

- (SBSystemApertureSceneElementSecureFlipBookConfiguration)initWithConfiguration:(id)a3 scene:(id)a4 delegate:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v49.receiver = self;
  v49.super_class = SBSystemApertureSceneElementSecureFlipBookConfiguration;
  v11 = [(SBSystemApertureSceneElementSecureFlipBookConfiguration *)&v49 init];
  if (v11)
  {
    v12 = [v8 configurationName];
    v13 = [v12 copy];
    configurationName = v11->_configurationName;
    v11->_configurationName = v13;

    objc_storeWeak(&v11->_scene, v9);
    v32 = v10;
    objc_storeWeak(&v11->_delegate, v10);
    v36 = [MEMORY[0x277CBEB38] dictionary];
    v33 = v8;
    [v8 layoutModesToComponentFlipBookDescriptions];
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
          v17 = [v16 layoutMode];
          v38 = SALayoutModeForClientLayoutMode([v17 integerValue]);
          v18 = [MEMORY[0x277CBEB18] array];
          v19 = [v16 descriptions];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v40 = v19;
          v20 = [v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
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
                v26 = [(SBSystemApertureSceneElementSecureFlipBookConfiguration *)v11 configurationName];
                v27 = [(SBSystemApertureSceneElementSecureFlipBookDescription *)v25 initWithConfigurationName:v26 layoutMode:v17 clientDescription:v24 scene:v9 delegate:v11];

                [v18 addObject:v27];
                ++v23;
              }

              while (v21 != v23);
              v21 = [v40 countByEnumeratingWithState:&v41 objects:v50 count:16];
            }

            while (v21);
          }

          v28 = [MEMORY[0x277CCABB0] numberWithInteger:v38];
          [v36 setObject:v18 forKey:v28];

          v15 = v39 + 1;
        }

        while (v39 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v37);
    }

    v29 = [v36 copy];
    layoutModesToComponentFlipBookDescriptions = v11->_layoutModesToComponentFlipBookDescriptions;
    v11->_layoutModesToComponentFlipBookDescriptions = v29;

    v10 = v32;
    v8 = v33;
  }

  return v11;
}

- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)a3
{
  layoutModesToComponentFlipBookDescriptions = self->_layoutModesToComponentFlipBookDescriptions;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
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

- (id)referenceViewForDescription:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained referenceViewForConfiguration:self];

  return v5;
}

@end