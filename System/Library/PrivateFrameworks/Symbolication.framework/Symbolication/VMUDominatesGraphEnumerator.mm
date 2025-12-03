@interface VMUDominatesGraphEnumerator
- (VMUDominatesGraphEnumerator)initWithGraph:(id)graph dominatorGraph:(id)dominatorGraph;
@end

@implementation VMUDominatesGraphEnumerator

- (VMUDominatesGraphEnumerator)initWithGraph:(id)graph dominatorGraph:(id)dominatorGraph
{
  dominatorGraphCopy = dominatorGraph;
  v10.receiver = self;
  v10.super_class = VMUDominatesGraphEnumerator;
  v7 = [(VMUGraphEnumerator *)&v10 initWithGraph:graph];
  dominatorGraph = v7->_dominatorGraph;
  v7->_dominatorGraph = dominatorGraphCopy;

  return v7;
}

@end