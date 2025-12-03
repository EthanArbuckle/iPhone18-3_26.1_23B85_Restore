@interface SXAXCustomRotorProvider
- (id)graphSearchForAvailableCustomRotorsAndUpdateCache;
- (void)initWithRootElement:(void *)element;
@end

@implementation SXAXCustomRotorProvider

- (void)initWithRootElement:(void *)element
{
  v3 = a2;
  if (element)
  {
    v7.receiver = element;
    v7.super_class = SXAXCustomRotorProvider;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    element = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 2, v3);
      v5 = element[1];
      element[1] = 0;
    }
  }

  return element;
}

- (id)graphSearchForAvailableCustomRotorsAndUpdateCache
{
  v55 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v2 = *(self + 8);
    v3 = [v2 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v49;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v49 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v48 + 1) + 8 * i) setRotorItems:0];
        }

        v4 = [v2 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v4);
    }

    defaultVoiceOverOptions = [MEMORY[0x1E69DB5C8] defaultVoiceOverOptions];
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained((self + 16));
    v34 = defaultVoiceOverOptions;
    v9 = [WeakRetained _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];

    v10 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      v14 = &selRef_videoPlayerViewController_initiatedPlaybackOfVideo_;
      v36 = *v45;
      do
      {
        v15 = 0;
        v37 = v12;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v44 + 1) + 8 * v15);
          if ([v16 conformsToProtocol:v14[341]])
          {
            v39 = v15;
            v17 = v16;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            supportedCustomRotors = [v17 supportedCustomRotors];
            v19 = [supportedCustomRotors countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v41;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v41 != v21)
                  {
                    objc_enumerationMutation(supportedCustomRotors);
                  }

                  v23 = *(*(&v40 + 1) + 8 * j);
                  v24 = [v17 itemsForCustomRotor:v23];
                  if ([v24 count])
                  {
                    [v10 addObject:v23];
                    v25 = objc_alloc(MEMORY[0x1E695DFA0]);
                    rotorItems = [v23 rotorItems];
                    v27 = [v25 initWithOrderedSet:rotorItems];

                    array = [v24 array];
                    [v27 addObjectsFromArray:array];

                    v29 = [v27 copy];
                    [v23 setRotorItems:v29];
                  }
                }

                v20 = [supportedCustomRotors countByEnumeratingWithState:&v40 objects:v52 count:16];
              }

              while (v20);
            }

            v13 = v36;
            v12 = v37;
            v14 = &selRef_videoPlayerViewController_initiatedPlaybackOfVideo_;
            v15 = v39;
          }

          ++v15;
        }

        while (v15 != v12);
        v12 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v12);
    }

    v30 = [v10 copy];
    v31 = *(selfCopy + 8);
    *(selfCopy + 8) = v30;

    v32 = *(selfCopy + 8);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

@end