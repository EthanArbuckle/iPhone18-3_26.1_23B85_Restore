@interface SACallTreeNode
- (SACallTreeNode)initWithStartSampleIndex:(unint64_t)a3 sampleCount:(unint64_t)a4;
@end

@implementation SACallTreeNode

- (SACallTreeNode)initWithStartSampleIndex:(unint64_t)a3 sampleCount:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SACallTreeNode;
  result = [(SACallTreeNode *)&v7 init];
  if (result)
  {
    result->_sampleCount = a4;
    result->_startSampleIndex = a3;
  }

  return result;
}

@end