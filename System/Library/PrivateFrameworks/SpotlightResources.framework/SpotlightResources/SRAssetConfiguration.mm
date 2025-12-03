@interface SRAssetConfiguration
+ (id)configuration;
- (SRAssetConfiguration)init;
- (id)assetTypes;
- (id)debugDescription;
- (void)clear;
- (void)setProperties:(id)properties client:(id)client;
@end

@implementation SRAssetConfiguration

+ (id)configuration
{
  v2 = objc_alloc_init(SRAssetConfiguration);

  return v2;
}

- (SRAssetConfiguration)init
{
  v14.receiver = self;
  v14.super_class = SRAssetConfiguration;
  v2 = [(SRAssetConfiguration *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v2->_properties;
    v2->_properties = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    contentTypeMap = v2->_contentTypeMap;
    v2->_contentTypeMap = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clientMap = v2->_clientMap;
    v2->_clientMap = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deliveryTypeMap = v2->_deliveryTypeMap;
    v2->_deliveryTypeMap = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    deliveryTypes = v2->_deliveryTypes;
    v2->_deliveryTypes = v11;
  }

  return v2;
}

- (id)assetTypes
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_properties;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = objc_alloc_init(SRAssetType);
        [(SRAssetType *)v8 setAssetType:v7];
        v9 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v7];
        v10 = [v9 objectForKeyedSubscript:@"XPCName"];
        [(SRAssetType *)v8 setXpcName:v10];

        v11 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v7];
        v12 = [v11 objectForKeyedSubscript:@"DeliveryTypes"];
        [(SRAssetType *)v8 setContentTypeMap:v12];

        [(SRAssetType *)v8 setDeliveryTypeMap:self->_deliveryTypeMap];
        contentTypeMap = [(SRAssetType *)v8 contentTypeMap];
        if (contentTypeMap)
        {
          v14 = objc_alloc(MEMORY[0x1E695DFD8]);
          contentTypeMap2 = [(SRAssetType *)v8 contentTypeMap];
          allKeys = [contentTypeMap2 allKeys];
          v17 = [v14 initWithArray:allKeys];
          [(SRAssetType *)v8 setDeliveryTypes:v17];
        }

        else
        {
          contentTypeMap2 = objc_alloc_init(MEMORY[0x1E695DFD8]);
          [(SRAssetType *)v8 setDeliveryTypes:contentTypeMap2];
        }

        v18 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v7];
        v19 = [v18 objectForKeyedSubscript:@"CompatibilityVersion"];
        if (v19)
        {
          v20 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v7];
          v21 = [v20 objectForKeyedSubscript:@"CompatibilityVersion"];
          -[SRAssetType setCompatibilityVersion:](v8, "setCompatibilityVersion:", [v21 integerValue]);
        }

        else
        {
          [(SRAssetType *)v8 setCompatibilityVersion:-1];
        }

        [v25 setObject:v8 forKeyedSubscript:v7];
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)debugDescription
{
  v3 = [&stru_1F2422260 mutableCopy];
  v4 = v3;
  if (self->_properties)
  {
    [v3 appendFormat:@"properties: %@\n\n", self->_properties];
  }

  if (self->_contentTypeMap)
  {
    [v4 appendFormat:@"contentTypeMap: %@\n\n", self->_contentTypeMap];
  }

  if (self->_clientMap)
  {
    [v4 appendFormat:@"clientMap: %@\n\n", self->_clientMap];
  }

  if (self->_deliveryTypeMap)
  {
    [v4 appendFormat:@"deliveryTypeMap: %@\n\n", self->_deliveryTypeMap];
  }

  if (self->_deliveryTypes)
  {
    [v4 appendFormat:@"deliveryTypes: %@\n\n", self->_deliveryTypes];
  }

  return v4;
}

- (void)setProperties:(id)properties client:(id)client
{
  v92 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  clientCopy = client;
  v8 = [propertiesCopy objectForKeyedSubscript:@"AssetType"];
  v9 = [propertiesCopy objectForKeyedSubscript:@"AssetProperties"];
  v10 = [v9 objectForKeyedSubscript:@"_XPCName"];
  v11 = [v9 objectForKeyedSubscript:@"_CompatibilityVersion"];
  v12 = [propertiesCopy objectForKeyedSubscript:@"DeliveryTypes"];
  v67 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (!v10)
  {
    v10 = v8;
  }

  if (v8 && v12)
  {
    v60 = v10;
    v61 = v9;
    v59 = v11;
    v63 = propertiesCopy;
    v64 = v12;
    v65 = clientCopy;
    if (v10 && v11)
    {
      v13 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];

      if (!v13)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(NSMutableDictionary *)self->_properties setObject:v14 forKeyedSubscript:v8];
      }

      v15 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
      [v15 setObject:v10 forKeyedSubscript:@"XPCName"];

      v16 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
      [v16 setObject:v11 forKeyedSubscript:@"CompatibilityVersion"];

      v17 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
      v18 = [v17 objectForKeyedSubscript:@"DeliveryTypes"];

      if (!v18)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v20 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
        [v20 setObject:v19 forKeyedSubscript:@"DeliveryTypes"];
      }

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v21 = v12;
      obj = [v21 countByEnumeratingWithState:&v84 objects:v91 count:16];
      if (obj)
      {
        v68 = *v85;
        do
        {
          for (i = 0; i != obj; i = i + 1)
          {
            if (*v85 != v68)
            {
              objc_enumerationMutation(v21);
            }

            v23 = *(*(&v84 + 1) + 8 * i);
            v24 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
            v25 = [v24 objectForKeyedSubscript:@"DeliveryTypes"];
            v26 = [v25 objectForKeyedSubscript:v23];

            if (!v26)
            {
              v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v28 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
              v29 = [v28 objectForKeyedSubscript:@"DeliveryTypes"];
              [v29 setObject:v27 forKeyedSubscript:v23];
            }

            v30 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
            v31 = [v30 objectForKeyedSubscript:@"DeliveryTypes"];
            v32 = [v31 objectForKeyedSubscript:v23];
            v33 = [v21 objectForKeyedSubscript:v23];
            [v32 addObjectsFromArray:v33];
          }

          obj = [v21 countByEnumeratingWithState:&v84 objects:v91 count:16];
        }

        while (obj);
      }

      clientCopy = v65;
    }

    v62 = v8;
    v34 = [(NSMutableDictionary *)self->_clientMap objectForKeyedSubscript:clientCopy];

    if (!v34)
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(NSMutableDictionary *)self->_clientMap setObject:v35 forKeyedSubscript:clientCopy];
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obja = v12;
    v69 = [obja countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v69)
    {
      v66 = *v81;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v81 != v66)
          {
            objc_enumerationMutation(obja);
          }

          v37 = *(*(&v80 + 1) + 8 * j);
          [(NSMutableSet *)self->_deliveryTypes addObject:v37];
          v38 = [obja objectForKeyedSubscript:v37];
          [v67 addObjectsFromArray:v38];

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v39 = [obja objectForKeyedSubscript:v37];
          v40 = [v39 countByEnumeratingWithState:&v76 objects:v89 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v77;
            do
            {
              for (k = 0; k != v41; ++k)
              {
                if (*v77 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v76 + 1) + 8 * k);
                v45 = [(NSMutableDictionary *)self->_deliveryTypeMap objectForKeyedSubscript:v44];

                if (!v45)
                {
                  v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  [(NSMutableDictionary *)self->_deliveryTypeMap setObject:v46 forKeyedSubscript:v44];
                }

                v47 = [(NSMutableDictionary *)self->_deliveryTypeMap objectForKeyedSubscript:v44];
                [v47 addObject:v37];
              }

              v41 = [v39 countByEnumeratingWithState:&v76 objects:v89 count:16];
            }

            while (v41);
          }
        }

        v69 = [obja countByEnumeratingWithState:&v80 objects:v90 count:16];
      }

      while (v69);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v48 = v67;
    v49 = [v48 countByEnumeratingWithState:&v72 objects:v88 count:16];
    clientCopy = v65;
    if (v49)
    {
      v50 = v49;
      v51 = *v73;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v73 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v72 + 1) + 8 * m);
          v54 = [(NSMutableDictionary *)self->_contentTypeMap objectForKeyedSubscript:v53];

          if (!v54)
          {
            v55 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [(NSMutableDictionary *)self->_contentTypeMap setObject:v55 forKeyedSubscript:v53];
          }

          v56 = [(NSMutableDictionary *)self->_contentTypeMap objectForKeyedSubscript:v53];
          [v56 addObject:v65];

          v57 = [(NSMutableDictionary *)self->_clientMap objectForKeyedSubscript:v65];
          [v57 addObject:v53];
        }

        v50 = [v48 countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v50);
    }

    v8 = v62;
    propertiesCopy = v63;
    v10 = v60;
    v9 = v61;
    v11 = v59;
    v12 = v64;
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)clear
{
  [(NSMutableDictionary *)self->_properties removeAllObjects];
  [(NSMutableDictionary *)self->_contentTypeMap removeAllObjects];
  [(NSMutableDictionary *)self->_clientMap removeAllObjects];
  deliveryTypeMap = self->_deliveryTypeMap;

  [(NSMutableDictionary *)deliveryTypeMap removeAllObjects];
}

@end