@interface STStatusItemsBundleRecord
- (STStatusItemsBundleRecord)initWithBundleInfoDictionary:(id)dictionary bundleRecordIdentifier:(id)identifier bundleURL:(id)l;
@end

@implementation STStatusItemsBundleRecord

- (STStatusItemsBundleRecord)initWithBundleInfoDictionary:(id)dictionary bundleRecordIdentifier:(id)identifier bundleURL:(id)l
{
  v40 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = STStatusItemsBundleRecord;
  v9 = [(STBundleRecord_Base *)&v36 initWithBundleInfoDictionary:dictionaryCopy bundleRecordIdentifier:identifier bundleURL:l];
  v10 = v9;
  if (v9)
  {
    v29 = v9;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v30 = [MEMORY[0x277CBEB58] set];
    v11 = [dictionaryCopy bs_safeArrayForKey:@"STStatusItems"];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        v15 = 0;
        do
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v32 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 bs_safeStringForKey:@"Identifier"];
            v18 = [v16 bs_safeDictionaryForKey:@"VisualDescriptor"];
            v19 = [objc_alloc(MEMORY[0x277D6BB48]) initWithPlistRepresentation:v18];
            v20 = v19;
            if (v17)
            {
              v21 = v19 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (v21)
            {
              v22 = STSystemStatusLogBundleLoading();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138477827;
                v38 = v17;
                _os_log_error_impl(&dword_26C4AD000, v22, OS_LOG_TYPE_ERROR, "No valid visual descriptor for status item '%{private}@'", buf, 0xCu);
              }
            }

            else
            {
              [dictionary setObject:v19 forKey:v17];
              [v30 addObject:v17];
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v13);
    }

    v23 = [dictionary copy];
    v10 = v29;
    statusItemsToVisualDescriptors = v29->_statusItemsToVisualDescriptors;
    v29->_statusItemsToVisualDescriptors = v23;

    v25 = [v30 copy];
    statusItemIdentifiers = v29->_statusItemIdentifiers;
    v29->_statusItemIdentifiers = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

@end