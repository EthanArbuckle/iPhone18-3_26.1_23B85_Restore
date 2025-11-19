@interface PVCompositeDelegateContext
- (PVCompositeDelegateContext)initWithNode:(id)a3;
- (PVInstructionGraphSourceNode)sourceNode;
@end

@implementation PVCompositeDelegateContext

- (PVCompositeDelegateContext)initWithNode:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PVCompositeDelegateContext;
  v5 = [(PVCompositeDelegateContext *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceNode, v4);
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