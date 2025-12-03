@interface _UIDebugLogStack
- (_UIDebugLogStack)init;
- (id)popNode;
- (void)addMessage:(id)message;
- (void)performWithPushedNode:(id)node block:(id)block;
- (void)pushNode:(id)node;
@end

@implementation _UIDebugLogStack

- (_UIDebugLogStack)init
{
  v7.receiver = self;
  v7.super_class = _UIDebugLogStack;
  v2 = [(_UIDebugLogStack *)&v7 init];
  if (v2)
  {
    v3 = +[_UIDebugLogNode rootNode];
    v4 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
    stack = v2->_stack;
    v2->_stack = v4;
  }

  return v2;
}

- (void)addMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"message != nil && [message isKindOfClass:[_UIDebugLogMessage class]]"}];
  }

  _topNode = [(_UIDebugLogStack *)self _topNode];
  [_topNode addMessage:messageCopy];
}

- (void)pushNode:(id)node
{
  nodeCopy = node;
  if (!nodeCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:333 description:{@"Invalid parameter not satisfying: %@", @"node != nil && [node isKindOfClass:[_UIDebugLogNode class]]"}];
  }

  _topNode = [(_UIDebugLogStack *)self _topNode];
  [_topNode addMessage:nodeCopy];

  [(NSMutableArray *)self->_stack addObject:nodeCopy];
}

- (id)popNode
{
  if ([(NSMutableArray *)self->_stack count]<= 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:340 description:@"Unable to pop the last node on the stack. This indicates an imbalance in push and pop calls."];
  }

  _topNode = [(_UIDebugLogStack *)self _topNode];
  [(NSMutableArray *)self->_stack removeLastObject];

  return _topNode;
}

- (void)performWithPushedNode:(id)node block:(id)block
{
  nodeCopy = node;
  blockCopy = block;
  v8 = nodeCopy;
  v9 = blockCopy;
  if (nodeCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"node != nil"}];

    v8 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

  v8 = nodeCopy;
LABEL_3:
  [(_UIDebugLogStack *)self pushNode:v8];
  v9[2](v9);
  popNode = [(_UIDebugLogStack *)self popNode];
  if (popNode != nodeCopy)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v14 = nodeCopy;
    if (nodeCopy)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v15 stringWithFormat:@"<%@: %p>", v17, v14];
    }

    else
    {
      v18 = @"(nil)";
    }

    v19 = popNode;
    if (v19)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v20 stringWithFormat:@"<%@: %p>", v22, v19];
    }

    else
    {
      v23 = @"(nil)";
    }

    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:353 description:{@"Imbalanced calls to push and pop. Expected node %@ to be popped but got %@.", v18, v23}];
  }
}

@end