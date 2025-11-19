@interface VMUDepthGraphEnumerator
- (VMUDepthGraphEnumerator)initWithGraph:(id)a3 depthGraph:(id)a4;
@end

@implementation VMUDepthGraphEnumerator

- (VMUDepthGraphEnumerator)initWithGraph:(id)a3 depthGraph:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = VMUDepthGraphEnumerator;
  v7 = [(VMUGraphEnumerator *)&v10 initWithGraph:a3];
  depthGraph = v7->_depthGraph;
  v7->_depthGraph = v6;

  return v7;
}

uint64_t __58__VMUDepthGraphEnumerator_enumerateEdgesOfNode_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(*(a1 + 32) + 16) depthOfNode:a4];
  if (result == *(a1 + 48) + 1)
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  return result;
}

@end