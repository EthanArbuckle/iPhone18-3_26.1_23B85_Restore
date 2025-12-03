@interface VMUDominatorCallTreeCreator
- (id)callTreeWithGraph:(id)graph groupByType:(BOOL)type showRegionVirtualSize:(BOOL)size debugTimer:(id)timer;
- (id)groupByTypeNameForNode:(unsigned int)node;
- (id)referenceDecriptionForSourceNodeAddress:(unint64_t)address referenceInfo:(id *)info;
- (id)remainingNodeNames;
- (void)buildCallTreeWithRootNodeNames:(id)names;
- (void)removeJunkEdges;
- (void)removeJunkNodes;
@end

@implementation VMUDominatorCallTreeCreator

- (void)removeJunkEdges
{
  edgeNamespaceSize = [(VMUDirectedGraph *)self->_processObjectGraph edgeNamespaceSize];
  v4 = malloc_type_calloc(1uLL, ((edgeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v4 = edgeNamespaceSize;
  invertedGraph = [(VMUDirectedGraph *)self->_processObjectGraph invertedGraph];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__VMUDominatorCallTreeCreator_removeJunkEdges__block_invoke;
  aBlock[3] = &unk_1E827A2D0;
  aBlock[4] = v26;
  aBlock[5] = v24;
  aBlock[6] = v4;
  v6 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__VMUDominatorCallTreeCreator_removeJunkEdges__block_invoke_2;
  v20[3] = &unk_1E827A2F8;
  v22 = v4;
  v20[4] = self;
  v7 = v6;
  v21 = v7;
  v8 = _Block_copy(v20);
  processObjectGraph = self->_processObjectGraph;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __46__VMUDominatorCallTreeCreator_removeJunkEdges__block_invoke_3;
  v15 = &unk_1E827A320;
  v18 = v24;
  v19 = v26;
  v10 = invertedGraph;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  [(VMUDirectedGraph *)processObjectGraph enumerateNodesWithBlock:&v12];
  [(VMUDirectedGraph *)self->_processObjectGraph removeMarkedEdges:v4, v12, v13, v14, v15];
  free(v4);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

uint64_t __46__VMUDominatorCallTreeCreator_removeJunkEdges__block_invoke(void *a1, int a2, unsigned int a3)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if ((a2 - 1) > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = dword_1C6858460[a2 - 1];
    }

    if ((*(*(a1[5] + 8) + 24) & v3) != 0)
    {
      v5 = a1[6];
      v4 = 1;
      if (*v5 > a3)
      {
        *(v5 + (a3 >> 3) + 4) |= 1 << (a3 & 7);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    *(*(a1[5] + 8) + 24) |= a2;
  }

  return v4;
}

void __46__VMUDominatorCallTreeCreator_removeJunkEdges__block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != a3)
  {
    v7 = *(a1[4] + 32);
    if (v7)
    {
      [v7 nodeDetails:a4];
    }

    v9 = 0;
    v10 = *(a1[4] + 32);
    if (v10)
    {
      [v10 nodeDetails:a3];
    }

    v11 = 0;
    if (v9)
    {
      v12 = [v9 className];
      v13 = [v12 isEqualToString:@"NSConcreteMutableData (Bytes Storage)"];

      if (v13)
      {
        goto LABEL_10;
      }

      v15 = [v9 className];
      if ([v15 isEqualToString:@"@autoreleasepool content"])
      {
        v16 = [v11 className];
        v17 = [v16 isEqualToString:@"@autoreleasepool content"];

        if ((v17 & 1) == 0)
        {
          v18 = *(a1[5] + 16);
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v19 = [v11 className];
    v20 = [v19 isEqualToString:@"@autoreleasepool content"];

    if (v20)
    {
      v21 = [v9 className];
      if ([v21 isEqualToString:@"@autoreleasepool content"])
      {
      }

      else
      {
        IsRoot = VMUGraphNodeType_IsRoot(0);

        if (!IsRoot)
        {
LABEL_10:
          v14 = a1[6];
          if (*v14 > a2)
          {
            *(v14 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
          }

          goto LABEL_26;
        }
      }
    }

    if (!VMUGraphNodeType_IsVMRegion(0))
    {
      v23 = *(a1[4] + 32);
      if (v23)
      {
        [v23 referenceInfoWithName:a2];
        LOBYTE(v23) = 0;
      }

      VMUIsOwningReference(v23);
      (*(a1[5] + 16))();
      goto LABEL_26;
    }

    v18 = *(a1[5] + 16);
LABEL_22:
    v18();
LABEL_26:

    return;
  }

  v8 = a1[6];
  if (*v8 > a2)
  {
    *(v8 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
  }
}

uint64_t __46__VMUDominatorCallTreeCreator_removeJunkEdges__block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  [*(a1 + 32) enumerateEdgesOfNode:a2 withBlock:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 enumerateEdgesOfNode:a2 withBlock:v5];
}

- (void)removeJunkNodes
{
  nodeNamespaceSize = [(VMUDirectedGraph *)self->_processObjectGraph nodeNamespaceSize];
  v4 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v4 = nodeNamespaceSize;
  processObjectGraph = self->_processObjectGraph;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__VMUDominatorCallTreeCreator_removeJunkNodes__block_invoke_2;
  v7[3] = &unk_1E827A368;
  v7[4] = self;
  v8 = &__block_literal_global_21;
  v9 = v4;
  [(VMUDirectedGraph *)processObjectGraph enumerateNodesWithBlock:v7];
  [(VMUDirectedGraph *)self->_processObjectGraph removeMarkedNodes:v4];

  return v4;
}

BOOL __46__VMUDominatorCallTreeCreator_removeJunkNodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSubmap])
  {
    goto LABEL_17;
  }

  v3 = [v2 type];
  if ([v3 hasSuffix:@"Foundation"])
  {
    goto LABEL_16;
  }

  v4 = [v2 type];
  if ([v4 hasSuffix:@"Kernel Alloc Once"])
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  v5 = [v2 type];
  if ([v5 hasSuffix:@"MALLOC metadata"] & 1) != 0 || (objc_msgSend(v2, "isOwnedUnmappedMemory"))
  {
LABEL_14:

    goto LABEL_15;
  }

  v6 = [v2 type];
  if ([v6 hasSuffix:@"SQLite page cache"])
  {
LABEL_13:

    goto LABEL_14;
  }

  v7 = [v2 type];
  if ([v7 hasSuffix:@"__AUTH"])
  {
LABEL_12:

    goto LABEL_13;
  }

  v8 = [v2 type];
  if ([v8 hasSuffix:@"__AUTH_CONST"])
  {
LABEL_11:

    goto LABEL_12;
  }

  v9 = [v2 type];
  if ([v9 hasSuffix:@"mapped file"])
  {

    goto LABEL_11;
  }

  v12 = [v2 type];
  v13 = [v12 hasSuffix:@"shared memory"];

  if ((v13 & 1) == 0 && ([v2 protection] & 2) != 0)
  {
    v10 = (v2[13] - 1) < 2;
    goto LABEL_18;
  }

LABEL_17:
  v10 = 1;
LABEL_18:

  return v10;
}

void __46__VMUDominatorCallTreeCreator_removeJunkNodes__block_invoke_2(void *a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a1[4] + 32);
  if (v4)
  {
    [v4 nodeDetails:a2];
    v4 = (v9 >> 60);
  }

  if (VMUGraphNodeType_IsVMRegion(v4))
  {
    v5 = [*(a1[4] + 32) vmuVMRegionForNode:a2];
    if (v5 && (*(a1[5] + 16))())
    {
      v6 = a1[6];
      if (*v6 > a2)
      {
        *(v6 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
      }
    }
  }

  else if (v9 == 0x1000000000000000)
  {
    v7 = a1[6];
    if (*v7 > a2)
    {
      *(v7 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
    }
  }
}

- (id)callTreeWithGraph:(id)graph groupByType:(BOOL)type showRegionVirtualSize:(BOOL)size debugTimer:(id)timer
{
  graphCopy = graph;
  timerCopy = timer;
  v12 = objc_autoreleasePoolPush();
  [(VMUDominatorCallTreeCreator *)self setProcessObjectGraph:graphCopy];
  self->_showRegionVirtualSize = size;
  self->_groupByType = type;
  objc_storeStrong(&self->_debugTimer, timer);
  [timerCopy startWithMessage:"remove junk nodes from object graph"];
  self->_visitedNodes = [(VMUDominatorCallTreeCreator *)self removeJunkNodes];
  [timerCopy startWithMessage:"remove junk edges from object graph"];
  [(VMUDominatorCallTreeCreator *)self removeJunkEdges];
  [timerCopy startWithMessage:"create dominator graph"];
  v13 = [[VMUDominatorGraph alloc] initWithGraph:graphCopy debugTimer:timerCopy];
  [(VMUDominatorCallTreeCreator *)self setDominatorGraph:v13];

  [(VMUDebugTimer *)self->_debugTimer startWithMessage:"select all dominator roots as roots of the tree"];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dominatorGraph = self->_dominatorGraph;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __94__VMUDominatorCallTreeCreator_callTreeWithGraph_groupByType_showRegionVirtualSize_debugTimer___block_invoke;
  v22[3] = &unk_1E827A390;
  v16 = v14;
  v23 = v16;
  [(VMUDominatorGraph *)dominatorGraph enumerateDominatorRootsWithBlock:v22];
  v17 = [[VMUCallTreeRoot alloc] initWithSymbolicator:0 sampler:0 options:0, 0];
  [(VMUDominatorCallTreeCreator *)self setCallTreeRoot:v17];

  [(VMUDebugTimer *)self->_debugTimer startWithMessage:"build tree from selected nodes"];
  [(VMUDominatorCallTreeCreator *)self buildCallTreeWithRootNodeNames:v16];
  desiredAddress = [(VMUDominatorCallTreeCreator *)self desiredAddress];
  if (desiredAddress)
  {
    goto LABEL_2;
  }

  desiredClassesPattern = [(VMUDominatorCallTreeCreator *)self desiredClassesPattern];

  if (!desiredClassesPattern)
  {
    [(VMUDebugTimer *)self->_debugTimer startWithMessage:"add remaining nodes to tree"];
    desiredAddress = [(VMUDominatorCallTreeCreator *)self remainingNodeNames];
    [(VMUDominatorCallTreeCreator *)self buildCallTreeWithRootNodeNames:desiredAddress];
LABEL_2:
  }

  free(self->_visitedNodes);
  [timerCopy startWithMessage:"add child counts"];
  [(VMUCallTreeRoot *)self->_callTreeRoot addChildCountsIntoNode];
  v20 = self->_callTreeRoot;

  objc_autoreleasePoolPop(v12);

  return v20;
}

void __94__VMUDominatorCallTreeCreator_callTreeWithGraph_groupByType_showRegionVirtualSize_debugTimer___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)buildCallTreeWithRootNodeNames:(id)names
{
  v25 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  desiredAddress = [(VMUDominatorCallTreeCreator *)self desiredAddress];

  if (desiredAddress)
  {
    desiredAddress2 = [(VMUDominatorCallTreeCreator *)self desiredAddress];
    unsignedIntegerValue = [desiredAddress2 unsignedIntegerValue];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__VMUDominatorCallTreeCreator_buildCallTreeWithRootNodeNames___block_invoke;
    v23[3] = &__block_descriptor_40_e21_B36__0I8___Qb60b4__12l;
    v23[4] = unsignedIntegerValue;
    v8 = v23;
  }

  else
  {
    desiredClassesPattern = [(VMUDominatorCallTreeCreator *)self desiredClassesPattern];

    if (!desiredClassesPattern)
    {
      goto LABEL_6;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__VMUDominatorCallTreeCreator_buildCallTreeWithRootNodeNames___block_invoke_2;
    aBlock[3] = &unk_1E827A3D8;
    aBlock[4] = self;
    v8 = aBlock;
  }

  desiredClassesPattern = _Block_copy(v8);
LABEL_6:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = namesCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        unsignedIntValue = [*(*(&v18 + 1) + 8 * i) unsignedIntValue];
        processObjectGraph = self->_processObjectGraph;
        if (processObjectGraph)
        {
          [(VMUObjectGraph *)processObjectGraph nodeDetails:unsignedIntValue];
        }

        if ([(VMUDominatorGraph *)self->_dominatorGraph hasAnyDirectDomineesForNodeName:unsignedIntValue])
        {
          [(VMUDominatorCallTreeCreator *)self buildCallTreeWithNodeName:unsignedIntValue callTreeParentNode:self->_callTreeRoot parentNodeName:0xFFFFFFFFLL parentNodeType:0 reference:0 rootNodeFilter:desiredClassesPattern];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __62__VMUDominatorCallTreeCreator_buildCallTreeWithRootNodeNames___block_invoke_2(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a3 + 1) >> 60 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 32) nodeDescription:a2];
  }

  v6 = [*(a1 + 32) desiredClassesPattern];
  v9 = *a3;
  v10 = *(a3 + 2);
  v7 = [v6 matchesNodeDetails:&v9 orNodeDescription:v5];

  return v7;
}

- (id)remainingNodeNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  visitedNodes = self->_visitedNodes;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v21 = __49__VMUDominatorCallTreeCreator_remainingNodeNames__block_invoke;
  v22 = &unk_1E8278D70;
  selfCopy = self;
  v5 = v3;
  v24 = v5;
  v6 = v20;
  v9 = *visitedNodes;
  v7 = visitedNodes + 1;
  v8 = v9;
  if (v9)
  {
    v10 = 0;
    v11 = 8;
    do
    {
      v12 = *(v7 + (v10 >> 3));
      if (v8 >= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v8;
      }

      v14 = (v10 + 8);
      if (v14 >= v8)
      {
        v15 = v8;
      }

      else
      {
        v15 = v10 + 8;
      }

      if (v12 != 255 && v10 < v15)
      {
        do
        {
          if ((v12 & 1) == 0)
          {
            v21(v6, v10);
          }

          v10 = (v10 + 1);
          v12 >>= 1;
        }

        while (v13 != v10);
      }

      v11 += 8;
      v10 = v14;
    }

    while (v14 < v8);
  }

  v17 = v24;
  v18 = v5;

  return v5;
}

void __49__VMUDominatorCallTreeCreator_remainingNodeNames__block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(*(a1 + 32) + 32) isNodePresent:a2])
  {
    if ((v7 = 0, v8 = 0, v9 = 0, (v4 = *(*(a1 + 32) + 32)) != 0) && ([v4 nodeDetails:a2], v4 = (v8 >> 60), v8 >> 60 == 1) || VMUGraphNodeType_IsVMRegion(v4))
    {
      v5 = *(a1 + 40);
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      [v5 addObject:v6];
    }
  }
}

void __131__VMUDominatorCallTreeCreator_buildCallTreeWithNodeName_callTreeParentNode_parentNodeName_parentNodeType_reference_rootNodeFilter___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

uint64_t __131__VMUDominatorCallTreeCreator_buildCallTreeWithNodeName_callTreeParentNode_parentNodeName_parentNodeType_reference_rootNodeFilter___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  LODWORD(v10) = [v10 containsObject:v11];

  if (v10)
  {
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
    [v12 removeObject:v13];

    [*(a1 + 40) buildCallTreeWithNodeName:a4 callTreeParentNode:*(a1 + 48) parentNodeName:*(a1 + 88) parentNodeType:*(a1 + 72) >> 60 reference:a5 rootNodeFilter:*(a1 + 56)];
  }

  result = [*(a1 + 32) count];
  if (!result)
  {
    *a6 = 1;
  }

  return result;
}

- (id)referenceDecriptionForSourceNodeAddress:(unint64_t)address referenceInfo:(id *)info
{
  address = [(VMUProcessObjectGraph *)self->_processObjectGraph regionSymbolNameForAddress:info->var0 + address];
  if (address)
  {
    v6 = VMUScanTypeKeywordDescription(info->var1);
    if (v6 && *v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s ", v6];
    }

    else
    {
      v7 = &stru_1F461F9C8;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v7, address];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)groupByTypeNameForNode:(unsigned int)node
{
  processObjectGraph = self->_processObjectGraph;
  if (processObjectGraph)
  {
    [(VMUObjectGraph *)processObjectGraph nodeDetails:?];
  }

  return @"(unknown)";
}

@end