@interface SKDBaseCSQueryProcessingJob
- (SKDBaseCSQueryProcessingJob)initWithName:(id)name version:(id)version pipelines:(id)pipelines;
- (id)supportedQueryForPipeline:(id)pipeline;
- (void)configure;
- (void)setPipelineQueries:(id)queries;
- (void)setQueryString:(id)string queryContext:(id)context query:(id)query;
@end

@implementation SKDBaseCSQueryProcessingJob

- (SKDBaseCSQueryProcessingJob)initWithName:(id)name version:(id)version pipelines:(id)pipelines
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = SKDBaseCSQueryProcessingJob;
  v5 = [(SKDBaseItemProcessingJob *)&v21 initWithName:name version:version pipelines:pipelines];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    pipelines = [(SKDBaseJob *)v5 pipelines];
    v8 = [pipelines countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    v10 = *v18;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(pipelines);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        descriptor = [v12 descriptor];
        if ([descriptor enabled])
        {
          canRun = [v12 canRun];

          if (!canRun)
          {
            continue;
          }

          descriptor = [(SKDBaseCSQueryProcessingJob *)v5 supportedQueryForPipeline:v12];
          [v6 addObject:descriptor];
        }
      }

      v9 = [pipelines countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (!v9)
      {
LABEL_13:

        [(SKDBaseCSQueryProcessingJob *)v5 setPipelineQueries:v6];
        [(SKDBaseCSQueryProcessingJob *)v5 configure];

        break;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)supportedQueryForPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  descriptor = [pipelineCopy descriptor];
  enabled = [descriptor enabled];

  if (enabled)
  {
    supportedQuery = [pipelineCopy supportedQuery];
  }

  else
  {
    supportedQuery = @"false";
  }

  return supportedQuery;
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
    v25 = +[SKDPipelineQueryBuilder queryForValidItems];
    v26 = withQuery;
    v24 = (*(withQuery + 16))(withQuery, v25);
    v23 = [v24 and];
    withQuery2 = [v23 withQuery];
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    excludeBundles = [mEMORY[0x277D657A0] excludeBundles];
    v9 = [SKDPipelineQueryBuilder queryForItemsFromBundles:excludeBundles inverse:1];
    v10 = (withQuery2)[2](withQuery2, v9);
    v11 = [v10 and];
    withQueries = [v11 withQueries];
    pipelineQueries2 = [(SKDBaseCSQueryProcessingJob *)self pipelineQueries];
    (withQueries)[2](withQueries, pipelineQueries2, @"||");
    v15 = v14 = self;
    endGroup = [v15 endGroup];

    self = v14;
    withQuery3 = beginGroup;

    v3 = v26;
  }

  else
  {
    withQuery3 = [(SKGQueryStringBuilder *)v3 withQuery];
    endGroup = (withQuery3)[2](withQuery3, @"false");
  }

  build = [endGroup build];
  v18 = objc_alloc_init(MEMORY[0x277CC34A0]);
  fetchAttributes = [(SKDBaseItemProcessingJob *)self fetchAttributes];
  [v18 setFetchAttributes:fetchAttributes];

  v20 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:build queryContext:v18];
  [(SKDBaseCSQueryProcessingJob *)self setQueryString:build queryContext:v18 query:v20];
}

- (void)setPipelineQueries:(id)queries
{
  v4 = [queries copy];
  pipelineQueries = self->_pipelineQueries;
  self->_pipelineQueries = v4;
}

- (void)setQueryString:(id)string queryContext:(id)context query:(id)query
{
  contextCopy = context;
  queryCopy = query;
  v10 = [string copy];
  queryString = self->_queryString;
  self->_queryString = v10;

  queryContext = self->_queryContext;
  self->_queryContext = contextCopy;
  v14 = contextCopy;

  query = self->_query;
  self->_query = queryCopy;
}

@end