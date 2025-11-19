@interface PPCoalescedScoredTopic
- (PPCoalescedScoredTopic)initWithScoredTopic:(id)a3 occurrencesInSource:(unsigned __int16)a4;
@end

@implementation PPCoalescedScoredTopic

- (PPCoalescedScoredTopic)initWithScoredTopic:(id)a3 occurrencesInSource:(unsigned __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PPCoalescedScoredTopic;
  v8 = [(PPCoalescedScoredTopic *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scoredTopic, a3);
    v9->_occurrencesInSource = a4;
  }

  return v9;
}

@end