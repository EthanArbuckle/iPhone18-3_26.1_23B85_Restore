@interface UIGestureGraphEdge
- (UIGestureGraphEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode directed:(BOOL)directed;
- (id)commonNode:(id)node;
- (id)description;
- (id)oppositeNode:(id)node;
@end

@implementation UIGestureGraphEdge

- (UIGestureGraphEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode directed:(BOOL)directed
{
  if (node)
  {
    if (targetNode)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIGestureGraphEdge.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"sourceNode"}];

    if (targetNode)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIGestureGraphEdge.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"targetNode"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = UIGestureGraphEdge;
  v12 = [(UIGestureGraphElement *)&v17 initWithLabel:label];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceNode, node);
    objc_storeStrong(&v13->_targetNode, targetNode);
    v13->_directed = directed;
  }

  return v13;
}

- (id)oppositeNode:(id)node
{
  targetNode = self->_targetNode;
  if (self->_sourceNode != node)
  {
    if (targetNode != node)
    {
      v5 = 0;

      return v5;
    }

    targetNode = self->_sourceNode;
  }

  v5 = targetNode;

  return v5;
}

- (id)commonNode:(id)node
{
  p_sourceNode = &self->_sourceNode;
  sourceNode = self->_sourceNode;
  sourceNode = [node sourceNode];
  if (([(UIGestureGraphNode *)sourceNode isEqual:sourceNode]& 1) != 0)
  {
    goto LABEL_2;
  }

  v8 = *p_sourceNode;
  targetNode = [node targetNode];
  LOBYTE(v8) = [v8 isEqual:targetNode];

  if (v8)
  {
    goto LABEL_4;
  }

  p_sourceNode = &self->_targetNode;
  targetNode = self->_targetNode;
  sourceNode = [node sourceNode];
  if (([(UIGestureGraphNode *)targetNode isEqual:sourceNode]& 1) != 0)
  {
LABEL_2:

LABEL_4:
    v10 = *p_sourceNode;
    goto LABEL_5;
  }

  v13 = *p_sourceNode;
  targetNode2 = [node targetNode];
  LOBYTE(v13) = [v13 isEqual:targetNode2];

  if (v13)
  {
    goto LABEL_4;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  isDirected = [(UIGestureGraphEdge *)self isDirected];
  v12.receiver = self;
  v12.super_class = UIGestureGraphEdge;
  v7 = [(UIGestureGraphElement *)&v12 description];
  sourceNode = [(UIGestureGraphEdge *)self sourceNode];
  targetNode = [(UIGestureGraphEdge *)self targetNode];
  v10 = [v3 stringWithFormat:@"[<%@ %p>] directed:[%d] %@\n\tsourceNode:%@\n\ttargetNode:%@", v5, self, isDirected, v7, sourceNode, targetNode];

  return v10;
}

@end