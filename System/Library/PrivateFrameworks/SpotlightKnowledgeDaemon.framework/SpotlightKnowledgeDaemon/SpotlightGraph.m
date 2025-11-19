@interface SpotlightGraph
- (BOOL)addItem:(id)a3 cancelBlock:(id)a4;
- (BOOL)addPerson:(id)a3 cancelBlock:(id)a4;
- (BOOL)analyzePeopleWithCancelBlock:(id)a3;
- (BOOL)closeWithCancelBlock:(id)a3;
- (BOOL)containsReference:(id)a3 personaIdentifier:(id)a4 protectionClass:(id)a5 domainIdentifier:(id)a6;
- (BOOL)deleteDomainIdentifier:(id)a3 cancelBlock:(id)a4;
- (BOOL)deleteDomainIdentifier:(id)a3 personaIdentifier:(id)a4 cancelBlock:(id)a5;
- (BOOL)deleteEntitiesWithCancelBlock:(id)a3;
- (BOOL)deletePeopleWithCancelBlock:(id)a3;
- (BOOL)deleteReferences:(id)a3 domainIdentifier:(id)a4 cancelBlock:(id)a5;
- (BOOL)deleteReferences:(id)a3 personaIdentifier:(id)a4 protectionClass:(id)a5 domainIdentifier:(id)a6 cancelBlock:(id)a7;
- (BOOL)enumeratePeopleUsingBlock:(id)a3;
- (BOOL)findAllContactInfoForNode:(id)a3 info:(id)a4 reference:(id)a5 foundUser:(BOOL *)a6;
- (BOOL)generatePeopleUsingBlock:(id)a3;
- (BOOL)hasPeople;
- (BOOL)openWithCancelBlock:(id)a3;
- (BOOL)peopleAnalyzeWithCancelBlock:(id)a3;
- (BOOL)peopleScoreWithCancelBlock:(id)a3;
- (BOOL)peopleUpdateInfo:(id)a3 attributeKey:(id)a4 attribute:(id)a5 forNode:(id)a6 person:(id)a7 score:(id)a8 rank:(id)a9 bestCount:(unint64_t *)a10;
- (BOOL)peopleUpdateNetwork:(void *)a3 sourceNodeId:(unsigned int)a4 nodes:(id)a5;
- (BOOL)pruneWithCancelBlock:(id)a3;
- (BOOL)scorePeopleWithCancelBlock:(id)a3;
- (SpotlightGraph)initWithConfig:(id)a3;
- (id)cachedPeopleScoresPath;
- (id)domains;
- (id)nameNodeFromName:(id)a3 nameComponents:(id)a4 reference:(id)a5 domain:(id)a6 nodes:(id)a7 edges:(id)a8 isOwner:(BOOL)a9;
- (id)primaryNodesForPerson:(id)a3 reference:(id)a4 domain:(id)a5 nodes:(id)a6 edges:(id)a7 isOwner:(BOOL)a8;
- (int64_t)domainCount;
- (int64_t)emailCount;
- (int64_t)nameCount;
- (int64_t)personCount;
- (int64_t)personaCountForDomain:(id)a3;
- (int64_t)phoneCount;
- (int64_t)referenceCountForDomain:(id)a3;
- (int64_t)referenceCountForDomain:(id)a3 personaIdentifier:(id)a4;
- (void)dealloc;
- (void)peopleUpdateFromItem:(id)a3 reference:(id)a4 domain:(id)a5 nodes:(id)a6 edges:(id)a7;
@end

@implementation SpotlightGraph

- (SpotlightGraph)initWithConfig:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SpotlightGraph;
  v6 = [(SpotlightGraph *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v7->_peopleScores = 0;
    v8 = [(SpotlightGraph *)v7 cachedPeopleScoresPath];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v8 path];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      v7->_peopleScores = SIGeneralTrieCreateFromFileURL();
    }
  }

  return v7;
}

- (BOOL)openWithCancelBlock:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  graph = self->_graph;
  self->_graph = 0;

  v6 = self->_config;
  v7 = [SKGGraph alloc];
  v8 = [(SKGConfig *)v6 resourcePath];
  v9 = [(SKGGraph *)v7 initWithResourceDirectoryPath:v8];
  v10 = self->_graph;
  self->_graph = v9;

  v11 = self->_graph;
  if (v11)
  {
    v12 = +[SKGUserNode user];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    LOBYTE(v11) = [(SKGGraph *)v11 addNodes:v13 addEdges:0 cancelBlock:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)closeWithCancelBlock:(id)a3
{
  graph = self->_graph;
  self->_graph = 0;

  return 1;
}

- (BOOL)pruneWithCancelBlock:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  context = objc_autoreleasePoolPush();
  v5 = self->_graph;
  v6 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  do
  {
    if (v5)
    {
      v7 = [(SKGGraph *)v5 removeNodeSet:v6 removeEdgeSet:0 cancelBlock:v4];
      if (v4)
      {
        v8 = v4[2](v4, @"pruneWithCancelBlock") ^ 1;
      }

      else
      {
        v8 = 1;
      }

      *(v25 + 24) = v8;
      v9 = v19[5];
      v19[5] = 0;
    }

    else
    {
      v7 = 1;
    }

    if (*(v25 + 24) == 1 && v7 != 0)
    {
      v11 = [SKGNodes nodesInGraph:v5];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __39__SpotlightGraph_pruneWithCancelBlock___block_invoke;
      v14[3] = &unk_27893DBC0;
      v16 = &v18;
      v17 = &v24;
      v15 = v4;
      [v11 enumerateNodesInGraph:v5 usingBlock:v14];
    }

    v6 = v19[5];
  }

  while (v6 && (v25[3] & v7 & 1) != 0);
  _Block_object_dispose(&v18, 8);

  objc_autoreleasePoolPop(context);
  _Block_object_dispose(&v24, 8);

  return v7;
}

void __39__SpotlightGraph_pruneWithCancelBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  v6 = [MEMORY[0x277D22C20] any];
  v7 = [(MAEdgeCollection *)SKGEdges edgesOfType:3 onNodes:v12 matchingFilter:v6];

  if (![v7 count])
  {
    v8 = [v12 anyNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      *a3 = 1;
    }
  }

  v10 = a1[4];
  if (v10)
  {
    v11 = (*(v10 + 16))(v10, @"pruneWithCancelBlock") ^ 1;
  }

  else
  {
    v11 = 1;
  }

  *(*(a1[6] + 8) + 24) = v11;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

- (void)dealloc
{
  [(SpotlightGraph *)self closeWithCancelBlock:0];
  if (self->_peopleScores)
  {
    SIGeneralTrieRelease();
  }

  v3.receiver = self;
  v3.super_class = SpotlightGraph;
  [(SpotlightGraph *)&v3 dealloc];
}

- (id)domains
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_autoreleasePoolPush();
  v4 = self->_graph;
  v5 = [(SKGNodes *)SKGDomains nodesInGraph:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __25__SpotlightGraph_domains__block_invoke;
  v9[3] = &unk_27893DBE8;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateDomainsInGraph:v6 usingBlock:v9];

  objc_autoreleasePoolPop(v3);
  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __25__SpotlightGraph_domains__block_invoke(uint64_t a1, void *a2)
{
  v5 = +[SKGDomainNode domainWithElementIdentifier:inGraph:](SKGDomainNode, "domainWithElementIdentifier:inGraph:", [a2 nodeIdentifier], *(a1 + 32));
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v5 value];
  [v3 addObject:v4];
}

- (int64_t)domainCount
{
  graph = self->_graph;
  if (!graph)
  {
    return -1;
  }

  v3 = +[SKGDomainNode label];
  v4 = [(SKGGraph *)graph countOfNodesWithLabel:v3];

  return v4;
}

- (int64_t)personaCountForDomain:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [SKGDomains domainsWithDomain:v4 inGraph:self->_graph];
  v7 = [v6 personas];
  v8 = [v7 count];

  objc_autoreleasePoolPop(v5);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (int64_t)referenceCountForDomain:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = self->_graph;
  v7 = [SKGDomains domainsWithDomain:v4 inGraph:v6];
  v8 = [v7 personas];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__SpotlightGraph_referenceCountForDomain___block_invoke;
  v11[3] = &unk_27893DC10;
  v11[4] = &v12;
  [v8 enumeratePersonasInGraph:v6 usingBlock:v11];

  objc_autoreleasePoolPop(v5);
  if (v13[3])
  {
    v9 = v13[3];
  }

  else
  {
    v9 = -1;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __42__SpotlightGraph_referenceCountForDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 references];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

- (int64_t)referenceCountForDomain:(id)a3 personaIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self->_graph;
  v10 = [SKGDomains domainsWithDomain:v6 inGraph:v9];
  v11 = [v10 personasWithPersona:v7 inGraph:v9];

  v12 = [v11 references];
  v13 = [v12 count];

  objc_autoreleasePoolPop(v8);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

- (id)nameNodeFromName:(id)a3 nameComponents:(id)a4 reference:(id)a5 domain:(id)a6 nodes:(id)a7 edges:(id)a8 isOwner:(BOOL)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = 0;
  if (v14 && v15 && v18)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = [v15 givenName];
    if (v22)
    {
      v23 = v22;
      v24 = [v15 familyName];

      if (v24)
      {
        v25 = [v15 givenName];
        [v15 familyName];
        v26 = v34 = v21;
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v25, v26];
        v24 = [[SKGNameKeyNode alloc] initWithNameKey:v27 firstName:v25 lastName:v26];
        [v18 addObject:v24];

        v21 = v34;
      }
    }

    else
    {
      v24 = 0;
    }

    v20 = [[SKGNameNode alloc] initWithName:v14];
    if (v20)
    {
      [v18 addObject:v20];
      if (v19)
      {
        if (v16)
        {
          v28 = [SKGReferenceEdge edgeFromReference:v16 toNode:v20];
          [v19 addObject:v28];
        }

        v35 = v21;
        if (v17)
        {
          v29 = [SKGNameEdge edgeFromName:v20 toNode:v17];
          [v19 addObject:v29];
          v30 = [SKGDomainEdge edgeFromDomain:v17 toNode:v20];
          [v19 addObject:v30];

          v21 = v35;
        }

        if (v24)
        {
          v31 = [SKGNameEdge edgeFromName:v20 toNode:v24];
          [v19 addObject:v31];
          v32 = [SKGNameKeyEdge edgeFromNameKey:v24 toNode:v20];
          [v19 addObject:v32];

          v21 = v35;
        }
      }
    }

    objc_autoreleasePoolPop(v21);
  }

  return v20;
}

- (id)primaryNodesForPerson:(id)a3 reference:(id)a4 domain:(id)a5 nodes:(id)a6 edges:(id)a7 isOwner:(BOOL)a8
{
  obj = a8;
  v294 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v208 = a4;
  v210 = a5;
  v14 = a6;
  v15 = a7;
  v16 = 0;
  v209 = v14;
  if (!v13 || !v14)
  {
    goto LABEL_215;
  }

  v192 = objc_alloc_init(MEMORY[0x277CBEB58]);
  context = objc_autoreleasePoolPush();
  v17 = [v13 entityIdentifier];

  if (v17)
  {
    v18 = [SKGEntityNode alloc];
    v19 = [v13 entityIdentifier];
    v20 = [(SKGEntityNode *)v18 initWithIdentifier:v19];

    [v209 addObject:v20];
  }

  else
  {
    v20 = 0;
  }

  v211 = v20;
  v21 = [v13 names];
  v22 = [v21 count];

  if (v22)
  {
    v195 = 0;
    v23 = 0;
    v212 = v22;
    v206 = self;
    while (1)
    {
      v24 = [v13 names];
      v25 = [v24 objectAtIndexedSubscript:v23];

      v26 = [v13 displayNames];
      v27 = [v26 objectAtIndexedSubscript:v23];

      v28 = [v13 nameComponents];
      v29 = [v28 objectAtIndexedSubscript:v23];

      if (v211)
      {
        v30 = [[SKGDisplayNameNode alloc] initWithName:v25];
        v31 = v195;
        if (!v195)
        {
          v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v195 = v31;
        [v31 addObject:v30];
        [v209 addObject:v30];
        if (!v15)
        {
          goto LABEL_20;
        }

        v32 = [SKGEdge edgeFromNode:v211 toNode:v30];
        [v15 addObject:v32];
        v33 = [SKGEdge edgeFromNode:v30 toNode:v211];
        [v15 addObject:v33];
      }

      else
      {
        v30 = [[SKGDisplayNameNode alloc] initWithName:v27];
        [v209 addObject:v30];
        LOBYTE(v189) = obj;
        v32 = [(SpotlightGraph *)self nameNodeFromName:v25 nameComponents:v29 reference:v208 domain:v210 nodes:v209 edges:v15 isOwner:v189];
        if (!v32)
        {
          goto LABEL_19;
        }

        v34 = v195;
        if (!v195)
        {
          v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v195 = v34;
        [v34 addObject:v32];
        if (!v15)
        {
          goto LABEL_19;
        }

        v33 = [SKGEdge edgeFromNode:v30 toNode:v32];
        [v15 addObject:v33];
        v35 = [SKGEdge edgeFromNode:v32 toNode:v30];
        [v15 addObject:v35];

        self = v206;
      }

      v22 = v212;
LABEL_19:

LABEL_20:
      if (v22 == ++v23)
      {
        goto LABEL_23;
      }
    }
  }

  v195 = 0;
LABEL_23:
  v36 = [v13 contactIdentifier];

  if (v36)
  {
    v37 = [SKGContactNode alloc];
    v38 = [v13 contactIdentifier];
    v213 = [(SKGContactNode *)v37 initWithIdentifier:v38];

    [v209 addObject:v213];
    if (v15)
    {
      if (v208)
      {
        v39 = [SKGReferenceEdge edgeFromReference:v208 toNode:v213];
        [v15 addObject:v39];
      }

      if (v210)
      {
        v40 = [SKGEdge edgeFromNode:v213 toNode:v210];
        [v15 addObject:v40];
        v41 = [SKGEdge edgeFromNode:v210 toNode:v213];
        [v15 addObject:v41];
      }

      if (v211)
      {
        v42 = [SKGEdge edgeFromNode:v211 toNode:v213];
        [v15 addObject:v42];
        v43 = [SKGEdge edgeFromNode:v213 toNode:v211];
        [v15 addObject:v43];
      }

      if (obj)
      {
        v44 = +[SKGUserNode user];
        v45 = [SKGEdge edgeFromNode:v213 toNode:v44];

        [v15 addObject:v45];
        v46 = +[SKGUserNode user];
        v47 = [SKGEdge edgeFromNode:v46 toNode:v213];

        [v15 addObject:v47];
      }
    }
  }

  else
  {
    v213 = 0;
  }

  v48 = [v13 photosPersonIdentifier];

  if (v48)
  {
    v49 = [SKGPhotoNode alloc];
    v50 = [v13 photosPersonIdentifier];
    v204 = [(SKGPhotoNode *)v49 initWithIdentifier:v50];

    [v209 addObject:v204];
    if (v15)
    {
      if (v208)
      {
        v51 = [SKGReferenceEdge edgeFromReference:v208 toNode:v204];
        [v15 addObject:v51];
      }

      if (v210)
      {
        v52 = [SKGEdge edgeFromNode:v204 toNode:v210];
        [v15 addObject:v52];
        v53 = [SKGEdge edgeFromNode:v210 toNode:v204];
        [v15 addObject:v53];
      }

      if (v211)
      {
        v54 = [SKGEdge edgeFromNode:v211 toNode:v204];
        [v15 addObject:v54];
        v55 = [SKGEdge edgeFromNode:v204 toNode:v211];
        [v15 addObject:v55];
      }

      if (obj)
      {
        v56 = +[SKGUserNode user];
        v57 = [SKGEdge edgeFromNode:v204 toNode:v56];

        [v15 addObject:v57];
        v58 = +[SKGUserNode user];
        v59 = [SKGEdge edgeFromNode:v58 toNode:v204];

        [v15 addObject:v59];
      }
    }
  }

  else
  {
    v204 = 0;
  }

  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  v274 = 0u;
  v60 = [v13 emailAddresses];
  v61 = [v60 countByEnumeratingWithState:&v274 objects:v293 count:16];
  if (v61)
  {
    v205 = 0;
    v62 = *v275;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v275 != v62)
        {
          objc_enumerationMutation(v60);
        }

        v64 = [[SKGEmailNode alloc] initWithEmailAddress:*(*(&v274 + 1) + 8 * i)];
        [v209 addObject:v64];
        v65 = v205;
        if (!v205)
        {
          v65 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v205 = v65;
        [v65 addObject:v64];
        if (v15)
        {
          if (v208)
          {
            v66 = [SKGReferenceEdge edgeFromReference:v208 toNode:v64];
            [v15 addObject:v66];
          }

          if (v210)
          {
            v67 = [SKGEdge edgeFromNode:v64 toNode:v210];
            [v15 addObject:v67];
            v68 = [SKGEdge edgeFromNode:v210 toNode:v64];
            [v15 addObject:v68];
          }

          if (v211)
          {
            v69 = [SKGEdge edgeFromNode:v211 toNode:v64];
            [v15 addObject:v69];
            v70 = [SKGEdge edgeFromNode:v64 toNode:v211];
            [v15 addObject:v70];
          }
        }
      }

      v61 = [v60 countByEnumeratingWithState:&v274 objects:v293 count:16];
    }

    while (v61);
  }

  else
  {
    v205 = 0;
  }

  v273 = 0u;
  v272 = 0u;
  v271 = 0u;
  v270 = 0u;
  v71 = [v13 phoneNumbers];
  v72 = [v71 countByEnumeratingWithState:&v270 objects:v292 count:16];
  if (v72)
  {
    v207 = 0;
    v73 = *v271;
    do
    {
      for (j = 0; j != v72; ++j)
      {
        if (*v271 != v73)
        {
          objc_enumerationMutation(v71);
        }

        v75 = [[SKGPhoneNode alloc] initWithPhoneNumber:*(*(&v270 + 1) + 8 * j)];
        [v209 addObject:v75];
        v76 = v207;
        if (!v207)
        {
          v76 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v207 = v76;
        [v76 addObject:v75];
        if (v15)
        {
          if (v208)
          {
            v77 = [SKGReferenceEdge edgeFromReference:v208 toNode:v75];
            [v15 addObject:v77];
          }

          if (v210)
          {
            v78 = [SKGEdge edgeFromNode:v75 toNode:v210];
            [v15 addObject:v78];
            v79 = [SKGEdge edgeFromNode:v210 toNode:v75];
            [v15 addObject:v79];
          }

          if (v211)
          {
            v80 = [SKGEdge edgeFromNode:v211 toNode:v75];
            [v15 addObject:v80];
            v81 = [SKGEdge edgeFromNode:v75 toNode:v211];
            [v15 addObject:v81];
          }

          if (obj)
          {
            v82 = +[SKGUserNode user];
            v83 = [SKGEdge edgeFromNode:v75 toNode:v82];

            [v15 addObject:v83];
            v84 = +[SKGUserNode user];
            v85 = [SKGEdge edgeFromNode:v84 toNode:v75];

            [v15 addObject:v85];
          }
        }
      }

      v72 = [v71 countByEnumeratingWithState:&v270 objects:v292 count:16];
    }

    while (v72);
  }

  else
  {
    v207 = 0;
  }

  if (v15 && !v211)
  {
    if (v213)
    {
      if (v204)
      {
        v86 = [SKGEdge edgeFromNode:v213 toNode:v204];
        [v15 addObject:v86];
        v87 = [SKGEdge edgeFromNode:v204 toNode:v213];
        [v15 addObject:v87];
      }

      v269 = 0u;
      v267 = 0u;
      v268 = 0u;
      v266 = 0u;
      v88 = v195;
      v89 = [v88 countByEnumeratingWithState:&v266 objects:v291 count:16];
      if (v89)
      {
        v90 = *v267;
        do
        {
          for (k = 0; k != v89; ++k)
          {
            if (*v267 != v90)
            {
              objc_enumerationMutation(v88);
            }

            v92 = *(*(&v266 + 1) + 8 * k);
            v93 = [SKGEdge edgeFromNode:v213 toNode:v92];
            [v15 addObject:v93];
            v94 = [SKGEdge edgeFromNode:v92 toNode:v213];
            [v15 addObject:v94];
          }

          v89 = [v88 countByEnumeratingWithState:&v266 objects:v291 count:16];
        }

        while (v89);
      }

      v264 = 0u;
      v265 = 0u;
      v262 = 0u;
      v263 = 0u;
      v95 = v205;
      v96 = [v95 countByEnumeratingWithState:&v262 objects:v290 count:16];
      if (v96)
      {
        v97 = *v263;
        do
        {
          for (m = 0; m != v96; ++m)
          {
            if (*v263 != v97)
            {
              objc_enumerationMutation(v95);
            }

            v99 = *(*(&v262 + 1) + 8 * m);
            v100 = [SKGEdge edgeFromNode:v213 toNode:v99];
            [v15 addObject:v100];
            v101 = [SKGEdge edgeFromNode:v99 toNode:v213];
            [v15 addObject:v101];
          }

          v96 = [v95 countByEnumeratingWithState:&v262 objects:v290 count:16];
        }

        while (v96);
      }

      v260 = 0u;
      v261 = 0u;
      v258 = 0u;
      v259 = 0u;
      v102 = v207;
      v103 = [v102 countByEnumeratingWithState:&v258 objects:v289 count:16];
      if (v103)
      {
        v104 = *v259;
        do
        {
          for (n = 0; n != v103; ++n)
          {
            if (*v259 != v104)
            {
              objc_enumerationMutation(v102);
            }

            v106 = *(*(&v258 + 1) + 8 * n);
            v107 = [SKGEdge edgeFromNode:v213 toNode:v106];
            [v15 addObject:v107];
            v108 = [SKGEdge edgeFromNode:v106 toNode:v213];
            [v15 addObject:v108];
          }

          v103 = [v102 countByEnumeratingWithState:&v258 objects:v289 count:16];
        }

        while (v103);
      }

      if (v204)
      {
        v109 = [SKGEdge edgeFromNode:v204 toNode:v213];
        [v15 addObject:v109];
        v110 = [SKGEdge edgeFromNode:v213 toNode:v204];
        [v15 addObject:v110];

LABEL_112:
        v256 = 0u;
        v257 = 0u;
        v254 = 0u;
        v255 = 0u;
        v111 = v195;
        v112 = [v111 countByEnumeratingWithState:&v254 objects:v288 count:16];
        if (v112)
        {
          v113 = *v255;
          do
          {
            for (ii = 0; ii != v112; ++ii)
            {
              if (*v255 != v113)
              {
                objc_enumerationMutation(v111);
              }

              v115 = *(*(&v254 + 1) + 8 * ii);
              v116 = [SKGEdge edgeFromNode:v204 toNode:v115];
              [v15 addObject:v116];
              v117 = [SKGEdge edgeFromNode:v115 toNode:v204];
              [v15 addObject:v117];
            }

            v112 = [v111 countByEnumeratingWithState:&v254 objects:v288 count:16];
          }

          while (v112);
        }

        v252 = 0u;
        v253 = 0u;
        v250 = 0u;
        v251 = 0u;
        v118 = v205;
        v119 = [v118 countByEnumeratingWithState:&v250 objects:v287 count:16];
        if (v119)
        {
          v120 = *v251;
          do
          {
            for (jj = 0; jj != v119; ++jj)
            {
              if (*v251 != v120)
              {
                objc_enumerationMutation(v118);
              }

              v122 = *(*(&v250 + 1) + 8 * jj);
              v123 = [SKGEdge edgeFromNode:v204 toNode:v122];
              [v15 addObject:v123];
              v124 = [SKGEdge edgeFromNode:v122 toNode:v204];
              [v15 addObject:v124];
            }

            v119 = [v118 countByEnumeratingWithState:&v250 objects:v287 count:16];
          }

          while (v119);
        }

        v248 = 0u;
        v249 = 0u;
        v246 = 0u;
        v247 = 0u;
        v125 = v207;
        v126 = [v125 countByEnumeratingWithState:&v246 objects:v286 count:16];
        if (v126)
        {
          v127 = *v247;
          do
          {
            for (kk = 0; kk != v126; ++kk)
            {
              if (*v247 != v127)
              {
                objc_enumerationMutation(v125);
              }

              v129 = *(*(&v246 + 1) + 8 * kk);
              v130 = [SKGEdge edgeFromNode:v204 toNode:v129];
              [v15 addObject:v130];
              v131 = [SKGEdge edgeFromNode:v129 toNode:v204];
              [v15 addObject:v131];
            }

            v126 = [v125 countByEnumeratingWithState:&v246 objects:v286 count:16];
          }

          while (v126);
        }

        v194 = 0;
        goto LABEL_135;
      }
    }

    else if (v204)
    {
      goto LABEL_112;
    }

    v194 = 1;
LABEL_135:
    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    obja = v195;
    v132 = [obja countByEnumeratingWithState:&v242 objects:v285 count:16];
    if (v132)
    {
      v196 = *v243;
      do
      {
        v199 = v132;
        for (mm = 0; mm != v199; ++mm)
        {
          if (*v243 != v196)
          {
            objc_enumerationMutation(obja);
          }

          v134 = *(*(&v242 + 1) + 8 * mm);
          v238 = 0u;
          v239 = 0u;
          v240 = 0u;
          v241 = 0u;
          v135 = obja;
          v136 = [v135 countByEnumeratingWithState:&v238 objects:v284 count:16];
          if (v136)
          {
            v137 = *v239;
            do
            {
              for (nn = 0; nn != v136; ++nn)
              {
                if (*v239 != v137)
                {
                  objc_enumerationMutation(v135);
                }

                v139 = *(*(&v238 + 1) + 8 * nn);
                if (([v134 isEqualToNode:v139] & 1) == 0)
                {
                  v140 = [SKGEdge edgeFromNode:v134 toNode:v139];
                  [v15 addObject:v140];
                  v141 = [SKGEdge edgeFromNode:v139 toNode:v134];
                  [v15 addObject:v141];
                }
              }

              v136 = [v135 countByEnumeratingWithState:&v238 objects:v284 count:16];
            }

            while (v136);
          }
        }

        v132 = [v135 countByEnumeratingWithState:&v242 objects:v285 count:16];
      }

      while (v132);
    }

    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v193 = v205;
    v142 = [v193 countByEnumeratingWithState:&v234 objects:v283 count:16];
    if (v142)
    {
      v197 = *v235;
      do
      {
        v200 = v142;
        for (i1 = 0; i1 != v200; ++i1)
        {
          if (*v235 != v197)
          {
            objc_enumerationMutation(v193);
          }

          v144 = *(*(&v234 + 1) + 8 * i1);
          if ((v194 & 1) == 0)
          {
            v145 = [SKGEdge edgeFromNode:v204 toNode:*(*(&v234 + 1) + 8 * i1)];
            [v15 addObject:v145];
            v146 = [SKGEdge edgeFromNode:v144 toNode:v204];
            [v15 addObject:v146];
          }

          if (v213)
          {
            v147 = [SKGEdge edgeFromNode:v213 toNode:v144];
            [v15 addObject:v147];
            v148 = [SKGEdge edgeFromNode:v144 toNode:v213];
            [v15 addObject:v148];
          }

          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v149 = obja;
          v150 = [v149 countByEnumeratingWithState:&v230 objects:v282 count:16];
          if (v150)
          {
            v151 = *v231;
            do
            {
              for (i2 = 0; i2 != v150; ++i2)
              {
                if (*v231 != v151)
                {
                  objc_enumerationMutation(v149);
                }

                v153 = *(*(&v230 + 1) + 8 * i2);
                v154 = [SKGEdge edgeFromNode:v144 toNode:v153];
                [v15 addObject:v154];
                v155 = [SKGEdge edgeFromNode:v153 toNode:v144];
                [v15 addObject:v155];
              }

              v150 = [v149 countByEnumeratingWithState:&v230 objects:v282 count:16];
            }

            while (v150);
          }

          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v156 = v207;
          v157 = [v156 countByEnumeratingWithState:&v226 objects:v281 count:16];
          if (v157)
          {
            v158 = *v227;
            do
            {
              for (i3 = 0; i3 != v157; ++i3)
              {
                if (*v227 != v158)
                {
                  objc_enumerationMutation(v156);
                }

                v160 = *(*(&v226 + 1) + 8 * i3);
                v161 = [SKGEdge edgeFromNode:v144 toNode:v160];
                [v15 addObject:v161];
                v162 = [SKGEdge edgeFromNode:v160 toNode:v144];
                [v15 addObject:v162];
              }

              v157 = [v156 countByEnumeratingWithState:&v226 objects:v281 count:16];
            }

            while (v157);
          }
        }

        v142 = [v193 countByEnumeratingWithState:&v234 objects:v283 count:16];
      }

      while (v142);
    }

    v224 = 0u;
    v225 = 0u;
    v222 = 0u;
    v223 = 0u;
    v191 = v207;
    v163 = [v191 countByEnumeratingWithState:&v222 objects:v280 count:16];
    if (v163)
    {
      v198 = *v223;
      do
      {
        v201 = v163;
        for (i4 = 0; i4 != v201; ++i4)
        {
          if (*v223 != v198)
          {
            objc_enumerationMutation(v191);
          }

          v165 = *(*(&v222 + 1) + 8 * i4);
          if ((v194 & 1) == 0)
          {
            v166 = [SKGEdge edgeFromNode:v204 toNode:*(*(&v222 + 1) + 8 * i4)];
            [v15 addObject:v166];
            v167 = [SKGEdge edgeFromNode:v165 toNode:v204];
            [v15 addObject:v167];
          }

          if (v213)
          {
            v168 = [SKGEdge edgeFromNode:v213 toNode:v165];
            [v15 addObject:v168];
            v169 = [SKGEdge edgeFromNode:v165 toNode:v213];
            [v15 addObject:v169];
          }

          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          v170 = obja;
          v171 = [v170 countByEnumeratingWithState:&v218 objects:v279 count:16];
          if (v171)
          {
            v172 = *v219;
            do
            {
              for (i5 = 0; i5 != v171; ++i5)
              {
                if (*v219 != v172)
                {
                  objc_enumerationMutation(v170);
                }

                v174 = *(*(&v218 + 1) + 8 * i5);
                v175 = [SKGEdge edgeFromNode:v165 toNode:v174];
                [v15 addObject:v175];
                v176 = [SKGEdge edgeFromNode:v174 toNode:v165];
                [v15 addObject:v176];
              }

              v171 = [v170 countByEnumeratingWithState:&v218 objects:v279 count:16];
            }

            while (v171);
          }

          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v177 = v193;
          v178 = [v177 countByEnumeratingWithState:&v214 objects:v278 count:16];
          if (v178)
          {
            v179 = *v215;
            do
            {
              for (i6 = 0; i6 != v178; ++i6)
              {
                if (*v215 != v179)
                {
                  objc_enumerationMutation(v177);
                }

                v181 = [SKGEdge edgeFromNode:v165 toNode:*(*(&v214 + 1) + 8 * i6)];
                [v15 addObject:v181];
                v182 = [SKGEdge edgeFromNode:v165 toNode:v213];
                [v15 addObject:v182];
              }

              v178 = [v177 countByEnumeratingWithState:&v214 objects:v278 count:16];
            }

            while (v178);
          }
        }

        v163 = [v191 countByEnumeratingWithState:&v222 objects:v280 count:16];
      }

      while (v163);
    }
  }

  v183 = v207;
  if (v213)
  {
    [v192 addObject:v213];
  }

  if (v204)
  {
    [v192 addObject:v204];
  }

  if (v211)
  {
    [v192 addObject:v211];
  }

  if ([v205 count])
  {
    v184 = [v205 allObjects];
    [v192 addObjectsFromArray:v184];

    v183 = v207;
  }

  if ([v183 count])
  {
    v185 = [v183 allObjects];
    [v192 addObjectsFromArray:v185];

    v183 = v207;
  }

  if ([v195 count])
  {
    v186 = [v195 allObjects];
    [v192 addObjectsFromArray:v186];

    v183 = v207;
  }

  objc_autoreleasePoolPop(context);
  v16 = [v192 allObjects];

LABEL_215:
  v187 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)peopleUpdateFromItem:(id)a3 reference:(id)a4 domain:(id)a5 nodes:(id)a6 edges:(id)a7
{
  v368 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v156 = a4;
  v155 = a5;
  v154 = a6;
  v231 = a7;
  context = objc_autoreleasePoolPush();
  v333 = 0u;
  v334 = 0u;
  v335 = 0u;
  v336 = 0u;
  obj = [v12 owners];
  v232 = v12;
  v151 = [obj countByEnumeratingWithState:&v333 objects:v367 count:16];
  if (v151)
  {
    v149 = *v334;
    v150 = self;
    do
    {
      v13 = 0;
      do
      {
        if (*v334 != v149)
        {
          objc_enumerationMutation(obj);
        }

        v153 = v13;
        v14 = *(*(&v333 + 1) + 8 * v13);
        v15 = objc_opt_new();
        v16 = objc_opt_new();
        v17 = +[SKGUserNode user];
        v366 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v366 count:1];
        v165 = v16;
        [v16 addObject:v18];

        v19 = [(SpotlightGraph *)self primaryNodesForPerson:v14 reference:v156 domain:v155 nodes:v154 edges:v231 isOwner:1];
        if (v19)
        {
          [v15 addObject:v19];
        }

        v152 = v19;
        v332 = 0u;
        v331 = 0u;
        v330 = 0u;
        v329 = 0u;
        v157 = v15;
        v167 = [v157 countByEnumeratingWithState:&v329 objects:v365 count:16];
        if (v167)
        {
          v161 = *v330;
          do
          {
            v20 = 0;
            do
            {
              if (*v330 != v161)
              {
                objc_enumerationMutation(v157);
              }

              v171 = v20;
              v183 = *(*(&v329 + 1) + 8 * v20);
              v325 = 0u;
              v326 = 0u;
              v327 = 0u;
              v328 = 0u;
              v175 = v165;
              v187 = [v175 countByEnumeratingWithState:&v325 objects:v364 count:16];
              if (v187)
              {
                v179 = *v326;
                do
                {
                  v21 = 0;
                  do
                  {
                    if (*v326 != v179)
                    {
                      objc_enumerationMutation(v175);
                    }

                    v191 = v21;
                    v203 = *(*(&v325 + 1) + 8 * v21);
                    v321 = 0u;
                    v322 = 0u;
                    v323 = 0u;
                    v324 = 0u;
                    v195 = v183;
                    v207 = [v195 countByEnumeratingWithState:&v321 objects:v363 count:16];
                    if (v207)
                    {
                      v199 = *v322;
                      do
                      {
                        v22 = 0;
                        do
                        {
                          if (*v322 != v199)
                          {
                            objc_enumerationMutation(v195);
                          }

                          v211 = v22;
                          v23 = *(*(&v321 + 1) + 8 * v22);
                          v317 = 0u;
                          v318 = 0u;
                          v319 = 0u;
                          v320 = 0u;
                          v215 = v203;
                          v223 = [v215 countByEnumeratingWithState:&v317 objects:v362 count:16];
                          if (v223)
                          {
                            v219 = *v318;
                            do
                            {
                              v24 = 0;
                              do
                              {
                                if (*v318 != v219)
                                {
                                  objc_enumerationMutation(v215);
                                }

                                v227 = v24;
                                v25 = *(*(&v317 + 1) + 8 * v24);
                                v313 = 0u;
                                v314 = 0u;
                                v315 = 0u;
                                v316 = 0u;
                                v26 = [v12 interactions];
                                v27 = [v26 countByEnumeratingWithState:&v313 objects:v361 count:16];
                                if (v27)
                                {
                                  v28 = v27;
                                  v29 = *v314;
                                  do
                                  {
                                    for (i = 0; i != v28; ++i)
                                    {
                                      if (*v314 != v29)
                                      {
                                        objc_enumerationMutation(v26);
                                      }

                                      v31 = *(*(&v313 + 1) + 8 * i);
                                      v32 = [v12 interactions];
                                      v33 = [v32 objectForKeyedSubscript:v31];

                                      v34 = [SKGInteractionEdge alloc];
                                      v35 = [v12 bundleIdentifier];
                                      v36 = [(SKGInteractionEdge *)v34 initWithSourceNode:v23 targetNode:v25 domainIdentifier:v35 relationship:v31 score:v33];

                                      v12 = v232;
                                      [v231 addObject:v36];
                                    }

                                    v28 = [v26 countByEnumeratingWithState:&v313 objects:v361 count:16];
                                  }

                                  while (v28);
                                }

                                v24 = v227 + 1;
                              }

                              while (v227 + 1 != v223);
                              v223 = [v215 countByEnumeratingWithState:&v317 objects:v362 count:16];
                            }

                            while (v223);
                          }

                          v22 = v211 + 1;
                        }

                        while (v211 + 1 != v207);
                        v207 = [v195 countByEnumeratingWithState:&v321 objects:v363 count:16];
                      }

                      while (v207);
                    }

                    v21 = v191 + 1;
                  }

                  while (v191 + 1 != v187);
                  v187 = [v175 countByEnumeratingWithState:&v325 objects:v364 count:16];
                }

                while (v187);
              }

              v20 = v171 + 1;
            }

            while ((v171 + 1) != v167);
            v167 = [v157 countByEnumeratingWithState:&v329 objects:v365 count:16];
          }

          while (v167);
        }

        v13 = v153 + 1;
        self = v150;
      }

      while (v153 + 1 != v151);
      v151 = [obj countByEnumeratingWithState:&v333 objects:v367 count:16];
    }

    while (v151);
  }

  v37 = [v12 authors];
  if ([v37 count])
  {
    v38 = [v12 recipients];
    v39 = [v38 count];

    if (v39)
    {
      v40 = objc_opt_new();
      v41 = objc_opt_new();
      v42 = +[SKGUserNode user];
      v360 = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v360 count:1];
      [v41 addObject:v43];

      v312 = 0u;
      v311 = 0u;
      v310 = 0u;
      v309 = 0u;
      v44 = [v12 authors];
      v45 = [v44 countByEnumeratingWithState:&v309 objects:v359 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v310;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v310 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v309 + 1) + 8 * j) reference:v156 domain:v155 nodes:v154 edges:v231 isOwner:0];
            if (v49)
            {
              [v40 addObject:v49];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v309 objects:v359 count:16];
        }

        while (v46);
      }

      v308 = 0u;
      v307 = 0u;
      v306 = 0u;
      v305 = 0u;
      v50 = [v12 recipients];
      v51 = [v50 countByEnumeratingWithState:&v305 objects:v358 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v306;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v306 != v53)
            {
              objc_enumerationMutation(v50);
            }

            v55 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v305 + 1) + 8 * k) reference:v156 domain:v155 nodes:v154 edges:v231 isOwner:0];
            if (v55)
            {
              [v41 addObject:v55];
            }
          }

          v52 = [v50 countByEnumeratingWithState:&v305 objects:v358 count:16];
        }

        while (v52);
      }

      v304 = 0u;
      v303 = 0u;
      v302 = 0u;
      v301 = 0u;
      v166 = v40;
      v162 = [v166 countByEnumeratingWithState:&v301 objects:v357 count:16];
      if (!v162)
      {
        goto LABEL_213;
      }

      v158 = *v302;
      v172 = v41;
      do
      {
        v56 = 0;
        do
        {
          if (*v302 != v158)
          {
            objc_enumerationMutation(v166);
          }

          v168 = v56;
          v184 = *(*(&v301 + 1) + 8 * v56);
          v297 = 0u;
          v298 = 0u;
          v299 = 0u;
          v300 = 0u;
          v57 = v41;
          v188 = [v57 countByEnumeratingWithState:&v297 objects:v356 count:16];
          if (v188)
          {
            v176 = *v298;
            v180 = v57;
            do
            {
              v58 = 0;
              do
              {
                if (*v298 != v176)
                {
                  objc_enumerationMutation(v57);
                }

                v192 = v58;
                v204 = *(*(&v297 + 1) + 8 * v58);
                v293 = 0u;
                v294 = 0u;
                v295 = 0u;
                v296 = 0u;
                v196 = v184;
                v208 = [v196 countByEnumeratingWithState:&v293 objects:v355 count:16];
                if (v208)
                {
                  v200 = *v294;
                  do
                  {
                    v59 = 0;
                    do
                    {
                      if (*v294 != v200)
                      {
                        objc_enumerationMutation(v196);
                      }

                      v212 = v59;
                      v60 = *(*(&v293 + 1) + 8 * v59);
                      v289 = 0u;
                      v290 = 0u;
                      v291 = 0u;
                      v292 = 0u;
                      v216 = v204;
                      v224 = [v216 countByEnumeratingWithState:&v289 objects:v354 count:16];
                      if (v224)
                      {
                        v220 = *v290;
                        do
                        {
                          v61 = 0;
                          do
                          {
                            if (*v290 != v220)
                            {
                              objc_enumerationMutation(v216);
                            }

                            v228 = v61;
                            v62 = *(*(&v289 + 1) + 8 * v61);
                            v285 = 0u;
                            v286 = 0u;
                            v287 = 0u;
                            v288 = 0u;
                            v63 = [v232 interactions];
                            v64 = [v63 countByEnumeratingWithState:&v285 objects:v353 count:16];
                            if (v64)
                            {
                              v65 = v64;
                              v66 = *v286;
                              do
                              {
                                for (m = 0; m != v65; ++m)
                                {
                                  if (*v286 != v66)
                                  {
                                    objc_enumerationMutation(v63);
                                  }

                                  v68 = *(*(&v285 + 1) + 8 * m);
                                  v69 = [v232 interactions];
                                  v70 = [v69 objectForKeyedSubscript:v68];

                                  v71 = [SKGInteractionEdge alloc];
                                  v72 = [v232 bundleIdentifier];
                                  v73 = [(SKGInteractionEdge *)v71 initWithSourceNode:v60 targetNode:v62 domainIdentifier:v72 relationship:v68 score:v70];

                                  [v231 addObject:v73];
                                }

                                v65 = [v63 countByEnumeratingWithState:&v285 objects:v353 count:16];
                              }

                              while (v65);
                            }

                            v61 = v228 + 1;
                          }

                          while (v228 + 1 != v224);
                          v224 = [v216 countByEnumeratingWithState:&v289 objects:v354 count:16];
                        }

                        while (v224);
                      }

                      v59 = v212 + 1;
                    }

                    while (v212 + 1 != v208);
                    v208 = [v196 countByEnumeratingWithState:&v293 objects:v355 count:16];
                  }

                  while (v208);
                }

                v58 = v192 + 1;
                v57 = v180;
              }

              while (v192 + 1 != v188);
              v188 = [v180 countByEnumeratingWithState:&v297 objects:v356 count:16];
            }

            while (v188);
          }

          v41 = v172;
          v56 = v168 + 1;
        }

        while (v168 + 1 != v162);
        v162 = [v166 countByEnumeratingWithState:&v301 objects:v357 count:16];
      }

      while (v162);
      goto LABEL_212;
    }
  }

  else
  {
  }

  v74 = [v12 authors];
  if ([v74 count])
  {

    goto LABEL_105;
  }

  v75 = [v12 recipients];
  v76 = [v75 count];

  if (v76)
  {
LABEL_105:
    v166 = objc_opt_new();
    v41 = objc_opt_new();
    v77 = [v12 authors];
    v78 = [v77 count];

    if (v78)
    {
      v79 = +[SKGUserNode user];
      v352 = v79;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v352 count:1];
      [v41 addObject:v80];

      v284 = 0u;
      v283 = 0u;
      v282 = 0u;
      v281 = 0u;
      v81 = [v12 authors];
      v82 = [v81 countByEnumeratingWithState:&v281 objects:v351 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v282;
        do
        {
          for (n = 0; n != v83; ++n)
          {
            if (*v282 != v84)
            {
              objc_enumerationMutation(v81);
            }

            v86 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v281 + 1) + 8 * n) reference:v156 domain:v155 nodes:v154 edges:v231 isOwner:0];
            if (v86)
            {
              [v166 addObject:v86];
            }
          }

          v83 = [v81 countByEnumeratingWithState:&v281 objects:v351 count:16];
        }

        while (v83);
      }
    }

    else
    {
      v120 = [v12 recipients];
      v121 = [v120 count];

      if (!v121)
      {
        goto LABEL_175;
      }

      v122 = +[SKGUserNode user];
      v350 = v122;
      v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v350 count:1];
      [v166 addObject:v123];

      v279 = 0u;
      v280 = 0u;
      v277 = 0u;
      v278 = 0u;
      v81 = [v12 recipients];
      v124 = [v81 countByEnumeratingWithState:&v277 objects:v349 count:16];
      if (v124)
      {
        v125 = v124;
        v126 = *v278;
        do
        {
          for (ii = 0; ii != v125; ++ii)
          {
            if (*v278 != v126)
            {
              objc_enumerationMutation(v81);
            }

            v128 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v277 + 1) + 8 * ii) reference:v156 domain:v155 nodes:v154 edges:v231 isOwner:0];
            if (v128)
            {
              [v41 addObject:v128];
            }
          }

          v125 = [v81 countByEnumeratingWithState:&v277 objects:v349 count:16];
        }

        while (v125);
      }
    }

LABEL_175:
    if (![v166 count] || !objc_msgSend(v41, "count"))
    {
      goto LABEL_215;
    }

    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v166 = v166;
    v164 = [v166 countByEnumeratingWithState:&v273 objects:v348 count:16];
    if (!v164)
    {
LABEL_213:

LABEL_215:
      goto LABEL_216;
    }

    v160 = *v274;
    do
    {
      v129 = 0;
      v174 = v41;
      do
      {
        if (*v274 != v160)
        {
          objc_enumerationMutation(v166);
        }

        v170 = v129;
        v186 = *(*(&v273 + 1) + 8 * v129);
        v269 = 0u;
        v270 = 0u;
        v271 = 0u;
        v272 = 0u;
        v57 = v41;
        v190 = [v57 countByEnumeratingWithState:&v269 objects:v347 count:16];
        if (v190)
        {
          v178 = *v270;
          v182 = v57;
          do
          {
            v130 = 0;
            do
            {
              if (*v270 != v178)
              {
                objc_enumerationMutation(v57);
              }

              v194 = v130;
              v206 = *(*(&v269 + 1) + 8 * v130);
              v265 = 0u;
              v266 = 0u;
              v267 = 0u;
              v268 = 0u;
              v198 = v186;
              v210 = [v198 countByEnumeratingWithState:&v265 objects:v346 count:16];
              if (v210)
              {
                v202 = *v266;
                do
                {
                  v131 = 0;
                  do
                  {
                    if (*v266 != v202)
                    {
                      objc_enumerationMutation(v198);
                    }

                    v214 = v131;
                    v132 = *(*(&v265 + 1) + 8 * v131);
                    v261 = 0u;
                    v262 = 0u;
                    v263 = 0u;
                    v264 = 0u;
                    v218 = v206;
                    v226 = [v218 countByEnumeratingWithState:&v261 objects:v345 count:16];
                    if (v226)
                    {
                      v222 = *v262;
                      do
                      {
                        v133 = 0;
                        do
                        {
                          if (*v262 != v222)
                          {
                            objc_enumerationMutation(v218);
                          }

                          v230 = v133;
                          v134 = *(*(&v261 + 1) + 8 * v133);
                          v257 = 0u;
                          v258 = 0u;
                          v259 = 0u;
                          v260 = 0u;
                          v135 = [v232 interactions];
                          v136 = [v135 countByEnumeratingWithState:&v257 objects:v344 count:16];
                          if (v136)
                          {
                            v137 = v136;
                            v138 = *v258;
                            do
                            {
                              for (jj = 0; jj != v137; ++jj)
                              {
                                if (*v258 != v138)
                                {
                                  objc_enumerationMutation(v135);
                                }

                                v140 = *(*(&v257 + 1) + 8 * jj);
                                v141 = [v232 interactions];
                                v142 = [v141 objectForKeyedSubscript:v140];

                                v143 = [SKGInteractionEdge alloc];
                                v144 = [v232 bundleIdentifier];
                                v145 = [(SKGInteractionEdge *)v143 initWithSourceNode:v132 targetNode:v134 domainIdentifier:v144 relationship:v140 score:v142];

                                [v231 addObject:v145];
                              }

                              v137 = [v135 countByEnumeratingWithState:&v257 objects:v344 count:16];
                            }

                            while (v137);
                          }

                          v133 = v230 + 1;
                        }

                        while (v230 + 1 != v226);
                        v226 = [v218 countByEnumeratingWithState:&v261 objects:v345 count:16];
                      }

                      while (v226);
                    }

                    v131 = v214 + 1;
                  }

                  while (v214 + 1 != v210);
                  v210 = [v198 countByEnumeratingWithState:&v265 objects:v346 count:16];
                }

                while (v210);
              }

              v130 = v194 + 1;
              v57 = v182;
            }

            while (v194 + 1 != v190);
            v190 = [v182 countByEnumeratingWithState:&v269 objects:v347 count:16];
          }

          while (v190);
        }

        v41 = v174;
        v129 = v170 + 1;
      }

      while (v170 + 1 != v164);
      v164 = [v166 countByEnumeratingWithState:&v273 objects:v348 count:16];
    }

    while (v164);
LABEL_212:
    v41 = v57;
    v12 = v232;
    goto LABEL_213;
  }

  v87 = [v12 participants];

  if (v87)
  {
    v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v89 = +[SKGUserNode user];
    v343 = v89;
    v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v343 count:1];
    [v88 addObject:v90];

    v255 = 0u;
    v256 = 0u;
    v253 = 0u;
    v254 = 0u;
    v91 = [v12 participants];
    v92 = [v91 countByEnumeratingWithState:&v253 objects:v342 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v254;
      do
      {
        for (kk = 0; kk != v93; ++kk)
        {
          if (*v254 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v253 + 1) + 8 * kk) reference:v156 domain:v155 nodes:v154 edges:v231 isOwner:0];
          if (v96)
          {
            [v88 addObject:v96];
          }
        }

        v93 = [v91 countByEnumeratingWithState:&v253 objects:v342 count:16];
      }

      while (v93);
    }

    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v169 = v88;
    v163 = [v169 countByEnumeratingWithState:&v249 objects:v341 count:16];
    if (v163)
    {
      v159 = *v250;
      do
      {
        v97 = 0;
        do
        {
          if (*v250 != v159)
          {
            v98 = v97;
            objc_enumerationMutation(v169);
            v97 = v98;
          }

          v177 = v97;
          v99 = *(*(&v249 + 1) + 8 * v97);
          v245 = 0u;
          v246 = 0u;
          v247 = 0u;
          v248 = 0u;
          v41 = v169;
          v100 = [v41 countByEnumeratingWithState:&v245 objects:v340 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = *v246;
            v173 = v41;
            v181 = *v246;
            v185 = v99;
            do
            {
              v103 = 0;
              v189 = v101;
              do
              {
                if (*v246 != v102)
                {
                  objc_enumerationMutation(v41);
                }

                v205 = *(*(&v245 + 1) + 8 * v103);
                if (([v99 isEqualToArray:?] & 1) == 0)
                {
                  v193 = v103;
                  v243 = 0u;
                  v244 = 0u;
                  v241 = 0u;
                  v242 = 0u;
                  v197 = v99;
                  v209 = [v197 countByEnumeratingWithState:&v241 objects:v339 count:16];
                  if (v209)
                  {
                    v201 = *v242;
                    do
                    {
                      v104 = 0;
                      do
                      {
                        if (*v242 != v201)
                        {
                          objc_enumerationMutation(v197);
                        }

                        v213 = v104;
                        v105 = *(*(&v241 + 1) + 8 * v104);
                        v237 = 0u;
                        v238 = 0u;
                        v239 = 0u;
                        v240 = 0u;
                        v217 = v205;
                        v225 = [v217 countByEnumeratingWithState:&v237 objects:v338 count:16];
                        if (v225)
                        {
                          v221 = *v238;
                          do
                          {
                            v106 = 0;
                            do
                            {
                              if (*v238 != v221)
                              {
                                objc_enumerationMutation(v217);
                              }

                              v229 = v106;
                              v107 = *(*(&v237 + 1) + 8 * v106);
                              v233 = 0u;
                              v234 = 0u;
                              v235 = 0u;
                              v236 = 0u;
                              v108 = [v12 interactions];
                              v109 = [v108 countByEnumeratingWithState:&v233 objects:v337 count:16];
                              if (v109)
                              {
                                v110 = v109;
                                v111 = *v234;
                                do
                                {
                                  for (mm = 0; mm != v110; ++mm)
                                  {
                                    if (*v234 != v111)
                                    {
                                      objc_enumerationMutation(v108);
                                    }

                                    v113 = *(*(&v233 + 1) + 8 * mm);
                                    v114 = [v12 interactions];
                                    v115 = [v114 objectForKeyedSubscript:v113];

                                    v116 = [SKGInteractionEdge alloc];
                                    v117 = [v232 bundleIdentifier];
                                    v118 = v116;
                                    v12 = v232;
                                    v119 = [(SKGInteractionEdge *)v118 initWithSourceNode:v105 targetNode:v107 domainIdentifier:v117 relationship:v113 score:v115];

                                    [v231 addObject:v119];
                                  }

                                  v110 = [v108 countByEnumeratingWithState:&v233 objects:v337 count:16];
                                }

                                while (v110);
                              }

                              v106 = v229 + 1;
                            }

                            while (v229 + 1 != v225);
                            v225 = [v217 countByEnumeratingWithState:&v237 objects:v338 count:16];
                          }

                          while (v225);
                        }

                        v104 = v213 + 1;
                      }

                      while (v213 + 1 != v209);
                      v209 = [v197 countByEnumeratingWithState:&v241 objects:v339 count:16];
                    }

                    while (v209);
                  }

                  v41 = v173;
                  v102 = v181;
                  v99 = v185;
                  v101 = v189;
                  v103 = v193;
                }

                ++v103;
              }

              while (v103 != v101);
              v101 = [v41 countByEnumeratingWithState:&v245 objects:v340 count:16];
            }

            while (v101);
          }

          v97 = v177 + 1;
        }

        while (v177 + 1 != v163);
        v163 = [v41 countByEnumeratingWithState:&v249 objects:v341 count:16];
        v166 = v41;
      }

      while (v163);
    }

    else
    {
      v41 = v169;
      v166 = v169;
    }

    goto LABEL_215;
  }

LABEL_216:
  objc_autoreleasePoolPop(context);

  v146 = *MEMORY[0x277D85DE8];
}

- (BOOL)addItem:(id)a3 cancelBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(SpotlightGraph *)self available])
  {
    v31 = 0;
    goto LABEL_13;
  }

  v8 = [v6 referenceIdentifier];
  if (!v8)
  {
LABEL_12:
    v31 = 1;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v6 bundleIdentifier];
  if (!v10)
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v6 personaIdentifier];
  if (!v12)
  {

    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v6 protectionClass];

  if (!v14)
  {
    goto LABEL_12;
  }

  context = objc_autoreleasePoolPush();
  v15 = [v6 referenceIdentifier];
  v16 = [v6 bundleIdentifier];
  v17 = [v6 personaIdentifier];
  v18 = [v6 protectionClass];
  v19 = [(SpotlightGraph *)self referenceIdentifierWithReference:v15 domain:v16 persona:v17 protectionClass:v18];

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = v19;
  v22 = [[SKGReferenceNode alloc] initWithReference:v19];
  [v20 addObject:v22];
  v23 = [SKGPersonaNode alloc];
  v24 = [v6 personaIdentifier];
  v25 = [(SKGPersonaNode *)v23 initWithPersona:v24];

  [v20 addObject:v25];
  v26 = [SKGDomainNode alloc];
  v27 = [v6 bundleIdentifier];
  v28 = [(SKGDomainNode *)v26 initWithDomain:v27];

  [v20 addObject:v28];
  v39 = [SKGDomainEdge edgeFromDomain:v28 toNode:v25];
  [v21 addObject:?];
  v38 = [SKGPersonaEdge edgeFromPersona:v25 toNode:v28];
  [v21 addObject:?];
  v37 = [SKGPersonaEdge edgeFromPersona:v25 toNode:v22];
  [v21 addObject:?];
  v29 = [SKGReferenceEdge edgeFromReference:v22 toNode:v25];
  [v21 addObject:v29];
  v30 = v22;
  [(SpotlightGraph *)self peopleUpdateFromItem:v6 reference:v22 domain:v28 nodes:v20 edges:v21];
  if (v7 && (v7[2](v7, @"addItem") & 1) != 0)
  {
    v31 = 1;
  }

  else
  {
    graph = self->_graph;
    [v20 allObjects];
    v34 = v36 = v20;
    v35 = [v21 allObjects];
    v31 = [(SKGGraph *)graph addNodes:v34 addEdges:v35 cancelBlock:v7];

    v20 = v36;
  }

  objc_autoreleasePoolPop(context);
LABEL_13:

  return v31;
}

- (BOOL)addPerson:(id)a3 cancelBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SpotlightGraph *)self available])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = [v6 person];
    v11 = [(SpotlightGraph *)self primaryNodesForPerson:v10 reference:0 domain:0 nodes:v8 edges:v9 isOwner:0];

    v12 = objc_autoreleasePoolPush();
    graph = self->_graph;
    v14 = [v8 allObjects];
    v15 = [v9 allObjects];
    v16 = [(SKGGraph *)graph addNodes:v14 addEdges:v15 cancelBlock:v7];

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)deleteDomainIdentifier:(id)a3 cancelBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(SpotlightGraph *)self available])
  {
    LOBYTE(v12) = 0;
    goto LABEL_8;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self->_graph;
  v10 = [SKGDomains domainsWithDomain:v6 inGraph:v9];
  v11 = [v10 personas];
  v12 = [(SKGGraph *)v9 removeNodeSet:v11 removeEdgeSet:0 cancelBlock:v7];

  if (v7)
  {
    if ((v7[2](v7, @"deleteDomainIdentifier") & 1) != 0 || !v12)
    {
      goto LABEL_6;
    }
  }

  else if (!v12)
  {
    goto LABEL_6;
  }

  LOBYTE(v12) = [(SKGGraph *)v9 removeNodeSet:v10 removeEdgeSet:0 cancelBlock:v7];
LABEL_6:

  objc_autoreleasePoolPop(v8);
LABEL_8:

  return v12;
}

- (BOOL)deleteDomainIdentifier:(id)a3 personaIdentifier:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(SpotlightGraph *)self available])
  {
    v16 = 0;
    goto LABEL_20;
  }

  context = objc_autoreleasePoolPush();
  v11 = self->_graph;
  v12 = [SKGDomains domainsWithDomain:v8 inGraph:v11];
  v13 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__11;
  v36 = __Block_byref_object_dispose__11;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  do
  {
    if (v13)
    {
      v14 = [(SKGGraph *)v11 removeNodeSet:v13 removeEdgeSet:0 cancelBlock:v10];
      v15 = v33[5];
      v33[5] = 0;

      if (v10)
      {
        v16 = v14;
LABEL_7:
        v17 = v10[2](v10, @"deleteDomainIdentifier");
        *(v29 + 24) = v17 ^ 1;
        if (v17 & 1 | !v16)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

      v16 = 1;
      *(v29 + 24) = 1;
      if (!v14)
      {
        v16 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 1;
      if (v10)
      {
        goto LABEL_7;
      }

      *(v29 + 24) = 1;
    }

LABEL_12:
    v18 = [v12 personas];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__SpotlightGraph_deleteDomainIdentifier_personaIdentifier_cancelBlock___block_invoke;
    v23[3] = &unk_27893DC38;
    v19 = v11;
    v24 = v19;
    v25 = v9;
    v26 = &v32;
    v27 = &v28;
    [v18 enumeratePersonasInGraph:v19 usingBlock:v23];

    if (v10)
    {
      v20 = v10[2](v10, @"deleteDomainIdentifier") ^ 1;
    }

    else
    {
      v20 = 1;
    }

    *(v29 + 24) = v20;

LABEL_16:
    v13 = v33[5];
  }

  while (v13 && (v29[3] & v16 & 1) != 0);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  objc_autoreleasePoolPop(context);
LABEL_20:

  return v16;
}

void __71__SpotlightGraph_deleteDomainIdentifier_personaIdentifier_cancelBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = +[SKGPersonaNode personaWithElementIdentifier:inGraph:](SKGPersonaNode, "personaWithElementIdentifier:inGraph:", [v10 nodeIdentifier], a1[4]);
  v7 = [v6 value];
  if ([v7 isEqualToString:a1[5]])
  {
    v8 = [v10 domains];
    v9 = [v8 count];

    if (v9 == 1)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      *a3 = 1;
    }
  }

  else
  {
  }

  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

- (BOOL)deleteReferences:(id)a3 domainIdentifier:(id)a4 cancelBlock:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v25 = a4;
  v9 = a5;
  if ([(SpotlightGraph *)self available])
  {
    context = objc_autoreleasePoolPush();
    v10 = self->_graph;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = v8;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [(SpotlightGraph *)self referenceIdentifierWithReference:*(*(&v26 + 1) + 8 * i) domain:v25 persona:0 protectionClass:0];
          v16 = [SKGReferences referencesWithReference:v15 inGraph:v10];
          if ([v16 count])
          {
            v17 = [(SKGGraph *)v10 removeNodeSet:v16 removeEdgeSet:0 cancelBlock:v9];
            if (v9)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v17 = 1;
            if (v9)
            {
LABEL_9:
              v18 = v9[2](v9, @"deleteReferences") ^ 1;
              goto LABEL_12;
            }
          }

          v18 = 1;
LABEL_12:
          v19 = v17 & v18;

          if (v19 != 1)
          {
            goto LABEL_16;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    LOBYTE(v17) = 1;
LABEL_16:

    objc_autoreleasePoolPop(context);
    v8 = v23;
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)deleteReferences:(id)a3 personaIdentifier:(id)a4 protectionClass:(id)a5 domainIdentifier:(id)a6 cancelBlock:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v41 = a6;
  v15 = a7;
  if ([(SpotlightGraph *)self available])
  {
    v38 = v14;
    context = objc_autoreleasePoolPush();
    v16 = self->_graph;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v12;
    v17 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v35 = v13;
      v36 = v12;
      v40 = *v43;
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v20 = self;
        v21 = [(SpotlightGraph *)self referenceIdentifierWithReference:*(*(&v42 + 1) + 8 * v19) domain:v41 persona:0 protectionClass:0, v35, v36, context];
        v22 = [SKGReferences referencesWithReference:v21 inGraph:v16];
        v23 = v16;
        v24 = [(SKGGraph *)v16 removeNodeSet:v22 removeEdgeSet:0 cancelBlock:v15];
        v25 = v15 ? v15[2](v15, @"deleteReferences") ^ 1 : 1;

        if ((v24 & v25) != 1)
        {
          break;
        }

        ++v19;
        self = v20;
        v16 = v23;
        if (v18 == v19)
        {
          v18 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v18)
          {
            goto LABEL_4;
          }

          v25 = 1;
          v24 = 1;
          break;
        }
      }

      v13 = v35;
      v12 = v36;
    }

    else
    {
      v23 = v16;
      v25 = 1;
      v24 = 1;
    }

    if (v13 && v25)
    {
      v26 = v23;
      if (v24)
      {
        v27 = [SKGDomains domainsWithDomain:v41 inGraph:v23];
        v28 = [v27 personasWithPersona:v13 inGraph:v26];
        v29 = [v28 references];
        v30 = [v29 count];

        if (v30)
        {
          v24 = 1;
        }

        else
        {
          v24 = [(SKGGraph *)v26 removeNodeSet:v28 removeEdgeSet:0 cancelBlock:v15];
        }

        v31 = [v27 personas];
        v32 = [v31 count];

        if (!v32 && v24)
        {
          LOBYTE(v24) = [(SKGGraph *)v26 removeNodeSet:v27 removeEdgeSet:0 cancelBlock:v15];
        }
      }
    }

    else
    {
      v26 = v23;
    }

    objc_autoreleasePoolPop(context);
    v14 = v38;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)containsReference:(id)a3 personaIdentifier:(id)a4 protectionClass:(id)a5 domainIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(SpotlightGraph *)self available])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self->_graph;
    v16 = [(SpotlightGraph *)self referenceIdentifierWithReference:v10 domain:v13 persona:0 protectionClass:0];
    v17 = [SKGReferences referencesWithReference:v16 inGraph:v15];

    v18 = [v17 count] != 0;
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)hasPeople
{
  if (![(SpotlightGraph *)self available])
  {
    return 0;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGPersons nodesInGraph:self->_graph];
  v5 = [v4 count];

  if (v5)
  {
    v6 = self->_peopleScores != 0;
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (int64_t)personCount
{
  if (![(SpotlightGraph *)self available])
  {
    return -1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGPersons nodesInGraph:self->_graph];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (int64_t)nameCount
{
  if (![(SpotlightGraph *)self available])
  {
    return -1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGNames nodesInGraph:self->_graph];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (int64_t)emailCount
{
  if (![(SpotlightGraph *)self available])
  {
    return -1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGEmails nodesInGraph:self->_graph];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (int64_t)phoneCount
{
  if (![(SpotlightGraph *)self available])
  {
    return -1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGPhones nodesInGraph:self->_graph];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)cachedPeopleScoresPath
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SKGConfig *)self->_config resourcePath];
  v5 = [v3 stringWithFormat:@"%@/%@", v4, @"cachedPeopleScores"];
  v6 = [v2 URLWithString:v5];

  return v6;
}

- (BOOL)peopleUpdateNetwork:(void *)a3 sourceNodeId:(unsigned int)a4 nodes:(id)a5
{
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = self->_graph;
  v11 = [(SKGGraph *)v10 available];
  if (v11)
  {
    v12 = +[SKGInteractionEdge filter];
    v13 = [(MAEdgeCollection *)SKGInteractionEdges edgesFromNodes:v8 matchingFilter:v12];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__SpotlightGraph_peopleUpdateNetwork_sourceNodeId_nodes___block_invoke;
    v16[3] = &unk_27893DC88;
    v19 = a4;
    v17 = v10;
    v18 = a3;
    v14 = v10;
    [v13 enumerateEdgesUsingBlock:v16];
  }

  else
  {
  }

  objc_autoreleasePoolPop(v9);

  return v11;
}

void __57__SpotlightGraph_peopleUpdateNetwork_sourceNodeId_nodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 targetNode];
  v6 = [SKGNodes nodesWithNode:v5 inGraph:*(a1 + 32)];

  v7 = v3;
  v8 = [v6 persons];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__SpotlightGraph_peopleUpdateNetwork_sourceNodeId_nodes___block_invoke_2;
  v12[3] = &unk_27893DC60;
  v15 = *(a1 + 48);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v7;
  v14 = v9;
  v11 = v7;
  [v8 enumeratePersonsInGraph:v10 usingBlock:v12];

  objc_autoreleasePoolPop(v4);
}

void __57__SpotlightGraph_peopleUpdateNetwork_sourceNodeId_nodes___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 48);
  if ([v13 nodeIdentifier] != v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v13, "nodeIdentifier")];
    v6 = SINetworkAddVertexWithIdentifier(*(a1 + 40), [v5 UTF8String]);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(*(a1 + 32), "identifier")];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [v7 UTF8String];
    v11 = [*(a1 + 32) score];
    [v11 doubleValue];
    SINetworkSetEdgeBetweenIdentifiers(v8, v9, v6, v10, v12);
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)peopleScoreWithCancelBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v5 = objc_autoreleasePoolPush();
  v6 = self->_graph;
  if ([(SKGGraph *)v6 available])
  {
    v7 = [(SKGNodes *)SKGPersons nodesInGraph:v6];
    if ([v7 count])
    {
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x2020000000;
      SINetworkCreateMutable();
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
    LOBYTE(self) = 0;
  }

  objc_autoreleasePoolPop(v5);
  if (v8)
  {
    LOBYTE(self) = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);

  return self & 1;
}

void __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v5, "nodeIdentifier")];
  v7 = SINetworkAddVertexWithIdentifier(*(*(a1[7] + 8) + 24), [v6 UTF8String]);
  v8 = a1[6];
  if (v8)
  {
    v9 = (*(v8 + 16))(v8, @"scoreWithCancelBlock") ^ 1;
  }

  else
  {
    v9 = 1;
  }

  *(*(a1[8] + 8) + 24) = v9;
  if (*(*(a1[8] + 8) + 24) == 1)
  {
    v10 = [v5 contacts];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_2;
    v43[3] = &unk_27893DCB0;
    v12 = a1[4];
    v11 = a1[5];
    v13 = a1[6];
    v45 = a1[9];
    v43[4] = v11;
    v47 = v7;
    v46 = *(a1 + 7);
    v44 = v13;
    [v10 enumerateContactsInGraph:v12 usingBlock:v43];

    if (*(*(a1[8] + 8) + 24))
    {
      if (*(*(a1[9] + 8) + 24) != 1)
      {
        goto LABEL_8;
      }

      v14 = [v5 emails];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_3;
      v38[3] = &unk_27893DCD8;
      v16 = a1[4];
      v15 = a1[5];
      v17 = a1[6];
      v40 = a1[9];
      v38[4] = v15;
      v42 = v7;
      v41 = *(a1 + 7);
      v39 = v17;
      [v14 enumerateEmailsInGraph:v16 usingBlock:v38];

      if (*(*(a1[8] + 8) + 24))
      {
LABEL_8:
        if (*(*(a1[9] + 8) + 24) != 1)
        {
          goto LABEL_10;
        }

        v18 = [v5 phones];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_4;
        v33[3] = &unk_27893DD00;
        v20 = a1[4];
        v19 = a1[5];
        v21 = a1[6];
        v35 = a1[9];
        v33[4] = v19;
        v37 = v7;
        v36 = *(a1 + 7);
        v34 = v21;
        [v18 enumeratePhonesInGraph:v20 usingBlock:v33];

        if (*(*(a1[8] + 8) + 24))
        {
LABEL_10:
          v22 = [v5 names];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_5;
          v28[3] = &unk_27893DD28;
          v24 = a1[4];
          v23 = a1[5];
          v25 = a1[6];
          v30 = a1[9];
          v28[4] = v23;
          v32 = v7;
          v31 = *(a1 + 7);
          v29 = v25;
          [v22 enumerateNamesInGraph:v24 usingBlock:v28];
        }
      }
    }
  }

  v26 = a1[6];
  if (v26)
  {
    v27 = (*(v26 + 16))(v26, @"scoreWithCancelBlock") ^ 1;
  }

  else
  {
    v27 = 1;
  }

  *(*(a1[8] + 8) + 24) = v27;
  if (*(*(a1[8] + 8) + 24) != 1 || (*(*(a1[9] + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) peopleUpdateNetwork:*(*(*(a1 + 56) + 8) + 24) sourceNodeId:*(a1 + 72) nodes:a2];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v6;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) peopleUpdateNetwork:*(*(*(a1 + 56) + 8) + 24) sourceNodeId:*(a1 + 72) nodes:a2];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v6;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) peopleUpdateNetwork:*(*(*(a1 + 56) + 8) + 24) sourceNodeId:*(a1 + 72) nodes:a2];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v6;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_5(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) peopleUpdateNetwork:*(*(*(a1 + 56) + 8) + 24) sourceNodeId:*(a1 + 72) nodes:a2];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v6;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_128(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v5 = result ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a2 = 1;
  }

  return result;
}

void __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_130(void *a1, void *a2, _BYTE *a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(a2, "nodeIdentifier")];
  v9 = -1;
  SINetworkGetScoreForIdentifier(*(*(a1[5] + 8) + 24), [v5 UTF8String], &v9);
  v6 = *(*(a1[6] + 8) + 24);
  SIGeneralTrieAddStringKeyWithScore();
  v7 = a1[4];
  if (v7)
  {
    v8 = (*(v7 + 16))(v7, @"scoreWithCancelBlock") ^ 1;
  }

  else
  {
    v8 = 1;
  }

  *(*(a1[7] + 8) + 24) = v8;
  *a3 = *(*(a1[7] + 8) + 24) ^ 1;
}

- (BOOL)findAllContactInfoForNode:(id)a3 info:(id)a4 reference:(id)a5 foundUser:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = self->_graph;
  v15 = [(SKGGraph *)v14 available];
  if (v15)
  {
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    v16 = [v10 users];
    v17 = [v16 count];

    if (v17)
    {
      *(v71 + 24) = 1;
    }

    v18 = [v10 names];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke;
    v65[3] = &unk_27893DDF0;
    v19 = v12;
    v66 = v19;
    v20 = v11;
    v67 = v20;
    v69 = &v70;
    v21 = v14;
    v68 = v21;
    [v18 enumerateNamesInGraph:v21 usingBlock:v65];

    v22 = [v10 displayNames];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_3;
    v60[3] = &unk_27893DE18;
    v23 = v19;
    v61 = v23;
    v24 = v20;
    v62 = v24;
    v25 = v21;
    v63 = v25;
    v64 = &v70;
    [v22 enumerateDisplayNamesInGraph:v25 usingBlock:v60];

    v26 = [v10 contacts];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_5;
    v55[3] = &unk_27893DE40;
    v27 = v23;
    v56 = v27;
    v28 = v24;
    v57 = v28;
    v59 = &v70;
    v29 = v25;
    v58 = v29;
    [v26 enumerateContactsInGraph:v29 usingBlock:v55];

    v30 = [v10 photos];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_7;
    v50[3] = &unk_27893DE68;
    v31 = v27;
    v51 = v31;
    v32 = v28;
    v52 = v32;
    v54 = &v70;
    v33 = v29;
    v53 = v33;
    [v30 enumeratePhotosInGraph:v33 usingBlock:v50];

    v34 = [v10 emails];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_9;
    v45[3] = &unk_27893DE90;
    v35 = v31;
    v46 = v35;
    v36 = v32;
    v47 = v36;
    v49 = &v70;
    v37 = v33;
    v48 = v37;
    [v34 enumerateEmailsInGraph:v37 usingBlock:v45];

    v38 = [v10 phones];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_11;
    v40[3] = &unk_27893DEB8;
    v41 = v35;
    v42 = v36;
    v44 = &v70;
    v14 = v37;
    v43 = v14;
    [v38 enumeratePhonesInGraph:v14 usingBlock:v40];

    if (a6)
    {
      *a6 = *(v71 + 24);
    }

    _Block_object_dispose(&v70, 8);
  }

  objc_autoreleasePoolPop(v13);
  return v15;
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"names"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"names"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"names"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"names"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_2;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"displayNames"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"displayNames"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"displayNames"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"displayNames"];
    [v9 addObject:v3];
  }

  v10 = [v3 entities];
  v11 = *(a1 + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_4;
  v14[3] = &unk_27893DDC8;
  v15 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v16 = v12;
  v17 = v13;
  [v10 enumerateEntitiesInGraph:v11 usingBlock:v14];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"contacts"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"contacts"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"contacts"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"contacts"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_6;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_6(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"photos"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"photos"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"photos"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"photos"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_8;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_8(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"emails"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"emails"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"emails"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"emails"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_10;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_10(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"phones"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"phones"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"phones"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"phones"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_12;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_12(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (BOOL)peopleAnalyzeWithCancelBlock:(id)a3
{
  v5 = a3;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 1;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 1;
  v6 = objc_autoreleasePoolPush();
  v7 = self->_graph;
  if (![(SKGGraph *)v7 available])
  {
    v12 = 0;
    LOBYTE(v3) = 0;
    goto LABEL_30;
  }

  if (![(SKGGraph *)v7 nodeCount])
  {
    v12 = 1;
    goto LABEL_30;
  }

  v8 = [(SKGNodes *)SKGPersons nodesInGraph:v7];
  v9 = [(SKGGraph *)v7 removeNodeSet:v8 removeEdgeSet:0 cancelBlock:v5];
  v10 = v61;
  *(v61 + 24) = v9;
  if (v5)
  {
    v11 = (*(v5 + 2))(v5, @"analyzePeopleWithCancelBlock");
    *(v57 + 24) = v11 ^ 1;
    LOBYTE(v3) = *(v61 + 24);
    if (v11 & 1 | ((v3 & 1) == 0))
    {
      v12 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    *(v57 + 24) = 1;
    if ((v10[3] & 1) == 0)
    {
      v12 = 0;
      LOBYTE(v3) = 0;
      goto LABEL_29;
    }
  }

  Mutable = SIGeneralTrieCreateMutable();
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__11;
  v54 = __Block_byref_object_dispose__11;
  v26 = v8;
  v27 = v6;
  v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__11;
  v48 = __Block_byref_object_dispose__11;
  v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v3 = v30;
  v13 = (v5 + 16);
  v43 = 0;
  v14 = &v40;
  while (1)
  {
    *(v14 + 24) = 0;
    v15 = [(SKGNodes *)SKGNames nodesInGraph:v7];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v30[0] = __47__SpotlightGraph_peopleAnalyzeWithCancelBlock___block_invoke;
    v30[1] = &unk_27893DEE0;
    v16 = v7;
    v39 = Mutable;
    v31 = v16;
    v32 = self;
    v34 = &v60;
    v35 = &v56;
    v17 = v5;
    v33 = v17;
    v36 = &v50;
    v37 = &v44;
    v38 = &v40;
    [v15 enumerateNamesInGraph:v16 usingBlock:v29];
    if (*(v57 + 24) != 1 || (v61[3] & 1) == 0)
    {
      break;
    }

    if (![v45[5] count] && !objc_msgSend(v51[5], "count"))
    {
      goto LABEL_24;
    }

    v18 = [v51[5] allObjects];
    v19 = [v45[5] allObjects];
    v20 = [(SKGGraph *)v16 addNodes:v18 addEdges:v19 cancelBlock:v17];
    *(v61 + 24) = v20;

    if (v5)
    {
      v21 = (*v13)(v17, @"analyzePeopleWithCancelBlock");
      *(v57 + 24) = v21 ^ 1;
      if (v21 & 1 | ((v61[3] & 1) == 0))
      {
        goto LABEL_22;
      }
    }

    else
    {
      *(v57 + 24) = 1;
      if (*(v61 + 24) != 1)
      {
        goto LABEL_22;
      }
    }

    v22 = [(SKGGraph *)v16 flushWithCancelBlock:v17];
    *(v61 + 24) = v22;
    if (v5)
    {
      v23 = (*v13)(v17, @"analyzePeopleWithCancelBlock") ^ 1;
    }

    else
    {
      v23 = 1;
    }

    *(v57 + 24) = v23;
LABEL_22:
    [v45[5] removeAllObjects];
    [v51[5] removeAllObjects];
    if (*(v57 + 24) != 1 || *(v61 + 24) != 1)
    {
      break;
    }

LABEL_24:

    v14 = v41;
    if ((v41[3] & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_27:
  SIGeneralTrieRelease();
  v24 = [(SKGGraph *)v16 commitWithCancelBlock:0];
  *(v61 + 24) = v24;
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  v12 = 1;
  v8 = v26;
  v6 = v27;
LABEL_29:

LABEL_30:
  objc_autoreleasePoolPop(v6);
  if (v12)
  {
    if (*(v61 + 24) == 1)
    {
      LOBYTE(v3) = *(v57 + 24);
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  return v3 & 1;
}

void __47__SpotlightGraph_peopleAnalyzeWithCancelBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v101 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = +[SKGNameNode nameWithElementIdentifier:inGraph:](SKGNameNode, "nameWithElementIdentifier:inGraph:", [v5 nodeIdentifier], *(a1 + 32));
  v8 = *(a1 + 96);
  v9 = [v7 value];
  LODWORD(v8) = SIGeneralTrieContainsStringKey();

  if (!v8)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v92 = 0;
    v12 = [MEMORY[0x277CBEB58] setWithObject:v5];
    [v10 setObject:v12 forKey:@"names"];

    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) findAllContactInfoForNode:v5 info:v10 reference:v10 foundUser:&v92];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v61 = v7;
      v63 = v6;
      v65 = a3;
      v67 = v5;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v59 = v10;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v88 objects:v100 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v89;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v89 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v88 + 1) + 8 * i);
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            v19 = [v13 objectForKeyedSubscript:v18];
            v20 = [v19 countByEnumeratingWithState:&v84 objects:v99 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v85;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v85 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) findAllContactInfoForNode:*(*(&v84 + 1) + 8 * j) info:v11 reference:v13 foundUser:0];
                }

                v21 = [v19 countByEnumeratingWithState:&v84 objects:v99 count:16];
              }

              while (v21);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v88 objects:v100 count:16];
        }

        while (v15);
      }

      a3 = v65;
      v5 = v67;
      v7 = v61;
      v6 = v63;
      v10 = v59;
    }

    v24 = *(a1 + 48);
    if (v24)
    {
      v25 = (*(v24 + 16))(v24, @"analyzePeopleWithCancelBlock") ^ 1;
    }

    else
    {
      v25 = 1;
    }

    *(*(*(a1 + 64) + 8) + 24) = v25;
    if (*(*(*(a1 + 64) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v26 = objc_autoreleasePoolPush();
      if ([v10 count])
      {
        v58 = v26;
        v62 = v7;
        v64 = v6;
        v66 = a3;
        v68 = v5;
        v27 = [SKGPersonNode alloc];
        v28 = [MEMORY[0x277CCAD78] UUID];
        v29 = [v28 description];
        v30 = [(SKGPersonNode *)v27 initWithIdentifier:v29];

        [*(*(*(a1 + 72) + 8) + 40) addObject:v30];
        v31 = 0x27893B000uLL;
        if (v92 == 1)
        {
          v32 = +[SKGUserNode user];
          v33 = [SKGEdge edgeFromNode:v30 toNode:v32];

          [*(*(*(a1 + 80) + 8) + 40) addObject:v33];
          v34 = +[SKGUserNode user];
          v35 = [SKGEdge edgeFromNode:v34 toNode:v30];

          [*(*(*(a1 + 80) + 8) + 40) addObject:v35];
        }

        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v60 = v10;
        obj = v10;
        v36 = 0x27893B000uLL;
        v70 = [obj countByEnumeratingWithState:&v80 objects:v98 count:16];
        if (v70)
        {
          v69 = *v81;
          do
          {
            v37 = 0;
            do
            {
              if (*v81 != v69)
              {
                objc_enumerationMutation(obj);
              }

              v72 = v37;
              v38 = *(*(&v80 + 1) + 8 * v37);
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v74 = [obj objectForKeyedSubscript:v38];
              v39 = [v74 countByEnumeratingWithState:&v76 objects:v97 count:16];
              if (v39)
              {
                v40 = v39;
                v75 = *v77;
                do
                {
                  v41 = 0;
                  do
                  {
                    if (*v77 != v75)
                    {
                      objc_enumerationMutation(v74);
                    }

                    v42 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [*(*(&v76 + 1) + 8 * v41) nodeIdentifier], *(a1 + 32));
                    v43 = [*(v31 + 3016) edgeFromNode:v30 toNode:v42];
                    if (v43)
                    {
                      [*(*(*(a1 + 80) + 8) + 40) addObject:v43];
                    }

                    else if (SKGLogGetCurrentLoggingLevel() >= 2)
                    {
                      v44 = SKGLogGraphInit();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        v50 = [(SKGNode *)v30 label];
                        v51 = [v42 label];
                        *buf = 138412546;
                        v94 = v50;
                        v95 = 2112;
                        v96 = v51;
                        _os_log_error_impl(&dword_231B25000, v44, OS_LOG_TYPE_ERROR, "not adding edge from node <%@> to node <%@>", buf, 0x16u);

                        v36 = 0x27893B000;
                        v31 = 0x27893B000;
                      }
                    }

                    v45 = [*(v31 + 3016) edgeFromNode:v42 toNode:v30];
                    if (v45)
                    {
                      [*(*(*(a1 + 80) + 8) + 40) addObject:v45];
                    }

                    else if (SKGLogGetCurrentLoggingLevel() >= 2)
                    {
                      v46 = SKGLogGraphInit();
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                      {
                        v73 = [v42 label];
                        v52 = [(SKGNode *)v30 label];
                        *buf = 138412546;
                        v94 = v73;
                        v95 = 2112;
                        v96 = v52;
                        v53 = v52;
                        _os_log_error_impl(&dword_231B25000, v46, OS_LOG_TYPE_ERROR, "not adding edge from node <%@> to node <%@>", buf, 0x16u);

                        v36 = 0x27893B000;
                      }

                      v31 = 0x27893B000;
                    }

                    v47 = *(v36 + 3280);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v48 = *(a1 + 96);
                      v49 = [v42 value];
                      v36 = 0x27893B000;
                      SIGeneralTrieAddStringKey();

                      v31 = 0x27893B000;
                    }

                    ++v41;
                  }

                  while (v40 != v41);
                  v40 = [v74 countByEnumeratingWithState:&v76 objects:v97 count:16];
                }

                while (v40);
              }

              v37 = v72 + 1;
            }

            while (v72 + 1 != v70);
            v70 = [obj countByEnumeratingWithState:&v80 objects:v98 count:16];
          }

          while (v70);
        }

        a3 = v66;
        v5 = v68;
        v7 = v62;
        v6 = v64;
        v26 = v58;
        v10 = v60;
      }

      objc_autoreleasePoolPop(v26);
    }

    v54 = ([*(*(*(a1 + 72) + 8) + 40) count] > 1 || objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "count") >= 2) && objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "count") >> 3 <= 0x270 && objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "count") >> 3 < 0x271;
    *(*(*(a1 + 88) + 8) + 24) = v54;
  }

  v55 = *(a1 + 48);
  if (v55)
  {
    v56 = (*(v55 + 16))(v55, @"analyzePeopleWithCancelBlock") ^ 1;
  }

  else
  {
    v56 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v56;
  if (*(*(*(a1 + 64) + 8) + 24) != 1 || *(*(*(a1 + 88) + 8) + 24) != 1 || (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  objc_autoreleasePoolPop(v6);
  v57 = *MEMORY[0x277D85DE8];
}

- (BOOL)peopleUpdateInfo:(id)a3 attributeKey:(id)a4 attribute:(id)a5 forNode:(id)a6 person:(id)a7 score:(id)a8 rank:(id)a9 bestCount:(unint64_t *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = objc_autoreleasePoolPush();
  v24 = self->_graph;
  v25 = [(SKGGraph *)v24 available];
  v26 = v25;
  if (v25)
  {
    context = v23;
    v70 = v25;
    v72 = v20;
    v27 = [v16 objectForKeyedSubscript:@"com.apple.spotlight"];

    if (!v27)
    {
      v28 = [MEMORY[0x277CBEB38] dictionary];
      [v16 setObject:v28 forKey:@"com.apple.spotlight"];
    }

    v29 = [v16 objectForKeyedSubscript:@"com.apple.spotlight"];
    v30 = [v29 objectForKeyedSubscript:@"score"];

    v31 = v17;
    if (!v30)
    {
      v32 = [v16 objectForKeyedSubscript:@"com.apple.spotlight"];
      [v32 setObject:v21 forKey:@"score"];
    }

    v33 = [v16 objectForKeyedSubscript:@"com.apple.spotlight"];
    v34 = [v33 objectForKeyedSubscript:@"rank"];

    if (!v34)
    {
      v35 = [v16 objectForKeyedSubscript:@"com.apple.spotlight"];
      [v35 setObject:v22 forKey:@"rank"];
    }

    v69 = v22;
    v71 = v21;
    v73 = v18;
    v36 = [v16 objectForKeyedSubscript:@"com.apple.spotlight"];
    v37 = [v36 objectForKeyedSubscript:v17];

    if (!v37)
    {
      v38 = [v16 objectForKeyedSubscript:@"com.apple.spotlight"];
      v39 = [MEMORY[0x277CBEB18] array];
      [v38 setObject:v39 forKey:v17];
    }

    v40 = +[SKGInteractionEdge filter];
    v41 = [(MAEdgeCollection *)SKGInteractionEdges edgesFromNodes:v19 matchingFilter:v40];
    v66 = [v41 count];

    v42 = +[SKGInteractionEdge filter];
    v43 = [(MAEdgeCollection *)SKGInteractionEdges edgesToNodes:v19 matchingFilter:v42];
    v64 = [v43 count];

    v44 = [v19 references];
    v45 = [v44 count];

    v46 = [v19 persons];
    v47 = [v46 count];
    v67 = v47 != 1;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = a10 ? *a10 : 0;
      if (v45 > v48)
      {
        v49 = [v19 displayNames];
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __94__SpotlightGraph_peopleUpdateInfo_attributeKey_attribute_forNode_person_score_rank_bestCount___block_invoke;
        v81[3] = &unk_27893DF08;
        v82 = v24;
        v83 = v16;
        v84 = a10;
        v85 = v45;
        [v49 enumerateDisplayNamesInGraph:v82 usingBlock:v81];
      }
    }

    v50 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [v19 nodeIdentifier], v24);
    v51 = [v50 value];

    v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v53 = v52;
    if (v51)
    {
      [v52 setObject:v51 forKey:@"value"];
    }

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v66];
    [v53 setObject:v54 forKey:@"in"];

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
    [v53 setObject:v55 forKey:@"out"];

    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
    [v53 setObject:v56 forKey:@"count"];

    v57 = [MEMORY[0x277CCABB0] numberWithBool:v47 != 1];
    [v53 setObject:v57 forKey:@"ambiguous"];

    v58 = [v16 objectForKeyedSubscript:@"com.apple.spotlight"];
    v59 = [v58 objectForKeyedSubscript:v17];
    [v59 addObject:v53];

    v60 = [v19 domains];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __94__SpotlightGraph_peopleUpdateInfo_attributeKey_attribute_forNode_person_score_rank_bestCount___block_invoke_2;
    v74[3] = &unk_27893DF30;
    v75 = v24;
    v76 = v16;
    v77 = v17;
    v78 = v19;
    v79 = v51;
    v80 = v67;
    v61 = v51;
    v62 = v24;
    [v60 enumerateDomainsInGraph:v62 usingBlock:v74];

    objc_autoreleasePoolPop(context);
    v20 = v72;
    v18 = v73;
    v21 = v71;
    v26 = v70;
    v22 = v69;
  }

  else
  {

    objc_autoreleasePoolPop(v23);
    v31 = v17;
  }

  return v26;
}

void __94__SpotlightGraph_peopleUpdateInfo_attributeKey_attribute_forNode_person_score_rank_bestCount___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [a2 nodeIdentifier], *(a1 + 32));
  v7 = [v5 value];

  v6 = [*(a1 + 40) objectForKeyedSubscript:@"com.apple.spotlight"];
  [v6 setObject:v7 forKey:SKGKnowledgePersonDisplayName];

  **(a1 + 48) = *(a1 + 56);
  *a3 = 1;
}

void __94__SpotlightGraph_peopleUpdateInfo_attributeKey_attribute_forNode_person_score_rank_bestCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [v3 nodeIdentifier], *(a1 + 32));
  v26 = [v4 value];

  v5 = [*(a1 + 40) objectForKeyedSubscript:v26];

  if (!v5)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:v7 forKey:v26];
  }

  v8 = [*(a1 + 40) objectForKeyedSubscript:v26];
  v9 = [v8 objectForKeyedSubscript:*(a1 + 48)];

  if (!v9)
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:v26];
    v11 = [MEMORY[0x277CBEB18] array];
    [v10 setObject:v11 forKey:*(a1 + 48)];
  }

  v12 = [SKGInteractionEdge filterWithDomainIdentifier:v26];
  v13 = [(MAEdgeCollection *)SKGInteractionEdges edgesOfType:1 onNodes:*(a1 + 56) matchingFilter:v12];
  v14 = [(MAEdgeCollection *)SKGInteractionEdges edgesOfType:2 onNodes:*(a1 + 56) matchingFilter:v12];
  v15 = [v13 count];
  v16 = [v14 count];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v17 setObject:*(a1 + 64) forKey:@"value"];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  [v17 setObject:v18 forKey:@"in"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  [v17 setObject:v19 forKey:@"out"];

  v20 = MEMORY[0x277CCABB0];
  v21 = [v3 count];

  v22 = [v20 numberWithUnsignedInteger:v21];
  [v17 setObject:v22 forKey:@"count"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 72)];
  [v17 setObject:v23 forKey:@"ambiguous"];

  v24 = [*(a1 + 40) objectForKeyedSubscript:v26];
  v25 = [v24 objectForKeyedSubscript:*(a1 + 48)];
  [v25 addObject:v17];
}

- (BOOL)generatePeopleUsingBlock:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v5 = objc_autoreleasePoolPush();
  v6 = self->_graph;
  v7 = [(SKGGraph *)v6 available];
  if (v7)
  {
    peopleScores = self->_peopleScores;
    v9 = [(SKGNodes *)SKGPersons nodesInGraph:v6];
    if ([v9 count])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke;
      v12[3] = &unk_27893E048;
      v17 = peopleScores;
      v16 = &v18;
      v13 = v6;
      v14 = self;
      v15 = v4;
      [v9 enumeratePersonsInGraph:v13 usingBlock:v12];
    }
  }

  objc_autoreleasePoolPop(v5);
  if (v7)
  {
    v10 = *(v19 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v10 & 1;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 contacts];
  v8 = [v7 count];

  v9 = [v5 entities];
  v10 = [v9 count];

  v11 = [v5 photos];
  v12 = [v11 count];

  if (v12 <= 1 && v10 <= 1 && v8 <= 1)
  {
    v40 = a3;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v5, "nodeIdentifier")];
    v82 = 0x7FFFFFFF;
    v81 = 0;
    v15 = a1[8];
    v42 = v14;
    SIGeneralTrieContainsStringKey();
    v41 = +[SKGPersonNode personWithElementIdentifier:inGraph:](SKGPersonNode, "personWithElementIdentifier:inGraph:", [v5 nodeIdentifier], a1[4]);
    v16 = [v41 value];
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v80[3] = 0;
    v17 = [v5 names];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_2;
    v73[3] = &unk_27893DF58;
    v76 = a1[7];
    v18 = a1[4];
    v73[4] = a1[5];
    v19 = v13;
    v74 = v19;
    v20 = v5;
    v75 = v20;
    v78 = v81;
    v79 = v82;
    v77 = v80;
    [v17 enumerateNamesInGraph:v18 usingBlock:v73];

    if (*(*(a1[7] + 8) + 24) == 1)
    {
      v21 = [v20 entities];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_3;
      v67[3] = &unk_27893DF80;
      v70 = a1[7];
      v22 = a1[4];
      v67[4] = a1[5];
      v23 = v19;
      v68 = v23;
      v24 = v20;
      v69 = v24;
      v71 = v81;
      v72 = v82;
      [v21 enumerateEntitiesInGraph:v22 usingBlock:v67];

      if (*(*(a1[7] + 8) + 24))
      {
        v25 = [v24 contacts];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_4;
        v61[3] = &unk_27893DFA8;
        v64 = a1[7];
        v26 = a1[4];
        v61[4] = a1[5];
        v27 = v23;
        v62 = v27;
        v28 = v24;
        v63 = v28;
        v65 = v81;
        v66 = v82;
        [v25 enumerateContactsInGraph:v26 usingBlock:v61];

        if (*(*(a1[7] + 8) + 24))
        {
          v29 = [v28 photos];
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_5;
          v55[3] = &unk_27893DFD0;
          v58 = a1[7];
          v30 = a1[4];
          v55[4] = a1[5];
          v31 = v27;
          v56 = v31;
          v32 = v28;
          v57 = v32;
          v59 = v81;
          v60 = v82;
          [v29 enumeratePhotosInGraph:v30 usingBlock:v55];

          if (*(*(a1[7] + 8) + 24))
          {
            v33 = [v32 emails];
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_6;
            v49[3] = &unk_27893DFF8;
            v52 = a1[7];
            v34 = a1[4];
            v49[4] = a1[5];
            v35 = v31;
            v50 = v35;
            v36 = v32;
            v51 = v36;
            v53 = v81;
            v54 = v82;
            [v33 enumerateEmailsInGraph:v34 usingBlock:v49];

            if (*(*(a1[7] + 8) + 24))
            {
              v37 = [v36 phones];
              v39 = a1[4];
              v38 = a1[5];
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v43[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_7;
              v43[3] = &unk_27893E020;
              v46 = a1[7];
              v43[4] = v38;
              v44 = v35;
              v45 = v36;
              v47 = v81;
              v48 = v82;
              [v37 enumeratePhonesInGraph:v39 usingBlock:v43];
            }
          }
        }
      }
    }

    (*(a1[6] + 16))();
    if ((*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      *v40 = 1;
    }

    _Block_object_dispose(v80, 8);
  }

  objc_autoreleasePoolPop(v6);
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonNames;
  v6 = SKGKnowledgePersonName;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 72);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 80)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:*(*(a1 + 64) + 8) + 24];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonEntityIdentifiers;
  v6 = SKGKnowledgePersonEntityIdentifier;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonContactIdentifiers;
  v6 = SKGKnowledgePersonContactIdentifier;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonPhotosIdentifiers;
  v6 = SKGKnowledgePersonPhotosIdentifier;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonEmailAddresses;
  v6 = SKGKnowledgePersonEmailAddress;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonPhoneNumbers;
  v6 = SKGKnowledgePersonPhoneNumber;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

- (BOOL)analyzePeopleWithCancelBlock:(id)a3
{
  v4 = a3;
  if ([(SpotlightGraph *)self available])
  {
    v5 = [(SpotlightGraph *)self peopleAnalyzeWithCancelBlock:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)scorePeopleWithCancelBlock:(id)a3
{
  v4 = a3;
  if ([(SpotlightGraph *)self available])
  {
    v5 = [(SpotlightGraph *)self peopleScoreWithCancelBlock:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)enumeratePeopleUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SpotlightGraph *)self available]&& [(SpotlightGraph *)self commitWithCancelBlock:0]&& [(SpotlightGraph *)self generatePeopleUsingBlock:v4];

  return v5;
}

- (BOOL)deletePeopleWithCancelBlock:(id)a3
{
  v4 = a3;
  if ([(SpotlightGraph *)self available])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self->_graph;
    v7 = [(SKGNodes *)SKGPersons nodesInGraph:v6];
    v8 = [(SKGGraph *)v6 removeNodeSet:v7 removeEdgeSet:0 cancelBlock:v4];
    if (self->_peopleScores)
    {
      SIGeneralTrieRelease();
      self->_peopleScores = 0;
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [(SpotlightGraph *)self cachedPeopleScoresPath];
      v12 = 0;
      [v9 removeItemAtURL:v10 error:&v12];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)deleteEntitiesWithCancelBlock:(id)a3
{
  v4 = a3;
  if ([(SpotlightGraph *)self available])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self->_graph;
    v7 = [(SKGNodes *)SKGEntities nodesInGraph:v6];
    v8 = [(SKGGraph *)v6 removeNodeSet:v7 removeEdgeSet:0 cancelBlock:v4];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)primaryNodesForPerson:(os_log_t)log reference:domain:nodes:edges:isOwner:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "SKGGraph: error building nodes and edges <%@>", buf, 0xCu);
}

@end