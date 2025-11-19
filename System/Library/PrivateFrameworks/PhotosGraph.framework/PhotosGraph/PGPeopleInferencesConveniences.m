@interface PGPeopleInferencesConveniences
+ (BOOL)anyPersonNodes:(id)a3 belongToBestSocialGroupsInGraph:(id)a4;
+ (BOOL)isValidContact:(id)a3;
+ (BOOL)socialGroupNodes:(id)a3 intersectWithBestSocialGroupsInGraph:(id)a4;
+ (id)countedPersonNodesFromMomentNodes:(id)a3 amongPersonNodes:(id)a4;
+ (id)momentNodesAtHomeInMomentNodes:(id)a3;
+ (id)momentNodesAtWorkInMomentNodes:(id)a3;
+ (id)momentNodesByAddressNodeFromMomentNodes:(id)a3;
+ (id)personLocalIdentifierByContactIdentifierFromPersonNodes:(id)a3;
+ (id)topPersonNodeIdentifierForTwoPersonSocialGroupsFromPersonNodes:(id)a3 personNodes:(id)a4;
@end

@implementation PGPeopleInferencesConveniences

+ (BOOL)socialGroupNodes:(id)a3 intersectWithBestSocialGroupsInGraph:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PGGraphSocialGroupNodeCollection alloc];
  v8 = [v5 bestSocialGroupNodes];
  v9 = [(MAElementCollection *)v7 initWithArray:v8 graph:v5];

  LOBYTE(v5) = [(MAElementCollection *)v9 intersectsCollection:v6];
  return v5;
}

+ (BOOL)anyPersonNodes:(id)a3 belongToBestSocialGroupsInGraph:(id)a4
{
  v6 = a4;
  v7 = [a3 socialGroupNodes];
  LOBYTE(a1) = [a1 socialGroupNodes:v7 intersectWithBestSocialGroupsInGraph:v6];

  return a1;
}

+ (id)topPersonNodeIdentifierForTwoPersonSocialGroupsFromPersonNodes:(id)a3 personNodes:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 socialGroupNodesSortedByImportance];
  if ([v6 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = &stru_2843F5C58;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) collection];
          v14 = [v13 personNodes];

          if ([v14 count] == 1 && (objc_msgSend(v5, "intersectsCollection:", v14) & 1) != 0)
          {
            v15 = [v14 localIdentifiers];
            v11 = [v15 anyObject];

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
      v11 = &stru_2843F5C58;
    }

LABEL_15:
  }

  else
  {
    v11 = &stru_2843F5C58;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)momentNodesAtHomeInMomentNodes:(id)a3
{
  v3 = a3;
  v4 = [v3 graph];
  v5 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v4];

  v6 = [v5 homeNodes];
  v7 = [v6 addressNodes];
  v8 = [v7 momentNodes];
  v9 = [v8 collectionByIntersecting:v3];

  return v9;
}

+ (id)momentNodesAtWorkInMomentNodes:(id)a3
{
  v3 = a3;
  v4 = [v3 graph];
  v5 = [v4 meNodeCollection];
  v6 = [v5 workNodes];
  v7 = [v6 addressNodes];
  v8 = [v7 momentNodes];

  v9 = [v8 collectionByIntersecting:v3];

  return v9;
}

+ (id)momentNodesByAddressNodeFromMomentNodes:(id)a3
{
  v3 = MEMORY[0x277D22BF8];
  v4 = a3;
  v5 = +[PGGraphMomentNode addressOfMoment];
  v6 = [v3 adjacencyWithSources:v4 relation:v5 targetsClass:objc_opt_class()];

  v7 = [v6 transposed];

  return v7;
}

+ (id)countedPersonNodesFromMomentNodes:(id)a3 amongPersonNodes:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 elementIdentifiers];
  v8 = [v5 graph];

  v9 = MEMORY[0x277D22BF8];
  v10 = +[PGGraphMomentNode personInMoment];
  v11 = [v9 adjacencyWithSources:v6 relation:v10 targetsClass:objc_opt_class()];

  v12 = [v11 transposed];
  v13 = objc_alloc_init(MEMORY[0x277CCA940]);
  v14 = [v12 adjacency];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__PGPeopleInferencesConveniences_countedPersonNodesFromMomentNodes_amongPersonNodes___block_invoke;
  v21[3] = &unk_27887EE08;
  v22 = v7;
  v23 = v8;
  v15 = v13;
  v24 = v15;
  v16 = v8;
  v17 = v7;
  [v14 enumerateTargetsBySourceWith:v21];

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

+ (id)personLocalIdentifierByContactIdentifierFromPersonNodes:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__PGPeopleInferencesConveniences_personLocalIdentifierByContactIdentifierFromPersonNodes___block_invoke;
  v8[3] = &unk_278889240;
  v6 = v5;
  v9 = v6;
  [v4 enumerateNodesUsingBlock:v8];

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

+ (BOOL)isValidContact:(id)a3
{
  v3 = a3;
  if ([v3 isMe] & 1) != 0 || (objc_msgSend(v3, "isOrganization"))
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 CNIdentifier];
    v4 = [v5 length] != 0;
  }

  return v4;
}

@end