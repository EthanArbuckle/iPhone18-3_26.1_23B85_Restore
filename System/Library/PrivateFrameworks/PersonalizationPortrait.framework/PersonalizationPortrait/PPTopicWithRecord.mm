@interface PPTopicWithRecord
- (PPTopicWithRecord)initWithTopicIdentifier:(id)identifier mostRelevantRecord:(id)record;
- (double)sentimentScore;
@end

@implementation PPTopicWithRecord

- (double)sentimentScore
{
  mostRelevantRecord = self->_mostRelevantRecord;
  if (!mostRelevantRecord)
  {
    return 0.0;
  }

  [(PPTopicRecord *)mostRelevantRecord sentimentScore];
  return result;
}

- (PPTopicWithRecord)initWithTopicIdentifier:(id)identifier mostRelevantRecord:(id)record
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = PPTopicWithRecord;
  v8 = [(PPTopic *)&v11 initWithTopicIdentifier:identifier mostRelevantRecord:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mostRelevantRecord, record);
  }

  return v9;
}

@end