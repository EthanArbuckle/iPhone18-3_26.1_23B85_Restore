@interface UIGestureGraphNode
- (BOOL)hasEdgeBetweenNode:(id)a3;
- (BOOL)hasEdgeFromNode:(id)a3;
- (BOOL)hasEdgeTowardNode:(id)a3;
- (BOOL)isInEdge:(id)a3;
- (BOOL)isInOutEdge:(id)a3;
- (BOOL)isOutEdge:(id)a3;
- (NSSet)allEdges;
- (id)_edgesForType:(unint64_t)a3 createIfNeeded:(BOOL)a4;
- (id)description;
- (id)edgesForLabel:(id)a3;
- (unint64_t)edgeCount;
- (unint64_t)edgeCountForLabel:(id)a3;
- (unint64_t)typeOfEdge:(id)a3;
- (void)_addEdge:(id)a3;
- (void)_removeEdge:(id)a3;
- (void)enumerateEdgesBetweenNode:(id)a3 usingBlock:(id)a4;
- (void)enumerateEdgesFromNode:(id)a3 usingBlock:(id)a4;
- (void)enumerateEdgesTowardNode:(id)a3 usingBlock:(id)a4;
- (void)enumerateNeighborNodesUsingBlock:(id)a3;
@end

@implementation UIGestureGraphNode

- (unint64_t)edgeCount
{
  v3 = [(NSMutableSet *)self->_inEdges count];
  v4 = [(NSMutableSet *)self->_inOutEdges count]+ v3;
  return v4 + [(NSMutableSet *)self->_outEdges count];
}

- (unint64_t)edgeCountForLabel:(id)a3
{
  if (a3)
  {
    v4 = [(NSMapTable *)self->_edgesByLabel objectForKey:?];
    v5 = [v4 count];

    return v5;
  }

  else
  {

    return [(UIGestureGraphNode *)self edgeCount];
  }
}

- (BOOL)hasEdgeTowardNode:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_outEdges;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) targetNode];

        if (v9 == a3)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)hasEdgeFromNode:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_inEdges;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) sourceNode];

        if (v9 == a3)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)hasEdgeBetweenNode:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_inOutEdges;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) oppositeNode:{self, v13}];

        if (v10 == a3)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (unint64_t)typeOfEdge:(id)a3
{
  if ([(UIGestureGraphNode *)self isInEdge:?])
  {
    return 0;
  }

  if ([(UIGestureGraphNode *)self isOutEdge:a3])
  {
    return 2;
  }

  return 1;
}

- (BOOL)isInEdge:(id)a3
{
  v5 = [a3 targetNode];
  if (v5 == self)
  {
    v6 = [a3 isDirected];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isOutEdge:(id)a3
{
  v5 = [a3 sourceNode];
  if (v5 == self)
  {
    v6 = [a3 isDirected];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isInOutEdge:(id)a3
{
  if (![a3 isDirected])
  {
    return 1;
  }

  v5 = [a3 sourceNode];
  v6 = [a3 targetNode];
  if (v5 == v6)
  {
    v8 = [a3 sourceNode];
    v7 = v8 == self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateEdgesTowardNode:(id)a3 usingBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_outEdges count])
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(NSMutableSet *)self->_outEdges allObjects];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [v12 targetNode];

        if (v13 == a3)
        {
          (*(a4 + 2))(a4, v12, &v18);
          if (v18)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)enumerateEdgesFromNode:(id)a3 usingBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_inEdges count])
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(NSMutableSet *)self->_inEdges allObjects];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [v12 sourceNode];

        if (v13 == a3)
        {
          (*(a4 + 2))(a4, v12, &v18);
          if (v18)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)enumerateEdgesBetweenNode:(id)a3 usingBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_inOutEdges count])
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(NSMutableSet *)self->_inOutEdges allObjects];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [v12 oppositeNode:self];

        if (v13 == a3)
        {
          (*(a4 + 2))(a4, v12, &v18);
          if (v18)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (id)edgesForLabel:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = [(NSMapTable *)self->_edgesByLabel objectForKey:?];
    v5 = [v3 setWithSet:v4];
  }

  else
  {
    v5 = [(UIGestureGraphNode *)self allEdges];
  }

  return v5;
}

- (NSSet)allEdges
{
  v3 = [MEMORY[0x1E695DFA8] setWithSet:self->_inEdges];
  [v3 unionSet:self->_inOutEdges];
  [v3 unionSet:self->_outEdges];

  return v3;
}

- (void)enumerateNeighborNodesUsingBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UIGestureGraphNode *)self allEdges];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 oppositeNode:self];
        v12 = v11;
        if (v11)
        {
          if (([v11 isEqual:self] & 1) == 0)
          {
            (*(a3 + 2))(a3, v10, v12, &v17);
            if (v17)
            {

              goto LABEL_13;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UIGestureGraphNode *)self edgeCount];
  v7 = [(NSMutableSet *)self->_inEdges count];
  v8 = [(NSMutableSet *)self->_outEdges count];
  v9 = [(NSMutableSet *)self->_inOutEdges count];
  v13.receiver = self;
  v13.super_class = UIGestureGraphNode;
  v10 = [(UIGestureGraphElement *)&v13 description];
  v11 = [v3 stringWithFormat:@"[<%@ %p>] edgesCount:[%ld] inEdgesCount:[%ld] outEdgesCount:[%ld] inOutEdgesCount:[%ld] %@", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (void)_addEdge:(id)a3
{
  v12 = [(UIGestureGraphNode *)self _edgesForType:[(UIGestureGraphNode *)self typeOfEdge:?] createIfNeeded:1];
  edgesByLabel = self->_edgesByLabel;
  if (!edgesByLabel)
  {
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v7 = self->_edgesByLabel;
    self->_edgesByLabel = v6;

    edgesByLabel = self->_edgesByLabel;
  }

  v8 = [a3 label];
  v9 = [(NSMapTable *)edgesByLabel objectForKey:v8];

  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    v10 = self->_edgesByLabel;
    v11 = [a3 label];
    [(NSMapTable *)v10 setObject:v9 forKey:v11];
  }

  [v9 addObject:a3];
  [v12 addObject:a3];
}

- (void)_removeEdge:(id)a3
{
  v8 = [(UIGestureGraphNode *)self _edgesForType:[(UIGestureGraphNode *)self typeOfEdge:?] createIfNeeded:0];
  edgesByLabel = self->_edgesByLabel;
  v6 = [a3 label];
  v7 = [(NSMapTable *)edgesByLabel objectForKey:v6];

  if (v7)
  {
    [v7 removeObject:a3];
  }

  [v8 removeObject:a3];
}

- (id)_edgesForType:(unint64_t)a3 createIfNeeded:(BOOL)a4
{
  switch(a3)
  {
    case 2uLL:
      p_outEdges = &self->_outEdges;
      outEdges = self->_outEdges;
      if (outEdges)
      {
        v10 = 1;
      }

      else
      {
        v10 = !a4;
      }

      if (v10)
      {
        goto LABEL_9;
      }

LABEL_8:
      v7 = objc_opt_new();
      v8 = *p_outEdges;
      *p_outEdges = v7;

      outEdges = *p_outEdges;
LABEL_9:
      v9 = outEdges;
      goto LABEL_17;
    case 1uLL:
      v4 = 40;
      goto LABEL_6;
    case 0uLL:
      v4 = 24;
LABEL_6:
      p_outEdges = (self + v4);
      outEdges = *(&self->super.super.isa + v4);
      if (outEdges || !a4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

@end