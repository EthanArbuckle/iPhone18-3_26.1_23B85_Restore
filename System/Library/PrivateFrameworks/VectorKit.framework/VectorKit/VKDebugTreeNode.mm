@interface VKDebugTreeNode
- (VKDebugTreeNode)initWithParent:(id)parent;
- (VKDebugTreeNode)parent;
@end

@implementation VKDebugTreeNode

- (VKDebugTreeNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (VKDebugTreeNode)initWithParent:(id)parent
{
  parentCopy = parent;
  v8.receiver = self;
  v8.super_class = VKDebugTreeNode;
  v5 = [(VKDebugTreeNode *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, parentCopy);
  }

  return v6;
}

@end