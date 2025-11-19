@interface UIGestureGraph
- (NSSet)edgeLabels;
- (NSSet)nodeLabels;
- (UIGestureGraph)init;
- (id)_allEdges;
- (id)_allNodes;
- (id)_edgesForLabel:(id)a3;
- (id)_nodesForLabel:(id)a3;
- (id)addEdgeWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 directed:(BOOL)a6;
- (id)addNodeWithLabel:(id)a3;
- (id)addNodeWithLabel:(id)a3 properties:(id)a4;
- (id)addUniqueEdgeWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 directed:(BOOL)a6 properties:(id)a7;
- (id)addUniqueNodeWithLabel:(id)a3 properties:(id)a4;
- (id)description;
- (id)edgesForLabel:(id)a3;
- (id)edgesForLabel:(id)a3 properties:(id)a4;
- (id)nodesForLabel:(id)a3 properties:(id)a4;
- (unint64_t)edgeCount;
- (unint64_t)edgeCountForLabel:(id)a3;
- (unint64_t)nodeCount;
- (unint64_t)nodeCountForLabel:(id)a3;
- (void)_addEdge:(id)a3;
- (void)_addNode:(id)a3;
- (void)enumerateEdgesWithBlock:(id)a3;
- (void)enumerateEdgesWithLabel:(id)a3 usingBlock:(id)a4;
- (void)enumerateNodesWithBlock:(id)a3;
- (void)enumerateNodesWithLabel:(id)a3 usingBlock:(id)a4;
- (void)removeAllObjects;
- (void)removeEdge:(id)a3;
- (void)removeEdges:(id)a3;
- (void)removeNode:(id)a3;
- (void)removeNodeEdges:(id)a3;
- (void)removeNodes:(id)a3;
- (void)traverseGraphBreadthFirstFromNode:(id)a3 directed:(BOOL)a4 usingBlock:(id)a5;
- (void)traverseGraphDepthFirstFromNode:(id)a3 directed:(BOOL)a4 usingBlock:(id)a5;
@end

@implementation UIGestureGraph

- (UIGestureGraph)init
{
  v8.receiver = self;
  v8.super_class = UIGestureGraph;
  v2 = [(UIGestureGraph *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    nodesByLabel = v2->_nodesByLabel;
    v2->_nodesByLabel = v3;

    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    edgesByLabel = v2->_edgesByLabel;
    v2->_edgesByLabel = v5;
  }

  return v2;
}

- (id)description
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [(UIGestureGraph *)self nodeLabels];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"[%@](%ld), ", *(*(&v28 + 1) + 8 * i), -[UIGestureGraph nodeCountForLabel:](self, "nodeCountForLabel:", *(*(&v28 + 1) + 8 * i))];
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v9 = [(UIGestureGraph *)self nodeLabels];
  v10 = [v9 count];

  if (v10)
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [(UIGestureGraph *)self edgeLabels];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 appendFormat:@"[%@](%ld), ", *(*(&v24 + 1) + 8 * j), -[UIGestureGraph edgeCountForLabel:](self, "edgeCountForLabel:", *(*(&v24 + 1) + 8 * j))];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  v17 = [(UIGestureGraph *)self edgeLabels];
  v18 = [v17 count];

  if (v18)
  {
    [v11 deleteCharactersInRange:{objc_msgSend(v11, "length") - 2, 2}];
  }

  v19 = MEMORY[0x1E696AEC0];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [v19 stringWithFormat:@"[%@] nodeCount:[%ld] edgesCount:[%ld]\n\tnodesLabels:[%@]\n\tedgesLabels:[%@]", v21, -[UIGestureGraph nodeCount](self, "nodeCount"), -[UIGestureGraph edgeCount](self, "edgeCount"), v3, v11];

  return v22;
}

- (void)_addNode:(id)a3
{
  nodesByLabel = self->_nodesByLabel;
  v6 = [a3 label];
  v9 = [(NSMapTable *)nodesByLabel objectForKey:v6];

  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_nodesByLabel;
    v8 = [a3 label];
    [(NSMapTable *)v7 setObject:v9 forKey:v8];
  }

  [v9 addObject:a3];
}

- (id)addNodeWithLabel:(id)a3
{
  v4 = [(UIGestureGraphElement *)[UIGestureGraphNode alloc] initWithLabel:a3];
  [(UIGestureGraph *)self _addNode:v4];

  return v4;
}

- (id)addNodeWithLabel:(id)a3 properties:(id)a4
{
  v6 = [(UIGestureGraphElement *)[UIGestureGraphNode alloc] initWithLabel:a3];
  [(UIGestureGraphElement *)v6 setProperties:a4];
  [(UIGestureGraph *)self _addNode:v6];

  return v6;
}

- (void)removeNodeEdges:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 allEdges];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(UIGestureGraph *)self removeEdge:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeNode:(id)a3
{
  [(UIGestureGraph *)self removeNodeEdges:?];
  nodesByLabel = self->_nodesByLabel;
  v6 = [a3 label];
  v8 = [(NSMapTable *)nodesByLabel objectForKey:v6];

  v7 = v8;
  if (v8)
  {
    [v8 removeObject:a3];
    v7 = v8;
  }
}

- (void)removeNodes:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(UIGestureGraph *)self removeNode:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (unint64_t)nodeCountForLabel:(id)a3
{
  v3 = [(UIGestureGraph *)self _nodesForLabel:a3];
  v4 = [v3 count];

  return v4;
}

- (id)nodesForLabel:(id)a3 properties:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(UIGestureGraph *)self _nodesForLabel:a3];
  v6 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 hasProperties:{a4, v15}])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x1E695DFD8] setWithSet:v6];

  return v13;
}

- (id)addUniqueNodeWithLabel:(id)a3 properties:(id)a4
{
  v7 = [UIGestureGraph nodesForLabel:"nodesForLabel:properties:" properties:?];
  if ([v7 count] == 1)
  {
    v8 = [v7 anyObject];
  }

  else if ([v7 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(UIGestureGraphElement *)[UIGestureGraphNode alloc] initWithLabel:a3];
    [(UIGestureGraphElement *)v8 setProperties:a4];
    [(UIGestureGraph *)self _addNode:v8];
  }

  return v8;
}

- (unint64_t)nodeCount
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMapTable *)self->_nodesByLabel objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSSet)nodeLabels
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = NSAllMapTableKeys(self->_nodesByLabel);
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)enumerateNodesWithLabel:(id)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(UIGestureGraph *)self _nodesForLabel:a3];
  v7 = [v5 setWithSet:v6];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      (*(a4 + 2))(a4, *(*(&v13 + 1) + 8 * v12), &v17);
      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateNodesWithBlock:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = NSAllMapTableValues(self->_nodesByLabel);
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = 0x1E695D000uLL;
    v17 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = v8;
        v11 = [*(v8 + 4056) setWithSet:*(*(&v22 + 1) + 8 * i)];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v19;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(v12);
              }

              (*(a3 + 2))(a3, *(*(&v18 + 1) + 8 * j), &v26);
              if (v26)
              {

                goto LABEL_18;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v8 = v10;
        v7 = v17;
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

LABEL_18:
}

- (id)_allNodes
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = NSAllMapTableValues(self->_nodesByLabel);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 unionSet:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_nodesForLabel:(id)a3
{
  if (a3)
  {
    [(NSMapTable *)self->_nodesByLabel objectForKey:?];
  }

  else
  {
    [(UIGestureGraph *)self _allNodes];
  }
  v3 = ;

  return v3;
}

- (void)_addEdge:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a3 sourceNode];
  [v5 _addEdge:a3];

  if (([a3 isLoop] & 1) == 0)
  {
    v6 = [a3 targetNode];
    [v6 _addEdge:a3];
  }

  edgesByLabel = self->_edgesByLabel;
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
  v12 = [v9 count];
  if (v12 >= UIGestureGraphEdgeLimit)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Gesture", &_addEdge____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = 134217984;
      v16 = [v9 count];
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Abnormal number of gesture recognizer dependencies: %lu. System performance may be affected. Please investigate reducing gesture recognizers and/or their dependencies.", &v15, 0xCu);
    }

    UIGestureGraphEdgeLimit += 50;
  }
}

- (id)addEdgeWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 directed:(BOOL)a6
{
  v7 = [[UIGestureGraphEdge alloc] initWithLabel:a3 sourceNode:a4 targetNode:a5 directed:a6];
  [(UIGestureGraph *)self _addEdge:v7];

  return v7;
}

- (void)removeEdge:(id)a3
{
  edgesByLabel = self->_edgesByLabel;
  v5 = [a3 label];
  v8 = [(NSMapTable *)edgesByLabel objectForKey:v5];

  if (v8)
  {
    [v8 removeObject:a3];
  }

  v6 = [a3 sourceNode];
  [v6 _removeEdge:a3];

  if (([a3 isLoop] & 1) == 0)
  {
    v7 = [a3 targetNode];
    [v7 _removeEdge:a3];
  }
}

- (void)removeEdges:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(UIGestureGraph *)self removeEdge:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)edgesForLabel:(id)a3
{
  v3 = [(UIGestureGraph *)self _edgesForLabel:a3];
  v4 = [MEMORY[0x1E695DFD8] setWithSet:v3];

  return v4;
}

- (id)edgesForLabel:(id)a3 properties:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(UIGestureGraph *)self _edgesForLabel:a3];
  v6 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 hasProperties:{a4, v15}])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x1E695DFD8] setWithSet:v6];

  return v13;
}

- (id)addUniqueEdgeWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 directed:(BOOL)a6 properties:(id)a7
{
  v24 = a6;
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [(UIGestureGraph *)self _edgesForLabel:?];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v26 + 1) + 8 * v13);
      v15 = [v14 sourceNode];
      if (v15 == a4)
      {
        v16 = [v14 targetNode];
        v17 = v16;
        if (v16 == a5)
        {
          v18 = [v14 hasProperties:a7];

          if (v18)
          {
            if ([v14 isDirected] == v24)
            {
              v20 = v14;
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

LABEL_10:
      if (v11 == ++v13)
      {
        v19 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
        v11 = v19;
        if (v19)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = [[UIGestureGraphEdge alloc] initWithLabel:a3 sourceNode:a4 targetNode:a5 directed:v24];
  [(UIGestureGraphElement *)v20 setProperties:a7];
  [(UIGestureGraph *)self _addEdge:v20];
LABEL_20:

  return v20;
}

- (unint64_t)edgeCount
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMapTable *)self->_edgesByLabel objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)edgeCountForLabel:(id)a3
{
  v3 = [(UIGestureGraph *)self _edgesForLabel:a3];
  v4 = [v3 count];

  return v4;
}

- (NSSet)edgeLabels
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = NSAllMapTableKeys(self->_edgesByLabel);
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)enumerateEdgesWithLabel:(id)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(UIGestureGraph *)self _edgesForLabel:a3];
  v7 = [v5 setWithSet:v6];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      (*(a4 + 2))(a4, *(*(&v13 + 1) + 8 * v12), &v17);
      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateEdgesWithBlock:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = NSAllMapTableValues(self->_edgesByLabel);
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = 0x1E695D000uLL;
    v17 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = v8;
        v11 = [*(v8 + 4056) setWithSet:*(*(&v22 + 1) + 8 * i)];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v19;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(v12);
              }

              (*(a3 + 2))(a3, *(*(&v18 + 1) + 8 * j), &v26);
              if (v26)
              {

                goto LABEL_18;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v8 = v10;
        v7 = v17;
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

LABEL_18:
}

- (id)_allEdges
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = NSAllMapTableValues(self->_edgesByLabel);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 unionSet:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_edgesForLabel:(id)a3
{
  if (a3)
  {
    [(NSMapTable *)self->_edgesByLabel objectForKey:?];
  }

  else
  {
    [(UIGestureGraph *)self _allEdges];
  }
  v3 = ;

  return v3;
}

- (void)removeAllObjects
{
  [(NSMapTable *)self->_nodesByLabel removeAllObjects];
  edgesByLabel = self->_edgesByLabel;

  [(NSMapTable *)edgesByLabel removeAllObjects];
}

- (void)traverseGraphDepthFirstFromNode:(id)a3 directed:(BOOL)a4 usingBlock:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v49 = 0;
  [v7 addObject:a3];
  if ([v7 count])
  {
    v36 = v8;
    v34 = a5;
    while (1)
    {
      v9 = [v7 lastObject];
      v10 = [v7 count];
      if ([v8 containsObject:v9])
      {
        goto LABEL_4;
      }

      v11 = (*(a5 + 2))(a5, v9, &v49);
      if (v49 == 1)
      {

        goto LABEL_36;
      }

      v12 = v11;
      [v8 addObject:v9];
      if (v12)
      {
        break;
      }

LABEL_33:

      if (![v7 count])
      {
        goto LABEL_36;
      }
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v13 = [v9 outEdges];
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v45 + 1) + 8 * i) targetNode];
          [v7 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v15);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = [v9 inOutEdges];
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v42;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v41 + 1) + 8 * j);
          v25 = [v24 targetNode];
          v26 = [v9 isEqual:v25];

          if (v26)
          {
            [v24 sourceNode];
          }

          else
          {
            [v24 targetNode];
          }
          v27 = ;
          [v7 addObject:v27];
        }

        v21 = [v19 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v21);
    }

    a5 = v34;
    v8 = v36;
    if (!a4)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v28 = [v9 inEdges];
      v29 = [v28 countByEnumeratingWithState:&v37 objects:v50 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v38;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [*(*(&v37 + 1) + 8 * k) sourceNode];
            [v7 addObject:v33];
          }

          v30 = [v28 countByEnumeratingWithState:&v37 objects:v50 count:16];
        }

        while (v30);
      }

      v8 = v36;
    }

LABEL_4:
    [v7 removeObjectAtIndex:v10 - 1];
    goto LABEL_33;
  }

LABEL_36:
}

- (void)traverseGraphBreadthFirstFromNode:(id)a3 directed:(BOOL)a4 usingBlock:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v46 = 0;
  [v6 addObject:a3];
  if ([v6 count])
  {
    while (1)
    {
      v8 = [v6 firstObject];
      if ([v7 containsObject:v8])
      {
        goto LABEL_3;
      }

      v9 = (*(a5 + 2))(a5, v8, &v46);
      if (v46 == 1)
      {

        goto LABEL_35;
      }

      v10 = v9;
      [v7 addObject:v8];
      if (v10)
      {
        break;
      }

LABEL_32:

      if (![v6 count])
      {
        goto LABEL_35;
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = [v8 outEdges];
    v12 = [v11 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v42 + 1) + 8 * i) targetNode];
          [v6 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v13);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = [v8 inOutEdges];
    v18 = [v17 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v38 + 1) + 8 * j);
          v23 = [v22 targetNode];
          v24 = [v8 isEqual:v23];

          if (v24)
          {
            [v22 sourceNode];
          }

          else
          {
            [v22 targetNode];
          }
          v25 = ;
          [v6 addObject:v25];
        }

        v19 = [v17 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v19);
    }

    if (!a4)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v26 = [v8 inEdges];
      v27 = [v26 countByEnumeratingWithState:&v34 objects:v47 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v35;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v35 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [*(*(&v34 + 1) + 8 * k) sourceNode];
            [v6 addObject:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v34 objects:v47 count:16];
        }

        while (v28);
      }
    }

LABEL_3:
    [v6 removeObject:v8];
    goto LABEL_32;
  }

LABEL_35:
}

@end