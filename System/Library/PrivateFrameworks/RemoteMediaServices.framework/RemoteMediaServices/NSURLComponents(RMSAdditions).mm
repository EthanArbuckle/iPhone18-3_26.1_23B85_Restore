@interface NSURLComponents(RMSAdditions)
- (id)rms_componentsByAddingQueryParameters:()RMSAdditions;
@end

@implementation NSURLComponents(RMSAdditions)

- (id)rms_componentsByAddingQueryParameters:()RMSAdditions
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self copy];
  v6 = objc_opt_new();
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __71__NSURLComponents_RMSAdditions__rms_componentsByAddingQueryParameters___block_invoke_0;
  v17 = &unk_279B08E20;
  v7 = v6;
  v18 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:&v14];

  v8 = [v7 componentsJoinedByString:{@"&", v14, v15, v16, v17}];
  query = [v5 query];

  if (query)
  {
    query2 = [v5 query];
    v19[0] = query2;
    v19[1] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v12 = [v11 componentsJoinedByString:@"&"];
    [v5 setQuery:v12];
  }

  else
  {
    [v5 setQuery:v8];
  }

  return v5;
}

@end