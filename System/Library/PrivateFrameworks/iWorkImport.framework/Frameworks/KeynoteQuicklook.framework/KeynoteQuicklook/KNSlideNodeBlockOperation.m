@interface KNSlideNodeBlockOperation
- (KNSlideNodeBlockOperation)initWithSlideNode:(id)a3 type:(int64_t)a4;
@end

@implementation KNSlideNodeBlockOperation

- (KNSlideNodeBlockOperation)initWithSlideNode:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = KNSlideNodeBlockOperation;
  v8 = [(NSBlockOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_slideNode, a3);
    v9->_type = a4;
  }

  return v9;
}

@end