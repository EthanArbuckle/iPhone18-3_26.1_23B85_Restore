@interface PPDocumentTopicInfo
- (PPDocumentTopicInfo)init;
- (double)countForAlgorithm:(unint64_t)a3;
- (void)addToCountForAlgorithm:(unint64_t)a3 value:(double)a4;
@end

@implementation PPDocumentTopicInfo

- (double)countForAlgorithm:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_topicAlgorithmCounts objectAtIndexedSubscript:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)addToCountForAlgorithm:(unint64_t)a3 value:(double)a4
{
  v7 = MEMORY[0x277CCABB0];
  v10 = [(NSMutableArray *)self->_topicAlgorithmCounts objectAtIndexedSubscript:?];
  [v10 doubleValue];
  v9 = [v7 numberWithDouble:v8 + a4];
  [(NSMutableArray *)self->_topicAlgorithmCounts setObject:v9 atIndexedSubscript:a3];
}

- (PPDocumentTopicInfo)init
{
  v7.receiver = self;
  v7.super_class = PPDocumentTopicInfo;
  v2 = [(PPDocumentTopicInfo *)&v7 init];
  if (v2)
  {
    v3 = 13;
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:13];
    topicAlgorithmCounts = v2->_topicAlgorithmCounts;
    v2->_topicAlgorithmCounts = v4;

    do
    {
      [(NSMutableArray *)v2->_topicAlgorithmCounts addObject:&unk_2847846F8];
      --v3;
    }

    while (v3);
  }

  return v2;
}

@end