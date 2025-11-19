@interface SKDPipeline
- (BOOL)supportsRecord:(id)a3 bundleID:(id)a4;
- (NSArray)fetchAttributes;
- (NSArray)processedAttributes;
- (NSArray)requiredAttributes;
- (NSString)errorAttribute;
- (NSString)needsProcessingAttribute;
- (NSString)supportedQuery;
- (NSString)versionAttribute;
- (NSString)versionValue;
- (SKDPipeline)initWithDescriptor:(id)a3 processors:(id)a4;
- (id)description;
- (id)supportedSetQuery;
@end

@implementation SKDPipeline

- (SKDPipeline)initWithDescriptor:(id)a3 processors:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SKDPipeline;
  v9 = [(SKDPipeline *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, a3);
    v11 = [v8 copy];
    processors = v10->_processors;
    v10->_processors = v11;

    v10->_canRun = 1;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v13 = SKGLogPipelineInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(SKDPipeline *)v10 description];
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_INFO, "### <%@>", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)supportsRecord:(id)a3 bundleID:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SKDPipeline *)self descriptor];
  v9 = [v8 requiredBundles];

  if (v9)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v10 = [(SKDPipeline *)self descriptor];
    v11 = [v10 requiredBundles];
    v12 = [v11 containsObject:v7];

    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v13 = [(SKDPipeline *)self descriptor];
  v14 = [v13 excludedBundles];

  if (!v7)
  {
    goto LABEL_8;
  }

  if (v14 && (-[SKDPipeline descriptor](self, "descriptor"), v15 = objc_claimAutoreleasedReturnValue(), [v15 excludedBundles], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v7), v16, v15, (v17 & 1) != 0))
  {
LABEL_7:
    LOBYTE(v18) = 0;
  }

  else
  {
LABEL_8:
    v19 = [(SKDPipeline *)self descriptor];
    v20 = [v19 requiredAttributes];

    if (v20)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = [(SKDPipeline *)self descriptor];
      v22 = [v21 requiredAttributes];

      v18 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v18)
      {
        v23 = *v29;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(v22);
            }

            v25 = [v6 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];

            if (v25)
            {
              LOBYTE(v18) = 1;
              goto LABEL_19;
            }
          }

          v18 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }

    else
    {
      LOBYTE(v18) = 1;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSArray)fetchAttributes
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(SKDPipeline *)self descriptor];
  v5 = [v4 enabled];

  if (v5)
  {
    v6 = [(SKDPipeline *)self descriptor];
    v7 = [v6 requiredAttributes];

    if (v7)
    {
      v8 = [(SKDPipeline *)self descriptor];
      v9 = [v8 requiredAttributes];
      [v3 addObjectsFromArray:v9];
    }

    v10 = [(SKDPipeline *)self descriptor];
    v11 = [v10 excludedAttributes];

    if (v11)
    {
      v12 = [(SKDPipeline *)self descriptor];
      v13 = [v12 excludedAttributes];
      [v3 addObjectsFromArray:v13];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [(SKDPipeline *)self processors];
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          if ([v19 enabled])
          {
            v20 = [v19 requiredAttributes];

            if (v20)
            {
              v21 = [v19 requiredAttributes];
              [v3 addObjectsFromArray:v21];
            }

            v22 = [v19 optionalAttributes];

            if (v22)
            {
              v23 = [v19 optionalAttributes];
              [v3 addObjectsFromArray:v23];
            }

            v24 = [v19 processedAttributes];

            if (v24)
            {
              v25 = [v19 processedAttributes];
              [v3 addObjectsFromArray:v25];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v16);
    }

    v26 = [(SKDPipeline *)self versionAttribute];
    [v3 addObject:v26];

    v27 = [(SKDPipeline *)self errorAttribute];
    [v3 addObject:v27];
  }

  v28 = [v3 allObjects];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (NSArray)processedAttributes
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(SKDPipeline *)self processors];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 enabled])
        {
          v10 = [v9 processedAttributes];
          [v3 addObjectsFromArray:v10];
        }

        v11 = [(SKDPipeline *)self versionAttribute];
        [v3 addObject:v11];

        v12 = [(SKDPipeline *)self errorAttribute];
        [v3 addObject:v12];

        v13 = [(SKDPipeline *)self needsProcessingAttribute];
        [v3 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = [v3 allObjects];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSArray)requiredAttributes
{
  v2 = [(SKDPipeline *)self descriptor];
  v3 = [v2 requiredAttributes];

  return v3;
}

- (NSString)versionValue
{
  v2 = [(SKDPipeline *)self descriptor];
  v3 = [v2 version];

  return v3;
}

- (NSString)versionAttribute
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKDPipeline *)self descriptor];
  v4 = [v3 name];
  v5 = [v2 stringWithFormat:@"_kMDItem%@Version", v4];

  return v5;
}

- (NSString)errorAttribute
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKDPipeline *)self descriptor];
  v4 = [v3 name];
  v5 = [v2 stringWithFormat:@"_kMDItem%@ErrorCount", v4];

  return v5;
}

- (NSString)needsProcessingAttribute
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKDPipeline *)self descriptor];
  v4 = [v3 name];
  v5 = [v2 stringWithFormat:@"_kMDItemNeeds%@", v4];

  return v5;
}

- (id)supportedSetQuery
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(SKDPipeline *)self descriptor];
  v5 = [v4 requiredBundles];

  if ([v5 count])
  {
    v6 = [SKDPipelineQueryBuilder queryForItemsFromBundles:v5 inverse:0];
    if (v6)
    {
      v7 = v6;
      [v3 addObject:v6];
    }
  }

  v8 = [(SKDPipeline *)self descriptor];
  v9 = [v8 excludedBundles];

  if ([v9 count])
  {
    v10 = [SKDPipelineQueryBuilder queryForItemsFromBundles:v9 inverse:1];
    if (v10)
    {
      v11 = v10;
      [v3 addObject:v10];
    }
  }

  if (![v3 count])
  {
    [v3 addObject:@"true"];
  }

  v12 = objc_alloc_init(SKGQueryStringBuilder);
  v13 = [(SKGQueryStringBuilder *)v12 withQueries];
  v14 = (v13)[2](v13, v3, @"&&");

  v15 = [v14 build];

  return v15;
}

- (NSString)supportedQuery
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(SKDPipeline *)self descriptor];
  v5 = [v4 requiredAttributes];

  if (v5)
  {
    v6 = [(SKDPipeline *)self descriptor];
    v7 = [v6 requiredAttributes];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(SKDPipeline *)self descriptor];
      v10 = [v9 requiredAttributes];
      v11 = [SKGQueryStringBuilder queryForAttributesExist:v10];
      [v3 addObject:v11];
    }

    else
    {
      [v3 addObject:@"false"];
    }
  }

  if ([v3 count])
  {
    v12 = objc_alloc_init(SKGQueryStringBuilder);
    v24 = [(SKGQueryStringBuilder *)v12 beginGroup];
    v13 = [v24 withQuery];
    v14 = [(SKDPipeline *)self supportedSetQuery];
    v15 = (v13)[2](v13, v14);
    v16 = [v15 and];
    v17 = [v16 withQueries];
    [v3 allObjects];
    v19 = v18 = v3;
    v20 = (v17)[2](v17, v19, @"||");
    v21 = [v20 endGroup];

    v3 = v18;
    v22 = [v21 build];
  }

  else
  {
    v22 = [(SKDPipeline *)self supportedSetQuery];
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKDPipeline *)self supportedQuery];
  v6 = [v3 stringWithFormat:@"%@: supQuery <%@>", v4, v5];

  return v6;
}

@end