@interface VMUInverseDepthGraphEnumerator
- (VMUInverseDepthGraphEnumerator)initWithGraph:(id)graph depthGraph:(id)depthGraph;
@end

@implementation VMUInverseDepthGraphEnumerator

- (VMUInverseDepthGraphEnumerator)initWithGraph:(id)graph depthGraph:(id)depthGraph
{
  depthGraphCopy = depthGraph;
  invertedGraph = [graph invertedGraph];
  v11.receiver = self;
  v11.super_class = VMUInverseDepthGraphEnumerator;
  v8 = [(VMUGraphEnumerator *)&v11 initWithGraph:invertedGraph];

  depthGraph = v8->_depthGraph;
  v8->_depthGraph = depthGraphCopy;

  return v8;
}

uint64_t __65__VMUInverseDepthGraphEnumerator_enumerateEdgesOfNode_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(*(a1 + 32) + 16) depthOfNode:a4];
  if (result == *(a1 + 48) - 1)
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  return result;
}

@end