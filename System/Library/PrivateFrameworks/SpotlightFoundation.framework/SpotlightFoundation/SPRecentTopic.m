@interface SPRecentTopic
- (SPRecentTopic)initWithTopic:(id)a3 score:(id)a4 engagementDate:(id)a5;
@end

@implementation SPRecentTopic

- (SPRecentTopic)initWithTopic:(id)a3 score:(id)a4 engagementDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SPRecentTopic;
  v12 = [(SPRecentTopic *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topic, a3);
    objc_storeStrong(&v13->_score, a4);
    objc_storeStrong(&v13->_engagementDate, a5);
  }

  return v13;
}

@end