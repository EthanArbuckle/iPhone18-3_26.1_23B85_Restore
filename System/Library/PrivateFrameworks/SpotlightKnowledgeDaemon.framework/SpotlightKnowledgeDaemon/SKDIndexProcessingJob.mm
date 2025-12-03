@interface SKDIndexProcessingJob
- (id)supportedQueryForPipeline:(id)pipeline;
- (void)configure;
@end

@implementation SKDIndexProcessingJob

- (id)supportedQueryForPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  descriptor = [pipelineCopy descriptor];
  enabled = [descriptor enabled];

  if (enabled)
  {
    v20 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v20 beginGroup];
    withQuery = [beginGroup withQuery];
    descriptor2 = [pipelineCopy descriptor];
    name = [descriptor2 name];
    v22 = [SKDPipelineQueryBuilder queryForItemsNeedingProcessingByPipelineWithName:name inverse:1];
    v24 = withQuery;
    v21 = (*(withQuery + 16))(withQuery, v22);
    v19 = [v21 and];
    withQuery2 = [v19 withQuery];
    descriptor3 = [pipelineCopy descriptor];
    name2 = [descriptor3 name];
    v9 = [SKDPipelineQueryBuilder queryForItemsProcessedByPipelineWithName:name2 inverse:1];
    v10 = (withQuery2)[2](withQuery2, v9);
    v11 = [v10 and];
    withQuery3 = [v11 withQuery];
    supportedQuery = [pipelineCopy supportedQuery];
    v14 = (withQuery3)[2](withQuery3, supportedQuery);
    endGroup = [v14 endGroup];

    build = [endGroup build];
  }

  else
  {
    build = @"false";
  }

  return build;
}

- (void)configure
{
  v3 = objc_alloc_init(SKGQueryStringBuilder);
  pipelineQueries = [(SKDBaseCSQueryProcessingJob *)self pipelineQueries];
  v5 = [pipelineQueries count];

  if (v5)
  {
    beginGroup = [(SKGQueryStringBuilder *)v3 beginGroup];
    withQuery = [beginGroup withQuery];
    v30 = +[SKDPipelineQueryBuilder queryForValidItems];
    v31 = withQuery;
    v29 = (*(withQuery + 16))(withQuery, v30);
    v28 = [v29 and];
    withQuery2 = [v28 withQuery];
    v27 = +[SKDDefaults sharedDefaults];
    excludeBundles = [v27 excludeBundles];
    v23 = [SKDPipelineQueryBuilder queryForItemsFromBundles:excludeBundles inverse:1];
    v25 = withQuery2;
    v22 = (*(withQuery2 + 16))(withQuery2, v23);
    v21 = [v22 and];
    beginGroup2 = [v21 beginGroup];
    withAttribute = [beginGroup2 withAttribute];
    v10 = (withAttribute)[2](withAttribute, @"kMDItemTextContent", @"!=", @"*");
    endGroup = [v10 endGroup];
    v12 = [endGroup and];
    withQueries = [v12 withQueries];
    pipelineQueries2 = [(SKDBaseCSQueryProcessingJob *)self pipelineQueries];
    v15 = (withQueries)[2](withQueries, pipelineQueries2, @"||");
    endGroup2 = [v15 endGroup];

    withQuery3 = beginGroup;
    v3 = v31;
  }

  else
  {
    withQuery3 = [(SKGQueryStringBuilder *)v3 withQuery];
    endGroup2 = (withQuery3)[2](withQuery3, @"false");
  }

  build = [endGroup2 build];
  v18 = objc_alloc_init(MEMORY[0x277CC34A0]);
  fetchAttributes = [(SKDBaseItemProcessingJob *)self fetchAttributes];
  [v18 setFetchAttributes:fetchAttributes];

  v20 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:build queryContext:v18];
  [(SKDBaseCSQueryProcessingJob *)self setQueryString:build queryContext:v18 query:v20];
}

@end