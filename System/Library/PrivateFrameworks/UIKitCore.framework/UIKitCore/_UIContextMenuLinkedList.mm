@interface _UIContextMenuLinkedList
- (_UIContextMenuNode)current;
- (_UIContextMenuNode)first;
- (id)description;
- (id)nodeForMenu:(id)menu;
- (id)popNode;
- (id)removeNode:(id)node;
- (void)_enumerateNodes:(id)nodes inReverse:(BOOL)reverse;
- (void)addNode:(id)node;
@end

@implementation _UIContextMenuLinkedList

- (_UIContextMenuNode)first
{
  nodes = [(_UIContextMenuLinkedList *)self nodes];
  firstObject = [nodes firstObject];

  return firstObject;
}

- (_UIContextMenuNode)current
{
  nodes = [(_UIContextMenuLinkedList *)self nodes];
  lastObject = [nodes lastObject];

  return lastObject;
}

- (void)addNode:(id)node
{
  nodeCopy = node;
  current = [(_UIContextMenuLinkedList *)self current];
  [current setNext:nodeCopy];

  current2 = [(_UIContextMenuLinkedList *)self current];
  [nodeCopy setPrevious:current2];

  if (!self->_nodes)
  {
    array = [MEMORY[0x1E695DF70] array];
    nodes = self->_nodes;
    self->_nodes = array;
  }

  nodes = [(_UIContextMenuLinkedList *)self nodes];
  [nodes addObject:nodeCopy];
}

- (id)popNode
{
  current = [(_UIContextMenuLinkedList *)self current];
  if (current)
  {
    nodes = [(_UIContextMenuLinkedList *)self nodes];
    current2 = [(_UIContextMenuLinkedList *)self current];
    [nodes removeObject:current2];

    current3 = [(_UIContextMenuLinkedList *)self current];
    [current3 setNext:0];
  }

  return current;
}

- (id)removeNode:(id)node
{
  nodeCopy = node;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__17;
  v20 = __Block_byref_object_dispose__17;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39___UIContextMenuLinkedList_removeNode___block_invoke;
  v12[3] = &unk_1E70F80B8;
  v6 = array;
  v13 = v6;
  v7 = nodeCopy;
  v14 = v7;
  v15 = &v16;
  [(_UIContextMenuLinkedList *)self reverseEnumerateNodes:v12];
  if (v17[5])
  {
    nodes = [(_UIContextMenuLinkedList *)self nodes];
    [nodes removeObjectsInArray:v6];

    current = [(_UIContextMenuLinkedList *)self current];
    [current setNext:0];

    v10 = v6;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)nodeForMenu:(id)menu
{
  menuCopy = menu;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__17;
  v15 = __Block_byref_object_dispose__17;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40___UIContextMenuLinkedList_nodeForMenu___block_invoke;
  v8[3] = &unk_1E70F4078;
  v5 = menuCopy;
  v9 = v5;
  v10 = &v11;
  [(_UIContextMenuLinkedList *)self reverseEnumerateNodes:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_enumerateNodes:(id)nodes inReverse:(BOOL)reverse
{
  nodesCopy = nodes;
  if (reverse)
  {
    [(_UIContextMenuLinkedList *)self current];
  }

  else
  {
    [(_UIContextMenuLinkedList *)self first];
  }
  v7 = ;
  v9 = 0;
  if (v7)
  {
    do
    {
      nodesCopy[2](nodesCopy, v7, &v9);
      if (reverse)
      {
        [v7 previous];
      }

      else
      {
        [v7 next];
      }
      v8 = ;

      if (!v8)
      {
        break;
      }

      v7 = v8;
    }

    while ((v9 & 1) == 0);
  }
}

- (id)description
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__17;
  v16 = __Block_byref_object_dispose__17;
  v3 = MEMORY[0x1E696AD60];
  if (self)
  {
    v4 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    selfCopy = [v4 stringWithFormat:@"<%@: %p>", v7, selfCopy];
  }

  else
  {
    selfCopy = @"(nil)";
  }

  v17 = [v3 stringWithString:selfCopy];

  [v13[5] appendString:@" [ "];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39___UIContextMenuLinkedList_description__block_invoke;
  v11[3] = &unk_1E70F4078;
  v11[4] = self;
  v11[5] = &v12;
  [(_UIContextMenuLinkedList *)self enumerateNodes:v11];
  [v13[5] appendString:@" ]"];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

@end