@interface _UIContextMenuLinkedList
- (_UIContextMenuNode)current;
- (_UIContextMenuNode)first;
- (id)description;
- (id)nodeForMenu:(id)a3;
- (id)popNode;
- (id)removeNode:(id)a3;
- (void)_enumerateNodes:(id)a3 inReverse:(BOOL)a4;
- (void)addNode:(id)a3;
@end

@implementation _UIContextMenuLinkedList

- (_UIContextMenuNode)first
{
  v2 = [(_UIContextMenuLinkedList *)self nodes];
  v3 = [v2 firstObject];

  return v3;
}

- (_UIContextMenuNode)current
{
  v2 = [(_UIContextMenuLinkedList *)self nodes];
  v3 = [v2 lastObject];

  return v3;
}

- (void)addNode:(id)a3
{
  v9 = a3;
  v4 = [(_UIContextMenuLinkedList *)self current];
  [v4 setNext:v9];

  v5 = [(_UIContextMenuLinkedList *)self current];
  [v9 setPrevious:v5];

  if (!self->_nodes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    nodes = self->_nodes;
    self->_nodes = v6;
  }

  v8 = [(_UIContextMenuLinkedList *)self nodes];
  [v8 addObject:v9];
}

- (id)popNode
{
  v3 = [(_UIContextMenuLinkedList *)self current];
  if (v3)
  {
    v4 = [(_UIContextMenuLinkedList *)self nodes];
    v5 = [(_UIContextMenuLinkedList *)self current];
    [v4 removeObject:v5];

    v6 = [(_UIContextMenuLinkedList *)self current];
    [v6 setNext:0];
  }

  return v3;
}

- (id)removeNode:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
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
  v6 = v5;
  v13 = v6;
  v7 = v4;
  v14 = v7;
  v15 = &v16;
  [(_UIContextMenuLinkedList *)self reverseEnumerateNodes:v12];
  if (v17[5])
  {
    v8 = [(_UIContextMenuLinkedList *)self nodes];
    [v8 removeObjectsInArray:v6];

    v9 = [(_UIContextMenuLinkedList *)self current];
    [v9 setNext:0];

    v10 = v6;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)nodeForMenu:(id)a3
{
  v4 = a3;
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
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(_UIContextMenuLinkedList *)self reverseEnumerateNodes:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_enumerateNodes:(id)a3 inReverse:(BOOL)a4
{
  v6 = a3;
  if (a4)
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
      v6[2](v6, v7, &v9);
      if (a4)
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
    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 stringWithFormat:@"<%@: %p>", v7, v5];
  }

  else
  {
    v8 = @"(nil)";
  }

  v17 = [v3 stringWithString:v8];

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