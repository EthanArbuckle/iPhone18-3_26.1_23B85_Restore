@interface SKDJournalProcessingJob
- (SKDJournalProcessingJob)initWithName:(id)name version:(id)version pipelines:(id)pipelines;
@end

@implementation SKDJournalProcessingJob

- (SKDJournalProcessingJob)initWithName:(id)name version:(id)version pipelines:(id)pipelines
{
  nameCopy = name;
  versionCopy = version;
  pipelinesCopy = pipelines;
  if ([pipelinesCopy count] != 1)
  {
    [SKDJournalProcessingJob initWithName:version:pipelines:];
  }

  v30.receiver = self;
  v30.super_class = SKDJournalProcessingJob;
  v11 = [(SKDBaseItemProcessingJob *)&v30 initWithName:nameCopy version:versionCopy pipelines:pipelinesCopy];
  if (v11)
  {
    v12 = [pipelinesCopy objectAtIndexedSubscript:0];
    descriptor = [v12 descriptor];
    requiredBundles = [descriptor requiredBundles];
    requiredBundleIDs = v11->_requiredBundleIDs;
    v11->_requiredBundleIDs = requiredBundles;

    v16 = [pipelinesCopy objectAtIndexedSubscript:0];
    descriptor2 = [v16 descriptor];
    excludedBundles = [descriptor2 excludedBundles];
    excludedBundleIDs = v11->_excludedBundleIDs;
    v11->_excludedBundleIDs = excludedBundles;

    v20 = [pipelinesCopy objectAtIndexedSubscript:0];
    requiredAttributes = [v20 requiredAttributes];
    requiredAttributes = v11->_requiredAttributes;
    v11->_requiredAttributes = requiredAttributes;

    v23 = [pipelinesCopy objectAtIndexedSubscript:0];
    fetchAttributes = [v23 fetchAttributes];
    fetchAttributes = v11->_fetchAttributes;
    v11->_fetchAttributes = fetchAttributes;

    v26 = [SKDJournalItemProcessor alloc];
    pipelines = [(SKDBaseJob *)v11 pipelines];
    v28 = [(SKDItemProcessor *)v26 initWithPipelines:pipelines];

    [(SKDBaseCSItemProcessingJob *)v11 setItemProcessor:v28];
  }

  return v11;
}

@end