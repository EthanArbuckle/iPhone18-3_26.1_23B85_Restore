@interface VSAMSAllStorefrontsResponseValueTransformer
- (id)transformedValue:(id)value;
@end

@implementation VSAMSAllStorefrontsResponseValueTransformer

- (id)transformedValue:(id)value
{
  v29 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = valueCopy;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Handling response %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ratingsStoreFronts = [valueCopy ratingsStoreFronts];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [ratingsStoreFronts countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(ratingsStoreFronts);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = objc_alloc_init(VSStorefront);
          storeFrontID = [v11 storeFrontID];
          [(VSStorefront *)v12 setIdentitifer:storeFrontID];

          name = [v11 name];
          [(VSStorefront *)v12 setDisplayName:name];

          [v5 addObject:v12];
        }

        v8 = [ratingsStoreFronts countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }
  }

  else
  {
    ratingsStoreFronts = VSErrorLogObject();
    if (os_log_type_enabled(ratingsStoreFronts, OS_LOG_TYPE_ERROR))
    {
      [(VSAMSAllStorefrontsResponseValueTransformer *)valueCopy transformedValue:ratingsStoreFronts];
    }
  }

  if ([v5 count])
  {
    v15 = MEMORY[0x277CE2250];
    v16 = [v5 copy];
    v17 = [v15 failableWithObject:v16];
  }

  else
  {
    v18 = VSErrorLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [VSAMSAllStorefrontsResponseValueTransformer transformedValue:v18];
    }

    v16 = VSPrivateError();
    v17 = [MEMORY[0x277CE2250] failableWithError:v16];
  }

  v19 = v17;

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)transformedValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Unexpected response type: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end