@interface _UIDebugLogStack
- (_UIDebugLogStack)init;
- (id)popNode;
- (void)addMessage:(id)a3;
- (void)performWithPushedNode:(id)a3 block:(id)a4;
- (void)pushNode:(id)a3;
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

- (void)addMessage:(id)a3
{
  v7 = a3;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"message != nil && [message isKindOfClass:[_UIDebugLogMessage class]]"}];
  }

  v5 = [(_UIDebugLogStack *)self _topNode];
  [v5 addMessage:v7];
}

- (void)pushNode:(id)a3
{
  v7 = a3;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:333 description:{@"Invalid parameter not satisfying: %@", @"node != nil && [node isKindOfClass:[_UIDebugLogNode class]]"}];
  }

  v5 = [(_UIDebugLogStack *)self _topNode];
  [v5 addMessage:v7];

  [(NSMutableArray *)self->_stack addObject:v7];
}

- (id)popNode
{
  if ([(NSMutableArray *)self->_stack count]<= 1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:340 description:@"Unable to pop the last node on the stack. This indicates an imbalance in push and pop calls."];
  }

  v4 = [(_UIDebugLogStack *)self _topNode];
  [(NSMutableArray *)self->_stack removeLastObject];

  return v4;
}

- (void)performWithPushedNode:(id)a3 block:(id)a4
{
  v24 = a3;
  v7 = a4;
  v8 = v24;
  v9 = v7;
  if (v24)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"node != nil"}];

    v8 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x277CCA890] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

  v8 = v24;
LABEL_3:
  [(_UIDebugLogStack *)self pushNode:v8];
  v9[2](v9);
  v10 = [(_UIDebugLogStack *)self popNode];
  if (v10 != v24)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = v24;
    if (v24)
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

    v19 = v10;
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

    [v13 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:353 description:{@"Imbalanced calls to push and pop. Expected node %@ to be popped but got %@.", v18, v23}];
  }
}

@end