@interface PVCompositeDelegateContext
- (PVCompositeDelegateContext)initWithNode:(id)node;
- (PVInstructionGraphSourceNode)sourceNode;
@end

@implementation PVCompositeDelegateContext

- (PVCompositeDelegateContext)initWithNode:(id)node
{
  nodeCopy = node;
  v9.receiver = self;
  v9.super_class = PVCompositeDelegateContext;
  v5 = [(PVCompositeDelegateContext *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceNode, nodeCopy);
    preprocessData = v6->_preprocessData;
    v6->_preprocessData = 0;
  }

  return v6;
}

- (PVInstructionGraphSourceNode)sourceNode
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceNode);

  return WeakRetained;
}

@end