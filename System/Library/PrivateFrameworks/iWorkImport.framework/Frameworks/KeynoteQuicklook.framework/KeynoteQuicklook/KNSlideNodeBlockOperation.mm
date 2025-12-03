@interface KNSlideNodeBlockOperation
- (KNSlideNodeBlockOperation)initWithSlideNode:(id)node type:(int64_t)type;
@end

@implementation KNSlideNodeBlockOperation

- (KNSlideNodeBlockOperation)initWithSlideNode:(id)node type:(int64_t)type
{
  nodeCopy = node;
  v11.receiver = self;
  v11.super_class = KNSlideNodeBlockOperation;
  v8 = [(NSBlockOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_slideNode, node);
    v9->_type = type;
  }

  return v9;
}

@end