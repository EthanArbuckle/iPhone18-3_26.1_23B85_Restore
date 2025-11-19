@interface SKDJournalProcessingJob
- (SKDJournalProcessingJob)initWithName:(id)a3 version:(id)a4 pipelines:(id)a5;
@end

@implementation SKDJournalProcessingJob

- (SKDJournalProcessingJob)initWithName:(id)a3 version:(id)a4 pipelines:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 count] != 1)
  {
    [SKDJournalProcessingJob initWithName:version:pipelines:];
  }

  v30.receiver = self;
  v30.super_class = SKDJournalProcessingJob;
  v11 = [(SKDBaseItemProcessingJob *)&v30 initWithName:v8 version:v9 pipelines:v10];
  if (v11)
  {
    v12 = [v10 objectAtIndexedSubscript:0];
    v13 = [v12 descriptor];
    v14 = [v13 requiredBundles];
    requiredBundleIDs = v11->_requiredBundleIDs;
    v11->_requiredBundleIDs = v14;

    v16 = [v10 objectAtIndexedSubscript:0];
    v17 = [v16 descriptor];
    v18 = [v17 excludedBundles];
    excludedBundleIDs = v11->_excludedBundleIDs;
    v11->_excludedBundleIDs = v18;

    v20 = [v10 objectAtIndexedSubscript:0];
    v21 = [v20 requiredAttributes];
    requiredAttributes = v11->_requiredAttributes;
    v11->_requiredAttributes = v21;

    v23 = [v10 objectAtIndexedSubscript:0];
    v24 = [v23 fetchAttributes];
    fetchAttributes = v11->_fetchAttributes;
    v11->_fetchAttributes = v24;

    v26 = [SKDJournalItemProcessor alloc];
    v27 = [(SKDBaseJob *)v11 pipelines];
    v28 = [(SKDItemProcessor *)v26 initWithPipelines:v27];

    [(SKDBaseCSItemProcessingJob *)v11 setItemProcessor:v28];
  }

  return v11;
}

@end