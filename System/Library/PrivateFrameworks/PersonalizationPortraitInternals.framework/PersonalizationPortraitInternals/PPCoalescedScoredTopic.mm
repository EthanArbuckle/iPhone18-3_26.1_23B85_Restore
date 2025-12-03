@interface PPCoalescedScoredTopic
- (PPCoalescedScoredTopic)initWithScoredTopic:(id)topic occurrencesInSource:(unsigned __int16)source;
@end

@implementation PPCoalescedScoredTopic

- (PPCoalescedScoredTopic)initWithScoredTopic:(id)topic occurrencesInSource:(unsigned __int16)source
{
  topicCopy = topic;
  v11.receiver = self;
  v11.super_class = PPCoalescedScoredTopic;
  v8 = [(PPCoalescedScoredTopic *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scoredTopic, topic);
    v9->_occurrencesInSource = source;
  }

  return v9;
}

@end