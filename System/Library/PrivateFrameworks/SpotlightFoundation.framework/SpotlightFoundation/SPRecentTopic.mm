@interface SPRecentTopic
- (SPRecentTopic)initWithTopic:(id)topic score:(id)score engagementDate:(id)date;
@end

@implementation SPRecentTopic

- (SPRecentTopic)initWithTopic:(id)topic score:(id)score engagementDate:(id)date
{
  topicCopy = topic;
  scoreCopy = score;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = SPRecentTopic;
  v12 = [(SPRecentTopic *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topic, topic);
    objc_storeStrong(&v13->_score, score);
    objc_storeStrong(&v13->_engagementDate, date);
  }

  return v13;
}

@end