@interface PGPeopleTitleUtility
+ (id)_placeDisplayNameForPeopleAddressNodeLabel:(id)label titleComponent:(id)component containsMe:(BOOL)me;
+ (id)beautifiedLocationStringWithPersonNode:(id)node peopleAddressEdge:(id)edge titleComponent:(id)component insertLineBreak:(BOOL)break allowFamilyHome:(BOOL)home serviceManager:(id)manager;
+ (id)nameFromPersonNode:(id)node serviceManager:(id)manager;
+ (id)nameStringForPersonNodes:(id)nodes includeMe:(BOOL)me allowUnnamed:(BOOL)unnamed allowedGroupsFormat:(unint64_t)format insertLineBreaks:(BOOL)breaks serviceManager:(id)manager;
+ (id)peopleGroupNameForPersonNodes:(id)nodes allowedGroupsFormat:(unint64_t)format;
+ (id)peopleGroupNameForPersonNodes:(id)nodes allowedGroupsFormat:(unint64_t)format fallbackToGeneric:(BOOL)generic;
@end

@implementation PGPeopleTitleUtility

+ (id)_placeDisplayNameForPeopleAddressNodeLabel:(id)label titleComponent:(id)component containsMe:(BOOL)me
{
  meCopy = me;
  v20 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  componentCopy = component;
  if ([labelCopy isEqualToString:@"Home"])
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    capitalizedString = [v9 localizedStringForKey:@"PGPeoplePlaceFormatHome" value:@"PGPeoplePlaceFormatHome" table:@"Localizable"];

    if (meCopy)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    v12 = componentCopy;
    goto LABEL_6;
  }

  if ([labelCopy isEqualToString:@"Work"])
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    capitalizedString = [v13 localizedStringForKey:@"PGPeoplePlaceFormatWork" value:@"PGPeoplePlaceFormatWork" table:@"Localizable"];

    if (meCopy)
    {
      v12 = componentCopy;
      v11 = 2;
LABEL_6:
      [v12 setType:v11];
    }
  }

  else
  {
    capitalizedString = [labelCopy capitalizedString];
    v14 = +[PGLogging sharedLogging];
    loggingConnection = [v14 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = labelCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Could not find place name for edge with label %@. Falling back to edge label", &v18, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return capitalizedString;
}

+ (id)nameFromPersonNode:(id)node serviceManager:(id)manager
{
  v22[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  managerCopy = manager;
  contactIdentifier = [nodeCopy contactIdentifier];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__68424;
  v20 = __Block_byref_object_dispose__68425;
  v21 = 0;
  if ([contactIdentifier length])
  {
    v22[0] = contactIdentifier;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__PGPeopleTitleUtility_nameFromPersonNode_serviceManager___block_invoke;
    v15[3] = &unk_278889A28;
    v15[4] = &v16;
    [managerCopy enumeratePersonsForIdentifiers:v8 usingBlock:v15];
  }

  v9 = v17[5];
  if (!v9)
  {
    name = [nodeCopy name];
    v11 = v17[5];
    v17[5] = name;

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

+ (id)peopleGroupNameForPersonNodes:(id)nodes allowedGroupsFormat:(unint64_t)format
{
  formatCopy = format;
  v53 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  if (![nodesCopy count])
  {
    v11 = +[PGLogging sharedLogging];
    loggingConnection = [v11 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "+[PGPeopleTitleUtility peopleGroupNameForPersonNodes:allowedGroupsFormat:] personNodes.count == 0", buf, 2u);
    }

    goto LABEL_13;
  }

  v38 = formatCopy;
  anyObject = [nodesCopy anyObject];
  loggingConnection = [anyObject graph];

  if (!loggingConnection)
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

  if ((v38 & 0xF) == 0 || ![nodesCopy count])
  {
LABEL_13:
    v10 = 0;
    goto LABEL_52;
  }

  v8 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:nodesCopy graph:loggingConnection];
  v36 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:loggingConnection];
  if (![v36 count])
  {
    v14 = +[PGLogging sharedLogging];
    loggingConnection2 = [v14 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "+[PGPeopleTitleUtility peopleGroupNameForPersonNodes:allowedGroupsFormat:] No me node found in graph, not using group name", buf, 2u);
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
      loggingConnection2 = v34;
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

+ (id)peopleGroupNameForPersonNodes:(id)nodes allowedGroupsFormat:(unint64_t)format fallbackToGeneric:(BOOL)generic
{
  genericCopy = generic;
  v6 = [self peopleGroupNameForPersonNodes:nodes allowedGroupsFormat:format];
  v7 = v6;
  if (genericCopy && !v6)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"PGPeopleTitleFormatGenericSocialGroup" value:@"PGPeopleTitleFormatGenericSocialGroup" table:@"Localizable"];
  }

  return v7;
}

+ (id)nameStringForPersonNodes:(id)nodes includeMe:(BOOL)me allowUnnamed:(BOOL)unnamed allowedGroupsFormat:(unint64_t)format insertLineBreaks:(BOOL)breaks serviceManager:(id)manager
{
  unnamedCopy = unnamed;
  v75[1] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  managerCopy = manager;
  if (![nodesCopy count])
  {
    firstObject2 = 0;
    goto LABEL_53;
  }

  breaksCopy = breaks;
  v67 = unnamedCopy;
  v16 = [nodesCopy mutableCopy];
  anyObject = [nodesCopy anyObject];
  graph = [anyObject graph];
  v19 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];
  anyNode = [v19 anyNode];

  if (anyNode)
  {
    [v16 removeObject:anyNode];
    if (![v16 count])
    {
      [v16 addObject:anyNode];
      me = 0;
    }
  }

  v21 = [v16 count];
  if (format == 1 || v21 < 2 || ([self peopleGroupNameForPersonNodes:v16 allowedGroupsFormat:format], (firstObject2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v69 = anyNode;
    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
    v75[0] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
    v25 = [v16 sortedArrayUsingDescriptors:v24];

    array = [MEMORY[0x277CBEB18] array];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v28)
    {
      v29 = v28;
      meCopy = me;
      v62 = v16;
      v64 = nodesCopy;
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

          v33 = [self nameFromPersonNode:*(*(&v70 + 1) + 8 * i) serviceManager:managerCopy];
          v34 = v33;
          if (v33)
          {
            if ([v33 length])
            {
              [array addObject:v34];
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

      nodesCopy = v64;
      if (v67)
      {
        me = meCopy;
        if (v30 == 1)
        {
          if ([array count])
          {
            v35 = 1;
          }

          else
          {
            v35 = meCopy;
          }

          if ((v35 & 1) == 0)
          {
            anyObject2 = [v64 anyObject];
            ageCategory = [anyObject2 ageCategory];

            v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v53 = v52;
            if (ageCategory == 1)
            {
              v54 = @"PGPeopleTitleFormatGenericUnnamedChild";
            }

            else
            {
              v54 = @"PGPeopleTitleFormatGenericUnnamedPerson";
            }

            firstObject2 = [v52 localizedStringForKey:v54 value:v54 table:@"Localizable"];

            v16 = v62;
            goto LABEL_50;
          }

          v30 = 1;
        }
      }

      else
      {
        me = meCopy;
      }

      v36 = format & 1;
      v16 = v62;
      if ((format & 1) != 0 && v30)
      {
        v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        firstObject2 = [v37 localizedStringForKey:@"PGPeopleTitleFormatGenericSocialGroup" value:@"PGPeopleTitleFormatGenericSocialGroup" table:@"Localizable"];

LABEL_50:
        anyNode = v69;
        goto LABEL_51;
      }
    }

    else
    {

      v36 = format & 1;
    }

    v65 = v36;
    anyNode = v69;
    v38 = !me;
    if (!v69)
    {
      v38 = 1;
    }

    if (!v38)
    {
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"PGPeopleTitleFormatMePerson" value:@"PGPeopleTitleFormatMePerson" table:@"Localizable"];
      [array addObject:v40];
    }

    if ([array count] == 2)
    {
      firstObject = [array firstObject];
      lastObject = [array lastObject];
      v60 = MEMORY[0x277CCACA8];
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"PGPeopleTitleFormatTwoPeopleWithPersonName %@ otherPersonName %@" value:@"PGPeopleTitleFormatTwoPeopleWithPersonName %@ otherPersonName %@" table:@"Localizable"];
      lastObject2 = lastObject;
      firstObject2 = [v60 localizedStringWithFormat:v43, firstObject, lastObject];
    }

    else
    {
      if ([array count] < 3)
      {
        firstObject2 = [array firstObject];
LABEL_51:

        goto LABEL_52;
      }

      firstObject = [array subarrayWithRange:{0, objc_msgSend(array, "count") - 1}];
      lastObject2 = [array lastObject];
      v58 = MEMORY[0x277CCACA8];
      v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v44 = [v61 localizedStringForKey:@"PGPeopleTitleFormatMultiplePeopleWithConcatenatedPersonNames %@ lastPersonName %@" value:@"PGPeopleTitleFormatMultiplePeopleWithConcatenatedPersonNames %@ lastPersonName %@" table:@"Localizable"];
      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v57 localizedStringForKey:@"PGPeopleTitleFormatMultiplePeoplePersonNameConcatenator" value:@"PGPeopleTitleFormatMultiplePeoplePersonNameConcatenator" table:@"Localizable"];
      v46 = [firstObject componentsJoinedByString:v45];
      firstObject2 = [v58 localizedStringWithFormat:v44, v46, lastObject2];

      anyNode = v69;
    }

    if (breaksCopy)
    {
      v47 = [PGCommonTitleUtility titleWithLineBreakForTitle:firstObject2 andUsedNames:array];

      firstObject2 = v47;
    }

    if (v65 && [firstObject2 length] >= 0x17)
    {
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = [v48 localizedStringForKey:@"PGPeopleTitleFormatGenericSocialGroup" value:@"PGPeopleTitleFormatGenericSocialGroup" table:@"Localizable"];

      firstObject2 = v49;
    }

    goto LABEL_51;
  }

LABEL_52:

LABEL_53:
  v55 = *MEMORY[0x277D85DE8];

  return firstObject2;
}

+ (id)beautifiedLocationStringWithPersonNode:(id)node peopleAddressEdge:(id)edge titleComponent:(id)component insertLineBreak:(BOOL)break allowFamilyHome:(BOOL)home serviceManager:(id)manager
{
  homeCopy = home;
  breakCopy = break;
  v54 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  edgeCopy = edge;
  componentCopy = component;
  managerCopy = manager;
  targetNode = [edgeCopy targetNode];
  label = [targetNode label];

  isMeNode = [nodeCopy isMeNode];
  v19 = [self _placeDisplayNameForPeopleAddressNodeLabel:label titleComponent:componentCopy containsMe:isMeNode];
  v20 = v19;
  if (isMeNode)
  {
    v21 = v19;
    goto LABEL_22;
  }

  sourceNode = [edgeCopy sourceNode];
  graph = [nodeCopy graph];
  v41 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  anyNode = [v41 anyNode];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __143__PGPeopleTitleUtility_beautifiedLocationStringWithPersonNode_peopleAddressEdge_titleComponent_insertLineBreak_allowFamilyHome_serviceManager___block_invoke;
  v43[3] = &unk_2788899D8;
  v39 = sourceNode;
  v44 = v39;
  v25 = label;
  v45 = v25;
  v46 = &v47;
  [anyNode enumerateHomeOrWorkAddressNodesUsingBlock:v43];

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

    [componentCopy setType:v26];
    v21 = v20;
    goto LABEL_21;
  }

  if ((homeCopy & [v25 isEqualToString:@"Home"]) != 1 || !objc_msgSend(nodeCopy, "isMemberOfMyFamily"))
  {
    v38 = [self nameFromPersonNode:nodeCopy serviceManager:managerCopy];
    if ([v38 length])
    {
      if ([componentCopy type] == 3)
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"PGPeoplePlaceTitleFormatHomeWithPersonName %@" value:@"PGPeoplePlaceTitleFormatHomeWithPersonName %@" table:@"Localizable"];
        loggingConnection = [v28 localizedStringWithFormat:v30, v38];

        [componentCopy setPersonName:v38];
        if (breakCopy)
        {
          v51[0] = v38;
          v51[1] = v20;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
          v21 = [PGCommonTitleUtility titleWithLineBreakForTitle:loggingConnection andUsedNames:v32];
        }

        else
        {
          loggingConnection = loggingConnection;
          v21 = loggingConnection;
        }

        goto LABEL_20;
      }

      v34 = +[PGLogging sharedLogging];
      loggingConnection = [v34 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        type = [componentCopy type];
        *buf = 67109120;
        v53 = type;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Expected titleComponent.type to be PGLocationTitleComponentTypeOthersHome at this point, but it is type %d. Returning nil.", buf, 8u);
      }
    }

    else
    {
      v33 = +[PGLogging sharedLogging];
      loggingConnection = [v33 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Could not find any person name for people", buf, 2u);
      }
    }

    v21 = 0;
LABEL_20:

    goto LABEL_21;
  }

  [componentCopy setType:4];
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