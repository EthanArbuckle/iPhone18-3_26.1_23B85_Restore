@interface PGPeopleTitleUtility
+ (id)_placeDisplayNameForPeopleAddressNodeLabel:(id)a3 titleComponent:(id)a4 containsMe:(BOOL)a5;
+ (id)beautifiedLocationStringWithPersonNode:(id)a3 peopleAddressEdge:(id)a4 titleComponent:(id)a5 insertLineBreak:(BOOL)a6 allowFamilyHome:(BOOL)a7 serviceManager:(id)a8;
+ (id)nameFromPersonNode:(id)a3 serviceManager:(id)a4;
+ (id)nameStringForPersonNodes:(id)a3 includeMe:(BOOL)a4 allowUnnamed:(BOOL)a5 allowedGroupsFormat:(unint64_t)a6 insertLineBreaks:(BOOL)a7 serviceManager:(id)a8;
+ (id)peopleGroupNameForPersonNodes:(id)a3 allowedGroupsFormat:(unint64_t)a4;
+ (id)peopleGroupNameForPersonNodes:(id)a3 allowedGroupsFormat:(unint64_t)a4 fallbackToGeneric:(BOOL)a5;
@end

@implementation PGPeopleTitleUtility

+ (id)_placeDisplayNameForPeopleAddressNodeLabel:(id)a3 titleComponent:(id)a4 containsMe:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 isEqualToString:@"Home"])
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PGPeoplePlaceFormatHome" value:@"PGPeoplePlaceFormatHome" table:@"Localizable"];

    if (v5)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    v12 = v8;
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"Work"])
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v13 localizedStringForKey:@"PGPeoplePlaceFormatWork" value:@"PGPeoplePlaceFormatWork" table:@"Localizable"];

    if (v5)
    {
      v12 = v8;
      v11 = 2;
LABEL_6:
      [v12 setType:v11];
    }
  }

  else
  {
    v10 = [v7 capitalizedString];
    v14 = +[PGLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "Could not find place name for edge with label %@. Falling back to edge label", &v18, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)nameFromPersonNode:(id)a3 serviceManager:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 contactIdentifier];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__68424;
  v20 = __Block_byref_object_dispose__68425;
  v21 = 0;
  if ([v7 length])
  {
    v22[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__PGPeopleTitleUtility_nameFromPersonNode_serviceManager___block_invoke;
    v15[3] = &unk_278889A28;
    v15[4] = &v16;
    [v6 enumeratePersonsForIdentifiers:v8 usingBlock:v15];
  }

  v9 = v17[5];
  if (!v9)
  {
    v10 = [v5 name];
    v11 = v17[5];
    v17[5] = v10;

    v9 = v17[5];
  }

  v12 = v9;
  _Block_object_dispose(&v16, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __58__PGPeopleTitleUtility_nameFromPersonNode_serviceManager___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 nickname];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v11 nickname];
  }

  else
  {
    v6 = [v11 firstName];

    if (v6)
    {
      v5 = [v11 localizedShortName];
    }

    else
    {
      v7 = [v11 fullName];
      v8 = [v7 length];

      if (!v8)
      {
        goto LABEL_8;
      }

      v5 = [v11 fullName];
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;

LABEL_8:
}

+ (id)peopleGroupNameForPersonNodes:(id)a3 allowedGroupsFormat:(unint64_t)a4
{
  v4 = a4;
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    v11 = +[PGLogging sharedLogging];
    v7 = [v11 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "+[PGPeopleTitleUtility peopleGroupNameForPersonNodes:allowedGroupsFormat:] personNodes.count == 0", buf, 2u);
    }

    goto LABEL_13;
  }

  v38 = v4;
  v6 = [v5 anyObject];
  v7 = [v6 graph];

  if (!v7)
  {
    v12 = +[PGLogging sharedLogging];
    p_super = [v12 loggingConnection];

    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, p_super, OS_LOG_TYPE_ERROR, "+[PGPeopleTitleUtility peopleGroupNameForPersonNodes:allowedGroupsFormat:] Nil graph", buf, 2u);
    }

    v10 = 0;
    goto LABEL_51;
  }

  if ((v38 & 0xF) == 0 || ![v5 count])
  {
LABEL_13:
    v10 = 0;
    goto LABEL_52;
  }

  v8 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:v5 graph:v7];
  v36 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v7];
  if (![v36 count])
  {
    v14 = +[PGLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "+[PGPeopleTitleUtility peopleGroupNameForPersonNodes:allowedGroupsFormat:] No me node found in graph, not using group name", buf, 2u);
    }

    v10 = 0;
    goto LABEL_49;
  }

  v37 = [(MAElementCollection *)v8 collectionBySubtracting:v36];

  if ([(MAElementCollection *)v37 count]>= 2 || (v38 & 1) != 0)
  {
    v16 = +[PGGraphRelationshipEdge familyRelationshipLabels];
    v17 = [MEMORY[0x277CCA940] set];
    *buf = 0;
    v49 = buf;
    v50 = 0x2020000000;
    v51 = 0;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __74__PGPeopleTitleUtility_peopleGroupNameForPersonNodes_allowedGroupsFormat___block_invoke;
    v43[3] = &unk_278889A00;
    v44 = v36;
    v18 = v16;
    v45 = v18;
    v47 = buf;
    v19 = v17;
    v46 = v19;
    [(MAElementCollection *)v37 enumerateIdentifiersAsCollectionsWithBlock:v43];
    v34 = v18;
    v35 = v19;
    if (!*(v49 + 3))
    {
      v10 = 0;
LABEL_48:

      _Block_object_dispose(buf, 8);
      v8 = v37;
      v15 = v34;
LABEL_49:

      v37 = v8;
      goto LABEL_50;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = v19;
    v21 = 0;
    v22 = 0;
    v23 = [v20 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v23)
    {
      v24 = *v40;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          v27 = [v20 countForObject:{v26, v34, v35}];
          if (v27 > v22)
          {
            v28 = v26;

            v21 = v28;
            v22 = v27;
          }
        }

        v23 = [v20 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v23);
    }

    v29 = *(v49 + 3);
    if (v29 != v22 && (v29 < 4 || ceilf(v29 * 0.75) > v22))
    {
      goto LABEL_43;
    }

    if ((v38 & 2) != 0 && [v21 isEqualToString:@"FAMILY"])
    {
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"PGSocialGroupFormatTitleFamily" value:@"PGSocialGroupFormatTitleFamily" table:@"Localizable"];
    }

    else
    {
      if ((v38 & 4) != 0 && [v21 isEqualToString:@"PARTNER"])
      {
LABEL_45:
        v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"PGPeopleTitleFormatGenericSocialGroup" value:@"PGPeopleTitleFormatGenericSocialGroup" table:@"Localizable"];
        goto LABEL_46;
      }

      if ((v38 & 8) == 0 || ![v21 isEqualToString:@"FRIEND"])
      {
LABEL_43:
        if ((v38 & 1) == 0)
        {
          v10 = 0;
LABEL_47:

          goto LABEL_48;
        }

        goto LABEL_45;
      }

      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"PGSocialGroupFormatTitleFriends" value:@"PGSocialGroupFormatTitleFriends" table:@"Localizable"];
    }

LABEL_46:
    v10 = v31;

    goto LABEL_47;
  }

  v10 = 0;
LABEL_50:

  p_super = &v37->super.super.super.super;
LABEL_51:

LABEL_52:
  v32 = *MEMORY[0x277D85DE8];

  return v10;
}

void __74__PGPeopleTitleUtility_peopleGroupNameForPersonNodes_allowedGroupsFormat___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = +[PGGraphRelationshipEdge confirmedRelationshipFilter];
  v7 = [(MAEdgeCollection *)PGGraphRelationshipEdgeCollection edgesFromNodes:v5 toNodes:v4 matchingFilter:v6];

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v7 labels];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([*(a1 + 40) containsObject:v14])
        {
          v15 = @"FAMILY";
        }

        else
        {
          v15 = v14;
        }

        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  *(*(*(a1 + 56) + 8) + 24) += [v8 count];
  v16 = *(a1 + 48);
  v17 = [v8 allObjects];
  [v16 addObjectsFromArray:v17];

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)peopleGroupNameForPersonNodes:(id)a3 allowedGroupsFormat:(unint64_t)a4 fallbackToGeneric:(BOOL)a5
{
  v5 = a5;
  v6 = [a1 peopleGroupNameForPersonNodes:a3 allowedGroupsFormat:a4];
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"PGPeopleTitleFormatGenericSocialGroup" value:@"PGPeopleTitleFormatGenericSocialGroup" table:@"Localizable"];
  }

  return v7;
}

+ (id)nameStringForPersonNodes:(id)a3 includeMe:(BOOL)a4 allowUnnamed:(BOOL)a5 allowedGroupsFormat:(unint64_t)a6 insertLineBreaks:(BOOL)a7 serviceManager:(id)a8
{
  v11 = a5;
  v75[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a8;
  if (![v14 count])
  {
    v22 = 0;
    goto LABEL_53;
  }

  v66 = a7;
  v67 = v11;
  v16 = [v14 mutableCopy];
  v17 = [v14 anyObject];
  v18 = [v17 graph];
  v19 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v18];
  v20 = [v19 anyNode];

  if (v20)
  {
    [v16 removeObject:v20];
    if (![v16 count])
    {
      [v16 addObject:v20];
      a4 = 0;
    }
  }

  v21 = [v16 count];
  if (a6 == 1 || v21 < 2 || ([a1 peopleGroupNameForPersonNodes:v16 allowedGroupsFormat:a6], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v69 = v20;
    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
    v75[0] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
    v25 = [v16 sortedArrayUsingDescriptors:v24];

    v26 = [MEMORY[0x277CBEB18] array];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v28)
    {
      v29 = v28;
      v59 = a4;
      v62 = v16;
      v64 = v14;
      v30 = 0;
      v31 = *v71;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v71 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = [a1 nameFromPersonNode:*(*(&v70 + 1) + 8 * i) serviceManager:v15];
          v34 = v33;
          if (v33)
          {
            if ([v33 length])
            {
              [v26 addObject:v34];
            }

            else
            {
              ++v30;
            }
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v70 objects:v74 count:16];
      }

      while (v29);

      v14 = v64;
      if (v67)
      {
        a4 = v59;
        if (v30 == 1)
        {
          if ([v26 count])
          {
            v35 = 1;
          }

          else
          {
            v35 = v59;
          }

          if ((v35 & 1) == 0)
          {
            v50 = [v64 anyObject];
            v51 = [v50 ageCategory];

            v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v53 = v52;
            if (v51 == 1)
            {
              v54 = @"PGPeopleTitleFormatGenericUnnamedChild";
            }

            else
            {
              v54 = @"PGPeopleTitleFormatGenericUnnamedPerson";
            }

            v22 = [v52 localizedStringForKey:v54 value:v54 table:@"Localizable"];

            v16 = v62;
            goto LABEL_50;
          }

          v30 = 1;
        }
      }

      else
      {
        a4 = v59;
      }

      v36 = a6 & 1;
      v16 = v62;
      if ((a6 & 1) != 0 && v30)
      {
        v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = [v37 localizedStringForKey:@"PGPeopleTitleFormatGenericSocialGroup" value:@"PGPeopleTitleFormatGenericSocialGroup" table:@"Localizable"];

LABEL_50:
        v20 = v69;
        goto LABEL_51;
      }
    }

    else
    {

      v36 = a6 & 1;
    }

    v65 = v36;
    v20 = v69;
    v38 = !a4;
    if (!v69)
    {
      v38 = 1;
    }

    if (!v38)
    {
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"PGPeopleTitleFormatMePerson" value:@"PGPeopleTitleFormatMePerson" table:@"Localizable"];
      [v26 addObject:v40];
    }

    if ([v26 count] == 2)
    {
      v68 = [v26 firstObject];
      v41 = [v26 lastObject];
      v60 = MEMORY[0x277CCACA8];
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"PGPeopleTitleFormatTwoPeopleWithPersonName %@ otherPersonName %@" value:@"PGPeopleTitleFormatTwoPeopleWithPersonName %@ otherPersonName %@" table:@"Localizable"];
      v63 = v41;
      v22 = [v60 localizedStringWithFormat:v43, v68, v41];
    }

    else
    {
      if ([v26 count] < 3)
      {
        v22 = [v26 firstObject];
LABEL_51:

        goto LABEL_52;
      }

      v68 = [v26 subarrayWithRange:{0, objc_msgSend(v26, "count") - 1}];
      v63 = [v26 lastObject];
      v58 = MEMORY[0x277CCACA8];
      v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v44 = [v61 localizedStringForKey:@"PGPeopleTitleFormatMultiplePeopleWithConcatenatedPersonNames %@ lastPersonName %@" value:@"PGPeopleTitleFormatMultiplePeopleWithConcatenatedPersonNames %@ lastPersonName %@" table:@"Localizable"];
      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v57 localizedStringForKey:@"PGPeopleTitleFormatMultiplePeoplePersonNameConcatenator" value:@"PGPeopleTitleFormatMultiplePeoplePersonNameConcatenator" table:@"Localizable"];
      v46 = [v68 componentsJoinedByString:v45];
      v22 = [v58 localizedStringWithFormat:v44, v46, v63];

      v20 = v69;
    }

    if (v66)
    {
      v47 = [PGCommonTitleUtility titleWithLineBreakForTitle:v22 andUsedNames:v26];

      v22 = v47;
    }

    if (v65 && [v22 length] >= 0x17)
    {
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = [v48 localizedStringForKey:@"PGPeopleTitleFormatGenericSocialGroup" value:@"PGPeopleTitleFormatGenericSocialGroup" table:@"Localizable"];

      v22 = v49;
    }

    goto LABEL_51;
  }

LABEL_52:

LABEL_53:
  v55 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)beautifiedLocationStringWithPersonNode:(id)a3 peopleAddressEdge:(id)a4 titleComponent:(id)a5 insertLineBreak:(BOOL)a6 allowFamilyHome:(BOOL)a7 serviceManager:(id)a8
{
  v9 = a7;
  v40 = a6;
  v54 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v42 = a8;
  v16 = [v14 targetNode];
  v17 = [v16 label];

  v18 = [v13 isMeNode];
  v19 = [a1 _placeDisplayNameForPeopleAddressNodeLabel:v17 titleComponent:v15 containsMe:v18];
  v20 = v19;
  if (v18)
  {
    v21 = v19;
    goto LABEL_22;
  }

  v22 = [v14 sourceNode];
  v23 = [v13 graph];
  v41 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v23];

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v24 = [v41 anyNode];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __143__PGPeopleTitleUtility_beautifiedLocationStringWithPersonNode_peopleAddressEdge_titleComponent_insertLineBreak_allowFamilyHome_serviceManager___block_invoke;
  v43[3] = &unk_2788899D8;
  v39 = v22;
  v44 = v39;
  v25 = v17;
  v45 = v25;
  v46 = &v47;
  [v24 enumerateHomeOrWorkAddressNodesUsingBlock:v43];

  if (*(v48 + 24) == 1)
  {
    if ([v25 isEqualToString:@"Home"])
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    [v15 setType:v26];
    v21 = v20;
    goto LABEL_21;
  }

  if ((v9 & [v25 isEqualToString:@"Home"]) != 1 || !objc_msgSend(v13, "isMemberOfMyFamily"))
  {
    v38 = [a1 nameFromPersonNode:v13 serviceManager:v42];
    if ([v38 length])
    {
      if ([v15 type] == 3)
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"PGPeoplePlaceTitleFormatHomeWithPersonName %@" value:@"PGPeoplePlaceTitleFormatHomeWithPersonName %@" table:@"Localizable"];
        v31 = [v28 localizedStringWithFormat:v30, v38];

        [v15 setPersonName:v38];
        if (v40)
        {
          v51[0] = v38;
          v51[1] = v20;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
          v21 = [PGCommonTitleUtility titleWithLineBreakForTitle:v31 andUsedNames:v32];
        }

        else
        {
          v31 = v31;
          v21 = v31;
        }

        goto LABEL_20;
      }

      v34 = +[PGLogging sharedLogging];
      v31 = [v34 loggingConnection];

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v37 = [v15 type];
        *buf = 67109120;
        v53 = v37;
        _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "Expected titleComponent.type to be PGLocationTitleComponentTypeOthersHome at this point, but it is type %d. Returning nil.", buf, 8u);
      }
    }

    else
    {
      v33 = +[PGLogging sharedLogging];
      v31 = [v33 loggingConnection];

      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "Could not find any person name for people", buf, 2u);
      }
    }

    v21 = 0;
LABEL_20:

    goto LABEL_21;
  }

  [v15 setType:4];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v27 localizedStringForKey:@"PGPeoplePlaceTitleFormatFamilyHome" value:@"PGPeoplePlaceTitleFormatFamilyHome" table:@"Localizable"];

LABEL_21:
  _Block_object_dispose(&v47, 8);

LABEL_22:
  v35 = *MEMORY[0x277D85DE8];

  return v21;
}

void __143__PGPeopleTitleUtility_beautifiedLocationStringWithPersonNode_peopleAddressEdge_titleComponent_insertLineBreak_allowFamilyHome_serviceManager___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  if ([*(a1 + 32) isSameNodeAsNode:a2])
  {
    v7 = *(a1 + 40);
    v8 = [v9 label];
    LODWORD(v7) = [v7 isEqualToString:v8];

    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

@end