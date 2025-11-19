@interface SKDBaseItemProcessingJob
- (SKDBaseItemProcessingJob)initWithName:(id)a3 version:(id)a4 pipelines:(id)a5;
- (void)endBatch;
- (void)setFetchAttributes:(id)a3;
- (void)startBatch;
@end

@implementation SKDBaseItemProcessingJob

- (void)startBatch
{
  v6 = [(SKDBaseJob *)self logger];
  v3 = +[SKDPipelineEvent processingBatchEvent];
  v4 = [v6 trackingEventBeginWithName:@"process-batch" event:v3];
  currentTrackingEvent = self->_currentTrackingEvent;
  self->_currentTrackingEvent = v4;
}

- (void)endBatch
{
  v3 = [(SKDBaseJob *)self logger];
  [v3 trackingEventEnd:self->_currentTrackingEvent];

  currentTrackingEvent = self->_currentTrackingEvent;
  self->_currentTrackingEvent = 0;
}

- (SKDBaseItemProcessingJob)initWithName:(id)a3 version:(id)a4 pipelines:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = SKDBaseItemProcessingJob;
  v5 = [(SKDBaseJob *)&v22 initWithName:a3 version:a4 pipelines:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(SKDBaseJob *)v5 pipelines];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    v10 = *v19;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 descriptor];
        if ([v13 enabled])
        {
          v14 = [v12 canRun];

          if (!v14)
          {
            continue;
          }

          v13 = [v12 fetchAttributes];
          [v6 addObjectsFromArray:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (!v9)
      {
LABEL_13:

        [v6 addObjectsFromArray:&unk_2846E80E8];
        v15 = [v6 allObjects];
        [(SKDBaseItemProcessingJob *)v5 setFetchAttributes:v15];

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setFetchAttributes:(id)a3
{
  v4 = [a3 copy];
  fetchAttributes = self->_fetchAttributes;
  self->_fetchAttributes = v4;
}

@end