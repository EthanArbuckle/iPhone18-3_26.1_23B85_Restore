@interface PGGraphMeNode
+ (id)filter;
+ (id)inferredPersonOfMe;
- (BOOL)_status:(unint64_t)_status fitsQuery:(unint64_t)query;
- (id)_relationshipLabelForRelationship:(unint64_t)relationship;
- (id)inferredPersonNode;
- (id)relationshipEdgesToPersonNode:(id)node matchingQuery:(unint64_t)query;
- (id)storytellingRelationshipLabelsToPersonNode:(id)node;
- (void)_enumerateRelationshipWithLabel:(id)label matchingQuery:(unint64_t)query usingBlock:(id)block;
- (void)_enumerateSocialGroupNodesForRelationshipLabel:(id)label usingBlock:(id)block;
- (void)enumeratePersonNodesWithRelationship:(unint64_t)relationship matchingQuery:(unint64_t)query usingBlock:(id)block;
- (void)enumerateSocialGroupNodesWithRelationship:(unint64_t)relationship usingBlock:(id)block;
@end

@implementation PGGraphMeNode

- (id)inferredPersonNode
{
  v2 = [(MANodeCollection *)[PGGraphMeNodeCollection alloc] initWithNode:self];
  inferredPersonNodes = [(PGGraphMeNodeCollection *)v2 inferredPersonNodes];
  anyNode = [inferredPersonNodes anyNode];

  return anyNode;
}

- (id)relationshipEdgesToPersonNode:(id)node matchingQuery:(unint64_t)query
{
  v25 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v7 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphPersonNode *)self collection];
  collection2 = [nodeCopy collection];
  v10 = [(PGGraphEdgeCollection *)PGGraphRelationshipEdgeCollection edgesFromNodes:collection toNodes:collection2];
  v11 = [v10 set];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (-[PGGraphMeNode _status:fitsQuery:](self, "_status:fitsQuery:", [v17 status], query))
        {
          [v7 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)storytellingRelationshipLabelsToPersonNode:(id)node
{
  nodeCopy = node;
  collection = [(PGGraphPersonNode *)self collection];
  collection2 = [nodeCopy collection];

  v7 = [(PGGraphEdgeCollection *)PGGraphStorytellingRelationshipEdgeCollection edgesFromNodes:collection toNodes:collection2];

  labels = [v7 labels];

  return labels;
}

- (void)enumeratePersonNodesWithRelationship:(unint64_t)relationship matchingQuery:(unint64_t)query usingBlock:(id)block
{
  blockCopy = block;
  v8 = [(PGGraphMeNode *)self _relationshipLabelForRelationship:relationship];
  if (v8)
  {
    [(PGGraphMeNode *)self _enumerateRelationshipWithLabel:v8 matchingQuery:query usingBlock:blockCopy];
  }
}

- (id)_relationshipLabelForRelationship:(unint64_t)relationship
{
  if (_relationshipLabelForRelationship__onceToken != -1)
  {
    dispatch_once(&_relationshipLabelForRelationship__onceToken, &__block_literal_global_32282);
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:relationship];
  v5 = [_relationshipLabelForRelationship__labelByRelationship objectForKeyedSubscript:v4];

  return v5;
}

void __51__PGGraphMeNode__relationshipLabelForRelationship___block_invoke()
{
  v4[12] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2844837B0;
  v3[1] = &unk_2844837C8;
  v4[0] = @"PARTNER";
  v4[1] = @"FAMILY";
  v3[2] = &unk_2844837E0;
  v3[3] = &unk_2844837F8;
  v4[2] = @"PARENT";
  v4[3] = @"MOTHER";
  v3[4] = &unk_284483810;
  v3[5] = &unk_284483828;
  v4[4] = @"FATHER";
  v4[5] = @"CHILD";
  v3[6] = &unk_284483840;
  v3[7] = &unk_284483858;
  v4[6] = @"SON";
  v4[7] = @"DAUGHTER";
  v3[8] = &unk_284483870;
  v3[9] = &unk_284483888;
  v4[8] = @"FRIEND";
  v4[9] = @"COWORKER";
  v3[10] = &unk_2844838A0;
  v3[11] = &unk_2844838B8;
  v4[10] = @"BROTHER";
  v4[11] = @"SISTER";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:12];
  v1 = _relationshipLabelForRelationship__labelByRelationship;
  _relationshipLabelForRelationship__labelByRelationship = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateRelationshipWithLabel:(id)label matchingQuery:(unint64_t)query usingBlock:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__PGGraphMeNode__enumerateRelationshipWithLabel_matchingQuery_usingBlock___block_invoke;
    v10[3] = &unk_278883058;
    v10[4] = self;
    queryCopy = query;
    v11 = blockCopy;
    [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:label domain:300 usingBlock:v10];
  }
}

void __74__PGGraphMeNode__enumerateRelationshipWithLabel_matchingQuery_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) _status:objc_msgSend(v6 fitsQuery:{"status"), *(a1 + 48)}])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)_status:(unint64_t)_status fitsQuery:(unint64_t)query
{
  v4 = (query >> 1) & 1;
  v5 = query & 1;
  if (_status)
  {
    v5 = 0;
  }

  if (_status != 1)
  {
    LOBYTE(v4) = v5;
  }

  if (_status == 2)
  {
    return (query & 4) != 0;
  }

  else
  {
    return v4;
  }
}

- (void)_enumerateSocialGroupNodesForRelationshipLabel:(id)label usingBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__PGGraphMeNode__enumerateSocialGroupNodesForRelationshipLabel_usingBlock___block_invoke;
    v8[3] = &unk_278883030;
    v9 = blockCopy;
    [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:label domain:302 usingBlock:v8];
  }
}

- (void)enumerateSocialGroupNodesWithRelationship:(unint64_t)relationship usingBlock:(id)block
{
  blockCopy = block;
  if (relationship == 4 || relationship == 1)
  {
    v7 = [(PGGraphMeNode *)self _relationshipLabelForRelationship:relationship];
    [(PGGraphMeNode *)self _enumerateSocialGroupNodesForRelationshipLabel:v7 usingBlock:blockCopy];
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Requesting a non supported relationship for social groups", v10, 2u);
    }
  }
}

+ (id)inferredPersonOfMe
{
  v2 = +[PGGraphInferredPersonEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Me" domain:300];

  return v2;
}

@end