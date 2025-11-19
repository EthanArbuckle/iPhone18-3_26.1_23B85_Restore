@interface SSDoubleLinkedListNode
- (SSDoubleLinkedListNode)initWithObject:(id)a3;
@end

@implementation SSDoubleLinkedListNode

- (SSDoubleLinkedListNode)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SSDoubleLinkedListNode;
  v6 = [(SSDoubleLinkedListNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

@end