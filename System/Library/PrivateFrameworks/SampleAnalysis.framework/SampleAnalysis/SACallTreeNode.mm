@interface SACallTreeNode
- (SACallTreeNode)initWithStartSampleIndex:(unint64_t)index sampleCount:(unint64_t)count;
@end

@implementation SACallTreeNode

- (SACallTreeNode)initWithStartSampleIndex:(unint64_t)index sampleCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = SACallTreeNode;
  result = [(SACallTreeNode *)&v7 init];
  if (result)
  {
    result->_sampleCount = count;
    result->_startSampleIndex = index;
  }

  return result;
}

@end