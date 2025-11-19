@interface UPResultIntermediateNode
- (UPResultIntermediateNode)initWithLabel:(id)a3 andLeafNodes:(id)a4;
@end

@implementation UPResultIntermediateNode

- (UPResultIntermediateNode)initWithLabel:(id)a3 andLeafNodes:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UPResultIntermediateNode;
  v8 = [(UPResultNode *)&v11 initWithLabel:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_leafNodes, a4);
  }

  return v9;
}

@end