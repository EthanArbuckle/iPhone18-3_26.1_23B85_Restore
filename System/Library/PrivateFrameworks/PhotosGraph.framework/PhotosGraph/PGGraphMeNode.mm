@interface PGGraphMeNode
+ (id)filter;
+ (id)inferredPersonOfMe;
- (BOOL)_status:(unint64_t)a3 fitsQuery:(unint64_t)a4;
- (id)_relationshipLabelForRelationship:(unint64_t)a3;
- (id)inferredPersonNode;
- (id)relationshipEdgesToPersonNode:(id)a3 matchingQuery:(unint64_t)a4;
- (id)storytellingRelationshipLabelsToPersonNode:(id)a3;
- (void)_enumerateRelationshipWithLabel:(id)a3 matchingQuery:(unint64_t)a4 usingBlock:(id)a5;
- (void)_enumerateSocialGroupNodesForRelationshipLabel:(id)a3 usingBlock:(id)a4;
- (void)enumeratePersonNodesWithRelationship:(unint64_t)a3 matchingQuery:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateSocialGroupNodesWithRelationship:(unint64_t)a3 usingBlock:(id)a4;
@end

@implementation PGGraphMeNode

- (id)inferredPersonNode
{
  v2 = [(MANodeCollection *)[PGGraphMeNodeCollection alloc] initWithNode:self];
  v3 = [(PGGraphMeNodeCollection *)v2 inferredPersonNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (id)relationshipEdgesToPersonNode:(id)a3 matchingQuery:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(PGGraphPersonNode *)self collection];
  v9 = [v6 collection];
  v10 = [(PGGraphEdgeCollection *)PGGraphRelationshipEdgeCollection edgesFromNodes:v8 toNodes:v9];
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
        if (-[PGGraphMeNode _status:fitsQuery:](self, "_status:fitsQuery:", [v17 status], a4))
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

- (id)storytellingRelationshipLabelsToPersonNode:(id)a3
{
  v4 = a3;
  v5 = [(PGGraphPersonNode *)self collection];
  v6 = [v4 collection];

  v7 = [(PGGraphEdgeCollection *)PGGraphStorytellingRelationshipEdgeCollection edgesFromNodes:v5 toNodes:v6];

  v8 = [v7 labels];

  return v8;
}

- (void)enumeratePersonNodesWithRelationship:(unint64_t)a3 matchingQuery:(unint64_t)a4 usingBlock:(id)a5
{
  v9 = a5;
  v8 = [(PGGraphMeNode *)self _relationshipLabelForRelationship:a3];
  if (v8)
  {
    [(PGGraphMeNode *)self _enumerateRelationshipWithLabel:v8 matchingQuery:a4 usingBlock:v9];
  }
}

- (id)_relationshipLabelForRelationship:(unint64_t)a3
{
  if (_relationshipLabelForRelationship__onceToken != -1)
  {
    dispatch_once(&_relationshipLabelForRelationship__onceToken, &__block_literal_global_32282);
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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

- (void)_enumerateRelationshipWithLabel:(id)a3 matchingQuery:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__PGGraphMeNode__enumerateRelationshipWithLabel_matchingQuery_usingBlock___block_invoke;
    v10[3] = &unk_278883058;
    v10[4] = self;
    v12 = a4;
    v11 = v8;
    [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:a3 domain:300 usingBlock:v10];
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

- (BOOL)_status:(unint64_t)a3 fitsQuery:(unint64_t)a4
{
  v4 = (a4 >> 1) & 1;
  v5 = a4 & 1;
  if (a3)
  {
    v5 = 0;
  }

  if (a3 != 1)
  {
    LOBYTE(v4) = v5;
  }

  if (a3 == 2)
  {
    return (a4 & 4) != 0;
  }

  else
  {
    return v4;
  }
}

- (void)_enumerateSocialGroupNodesForRelationshipLabel:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__PGGraphMeNode__enumerateSocialGroupNodesForRelationshipLabel_usingBlock___block_invoke;
    v8[3] = &unk_278883030;
    v9 = v6;
    [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:a3 domain:302 usingBlock:v8];
  }
}

- (void)enumerateSocialGroupNodesWithRelationship:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  if (a3 == 4 || a3 == 1)
  {
    v7 = [(PGGraphMeNode *)self _relationshipLabelForRelationship:a3];
    [(PGGraphMeNode *)self _enumerateSocialGroupNodesForRelationshipLabel:v7 usingBlock:v6];
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Requesting a non supported relationship for social groups", v10, 2u);
    }
  }
}

+ (id)inferredPersonOfMe
{
  v2 = +[PGGraphInferredPersonEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Me" domain:300];

  return v2;
}

@end