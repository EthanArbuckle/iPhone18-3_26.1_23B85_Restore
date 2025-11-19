@interface VMUDominatesGraphEnumerator
- (VMUDominatesGraphEnumerator)initWithGraph:(id)a3 dominatorGraph:(id)a4;
@end

@implementation VMUDominatesGraphEnumerator

- (VMUDominatesGraphEnumerator)initWithGraph:(id)a3 dominatorGraph:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = VMUDominatesGraphEnumerator;
  v7 = [(VMUGraphEnumerator *)&v10 initWithGraph:a3];
  dominatorGraph = v7->_dominatorGraph;
  v7->_dominatorGraph = v6;

  return v7;
}

@end