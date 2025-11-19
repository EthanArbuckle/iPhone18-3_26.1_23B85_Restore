@interface CSEventListenerConfig
- (BOOL)supportsBundleID:(id)a3;
- (BOOL)supportsContentType:(id)a3;
@end

@implementation CSEventListenerConfig

- (BOOL)supportsBundleID:(id)a3
{
  v4 = a3;
  v5 = [(CSEventListenerConfig *)self includeBundleIDs];
  if ([v5 count])
  {
    v6 = [(CSEventListenerConfig *)self includeBundleIDs];
    v7 = [v6 containsObject:v4];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = [(CSEventListenerConfig *)self excludeBundleIDs];
  if ([v9 count])
  {
    v10 = [(CSEventListenerConfig *)self excludeBundleIDs];
    v11 = [v10 containsObject:v4];

    v8 = v11 ^ 1;
  }

  else
  {

    v8 = 1;
  }

LABEL_8:

  return v8 & 1;
}

- (BOOL)supportsContentType:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSEventListenerConfig *)self includeContentTypes];
  if ([v5 count])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CSEventListenerConfig *)self excludeContentTypes];
    v6 = [v7 count] == 0;
  }

  v8 = 1;
  if (v4)
  {
    if (!v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSMutableSet *)self->_positiveSet containsObject:v4]& 1) == 0)
      {
        if (([(NSMutableSet *)self->_negativeSet containsObject:v4]& 1) == 0)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v9 = [(CSEventListenerConfig *)self includeContentTypes];
          v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v32;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v32 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                if (UTTypeConformsTo(v4, *(*(&v31 + 1) + 8 * i)))
                {
                  positiveSet = self->_positiveSet;
                  if (!positiveSet)
                  {
                    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
                    v21 = self->_positiveSet;
                    self->_positiveSet = v20;

                    positiveSet = self->_positiveSet;
                  }

                  [(NSMutableSet *)positiveSet addObject:v4];

                  v8 = 1;
                  goto LABEL_30;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v14 = [(CSEventListenerConfig *)self excludeContentTypes];
          v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v28;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v28 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                if (UTTypeConformsTo(v4, *(*(&v27 + 1) + 8 * j)))
                {
                  negativeSet = self->_negativeSet;
                  if (!negativeSet)
                  {
                    v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
                    v26 = self->_negativeSet;
                    self->_negativeSet = v25;

                    negativeSet = self->_negativeSet;
                  }

                  [(NSMutableSet *)negativeSet addObject:v4];

                  goto LABEL_9;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          [(NSMutableSet *)self->_negativeSet addObject:v4];
        }

LABEL_9:
        v8 = 0;
      }
    }
  }

LABEL_30:

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

@end