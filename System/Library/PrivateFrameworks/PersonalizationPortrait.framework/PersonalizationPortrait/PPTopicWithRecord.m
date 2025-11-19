@interface PPTopicWithRecord
- (PPTopicWithRecord)initWithTopicIdentifier:(id)a3 mostRelevantRecord:(id)a4;
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

- (PPTopicWithRecord)initWithTopicIdentifier:(id)a3 mostRelevantRecord:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PPTopicWithRecord;
  v8 = [(PPTopic *)&v11 initWithTopicIdentifier:a3 mostRelevantRecord:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mostRelevantRecord, a4);
  }

  return v9;
}

@end