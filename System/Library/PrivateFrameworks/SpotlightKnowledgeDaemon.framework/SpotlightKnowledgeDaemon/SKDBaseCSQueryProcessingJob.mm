@interface SKDBaseCSQueryProcessingJob
- (SKDBaseCSQueryProcessingJob)initWithName:(id)a3 version:(id)a4 pipelines:(id)a5;
- (id)supportedQueryForPipeline:(id)a3;
- (void)configure;
- (void)setPipelineQueries:(id)a3;
- (void)setQueryString:(id)a3 queryContext:(id)a4 query:(id)a5;
@end

@implementation SKDBaseCSQueryProcessingJob

- (SKDBaseCSQueryProcessingJob)initWithName:(id)a3 version:(id)a4 pipelines:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = SKDBaseCSQueryProcessingJob;
  v5 = [(SKDBaseItemProcessingJob *)&v21 initWithName:a3 version:a4 pipelines:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(SKDBaseJob *)v5 pipelines];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 descriptor];
        if ([v13 enabled])
        {
          v14 = [v12 canRun];

          if (!v14)
          {
            continue;
          }

          v13 = [(SKDBaseCSQueryProcessingJob *)v5 supportedQueryForPipeline:v12];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (id)supportedQueryForPipeline:(id)a3
{
  v3 = a3;
  v4 = [v3 descriptor];
  v5 = [v4 enabled];

  if (v5)
  {
    v6 = [v3 supportedQuery];
  }

  else
  {
    v6 = @"false";
  }

  return v6;
}

- (void)configure
{
  v3 = objc_alloc_init(SKGQueryStringBuilder);
  v4 = [(SKDBaseCSQueryProcessingJob *)self pipelineQueries];
  v5 = [v4 count];

  if (v5)
  {
    v22 = [(SKGQueryStringBuilder *)v3 beginGroup];
    v6 = [v22 withQuery];
    v25 = +[SKDPipelineQueryBuilder queryForValidItems];
    v26 = v6;
    v24 = (*(v6 + 16))(v6, v25);
    v23 = [v24 and];
    v7 = [v23 withQuery];
    v21 = [MEMORY[0x277D657A0] sharedContext];
    v8 = [v21 excludeBundles];
    v9 = [SKDPipelineQueryBuilder queryForItemsFromBundles:v8 inverse:1];
    v10 = (v7)[2](v7, v9);
    v11 = [v10 and];
    v12 = [v11 withQueries];
    v13 = [(SKDBaseCSQueryProcessingJob *)self pipelineQueries];
    (v12)[2](v12, v13, @"||");
    v15 = v14 = self;
    v27 = [v15 endGroup];

    self = v14;
    v16 = v22;

    v3 = v26;
  }

  else
  {
    v16 = [(SKGQueryStringBuilder *)v3 withQuery];
    v27 = (v16)[2](v16, @"false");
  }

  v17 = [v27 build];
  v18 = objc_alloc_init(MEMORY[0x277CC34A0]);
  v19 = [(SKDBaseItemProcessingJob *)self fetchAttributes];
  [v18 setFetchAttributes:v19];

  v20 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v17 queryContext:v18];
  [(SKDBaseCSQueryProcessingJob *)self setQueryString:v17 queryContext:v18 query:v20];
}

- (void)setPipelineQueries:(id)a3
{
  v4 = [a3 copy];
  pipelineQueries = self->_pipelineQueries;
  self->_pipelineQueries = v4;
}

- (void)setQueryString:(id)a3 queryContext:(id)a4 query:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 copy];
  queryString = self->_queryString;
  self->_queryString = v10;

  queryContext = self->_queryContext;
  self->_queryContext = v8;
  v14 = v8;

  query = self->_query;
  self->_query = v9;
}

@end