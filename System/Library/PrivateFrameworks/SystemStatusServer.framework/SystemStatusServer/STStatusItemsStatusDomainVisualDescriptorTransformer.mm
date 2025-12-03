@interface STStatusItemsStatusDomainVisualDescriptorTransformer
- (STStatusItemsStatusDomainVisualDescriptorTransformer)init;
- (STStatusItemsStatusDomainVisualDescriptorTransformer)initWithStatusItemsManager:(id)manager;
- (id)transformedDataForData:(id)data domain:(unint64_t)domain;
@end

@implementation STStatusItemsStatusDomainVisualDescriptorTransformer

- (STStatusItemsStatusDomainVisualDescriptorTransformer)init
{
  v3 = +[STStatusItemsManager sharedInstance];
  v4 = [(STStatusItemsStatusDomainVisualDescriptorTransformer *)self initWithStatusItemsManager:v3];

  return v4;
}

- (STStatusItemsStatusDomainVisualDescriptorTransformer)initWithStatusItemsManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = STStatusItemsStatusDomainVisualDescriptorTransformer;
  v6 = [(STStatusItemsStatusDomainVisualDescriptorTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statusItemsManager, manager);
  }

  return v7;
}

- (id)transformedDataForData:(id)data domain:(unint64_t)domain
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = dataCopy;
  v8 = v7;
  v9 = v7;
  if (isKindOfClass)
  {
    v9 = [v7 mutableCopy];
    selfCopy = self;
    statusItemsManager = self->_statusItemsManager;
    activeStatusItems = [v8 activeStatusItems];
    v12 = [(STStatusItemsManager *)statusItemsManager validStatusItemsForStatusItems:activeStatusItems];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    attributions = [v8 attributions];
    v14 = [attributions countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v48;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(attributions);
          }

          v18 = *(*(&v47 + 1) + 8 * i);
          statusItemIdentifier = [v18 statusItemIdentifier];
          v20 = [v12 containsObject:statusItemIdentifier];

          if ((v20 & 1) == 0)
          {
            [v9 removeAttribution:v18];
          }
        }

        v15 = [attributions countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v15);
    }

    activeStatusItems2 = [v9 activeStatusItems];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = [activeStatusItems2 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v44;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(activeStatusItems2);
          }

          v26 = *(*(&v43 + 1) + 8 * j);
          v27 = [v8 visualDescriptorForStatusItemWithIdentifier:v26];

          if (!v27)
          {
            v28 = [(STStatusItemsManager *)selfCopy->_statusItemsManager visualDescriptorForStatusItemWithIdentifier:v26];
            [v9 setVisualDescriptor:v28 forStatusItemWithIdentifier:v26];
          }
        }

        v23 = [activeStatusItems2 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v23);
    }

    statusItemsWithVisualDescriptors = [v8 statusItemsWithVisualDescriptors];
    v30 = [statusItemsWithVisualDescriptors mutableCopy];

    [v30 minusSet:activeStatusItems2];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v40;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [v9 setVisualDescriptor:0 forStatusItemWithIdentifier:*(*(&v39 + 1) + 8 * k)];
        }

        v33 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v33);
    }
  }

  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

@end