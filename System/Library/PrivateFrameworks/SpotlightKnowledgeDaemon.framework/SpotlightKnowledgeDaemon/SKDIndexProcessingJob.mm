@interface SKDIndexProcessingJob
- (id)supportedQueryForPipeline:(id)a3;
- (void)configure;
@end

@implementation SKDIndexProcessingJob

- (id)supportedQueryForPipeline:(id)a3
{
  v3 = a3;
  v4 = [v3 descriptor];
  v5 = [v4 enabled];

  if (v5)
  {
    v20 = objc_alloc_init(SKGQueryStringBuilder);
    v26 = [(SKGQueryStringBuilder *)v20 beginGroup];
    v6 = [v26 withQuery];
    v25 = [v3 descriptor];
    v23 = [v25 name];
    v22 = [SKDPipelineQueryBuilder queryForItemsNeedingProcessingByPipelineWithName:v23 inverse:1];
    v24 = v6;
    v21 = (*(v6 + 16))(v6, v22);
    v19 = [v21 and];
    v7 = [v19 withQuery];
    v18 = [v3 descriptor];
    v8 = [v18 name];
    v9 = [SKDPipelineQueryBuilder queryForItemsProcessedByPipelineWithName:v8 inverse:1];
    v10 = (v7)[2](v7, v9);
    v11 = [v10 and];
    v12 = [v11 withQuery];
    v13 = [v3 supportedQuery];
    v14 = (v12)[2](v12, v13);
    v15 = [v14 endGroup];

    v16 = [v15 build];
  }

  else
  {
    v16 = @"false";
  }

  return v16;
}

- (void)configure
{
  v3 = objc_alloc_init(SKGQueryStringBuilder);
  v4 = [(SKDBaseCSQueryProcessingJob *)self pipelineQueries];
  v5 = [v4 count];

  if (v5)
  {
    v26 = [(SKGQueryStringBuilder *)v3 beginGroup];
    v6 = [v26 withQuery];
    v30 = +[SKDPipelineQueryBuilder queryForValidItems];
    v31 = v6;
    v29 = (*(v6 + 16))(v6, v30);
    v28 = [v29 and];
    v7 = [v28 withQuery];
    v27 = +[SKDDefaults sharedDefaults];
    v24 = [v27 excludeBundles];
    v23 = [SKDPipelineQueryBuilder queryForItemsFromBundles:v24 inverse:1];
    v25 = v7;
    v22 = (*(v7 + 16))(v7, v23);
    v21 = [v22 and];
    v8 = [v21 beginGroup];
    v9 = [v8 withAttribute];
    v10 = (v9)[2](v9, @"kMDItemTextContent", @"!=", @"*");
    v11 = [v10 endGroup];
    v12 = [v11 and];
    v13 = [v12 withQueries];
    v14 = [(SKDBaseCSQueryProcessingJob *)self pipelineQueries];
    v15 = (v13)[2](v13, v14, @"||");
    v32 = [v15 endGroup];

    v16 = v26;
    v3 = v31;
  }

  else
  {
    v16 = [(SKGQueryStringBuilder *)v3 withQuery];
    v32 = (v16)[2](v16, @"false");
  }

  v17 = [v32 build];
  v18 = objc_alloc_init(MEMORY[0x277CC34A0]);
  v19 = [(SKDBaseItemProcessingJob *)self fetchAttributes];
  [v18 setFetchAttributes:v19];

  v20 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v17 queryContext:v18];
  [(SKDBaseCSQueryProcessingJob *)self setQueryString:v17 queryContext:v18 query:v20];
}

@end