@interface VMUInverseDepthGraphEnumerator
- (VMUInverseDepthGraphEnumerator)initWithGraph:(id)a3 depthGraph:(id)a4;
@end

@implementation VMUInverseDepthGraphEnumerator

- (VMUInverseDepthGraphEnumerator)initWithGraph:(id)a3 depthGraph:(id)a4
{
  v6 = a4;
  v7 = [a3 invertedGraph];
  v11.receiver = self;
  v11.super_class = VMUInverseDepthGraphEnumerator;
  v8 = [(VMUGraphEnumerator *)&v11 initWithGraph:v7];

  depthGraph = v8->_depthGraph;
  v8->_depthGraph = v6;

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