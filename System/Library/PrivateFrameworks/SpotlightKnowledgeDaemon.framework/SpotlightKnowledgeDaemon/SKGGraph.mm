@interface SKGGraph
- (BOOL)addNodes:(id)a3 addEdges:(id)a4 cancelBlock:(id)a5;
- (BOOL)available;
- (BOOL)batchAddNodes:(id)a3 addEdges:(id)a4;
- (BOOL)clearWithCancelBlock:(id)a3;
- (BOOL)commitBatch;
- (BOOL)commitWithCancelBlock:(id)a3;
- (BOOL)flushWithCancelBlock:(id)a3;
- (BOOL)removeNodeSet:(id)a3 removeEdgeSet:(id)a4 cancelBlock:(id)a5;
- (SKGGraph)initWithResourceDirectoryPath:(id)a3;
- (id)graphURL;
- (id)nodesForNode:(id)a3;
- (int64_t)countOfNodesWithLabel:(id)a3;
- (int64_t)edgeCount;
- (int64_t)nodeCount;
- (void)closeGraph;
- (void)dealloc;
@end

@implementation SKGGraph

- (SKGGraph)initWithResourceDirectoryPath:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SKGGraph;
  v6 = [(SKGGraph *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourcePath, a3);
    v7->_currentAddedNodeCount = 0;
    v7->_currentAddedEdgeCount = 0;
    nodeBatch = v7->_nodeBatch;
    v7->_nodeBatch = 0;

    edgeBatch = v7->_edgeBatch;
    v7->_edgeBatch = 0;

    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc_init(SKGGraphSpecification);
    v12 = objc_alloc(MEMORY[0x277D22C48]);
    v13 = [(SKGGraph *)v7 graphURL];
    v14 = [MEMORY[0x277D22C80] ignoreProgress];
    v15 = [v12 initWithSpecification:v11 persistenceStoreURL:v13 progressReporter:v14];
    graph = v7->_graph;
    v7->_graph = v15;

    v17 = v7->_graph;
    if (v17 && (v18 = [(MAGraph *)v17 noFatalError], v17 = v7->_graph, v18))
    {
      [(MAGraph *)v17 enterBatch];
    }

    else
    {
      v7->_graph = 0;
    }

    objc_autoreleasePoolPop(v10);
  }

  return v7;
}

- (id)graphURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", self->_resourcePath, @"kg"];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (BOOL)available
{
  graph = self->_graph;
  if (graph)
  {
    LOBYTE(graph) = [(MAGraph *)graph noFatalError];
  }

  return graph;
}

- (BOOL)clearWithCancelBlock:(id)a3
{
  v4 = [(SKGGraph *)self available];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [SKGNodes nodesInGraph:self];
    if ([v6 count])
    {
      v7 = objc_alloc_init(MEMORY[0x277D22C50]);
      [v7 removeNodes:v6];
      v8 = [(SKGGraph *)self graph];
      [v8 executeGraphChangeRequest:v7];
    }

    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

- (BOOL)flushWithCancelBlock:(id)a3
{
  v4 = [(SKGGraph *)self available];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(SKGGraph *)self graph];
    [v6 leaveBatch];

    v7 = [(SKGGraph *)self graph];
    [v7 enterBatch];

    objc_autoreleasePoolPop(v5);
    self->_currentAddedNodeCount = 0;
    self->_currentAddedEdgeCount = 0;
  }

  return v4;
}

- (BOOL)commitWithCancelBlock:(id)a3
{
  v4 = a3;
  v5 = [(SKGGraph *)self available];
  if (v5)
  {
    [(SKGGraph *)self flushWithCancelBlock:v4];
  }

  return v5;
}

- (BOOL)addNodes:(id)a3 addEdges:(id)a4 cancelBlock:(id)a5
{
  v94 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v54 = a4;
  v66 = a5;
  v69 = self;
  if ([(SKGGraph *)self available])
  {
    v52 = objc_autoreleasePoolPush();
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v8 = v55;
    v9 = [v8 countByEnumeratingWithState:&v86 objects:v93 count:16];
    if (v9)
    {
      v65 = 0;
      v10 = *v87;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v87 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v86 + 1) + 8 * i);
          v13 = [SKGNodes nodesWithNode:v12 inGraph:v69];
          if (![v13 count])
          {
            v80 = 0;
            v14 = [(SKGGraph *)v69 graph];
            v15 = [v12 label];
            v16 = [v12 domain];
            [v12 weight];
            v18 = v17;
            v19 = [v12 propertyDictionary];
            LODWORD(v20) = v18;
            v21 = [v14 addUniqueNodeWithLabel:v15 domain:v16 weight:v19 properties:&v80 didCreate:v20];

            v22 = [(SKGGraph *)v69 available];
            if ((v22 & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [SKGGraph addNodes:addEdges:cancelBlock:];
              }

              [(SKGGraph *)v69 closeGraph];
LABEL_21:

              v23 = v22 ^ 1;
              goto LABEL_22;
            }

            if (v66 && (v66[2](v66, @"addNodes") & 1) != 0)
            {
              goto LABEL_21;
            }

            v65 += v80;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v86 objects:v93 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v65 = 0;
    }

    v23 = 1;
    v22 = 1;
LABEL_22:

    if ((v22 & v23) == 1)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      obj = v54;
      v24 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
      if (!v24)
      {
        v53 = 0;
        v23 = 1;
        v22 = 1;
        goto LABEL_71;
      }

      v53 = 0;
      v61 = *v83;
      v23 = 1;
      v22 = 1;
      while (1)
      {
        v25 = 0;
        v63 = v24;
        do
        {
          if (*v83 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v82 + 1) + 8 * v25);
          context = objc_autoreleasePoolPush();
          v68 = [SKGEdges edgesWithEdge:v26 inGraph:v69];
          if (![v68 count])
          {
            v28 = [v26 sourceNode];
            v64 = [(SKGGraph *)v69 nodesForNode:v28];

            v29 = [v26 targetNode];
            v62 = [(SKGGraph *)v69 nodesForNode:v29];

            if ([v64 count] && objc_msgSend(v62, "count") && -[SKGGraph available](v69, "available"))
            {
              if (v66)
              {
                v23 = (v66[2])() ^ 1;
              }

              else
              {
                v23 = 1;
              }

              if (v22 & v23)
              {
                v78 = 0u;
                v79 = 0u;
                v76 = 0u;
                v77 = 0u;
                v30 = v64;
                v50 = v30;
                v48 = [v30 countByEnumeratingWithState:&v76 objects:v91 count:16];
                if (v48)
                {
                  v49 = *v77;
                  do
                  {
                    for (j = 0; j != v48; ++j)
                    {
                      if (*v77 != v49)
                      {
                        objc_enumerationMutation(v30);
                      }

                      v60 = *(*(&v76 + 1) + 8 * j);
                      v72 = 0u;
                      v73 = 0u;
                      v74 = 0u;
                      v75 = 0u;
                      v56 = v62;
                      v31 = [v56 countByEnumeratingWithState:&v72 objects:v90 count:16];
                      if (v31)
                      {
                        v59 = *v73;
                        while (2)
                        {
                          v32 = 0;
                          v33 = v53;
                          v58 = v31;
                          v53 += v31;
                          do
                          {
                            if (*v73 != v59)
                            {
                              objc_enumerationMutation(v56);
                            }

                            v34 = *(*(&v72 + 1) + 8 * v32);
                            v35 = [v26 score];
                            v36 = [(SKGGraph *)v69 graph];
                            v37 = [v26 label];
                            v38 = [v26 domain];
                            [v35 doubleValue];
                            v40 = v39;
                            v41 = [v26 propertyDictionary];
                            *&v42 = v40;
                            v43 = [v36 addEdgeWithLabel:v37 sourceNode:v60 targetNode:v34 domain:v38 weight:v41 properties:v42];

                            if (![(SKGGraph *)v69 available])
                            {
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                              {
                                [SKGGraph addNodes:v71 addEdges:? cancelBlock:?];
                              }

                              [(SKGGraph *)v69 closeGraph];

                              v22 = 0;
                              v53 = v33;
                              v30 = v50;
                              goto LABEL_66;
                            }

                            ++v33;
                            ++v32;
                          }

                          while (v58 != v32);
                          v31 = [v56 countByEnumeratingWithState:&v72 objects:v90 count:16];
                          if (v31)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v30 = v50;
                    }

                    v22 = 1;
                    v48 = [v50 countByEnumeratingWithState:&v76 objects:v91 count:16];
                  }

                  while (v48);
                }

                else
                {
                  v22 = 1;
                }

LABEL_66:

                v27 = 0;
                v23 = 1;
                goto LABEL_39;
              }
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [SKGGraph addNodes:v81 addEdges:? cancelBlock:?];
              }

              [(SKGGraph *)v69 closeGraph];
              v22 = 0;
            }

            v27 = 4;
LABEL_39:

            goto LABEL_40;
          }

          v27 = 5;
LABEL_40:

          objc_autoreleasePoolPop(context);
          if (v27 != 5 && v27)
          {
            goto LABEL_71;
          }

          ++v25;
        }

        while (v25 != v63);
        v24 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
        if (!v24)
        {
LABEL_71:

          goto LABEL_72;
        }
      }
    }

    v53 = 0;
LABEL_72:
    objc_autoreleasePoolPop(v52);
    if (v22 & v23)
    {
      v44 = v69->_currentAddedNodeCount + v65;
      v45 = v69->_currentAddedEdgeCount + v53;
      v69->_currentAddedNodeCount = v44;
      v69->_currentAddedEdgeCount = v45;
      LOBYTE(v22) = v44 <= 0x3E7 && v45 < 0x3E8 || [(SKGGraph *)v69 flushWithCancelBlock:v66];
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

- (BOOL)removeNodeSet:(id)a3 removeEdgeSet:(id)a4 cancelBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([(SKGGraph *)self available])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc_init(MEMORY[0x277D22C50]);
    v11 = v10;
    if (v7)
    {
      [v10 removeNodes:v7];
    }

    if (v8)
    {
      [v11 removeEdges:v8];
    }

    v12 = [(SKGGraph *)self graph];
    [v12 executeGraphChangeRequest:v11];

    objc_autoreleasePoolPop(v9);
    v13 = [(SKGGraph *)self available];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)batchAddNodes:(id)a3 addEdges:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SKGGraph *)self available])
  {
    v8 = objc_autoreleasePoolPush();
    if (v6)
    {
      nodeBatch = self->_nodeBatch;
      if (!nodeBatch)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v11 = self->_nodeBatch;
        self->_nodeBatch = v10;

        nodeBatch = self->_nodeBatch;
      }

      [(NSMutableSet *)nodeBatch addObjectsFromArray:v6];
    }

    if (v7)
    {
      edgeBatch = self->_edgeBatch;
      if (!edgeBatch)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v14 = self->_edgeBatch;
        self->_edgeBatch = v13;

        edgeBatch = self->_edgeBatch;
      }

      [(NSMutableSet *)edgeBatch addObjectsFromArray:v7];
    }

    objc_autoreleasePoolPop(v8);
    v15 = [(SKGGraph *)self available];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)commitBatch
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(SKGGraph *)self available];
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    if (self->_nodeBatch || self->_edgeBatch)
    {
      v5 = objc_alloc_init(MEMORY[0x277D22C50]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = self->_nodeBatch;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v7)
      {
        v8 = *v22;
        do
        {
          v9 = 0;
          do
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v6);
            }

            [v5 addNode:*(*(&v21 + 1) + 8 * v9++)];
          }

          while (v7 != v9);
          v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v7);
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = self->_edgeBatch;
      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v11)
      {
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v10);
            }

            [v5 addEdge:{*(*(&v17 + 1) + 8 * v13++), v17}];
          }

          while (v11 != v13);
          v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v11);
      }

      v14 = [(SKGGraph *)self graph];
      [v14 executeGraphChangeRequest:v5];
    }

    objc_autoreleasePoolPop(v4);
    LOBYTE(v3) = [(SKGGraph *)self available];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)nodesForNode:(id)a3
{
  v4 = a3;
  if ([(SKGGraph *)self available])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__10;
    v16 = __Block_byref_object_dispose__10;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_autoreleasePoolPush();
    v6 = [(SKGGraph *)self graph];
    v7 = [v4 filter];
    v8 = [v6 nodeIdentifiersMatchingFilter:v7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __25__SKGGraph_nodesForNode___block_invoke;
    v11[3] = &unk_27893DB48;
    v11[4] = self;
    v11[5] = &v12;
    [v8 enumerateIdentifiersWithBlock:v11];

    objc_autoreleasePoolPop(v5);
    v9 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

void __25__SKGGraph_nodesForNode___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) graph];
  v5 = [v4 nodeForIdentifier:a2];

  if (v5)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

- (int64_t)countOfNodesWithLabel:(id)a3
{
  v4 = a3;
  if ([(SKGGraph *)self available])
  {
    v5 = [(SKGGraph *)self graph];
    v6 = [v5 nodesCountForLabel:v4];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int64_t)nodeCount
{
  if (![(SKGGraph *)self available])
  {
    return -1;
  }

  v3 = [(SKGGraph *)self graph];
  v4 = [v3 nodesCount];

  return v4;
}

- (int64_t)edgeCount
{
  if (![(SKGGraph *)self available])
  {
    return -1;
  }

  v3 = [(SKGGraph *)self graph];
  v4 = [v3 edgesCount];

  return v4;
}

- (void)closeGraph
{
  [(SKGGraph *)self commitWithCancelBlock:0];
  graph = self->_graph;
  if (graph)
  {
    [(MAGraph *)graph leaveBatch];
    [(MAGraph *)self->_graph closePersistentStore];
    v4 = self->_graph;
    self->_graph = 0;
  }
}

- (void)dealloc
{
  [(SKGGraph *)self closeGraph];
  v3.receiver = self;
  v3.super_class = SKGGraph;
  [(SKGGraph *)&v3 dealloc];
}

- (void)addNodes:(uint8_t *)buf addEdges:(_BYTE *)a2 cancelBlock:.cold.2(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SKG: hit unexpected error in graph", buf, 2u);
}

- (void)addNodes:(uint8_t *)buf addEdges:(_BYTE *)a2 cancelBlock:.cold.3(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SKG: expected source and target node for edge", buf, 2u);
}

@end