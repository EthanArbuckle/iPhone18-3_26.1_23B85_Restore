@interface PGMoodUtilities
+ (id)_momentNodesForAssetCollection:(id)a3 inGraph:(id)a4 moodOptions:(id)a5;
+ (id)moodGraphContextIdentifiersForAssetCollection:(id)a3 withGraph:(id)a4 moodOptions:(id)a5;
+ (id)moodGraphContextIdentifiersForMomentNodes:(id)a3 inGraph:(id)a4 moodOptions:(id)a5;
+ (id)moodGraphNodeIdentifiersForAssetCollection:(id)a3 withGraph:(id)a4 moodOptions:(id)a5;
+ (id)moodGraphNodeIdentifiersForMomentNodes:(id)a3;
+ (id)moodMeaningIdentifiersForAssetCollection:(id)a3 withGraph:(id)a4 moodOptions:(id)a5;
+ (id)moodMeaningIdentifiersForMomentNodes:(id)a3;
+ (id)moodSceneIdentifiersByMomentForAssetCollection:(id)a3 withGraph:(id)a4 moodOptions:(id)a5;
+ (id)moodSceneIdentifiersByMomentForMomentNodes:(id)a3;
@end

@implementation PGMoodUtilities

+ (id)_momentNodesForAssetCollection:(id)a3 inGraph:(id)a4 moodOptions:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a5 momentIDs];
  if ([v9 count])
  {
    v10 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v9 inGraph:v8];
    goto LABEL_16;
  }

  if ([v7 assetCollectionType] == 6)
  {
    v11 = [v7 uuid];
    v12 = [PGGraphHighlightNodeCollection highlightNodeForUUID:v11 inGraph:v8];
    v10 = [v12 momentNodes];

LABEL_7:
    goto LABEL_16;
  }

  if ([v7 assetCollectionType] == 3)
  {
    v11 = [v7 uuid];
    v10 = [PGGraphMomentNodeCollection momentNodeForUUID:v11 inGraph:v8];
    goto LABEL_7;
  }

  v13 = PGMomentsForAssetCollection(v7);
  v14 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * i) uuid];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v10 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v14 inGraph:v8];

LABEL_16:
  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)moodGraphContextIdentifiersForAssetCollection:(id)a3 withGraph:(id)a4 moodOptions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _momentNodesForAssetCollection:a3 inGraph:v9 moodOptions:v8];
  v11 = [a1 moodGraphContextIdentifiersForMomentNodes:v10 inGraph:v9 moodOptions:v8];

  return v11;
}

+ (id)moodGraphContextIdentifiersForMomentNodes:(id)a3 inGraph:(id)a4 moodOptions:(id)a5
{
  v162 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v7 = a4;
  v50 = a5;
  v8 = [MEMORY[0x277CBEB18] array];
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = 1;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 1;
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 1;
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 1;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v142 = 1;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 1;
  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 1;
  v127 = 0;
  v128 = &v127;
  v129 = 0x2020000000;
  v130 = 1;
  v123 = 0;
  v124 = &v123;
  v125 = 0x2020000000;
  v126 = 1;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 1;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 1;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 1;
  v9 = [v50 moodGenerationContext];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [PGMoodGenerationContext alloc];
    v13 = [v50 referenceDate];
    v11 = [(PGMoodGenerationContext *)v12 initWithReferenceDate:v13];
  }

  v14 = [v7 meNode];
  v15 = v14;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__65086;
  v109 = __Block_byref_object_dispose__65087;
  v110 = 0;
  if (v14)
  {
    v99 = 0;
    v100 = &v99;
    v101 = 0x3032000000;
    v102 = __Block_byref_object_copy__65086;
    v103 = __Block_byref_object_dispose__65087;
    v104 = 0;
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __81__PGMoodUtilities_moodGraphContextIdentifiersForMomentNodes_inGraph_moodOptions___block_invoke;
    v98[3] = &unk_278888DB0;
    v98[4] = &v99;
    [v14 enumeratePersonNodesWithRelationship:13 matchingQuery:3 usingBlock:v98];
    v16 = v100[5];
    if (v16)
    {
      v17 = [v16 collection];
      v18 = [v17 socialGroupNodes];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __81__PGMoodUtilities_moodGraphContextIdentifiersForMomentNodes_inGraph_moodOptions___block_invoke_2;
      v97[3] = &unk_278888DE0;
      v97[4] = &v105;
      [v18 enumerateNodesUsingBlock:v97];
    }

    _Block_object_dispose(&v99, 8);
  }

  else
  {
    *(v156 + 24) = 0;
    *(v152 + 24) = 0;
  }

  v19 = [v7 supersetCityNodes];
  if (![v19 count])
  {
    *(v148 + 24) = 0;
    *(v144 + 24) = 0;
    *(v140 + 24) = 0;
  }

  v20 = MEMORY[0x277CBEB98];
  v21 = [v7 bestSocialGroupNodes];
  v22 = [v20 setWithArray:v21];

  if (![v22 count])
  {
    if (!v106[5])
    {
      *(v128 + 24) = 0;
    }

    *(v124 + 24) = 0;
    *(v120 + 24) = 0;
  }

  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__65086;
  v103 = __Block_byref_object_dispose__65087;
  v104 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__65086;
  v95 = __Block_byref_object_dispose__65087;
  v96 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__65086;
  v89 = __Block_byref_object_dispose__65087;
  v90 = 0;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __81__PGMoodUtilities_moodGraphContextIdentifiersForMomentNodes_inGraph_moodOptions___block_invoke_3;
  v63[3] = &unk_278888E60;
  v69 = &v115;
  v23 = v11;
  v64 = v23;
  v70 = &v111;
  v71 = &v155;
  v72 = &v151;
  v73 = &v147;
  v74 = &v143;
  v75 = &v139;
  v47 = v15;
  v65 = v47;
  v48 = v19;
  v66 = v48;
  v76 = &v85;
  v77 = &v135;
  v78 = &v131;
  v24 = v22;
  v67 = v24;
  v79 = &v105;
  v80 = &v127;
  v81 = &v123;
  v82 = &v119;
  v25 = v7;
  v68 = v25;
  v83 = &v91;
  v84 = &v99;
  [v49 enumerateNodesUsingBlock:v63];
  if (*(v116 + 24) == 1)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v26 = v92[5];
    v27 = 0;
    v28 = [v26 countByEnumeratingWithState:&v59 objects:v161 count:{16, v47, v48}];
    if (v28)
    {
      v29 = *v60;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v60 != v29)
          {
            objc_enumerationMutation(v26);
          }

          if (v27)
          {
            v27 = 1;
            goto LABEL_27;
          }

          v27 = [(PGMoodGenerationContext *)v23 socialGroupIsLongTimeNoSeeWithSocialGroupNode:*(*(&v59 + 1) + 8 * i)];
        }

        v28 = [v26 countByEnumeratingWithState:&v59 objects:v161 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v31 = v100[5];
    v32 = [v31 countByEnumeratingWithState:&v55 objects:v160 count:16];
    if (v32)
    {
      v33 = *v56;
      while (2)
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v56 != v33)
          {
            objc_enumerationMutation(v31);
          }

          if (v27)
          {
            v27 = 1;
            goto LABEL_37;
          }

          v27 = [(PGMoodGenerationContext *)v23 personIsLongTimeNoSeeWithPersonNode:*(*(&v55 + 1) + 8 * j)];
        }

        v32 = [v31 countByEnumeratingWithState:&v55 objects:v160 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:
  }

  else
  {
    v27 = 0;
  }

  if (*(v112 + 24) == 1)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v35 = v86[5];
    v36 = [v35 countByEnumeratingWithState:&v51 objects:v159 count:16];
    v37 = v8;
    v38 = 0;
    if (v36)
    {
      v39 = *v52;
      while (2)
      {
        v40 = v25;
        for (k = 0; k != v36; ++k)
        {
          if (*v52 != v39)
          {
            objc_enumerationMutation(v35);
          }

          if (v38)
          {
            v38 = 1;
            v25 = v40;
            goto LABEL_50;
          }

          v38 = [(PGMoodGenerationContext *)v23 locationIsLongTimeNoSeeWithLocationNode:*(*(&v51 + 1) + 8 * k)];
        }

        v36 = [v35 countByEnumeratingWithState:&v51 objects:v159 count:16];
        v25 = v40;
        if (v36)
        {
          continue;
        }

        break;
      }
    }

LABEL_50:

    v8 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (v156[3])
  {
    v42 = @"AtHome";
  }

  else if (v152[3])
  {
    v42 = @"AtWork";
  }

  else if (v148[3])
  {
    v42 = @"CurrentSuperset";
  }

  else if (v144[3])
  {
    v42 = @"OtherSuperset";
  }

  else
  {
    if (*(v140 + 24) != 1)
    {
      goto LABEL_62;
    }

    v42 = @"NoSuperset";
  }

  [v8 addObject:{v42, v47}];
LABEL_62:
  if (v136[3])
  {
    v43 = @"NoPeople";
  }

  else
  {
    if (*(v132 + 24) != 1)
    {
      goto LABEL_67;
    }

    v43 = @"Crowd";
  }

  [v8 addObject:{v43, v47}];
LABEL_67:
  if (v128[3])
  {
    v44 = @"BestPairSocialGroup";
  }

  else if (v124[3])
  {
    v44 = @"BestSocialGroups";
  }

  else
  {
    if (*(v120 + 24) != 1)
    {
      goto LABEL_74;
    }

    v44 = @"OtherSocialGroups";
  }

  [v8 addObject:{v44, v47}];
LABEL_74:
  if (v27)
  {
    [v8 addObject:@"LongTimeNoSeePeople"];
  }

  if (v38)
  {
    [v8 addObject:@"LongTimeNoSeeLocation"];
  }

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v91, 8);

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v105, 8);

  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v123, 8);
  _Block_object_dispose(&v127, 8);
  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(&v143, 8);
  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(&v155, 8);

  v45 = *MEMORY[0x277D85DE8];

  return v8;
}

void __81__PGMoodUtilities_moodGraphContextIdentifiersForMomentNodes_inGraph_moodOptions___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 countOfEdgesWithLabel:@"BELONGSTO" domain:302] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __81__PGMoodUtilities_moodGraphContextIdentifiersForMomentNodes_inGraph_moodOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 72) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = [*(a1 + 32) momentIsLongTimeNoSeeForPeopleWithMomentNode:v3];
    v4 = *(*(a1 + 72) + 8);
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
  v6 = *(*(a1 + 80) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [*(a1 + 32) momentIsLongTimeNoSeeForLocationWithMomentNode:v3];
    v6 = *(*(a1 + 80) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
  if (([v3 hasAddressNodes] & 1) == 0)
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    *(*(*(a1 + 96) + 8) + 24) = 0;
    *(*(*(a1 + 104) + 8) + 24) = 0;
    *(*(*(a1 + 112) + 8) + 24) = 0;
    *(*(*(a1 + 120) + 8) + 24) = 0;
  }

  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [v3 collection];
  v10 = [v9 addressNodes];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __81__PGMoodUtilities_moodGraphContextIdentifiersForMomentNodes_inGraph_moodOptions___block_invoke_4;
  v41[3] = &unk_278888E30;
  v42 = *(a1 + 40);
  v46 = *(a1 + 88);
  v43 = *(a1 + 48);
  v11 = v8;
  v12 = *(a1 + 120);
  v44 = v11;
  v47 = v12;
  v13 = v3;
  v45 = v13;
  v48 = vextq_s8(*(a1 + 104), *(a1 + 104), 8uLL);
  [v10 enumerateNodesUsingBlock:v41];

  v14 = *(*(a1 + 128) + 8);
  v17 = *(v14 + 40);
  v15 = (v14 + 40);
  v16 = v17;
  if (v17)
  {
    [v16 intersectSet:v11];
  }

  else
  {
    objc_storeStrong(v15, v8);
  }

  v18 = [v13 totalNumberOfPersons];
  if (v18)
  {
    *(*(*(a1 + 136) + 8) + 24) = 0;
    if (v18 <= 9)
    {
      *(*(*(a1 + 144) + 8) + 24) = 0;
    }
  }

  if ([*(a1 + 56) count] || *(*(*(a1 + 152) + 8) + 40))
  {
    if (([v13 hasEdgeWithLabel:@"SOCIALGROUP" domain:302] & 1) == 0)
    {
      *(*(*(a1 + 160) + 8) + 24) = 0;
      *(*(*(a1 + 168) + 8) + 24) = 0;
      *(*(*(a1 + 176) + 8) + 24) = 0;
    }

    v19 = [v13 socialGroupNodes];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v37 + 1) + 8 * i);
          if (([v24 isSameNodeAsNode:*(*(*(a1 + 152) + 8) + 40)] & 1) == 0)
          {
            if (([*(a1 + 56) containsObject:v24] & 1) == 0)
            {
              *(*(*(a1 + 160) + 8) + 24) = 0;
              v26 = a1 + 168;
LABEL_29:
              *(*(*v26 + 8) + 24) = 0;
              continue;
            }

            v25 = [*(a1 + 64) isBestPairSocialGroup:v24];
            v26 = a1 + 160;
            if ((v25 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v21);
    }

    v27 = *(*(*(a1 + 184) + 8) + 40);
    if (v27)
    {
      [v27 intersectSet:v19];
    }

    else
    {
      v28 = [v19 mutableCopy];
      v29 = *(*(a1 + 184) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }
  }

  v31 = [v13 personNodes];
  v32 = *(*(*(a1 + 192) + 8) + 40);
  if (v32)
  {
    [v32 intersectSet:v31];
  }

  else
  {
    v33 = [v31 mutableCopy];
    v34 = *(*(a1 + 192) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __81__PGMoodUtilities_moodGraphContextIdentifiersForMomentNodes_inGraph_moodOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__PGMoodUtilities_moodGraphContextIdentifiersForMomentNodes_inGraph_moodOptions___block_invoke_5;
    v9[3] = &unk_278888E08;
    v10 = *(a1 + 32);
    v11 = *(a1 + 64);
    [v3 enumerateNeighborNodesThroughEdgesWithLabel:@"IS_HOME_WORK" domain:202 usingBlock:v9];
  }

  if ([*(a1 + 40) count])
  {
    v4 = [v3 collection];
    v5 = [v4 cityNodes];
    v6 = [v5 anyNode];

    if (v6)
    {
      if ([*(a1 + 40) containsNode:v6])
      {
        [*(a1 + 48) addObject:v6];
        *(*(*(a1 + 80) + 8) + 24) = 0;
        v7 = [*(a1 + 56) happensAtFrequentLocation];
        v8 = 96;
        if (v7)
        {
          v8 = 88;
        }
      }

      else
      {
        *(*(*(a1 + 96) + 8) + 24) = 0;
        v8 = 88;
      }

      *(*(*(a1 + v8) + 8) + 24) = 0;
    }
  }
}

void __81__PGMoodUtilities_moodGraphContextIdentifiersForMomentNodes_inGraph_moodOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 hasEdgeTowardNode:*(a1 + 32)];
  v4 = v7;
  if (v3)
  {
    v5 = [v7 label];
    if ([v5 isEqualToString:@"Home"])
    {
      v6 = 40;
    }

    else
    {
      if (![v5 isEqualToString:@"Work"])
      {
LABEL_7:

        v4 = v7;
        goto LABEL_8;
      }

      v6 = 48;
    }

    *(*(*(a1 + v6) + 8) + 24) = 1;
    goto LABEL_7;
  }

LABEL_8:
}

+ (id)moodSceneIdentifiersByMomentForAssetCollection:(id)a3 withGraph:(id)a4 moodOptions:(id)a5
{
  v6 = [a1 _momentNodesForAssetCollection:a3 inGraph:a4 moodOptions:a5];
  v7 = [a1 moodSceneIdentifiersByMomentForMomentNodes:v6];

  return v7;
}

+ (id)moodSceneIdentifiersByMomentForMomentNodes:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__PGMoodUtilities_moodSceneIdentifiersByMomentForMomentNodes___block_invoke;
  v8[3] = &unk_278889290;
  v6 = v5;
  v9 = v6;
  [v4 enumerateNodesUsingBlock:v8];

  return v6;
}

void __62__PGMoodUtilities_moodSceneIdentifiersByMomentForMomentNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a2;
  v5 = [v3 array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PGMoodUtilities_moodSceneIdentifiersByMomentForMomentNodes___block_invoke_2;
  v11[3] = &unk_278888D88;
  v12 = v5;
  v6 = v5;
  [v4 enumerateSceneEdgesAndNodesUsingBlock:v11];
  v7 = *(a1 + 32);
  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 identifier];

  v10 = [v8 numberWithUnsignedInteger:v9];
  [v7 setObject:v6 forKeyedSubscript:v10];
}

void __62__PGMoodUtilities_moodSceneIdentifiersByMomentForMomentNodes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = [v5 isReliable];
  v7 = [v5 numberOfSearchConfidenceAssets];

  if ((v6 & 1) != 0 || v7)
  {
    v8 = objc_opt_new();
    v9 = [v10 label];
    [v8 setMoodIdentifier:v9];

    [v8 setIsDistributed:v6];
    [v8 setIsHighConfidence:v7 != 0];
    [*(a1 + 32) addObject:v8];
  }
}

+ (id)moodMeaningIdentifiersForAssetCollection:(id)a3 withGraph:(id)a4 moodOptions:(id)a5
{
  v6 = [a1 _momentNodesForAssetCollection:a3 inGraph:a4 moodOptions:a5];
  v7 = [a1 moodMeaningIdentifiersForMomentNodes:v6];

  return v7;
}

+ (id)moodMeaningIdentifiersForMomentNodes:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 meaningNodes];
  v6 = [v5 meaningLabels];

  if ([v6 count])
  {
    v7 = [v6 allObjects];
    [v4 addObjectsFromArray:v7];
  }

  v8 = [v3 celebratedHolidayNodes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__PGMoodUtilities_moodMeaningIdentifiersForMomentNodes___block_invoke;
  v11[3] = &unk_278888D00;
  v9 = v4;
  v12 = v9;
  [v8 enumerateNodesUsingBlock:v11];

  return v9;
}

void __56__PGMoodUtilities_moodMeaningIdentifiersForMomentNodes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Holiday.Celebrated.%d", objc_msgSend(a2, "category")];
  [v2 addObject:v3];
}

+ (id)moodGraphNodeIdentifiersForAssetCollection:(id)a3 withGraph:(id)a4 moodOptions:(id)a5
{
  v6 = [a1 _momentNodesForAssetCollection:a3 inGraph:a4 moodOptions:a5];
  v7 = [a1 moodGraphNodeIdentifiersForMomentNodes:v6];

  return v7;
}

+ (id)moodGraphNodeIdentifiersForMomentNodes:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke;
  v8[3] = &unk_278889290;
  v6 = v5;
  v9 = v6;
  [v4 enumerateNodesUsingBlock:v8];

  return v6;
}

void __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_2;
  v7[3] = &unk_278889CE0;
  v8 = *(a1 + 32);
  v4 = a2;
  [v4 enumerateNeighborNodesUsingBlock:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_7;
  v5[3] = &unk_278888D60;
  v6 = *(a1 + 32);
  [v4 enumerateSignificantPartsOfDayUsingBlock:v5];
}

void __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if (v4 > 500)
  {
    switch(v4)
    {
      case 501:
        v16 = *(a1 + 32);
        v17 = MEMORY[0x277CCACA8];
        v18 = [v3 label];
        [v17 stringWithFormat:@"POI.%@", v18];
        break;
      case 502:
        v16 = *(a1 + 32);
        v21 = MEMORY[0x277CCACA8];
        v18 = [v3 label];
        [v21 stringWithFormat:@"ROI.%@", v18];
        break;
      case 600:
        goto LABEL_21;
      default:
LABEL_9:
        v5 = *(a1 + 32);
        v6 = v3;
        v7 = [v6 name];
        v8 = MEMORY[0x277CCACA8];
        v9 = [v6 label];
        v10 = v9;
        if (v7)
        {
          v11 = [v6 name];
          v12 = [v8 stringWithFormat:@"%@.%@", v10, v11];
        }

        else
        {
          v12 = [v8 stringWithFormat:@"%@", v9];
        }

        [v5 addObject:v12];
        goto LABEL_21;
    }
    v22 = ;
    [v16 addObject:v22];

    goto LABEL_21;
  }

  if (v4 == 200)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_3;
    v29[3] = &unk_278888CA8;
    v30 = *(a1 + 32);
    v13 = v3;
    [v13 enumerateNeighborNodesThroughEdgesWithLabel:@"IS_HOME_WORK" domain:202 usingBlock:v29];
    v14 = [v13 collection];

    v15 = [v14 areaNodes];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_4;
    v27[3] = &unk_278888CD0;
    v28 = *(a1 + 32);
    [v15 enumerateNodesUsingBlock:v27];

    goto LABEL_21;
  }

  if (v4 != 400)
  {
    if (v4 == 401)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v19 = [v3 label];
  if ([v19 isEqualToString:@"Date"])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_5;
    v25[3] = &unk_278888D00;
    v26 = *(a1 + 32);
    v20 = v3;
    [v20 enumerateHolidayNodesUsingBlock:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_6;
    v23[3] = &unk_278888D30;
    v24 = *(a1 + 32);
    [v20 enumerateNeighborNodesThroughEdgesWithLabel:@"SEASON" domain:400 usingBlock:v23];
  }

  else
  {
    [v19 isEqualToString:@"PartOfDay"];
  }

LABEL_21:
}

void __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v5 = [PGGraphPartOfDayNode stringValueForPartOfDay:a2];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PartOfDay.%@", v5];
  [v3 addObject:v4];
}

void __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  [v2 addObject:v3];
}

void __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  [v2 addObject:v3];
}

void __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Holiday.%d", objc_msgSend(a2, "category")];
  [v2 addObject:v3];
}

void __58__PGMoodUtilities_moodGraphNodeIdentifiersForMomentNodes___block_invoke_6(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = [v10 name];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v10 label];
  v7 = v6;
  if (v4)
  {
    v8 = [v10 name];
    v9 = [v5 stringWithFormat:@"%@.%@", v7, v8];
  }

  else
  {
    v9 = [v5 stringWithFormat:@"%@", v6];
  }

  [v3 addObject:v9];
}

@end