@interface PGPeopleInferencesConveniences
+ (BOOL)anyPersonNodes:(id)nodes belongToBestSocialGroupsInGraph:(id)graph;
+ (BOOL)isValidContact:(id)contact;
+ (BOOL)socialGroupNodes:(id)nodes intersectWithBestSocialGroupsInGraph:(id)graph;
+ (id)countedPersonNodesFromMomentNodes:(id)nodes amongPersonNodes:(id)personNodes;
+ (id)momentNodesAtHomeInMomentNodes:(id)nodes;
+ (id)momentNodesAtWorkInMomentNodes:(id)nodes;
+ (id)momentNodesByAddressNodeFromMomentNodes:(id)nodes;
+ (id)personLocalIdentifierByContactIdentifierFromPersonNodes:(id)nodes;
+ (id)topPersonNodeIdentifierForTwoPersonSocialGroupsFromPersonNodes:(id)nodes personNodes:(id)personNodes;
@end

@implementation PGPeopleInferencesConveniences

+ (BOOL)socialGroupNodes:(id)nodes intersectWithBestSocialGroupsInGraph:(id)graph
{
  graphCopy = graph;
  nodesCopy = nodes;
  v7 = [PGGraphSocialGroupNodeCollection alloc];
  bestSocialGroupNodes = [graphCopy bestSocialGroupNodes];
  v9 = [(MAElementCollection *)v7 initWithArray:bestSocialGroupNodes graph:graphCopy];

  LOBYTE(graphCopy) = [(MAElementCollection *)v9 intersectsCollection:nodesCopy];
  return graphCopy;
}

+ (BOOL)anyPersonNodes:(id)nodes belongToBestSocialGroupsInGraph:(id)graph
{
  graphCopy = graph;
  socialGroupNodes = [nodes socialGroupNodes];
  LOBYTE(self) = [self socialGroupNodes:socialGroupNodes intersectWithBestSocialGroupsInGraph:graphCopy];

  return self;
}

+ (id)topPersonNodeIdentifierForTwoPersonSocialGroupsFromPersonNodes:(id)nodes personNodes:(id)personNodes
{
  v23 = *MEMORY[0x277D85DE8];
  personNodesCopy = personNodes;
  socialGroupNodesSortedByImportance = [nodes socialGroupNodesSortedByImportance];
  if ([socialGroupNodesSortedByImportance count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = socialGroupNodesSortedByImportance;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      anyObject = &stru_2843F5C58;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          collection = [*(*(&v18 + 1) + 8 * i) collection];
          personNodes = [collection personNodes];

          if ([personNodes count] == 1 && (objc_msgSend(personNodesCopy, "intersectsCollection:", personNodes) & 1) != 0)
          {
            localIdentifiers = [personNodes localIdentifiers];
            anyObject = [localIdentifiers anyObject];

            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      anyObject = &stru_2843F5C58;
    }

LABEL_15:
  }

  else
  {
    anyObject = &stru_2843F5C58;
  }

  v16 = *MEMORY[0x277D85DE8];

  return anyObject;
}

+ (id)momentNodesAtHomeInMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  graph = [nodesCopy graph];
  v5 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];

  homeNodes = [v5 homeNodes];
  addressNodes = [homeNodes addressNodes];
  momentNodes = [addressNodes momentNodes];
  v9 = [momentNodes collectionByIntersecting:nodesCopy];

  return v9;
}

+ (id)momentNodesAtWorkInMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  graph = [nodesCopy graph];
  meNodeCollection = [graph meNodeCollection];
  workNodes = [meNodeCollection workNodes];
  addressNodes = [workNodes addressNodes];
  momentNodes = [addressNodes momentNodes];

  v9 = [momentNodes collectionByIntersecting:nodesCopy];

  return v9;
}

+ (id)momentNodesByAddressNodeFromMomentNodes:(id)nodes
{
  v3 = MEMORY[0x277D22BF8];
  nodesCopy = nodes;
  v5 = +[PGGraphMomentNode addressOfMoment];
  v6 = [v3 adjacencyWithSources:nodesCopy relation:v5 targetsClass:objc_opt_class()];

  transposed = [v6 transposed];

  return transposed;
}

+ (id)countedPersonNodesFromMomentNodes:(id)nodes amongPersonNodes:(id)personNodes
{
  personNodesCopy = personNodes;
  nodesCopy = nodes;
  elementIdentifiers = [personNodesCopy elementIdentifiers];
  graph = [personNodesCopy graph];

  v9 = MEMORY[0x277D22BF8];
  v10 = +[PGGraphMomentNode personInMoment];
  v11 = [v9 adjacencyWithSources:nodesCopy relation:v10 targetsClass:objc_opt_class()];

  transposed = [v11 transposed];
  v13 = objc_alloc_init(MEMORY[0x277CCA940]);
  adjacency = [transposed adjacency];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__PGPeopleInferencesConveniences_countedPersonNodesFromMomentNodes_amongPersonNodes___block_invoke;
  v21[3] = &unk_27887EE08;
  v22 = elementIdentifiers;
  v23 = graph;
  v15 = v13;
  v24 = v15;
  v16 = graph;
  v17 = elementIdentifiers;
  [adjacency enumerateTargetsBySourceWith:v21];

  v18 = v24;
  v19 = v15;

  return v15;
}

void __85__PGPeopleInferencesConveniences_countedPersonNodesFromMomentNodes_amongPersonNodes___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a1[4] containsIdentifier:a2])
  {
    v6 = [a1[5] nodeForIdentifier:a2];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v5 count])
      {
        v7 = 0;
        do
        {
          [a1[6] addObject:v6];
          ++v7;
        }

        while (v7 < [v5 count]);
      }
    }

    else
    {
      v8 = +[PGLogging sharedLogging];
      v9 = [v8 loggingConnection];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 134217984;
        v12 = a2;
        _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Could not fetch person node with identifier %lu", &v11, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)personLocalIdentifierByContactIdentifierFromPersonNodes:(id)nodes
{
  v3 = MEMORY[0x277CBEB38];
  nodesCopy = nodes;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__PGPeopleInferencesConveniences_personLocalIdentifierByContactIdentifierFromPersonNodes___block_invoke;
  v8[3] = &unk_278889240;
  v6 = dictionary;
  v9 = v6;
  [nodesCopy enumerateNodesUsingBlock:v8];

  return v6;
}

void __90__PGPeopleInferencesConveniences_personLocalIdentifierByContactIdentifierFromPersonNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 contactIdentifier];
  v4 = [v3 localIdentifier];

  if ([v5 length] && objc_msgSend(v4, "length"))
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }
}

+ (BOOL)isValidContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy isMe] & 1) != 0 || (objc_msgSend(contactCopy, "isOrganization"))
  {
    v4 = 0;
  }

  else
  {
    cNIdentifier = [contactCopy CNIdentifier];
    v4 = [cNIdentifier length] != 0;
  }

  return v4;
}

@end