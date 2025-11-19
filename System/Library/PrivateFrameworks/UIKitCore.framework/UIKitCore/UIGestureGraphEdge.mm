@interface UIGestureGraphEdge
- (UIGestureGraphEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 directed:(BOOL)a6;
- (id)commonNode:(id)a3;
- (id)description;
- (id)oppositeNode:(id)a3;
@end

@implementation UIGestureGraphEdge

- (UIGestureGraphEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 directed:(BOOL)a6
{
  if (a4)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIGestureGraphEdge.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"sourceNode"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"UIGestureGraphEdge.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"targetNode"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = UIGestureGraphEdge;
  v12 = [(UIGestureGraphElement *)&v17 initWithLabel:a3];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceNode, a4);
    objc_storeStrong(&v13->_targetNode, a5);
    v13->_directed = a6;
  }

  return v13;
}

- (id)oppositeNode:(id)a3
{
  targetNode = self->_targetNode;
  if (self->_sourceNode != a3)
  {
    if (targetNode != a3)
    {
      v5 = 0;

      return v5;
    }

    targetNode = self->_sourceNode;
  }

  v5 = targetNode;

  return v5;
}

- (id)commonNode:(id)a3
{
  p_sourceNode = &self->_sourceNode;
  sourceNode = self->_sourceNode;
  v7 = [a3 sourceNode];
  if (([(UIGestureGraphNode *)sourceNode isEqual:v7]& 1) != 0)
  {
    goto LABEL_2;
  }

  v8 = *p_sourceNode;
  v9 = [a3 targetNode];
  LOBYTE(v8) = [v8 isEqual:v9];

  if (v8)
  {
    goto LABEL_4;
  }

  p_sourceNode = &self->_targetNode;
  targetNode = self->_targetNode;
  v7 = [a3 sourceNode];
  if (([(UIGestureGraphNode *)targetNode isEqual:v7]& 1) != 0)
  {
LABEL_2:

LABEL_4:
    v10 = *p_sourceNode;
    goto LABEL_5;
  }

  v13 = *p_sourceNode;
  v14 = [a3 targetNode];
  LOBYTE(v13) = [v13 isEqual:v14];

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
  v6 = [(UIGestureGraphEdge *)self isDirected];
  v12.receiver = self;
  v12.super_class = UIGestureGraphEdge;
  v7 = [(UIGestureGraphElement *)&v12 description];
  v8 = [(UIGestureGraphEdge *)self sourceNode];
  v9 = [(UIGestureGraphEdge *)self targetNode];
  v10 = [v3 stringWithFormat:@"[<%@ %p>] directed:[%d] %@\n\tsourceNode:%@\n\ttargetNode:%@", v5, self, v6, v7, v8, v9];

  return v10;
}

@end