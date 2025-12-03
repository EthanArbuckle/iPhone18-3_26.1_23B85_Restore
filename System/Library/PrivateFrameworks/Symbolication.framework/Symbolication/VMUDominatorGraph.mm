@interface VMUDominatorGraph
+ (id)consolidate:(id)consolidate;
- (VMUDominatorGraph)initWithDict:(id)dict;
- (VMUDominatorGraph)initWithGraph:(id)graph debugTimer:(id)timer;
- (id)_computeDominators:(id)dominators roots:(void *)roots reversePostOrder:(unsigned int *)order debugTimer:(id)timer;
- (id)copyDict;
- (id)export:(id)export;
- (id)fastDFS:(id)s graph:(id)graph;
- (id)iterDominatorRoots;
- (void)_computeDominees:(id)dominees;
- (void)enumerateDirectDomineesForNodeName:(unsigned int)name withBlock:(id)block;
- (void)enumerateDominatorRootsWithBlock:(id)block;
- (void)enumerateDomineesForNodeName:(unsigned int)name withBlock:(id)block;
@end

@implementation VMUDominatorGraph

- (VMUDominatorGraph)initWithDict:(id)dict
{
  dictCopy = dict;
  v5 = [dictCopy objectForKeyedSubscript:@"dominators"];
  dominators_data = self->_dominators_data;
  self->_dominators_data = v5;

  v7 = [dictCopy objectForKeyedSubscript:@"firstDominates"];
  firstDominates_data = self->_firstDominates_data;
  self->_firstDominates_data = v7;

  v9 = [dictCopy objectForKeyedSubscript:@"nextDominates"];

  nextDominates_data = self->_nextDominates_data;
  self->_nextDominates_data = v9;

  v11 = self->_dominators_data;
  if (v11 && self->_firstDominates_data && self->_nextDominates_data)
  {
    self->_dominators = [(NSData *)v11 bytes];
    self->_firstDominates = [(NSData *)self->_firstDominates_data bytes];
    self->_nextDominates = [(NSData *)self->_nextDominates_data bytes];
    self->_nodeNamespaceSize = [(NSData *)self->_firstDominates_data length]>> 2;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyDict
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *&self->_dominators_data;
  v5[0] = @"dominators";
  v5[1] = @"firstDominates";
  v6 = v2;
  v5[2] = @"nextDominates";
  nextDominates_data = self->_nextDominates_data;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)consolidate:(id)consolidate
{
  v99 = *MEMORY[0x1E69E9840];
  consolidateCopy = consolidate;
  v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = consolidateCopy;
  v62 = [obj countByEnumeratingWithState:&v90 objects:v98 count:16];
  if (v62)
  {
    v60 = *v91;
    do
    {
      v4 = 0;
      do
      {
        if (*v91 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v72 = MEMORY[0x1E696AEC0];
        v68 = v4;
        v5 = *(*(&v90 + 1) + 8 * v4);
        v6 = [v5 objectForKeyedSubscript:@"className"];
        v76 = v6;
        if (v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = &stru_1F461F9C8;
        }

        v8 = v7;
        v9 = [v5 objectForKeyedSubscript:@"binary"];
        v74 = v9;
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = &stru_1F461F9C8;
        }

        v66 = v10;
        v11 = [v5 objectForKeyedSubscript:@"stackid"];
        v70 = v11;
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = &stru_1F461F9C8;
        }

        v13 = v12;
        v14 = [v5 objectForKeyedSubscript:@"region"];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = &stru_1F461F9C8;
        }

        v17 = v16;
        v18 = [v5 objectForKeyedSubscript:@"path"];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &stru_1F461F9C8;
        }

        v21 = v20;
        v22 = [v5 objectForKeyedSubscript:@"description"];

        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = &stru_1F461F9C8;
        }

        v24 = v8;
        v25 = [v72 stringWithFormat:@"%@\x00%@\x00%@\x00%@\x00%@\x00%@", v8, v66, v13, v17, v21, v23];

        v26 = [v64 objectForKeyedSubscript:v25];
        if (!v26)
        {
          v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v64 setObject:v26 forKeyedSubscript:v25];
        }

        [v26 addObject:v5];

        v4 = v68 + 1;
      }

      while (v62 != v68 + 1);
      v62 = [obj countByEnumeratingWithState:&v90 objects:v98 count:16];
    }

    while (v62);
  }

  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v65 = v64;
  v63 = [v65 countByEnumeratingWithState:&v86 objects:v97 count:16];
  if (v63)
  {
    v59 = *v87;
    do
    {
      v27 = 0;
      do
      {
        if (*v87 != v59)
        {
          objc_enumerationMutation(v65);
        }

        v67 = v27;
        v28 = [v65 objectForKeyedSubscript:*(*(&v86 + 1) + 8 * v27)];
        v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
        for (i = 0; i != 6; ++i)
        {
          v32 = name_keys[i];
          v33 = [v28 objectAtIndexedSubscript:0];
          v34 = [v33 objectForKeyedSubscript:v32];
          [v30 setObject:v34 forKeyedSubscript:v32];
        }

        v73 = v30;
        memset(v96, 0, sizeof(v96));
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v69 = v28;
        v75 = [v69 countByEnumeratingWithState:&v82 objects:v95 count:16];
        if (v75)
        {
          v71 = *v83;
          do
          {
            v35 = 0;
            do
            {
              if (*v83 != v71)
              {
                objc_enumerationMutation(v69);
              }

              v77 = v35;
              v36 = *(*(&v82 + 1) + 8 * v35);
              v37 = [v36 objectForKeyedSubscript:@"children"];
              v38 = v37;
              if (v37)
              {
                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                v39 = [v37 countByEnumeratingWithState:&v78 objects:v94 count:16];
                if (v39)
                {
                  v40 = v39;
                  v41 = *v79;
                  do
                  {
                    for (j = 0; j != v40; ++j)
                    {
                      if (*v79 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      [v29 addObject:*(*(&v78 + 1) + 8 * j)];
                    }

                    v40 = [v38 countByEnumeratingWithState:&v78 objects:v94 count:16];
                  }

                  while (v40);
                }
              }

              v43 = 0;
              v44 = 0;
              do
              {
                v45 = 0;
                v46 = 1;
                do
                {
                  v47 = v44;
                  v48 = v46;
                  v44 = [v36 objectForKeyedSubscript:*(&stat_keys[2 * v43] + v45)];

                  if (v44)
                  {
                    *(&v96[v43] + v45) += [v44 unsignedLongLongValue];
                  }

                  v46 = 0;
                  v45 = 1;
                }

                while ((v48 & 1) != 0);
                ++v43;
              }

              while (v43 != 4);

              v35 = v77 + 1;
            }

            while (v77 + 1 != v75);
            v75 = [v69 countByEnumeratingWithState:&v82 objects:v95 count:16];
          }

          while (v75);
        }

        for (k = 0; k != 4; ++k)
        {
          v50 = 0;
          v51 = 1;
          do
          {
            v52 = v51;
            if (*(&v96[k] + v50))
            {
              v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
              [v73 setObject:v53 forKeyedSubscript:*(&stat_keys[2 * k] + v50)];
            }

            v51 = 0;
            v50 = 1;
          }

          while ((v52 & 1) != 0);
        }

        v54 = [VMUDominatorGraph consolidate:v29];
        v55 = v54;
        if (v54 && [v54 count])
        {
          [v73 setObject:v55 forKeyedSubscript:@"children"];
        }

        [v61 addObject:v73];

        v27 = v67 + 1;
      }

      while (v67 + 1 != v63);
      v63 = [v65 countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v63);
  }

  v56 = *MEMORY[0x1E69E9840];

  return v61;
}

- (id)export:(id)export
{
  exportCopy = export;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__VMUDominatorGraph_export___block_invoke;
  aBlock[3] = &unk_1E827A258;
  v10 = exportCopy;
  v5 = exportCopy;
  v6 = _Block_copy(aBlock);
  v7 = [(VMUDominatorGraph *)self fastDFS:v6 graph:v5];

  return v7;
}

id __28__VMUDominatorGraph_export___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7, uint64_t a8, void *a9)
{
  v59 = *MEMORY[0x1E69E9840];
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v57 = 0u;
  v58 = 0u;
  if (a5 == 5 || a5 == 2)
  {
    *(&v58 + 1) = 1;
    if (v16)
    {
      v23 = [v16 path];
      if ([v23 length])
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v21 = v24;

      v25 = *(v16 + 13);
      if (v25 == 3 || v25 == 0)
      {
        *(&v57 + 1) = *(v16 + 22) + *(v16 + 23);
      }

      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v28 = [v16 type];
      [v27 setObject:v28 forKeyedSubscript:@"region"];

      v19 = v27;
      if (!v21)
      {
LABEL_19:

        if (v19)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v22 = @"path";
LABEL_18:
      [v19 setObject:v21 forKeyedSubscript:v22];
      goto LABEL_19;
    }

LABEL_20:
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = [*(a1 + 32) nodeDescription:a2];
    [v19 setObject:v29 forKeyedSubscript:@"description"];

    goto LABEL_21;
  }

  if (a5 != 1)
  {
    goto LABEL_20;
  }

  *&v57 = a4;
  *&v58 = 1;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = v18;
  if (v15)
  {
    v20 = [v15 className];
    [v19 setObject:v20 forKeyedSubscript:@"className"];

    v21 = [v15 binaryName];
    v22 = @"binary";
    goto LABEL_18;
  }

  [v18 setObject:@"non-object" forKeyedSubscript:@"className"];
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_21:
  v49 = v16;
  if (a8 != -1)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a8];
    [v19 setObject:v30 forKeyedSubscript:@"stackid"];
  }

  v31 = 0;
  v32 = stat_keys;
  do
  {
    if (*(&v57 + v31))
    {
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      [v19 setObject:v33 forKeyedSubscript:*v32];
    }

    v31 += 8;
    v32 += 2;
  }

  while (v31 != 32);
  v48 = v19;
  v50 = v15;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v17;
  v34 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v53;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = 0;
        v39 = 0;
        v40 = *(*(&v52 + 1) + 8 * i);
        v41 = off_1E827A218;
        do
        {
          v42 = v39;
          v39 = [v40 objectForKeyedSubscript:{*v41, v48, v49}];

          if (v39)
          {
            *(&v57 + v38) += [v39 unsignedLongLongValue];
          }

          v41 += 2;
          v38 += 8;
        }

        while (v38 != 32);
      }

      v35 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v35);
  }

  v43 = 0;
  v44 = off_1E827A218;
  do
  {
    if (*(&v57 + v43))
    {
      v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      [v48 setObject:v45 forKeyedSubscript:*v44];
    }

    v43 += 8;
    v44 += 2;
  }

  while (v43 != 32);
  [v48 setObject:obj forKeyedSubscript:@"children"];

  v46 = *MEMORY[0x1E69E9840];

  return v48;
}

- (id)fastDFS:(id)s graph:(id)graph
{
  v36 = *MEMORY[0x1E69E9840];
  aBlock = s;
  graphCopy = graph;
  v6 = [[VMUVMRegionIdentifier alloc] initWithGraph:graphCopy options:0];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  regions = [(VMUVMRegionIdentifier *)v6 regions];
  v9 = [regions countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(regions);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if (([v12 isSubmap] & 1) == 0)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v12, "address")}];
          [v7 setObject:v12 forKeyedSubscript:v13];
        }
      }

      v9 = [regions countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  v26[0] = 1;
  v14 = v7;
  v26[1] = v14;
  v15 = graphCopy;
  v26[2] = v15;
  v16 = v6;
  v26[3] = v16;
  v27 = *&self->_firstDominates;
  v28 = _Block_copy(aBlock);
  v29 = [v15 methodForSelector:sel_nodeDetails_];
  v30 = [v15 methodForSelector:sel_stackIDForNode_];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  nodeNamespaceSize = self->_nodeNamespaceSize;
  if (nodeNamespaceSize < 1)
  {
LABEL_17:
    v21 = v17;
    goto LABEL_18;
  }

  v19 = 0;
  while (1)
  {
    if (self->_dominators[v19] != -1 || self->_firstDominates[v19] == -1)
    {
      goto LABEL_16;
    }

    v20 = visit(v26, v19);
    if (!v20)
    {
      break;
    }

    [v17 addObject:v20];

LABEL_16:
    if (nodeNamespaceSize == ++v19)
    {
      goto LABEL_17;
    }
  }

  v21 = 0;
LABEL_18:

  __destructor_8_s8_s16_s24_sb48(v26);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (VMUDominatorGraph)initWithGraph:(id)graph debugTimer:(id)timer
{
  graphCopy = graph;
  timerCopy = timer;
  v18.receiver = self;
  v18.super_class = VMUDominatorGraph;
  v8 = [(VMUDominatorGraph *)&v18 init];
  if (v8)
  {
    v9 = [graphCopy copy];

    v8->_nodeNamespaceSize = [v9 nodeNamespaceSize];
    v10 = [[VMUReverseGraphEnumerator alloc] initWithGraph:v9];
    reverseGraphEnumerator = v8->_reverseGraphEnumerator;
    v8->_reverseGraphEnumerator = &v10->super;

    [v9 removeWeakEdges];
    nodeNamespaceSize = [v9 nodeNamespaceSize];
    v13 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v13 = nodeNamespaceSize;
    [v9 markRootNodes:v13];
    v14 = [[VMUGraphEnumerator alloc] initWithGraph:v9];
    v15 = [(VMUGraphEnumerator *)v14 buildReversePostOrderWithRoots:v13];

    v16 = [(VMUDominatorGraph *)v8 _computeDominators:v9 roots:v13 reversePostOrder:v15 debugTimer:timerCopy];
    [(VMUDominatorGraph *)v8 setDominators_data:v16];

    v8->_dominators = [(NSData *)v8->_dominators_data bytes];
    free(v15);
    free(v13);
    [(VMUDominatorGraph *)v8 _computeDominees:v9];
    graphCopy = v9;
  }

  return v8;
}

- (id)_computeDominators:(id)dominators roots:(void *)roots reversePostOrder:(unsigned int *)order debugTimer:(id)timer
{
  dominatorsCopy = dominators;
  timerCopy = timer;
  invertedGraph = [dominatorsCopy invertedGraph];
  nodeNamespaceSize = [invertedGraph nodeNamespaceSize];
  v10 = 4 * (nodeNamespaceSize + 1);
  v11 = malloc_type_malloc(v10, 0x100004052888210uLL);
  LODWORD(__pattern4) = -1;
  memset_pattern4(v11, &__pattern4, v10);
  v34 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v11 length:v10 freeWhenDone:1];
  v12 = malloc_type_malloc(v10, 0x100004052888210uLL);
  LODWORD(__pattern4) = -1;
  v41 = v12;
  memset_pattern4(v12, &__pattern4, v10);
  v13 = malloc_type_malloc(v10, 0x100004052888210uLL);
  LODWORD(__pattern4) = -1;
  memset_pattern4(v13, &__pattern4, v10);
  v38 = invertedGraph;
  nodeNamespaceSize2 = [invertedGraph nodeNamespaceSize];
  if (nodeNamespaceSize2 >= 1)
  {
    v15 = nodeNamespaceSize2;
    orderCopy = order;
    do
    {
      v18 = *orderCopy++;
      v17 = v18;
      if (v18 == -1)
      {
        break;
      }

      v41[v17] = v15--;
    }

    while (v15);
  }

  v11[nodeNamespaceSize] = nodeNamespaceSize;
  v41[nodeNamespaceSize] = [invertedGraph nodeNamespaceSize] + 100;
  v39 = 0;
  do
  {
    while (1)
    {
      nodeNamespaceSize3 = [v38 nodeNamespaceSize];
      if (nodeNamespaceSize3 >= 1)
      {
        v20 = 0;
        v42 = 0;
        v21 = -1;
        orderCopy2 = order;
        v23 = nodeNamespaceSize3;
        while (1)
        {
          v25 = *orderCopy2++;
          v24 = v25;
          if (v25 == -1)
          {
            goto LABEL_30;
          }

          if (v11[v24] != nodeNamespaceSize)
          {
            break;
          }

          ++v20;
LABEL_27:
          if (!--v23)
          {
            goto LABEL_30;
          }
        }

        p_pattern4 = &__pattern4;
        __pattern4 = 0;
        v55 = &__pattern4;
        v56 = 0x2020000000;
        v27 = *(v13 + v24);
        v57 = v27;
        switch(v27)
        {
          case -1:
            v57 = 0;
            reverseGraphEnumerator = self->_reverseGraphEnumerator;
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __74__VMUDominatorGraph__computeDominators_roots_reversePostOrder_debugTimer___block_invoke;
            v53[3] = &unk_1E8279AA0;
            v53[4] = &__pattern4;
            [(VMUGraphEnumerator *)reverseGraphEnumerator enumerateEdgesOfNode:v24 withBlock:v53];
            p_pattern4 = v55;
            *(v13 + v24) = *(v55 + 6);
            break;
          case 1:
LABEL_15:
            ++v20;
LABEL_26:
            _Block_object_dispose(&__pattern4, 8);
            goto LABEL_27;
          case 0:
            v11[v24] = nodeNamespaceSize;
            goto LABEL_15;
        }

        v49 = 0;
        v50 = &v49;
        v51 = 0x2020000000;
        v52 = -1;
        if (*(p_pattern4 + 6))
        {
          v29 = self->_reverseGraphEnumerator;
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __74__VMUDominatorGraph__computeDominators_roots_reversePostOrder_debugTimer___block_invoke_2;
          v48[3] = &unk_1E827A280;
          v48[5] = v41;
          v48[6] = v11;
          v48[4] = &v49;
          [(VMUGraphEnumerator *)v29 enumerateEdgesOfNode:v24 withBlock:v48];
          if (*(v55 + 6) >= 2u)
          {
            v40 = self->_reverseGraphEnumerator;
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __74__VMUDominatorGraph__computeDominators_roots_reversePostOrder_debugTimer___block_invoke_3;
            v43[3] = &unk_1E827A2A8;
            v45 = &v49;
            v46 = v41;
            v47 = v11;
            v44 = dominatorsCopy;
            [(VMUGraphEnumerator *)v40 enumerateEdgesOfNode:v24 withBlock:v43];
          }
        }

        else
        {
          v52 = nodeNamespaceSize;
        }

        v30 = *(v50 + 6);
        if (v30 == -1 || v30 == v11[v24])
        {
          v24 = v21;
        }

        else
        {
          v11[v24] = v30;
          ++v42;
        }

        _Block_object_dispose(&v49, 8);
        v21 = v24;
        goto LABEL_26;
      }

      v42 = 0;
      v20 = 0;
      v21 = -1;
LABEL_30:
      if (!timerCopy)
      {
        break;
      }

      NSLog(&cfstr_ComputeDominat.isa, v39++, v42, v20, v21);
      if (!v42)
      {
        goto LABEL_34;
      }
    }
  }

  while (v42);
LABEL_34:
  nodeNamespaceSize4 = [v38 nodeNamespaceSize];
  if (nodeNamespaceSize4 >= 1)
  {
    v32 = nodeNamespaceSize4;
    do
    {
      if (*v11 == nodeNamespaceSize)
      {
        *v11 = -1;
      }

      ++v11;
      --v32;
    }

    while (v32);
  }

  free(v13);
  free(v41);

  return v34;
}

void *__74__VMUDominatorGraph__computeDominators_roots_reversePostOrder_debugTimer___block_invoke_2(void *result, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5)
{
  if (*(result[5] + 4 * a4) != -1 && *(result[6] + 4 * a4) != -1)
  {
    *(*(result[4] + 8) + 24) = a4;
    *a5 = 1;
  }

  return result;
}

void *__74__VMUDominatorGraph__computeDominators_roots_reversePostOrder_debugTimer___block_invoke_3(void *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = result[6];
  if (*(v4 + 4 * a4) != -1)
  {
    v5 = a4;
    v6 = *(result[5] + 8);
    v7 = *(v6 + 24);
    if (v7 != a4)
    {
      v8 = result[7];
      if (*(v8 + 4 * a4) != -1)
      {
        do
        {
          v9 = *(v4 + 4 * v7);
          while (1)
          {
            v10 = *(v4 + 4 * v5);
            if (v10 >= v9)
            {
              break;
            }

            v5 = *(v8 + 4 * v5);
          }

          while (v9 < v10)
          {
            v7 = *(v8 + 4 * v7);
            v9 = *(v4 + 4 * v7);
          }
        }

        while (v5 != v7);
        *(v6 + 24) = v5;
      }
    }
  }

  return result;
}

- (void)_computeDominees:(id)dominees
{
  domineesCopy = dominees;
  v4 = 4 * [domineesCopy nodeNamespaceSize];
  v5 = malloc_type_malloc(v4, 0x100004052888210uLL);
  __pattern4 = -1;
  memset_pattern4(v5, &__pattern4, v4);
  self->_firstDominates = v5;
  v6 = 4 * [domineesCopy nodeNamespaceSize];
  v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
  v18 = -1;
  memset_pattern4(v7, &v18, v6);
  self->_nextDominates = v7;
  v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_firstDominates length:4 * objc_msgSend(domineesCopy freeWhenDone:{"nodeNamespaceSize"), 1}];
  [(VMUDominatorGraph *)self setFirstDominates_data:v8];

  v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_nextDominates length:4 * objc_msgSend(domineesCopy freeWhenDone:{"nodeNamespaceSize"), 1}];
  [(VMUDominatorGraph *)self setNextDominates_data:v9];

  nodeNamespaceSize = [domineesCopy nodeNamespaceSize];
  if (nodeNamespaceSize >= 1)
  {
    v11 = 0;
    dominators = self->_dominators;
    do
    {
      v13 = dominators[v11];
      if (v13 != -1)
      {
        v14 = &self->_firstDominates[v13];
        v15 = *v14;
        if (v15 != -1)
        {
          nextDominates = self->_nextDominates;
          v14 = &nextDominates[v15];
          nextDominates[v11] = *v14;
        }

        *v14 = v11;
      }

      ++v11;
    }

    while (nodeNamespaceSize != v11);
  }
}

- (void)enumerateDomineesForNodeName:(unsigned int)name withBlock:(id)block
{
  blockCopy = block;
  v6 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
  *v6 = self->_firstDominates[name];
  v7 = 1;
  v8 = 32;
  do
  {
    v9 = v7 - 1;
    v10 = v6[v7 - 1];
    if (v10 != -1)
    {
      blockCopy[2](blockCopy, v6[v7 - 1]);
      if (v7 + 1 >= v8)
      {
        v6 = malloc_type_realloc(v6, 8 * v8, 0x100004052888210uLL);
        v8 *= 2;
      }

      nextDominates = self->_nextDominates;
      v6[v9] = self->_firstDominates[v10];
      v6[v7] = nextDominates[v10];
      v9 = v7 + 1;
    }

    v7 = v9;
  }

  while (v9);
  free(v6);
}

- (void)enumerateDirectDomineesForNodeName:(unsigned int)name withBlock:(id)block
{
  for (i = self->_firstDominates[name]; i != -1; i = self->_nextDominates[i])
  {
    (*(block + 2))(block, i);
  }
}

- (void)enumerateDominatorRootsWithBlock:(id)block
{
  blockCopy = block;
  nodeNamespaceSize = self->_nodeNamespaceSize;
  if (nodeNamespaceSize >= 1)
  {
    for (i = 0; i != nodeNamespaceSize; ++i)
    {
      if (self->_dominators[i] == -1 && self->_firstDominates[i] != -1)
      {
        blockCopy[2](blockCopy, i);
      }
    }
  }
}

- (id)iterDominatorRoots
{
  v2 = [[VMUDominatorRoots alloc] initWithDominatorGraph:self];

  return v2;
}

@end