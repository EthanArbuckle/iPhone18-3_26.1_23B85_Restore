@interface PGKeyCurator
- (BOOL)cluster:(id)cluster scoresBetterThanCluster:(id)thanCluster;
- (BOOL)scoreLevelOfCluster:(id)cluster isAboveScoreLevelOfCluster:(id)ofCluster;
- (PGKeyCurator)initWithCurationCriteriaFactory:(id)factory;
- (id)_keyItemInItems:(id)items options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block;
- (id)bestItemIdentifierWithItems:(id)items options:(id)options debugInfo:(id *)info criteria:(id)criteria curationOptions:(id)curationOptions;
- (id)bestItemInItems:(id)items options:(id)options criteria:(id)criteria minimumCriteriaScore:(double)score triedAndFailedToDoBetter:(BOOL *)better;
- (id)bestItemInItems:(id)items options:(id)options criteria:(id)criteria minimumCriteriaScore:(double)score useIconicScore:(BOOL)iconicScore;
- (id)clusterWithSubclusters:(id)subclusters keyItem:(id)item;
- (id)itemsByIconicScoreBucketWithItems:(id)items;
- (id)keyItemIdentifierWithItems:(id)items options:(id)options debugInfo:(id *)info;
- (id)keyItemInItems:(id)items options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block;
- (id)keyItemWithFeeder:(id)feeder options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block;
@end

@implementation PGKeyCurator

- (id)bestItemInItems:(id)items options:(id)options criteria:(id)criteria minimumCriteriaScore:(double)score triedAndFailedToDoBetter:(BOOL *)better
{
  itemsCopy = items;
  optionsCopy = options;
  criteriaCopy = criteria;
  v15 = [(CLSAssetsBeautifier *)self->_beautifier bestItemInItems:itemsCopy];
  if (v15)
  {
    isForMemories = [optionsCopy isForMemories];
    allowGuestAsset = [optionsCopy allowGuestAsset];
    v59[0] = 1.0;
    if (criteriaCopy)
    {
      v18 = ![(PGKeyCurator *)self item:v15 passesCriteria:criteriaCopy score:v59];
    }

    else
    {
      v18 = 0;
    }

    v44 = isForMemories;
    v47 = [v15 clsAvoidIfPossibleAsKeyItemForMemories:isForMemories allowGuestAsset:allowGuestAsset];
    wantsGoodSquareCropScore = [optionsCopy wantsGoodSquareCropScore];
    if (wantsGoodSquareCropScore && [v15 clsPeopleCount])
    {
      [v15 clsSquareCropScore];
      v21 = v20 < *MEMORY[0x277D3C780];
    }

    else
    {
      v21 = 0;
    }

    betterCopy = better;
    promoteAutoplayableItems = [optionsCopy promoteAutoplayableItems];
    if (promoteAutoplayableItems)
    {
      [v15 clsAutoplaySuggestionScore];
      v23 = v22 <= 0.71;
    }

    else
    {
      v23 = 0;
    }

    v43 = allowGuestAsset;
    if (v18)
    {

      v15 = 0;
    }

    if (v59[0] < score)
    {
      v24 = 1;
    }

    else
    {
      v24 = v18;
    }

    v25 = [itemsCopy count];
    v26 = v25 > 1;
    if (!((v25 < 2) | v47 & 1 | v24 & 1))
    {
      v26 = v23 || v21;
    }

    if (v26)
    {
      v27 = betterCopy;
      if (betterCopy)
      {
        *betterCopy = 1;
      }

      v28 = itemsCopy;
      v29 = v28;
      if (criteriaCopy || wantsGoodSquareCropScore)
      {
        v30 = v28;
        v31 = MEMORY[0x277CCAC30];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke;
        v54[3] = &unk_2788843C0;
        v58 = wantsGoodSquareCropScore;
        v55 = criteriaCopy;
        selfCopy = self;
        scoreCopy = score;
        v32 = [v31 predicateWithBlock:v54];
        v29 = [v30 filteredArrayUsingPredicate:v32];

        v27 = betterCopy;
      }

      if (promoteAutoplayableItems)
      {
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke_2;
        v51[3] = &__block_descriptor_34_e49_B24__0___CLSInvestigationItem__8__NSDictionary_16l;
        v52 = v44;
        v53 = v43;
        v33 = [MEMORY[0x277CCAC30] predicateWithBlock:v51];
        v34 = v29;
        v35 = [v29 filteredArrayUsingPredicate:v33];

        if ([v35 count])
        {
          v36 = [(CLSAssetsBeautifier *)self->_beautifier bestItemInItems:v35];

          v29 = v34;
          v27 = betterCopy;
          if (v36)
          {
            goto LABEL_37;
          }
        }

        else
        {

          v29 = v34;
          v27 = betterCopy;
        }
      }

      if ((v24 | v47 | v21))
      {
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke_3;
        v48[3] = &__block_descriptor_34_e49_B24__0___CLSInvestigationItem__8__NSDictionary_16l;
        v49 = v44;
        v50 = v43;
        v37 = [MEMORY[0x277CCAC30] predicateWithBlock:v48];
        v38 = [v29 filteredArrayUsingPredicate:v37];

        if ([v38 count])
        {
          v36 = [(CLSAssetsBeautifier *)self->_beautifier bestItemInItems:v38];

          v27 = betterCopy;
          if (v36)
          {
            goto LABEL_37;
          }
        }

        else
        {

          v27 = betterCopy;
        }
      }

      if (((v24 | v21) & 1) == 0)
      {
        v36 = 0;
        goto LABEL_49;
      }

      v36 = [(CLSAssetsBeautifier *)self->_beautifier bestItemInItems:v29];
      if (!v36)
      {
LABEL_49:

        goto LABEL_50;
      }

LABEL_37:
      if (criteriaCopy && (([(PGKeyCurator *)self item:v36 passesCriteria:criteriaCopy score:v59]| v24) & 1) == 0)
      {
        goto LABEL_49;
      }

      if ((((v47 | v21) | v24) & 1) == 0 && ((promoteAutoplayableItems ^ 1) & 1) == 0)
      {
        [v36 clsContentScore];
        v39 = *MEMORY[0x277D3C760];
        if (v40 < *MEMORY[0x277D3C760])
        {
          [v15 clsContentScore];
          if (v41 >= v39)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        v36 = v36;

        if (v27)
        {
          *v27 = 0;
        }

        v15 = v36;
        goto LABEL_49;
      }

      if (((v47 | v21) | v24))
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }
  }

LABEL_50:

  return v15;
}

BOOL __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = 0.0;
  if (*(a1 + 56))
  {
    if ([v5 clsPeopleCount])
    {
      [v5 clsSquareCropScore];
      if (v7 < *MEMORY[0x277D3C780])
      {
        goto LABEL_7;
      }
    }
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (![*(a1 + 40) item:v5 passesCriteria:v8 score:&v11])
  {
LABEL_7:
    v9 = 0;
  }

  else
  {
    v9 = v11 >= *(a1 + 48);
  }

LABEL_9:

  return v9;
}

BOOL __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 clsAvoidIfPossibleAsKeyItemForMemories:*(a1 + 32) allowGuestAsset:*(a1 + 33)])
  {
    v4 = 0;
  }

  else
  {
    [v3 clsAutoplaySuggestionScore];
    v4 = v5 > 0.71;
  }

  return v4;
}

- (id)bestItemInItems:(id)items options:(id)options criteria:(id)criteria minimumCriteriaScore:(double)score useIconicScore:(BOOL)iconicScore
{
  iconicScoreCopy = iconicScore;
  v61 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  criteriaCopy = criteria;
  if (iconicScoreCopy)
  {
    promoteAutoplayableItems = [optionsCopy promoteAutoplayableItems];
    if ([optionsCopy promoteAutoplayableItems])
    {
      v14 = [optionsCopy avoidPromotingAutoplayableItemsWhenUsingIconicScore] ^ 1;
    }

    else
    {
      v14 = 0;
    }

    v48 = criteriaCopy;
    [optionsCopy setPromoteAutoplayableItems:v14];
    v49 = itemsCopy;
    v52 = [(PGKeyCurator *)self itemsByIconicScoreBucketWithItems:itemsCopy];
    allKeys = [v52 allKeys];
    v16 = [allKeys sortedArrayUsingSelector:sel_compare_];
    reverseObjectEnumerator = [v16 reverseObjectEnumerator];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = reverseObjectEnumerator;
    v18 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v18)
    {
      v19 = v18;
      v53 = 0;
      v15 = 0;
      v51 = *v57;
LABEL_8:
      v20 = 0;
      while (1)
      {
        if (*v57 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v56 + 1) + 8 * v20);
        if (![v21 intValue])
        {
          break;
        }

        v22 = [v52 objectForKeyedSubscript:v21];
        v55 = 0;
        v23 = [(PGKeyCurator *)self bestItemInItems:v22 options:optionsCopy criteria:0 minimumCriteriaScore:&v55 triedAndFailedToDoBetter:score];
        v24 = v23;
        if (v23)
        {
          curationModel = [v23 curationModel];
          iconicScoreModel = [curationModel iconicScoreModel];

          curationModel2 = [v15 curationModel];
          iconicScoreModel2 = [curationModel2 iconicScoreModel];

          [iconicScoreModel similarIconicScoreThreshold];
          v30 = v29;
          version = [iconicScoreModel version];
          version2 = [iconicScoreModel2 version];
          [v15 clsIconicScore];
          v34 = v33;
          [v24 clsIconicScore];
          v36 = v35;
          [v24 clsContentScore];
          v38 = v37;
          [v15 clsContentScore];
          if (!v15 || (v53 & (v55 == 0)) != 0 || (v53 & 1) == v55 && version == version2 && v34 - v36 <= v30 && v38 - v39 >= 0.05)
          {
            v40 = v24;

            v53 = v55;
            v15 = v40;
          }
        }

        if (v19 == ++v20)
        {
          v19 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v19)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    else
    {
      v53 = 0;
      v15 = 0;
    }

    [optionsCopy setPromoteAutoplayableItems:promoteAutoplayableItems];
    if (v15 && (v53 & 1) == 0)
    {
      v15 = v15;

      v41 = v15;
      criteriaCopy = v48;
      itemsCopy = v49;
      goto LABEL_34;
    }

    criteriaCopy = v48;
    itemsCopy = v49;
  }

  else
  {
    v15 = 0;
  }

  v55 = 0;
  v41 = [(PGKeyCurator *)self bestItemInItems:itemsCopy options:optionsCopy criteria:criteriaCopy minimumCriteriaScore:&v55 triedAndFailedToDoBetter:score];
  if (v55 == 1 && v15 != 0)
  {
    v43 = v15;

    v41 = v43;
  }

LABEL_34:

  v44 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)itemsByIconicScoreBucketWithItems:(id)items
{
  v24 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        [v10 clsIconicScore];
        v12 = v11;
        curationModel = [v10 curationModel];
        iconicScoreModel = [curationModel iconicScoreModel];

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(iconicScoreModel, "bucketForIconicScore:", v12)}];
        v16 = [v4 objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v16 forKeyedSubscript:v15];
        }

        [v16 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)cluster:(id)cluster scoresBetterThanCluster:(id)thanCluster
{
  clusterCopy = cluster;
  thanClusterCopy = thanCluster;
  subclusters = [clusterCopy subclusters];
  v9 = [subclusters count];

  subclusters2 = [thanClusterCopy subclusters];
  v11 = [subclusters2 count];

  if (v9 <= v11)
  {
    [clusterCopy score];
    v14 = v13;
    [thanClusterCopy score];
    v17 = v14 < v15 || v9 < v11 >> 1;
    if (v9 < (3 * v11) >> 2 || v14 <= v15)
    {
      LOBYTE(v12) = !v17 && [(PGKeyCurator *)self scoreLevelOfCluster:clusterCopy isAboveScoreLevelOfCluster:thanClusterCopy];
    }

    else
    {
      keyItem = [clusterCopy keyItem];
      [keyItem clsContentScore];
      v20 = v19;
      keyItem2 = [thanClusterCopy keyItem];
      [keyItem2 clsContentScore];
      LOBYTE(v12) = v20 > v22;
      if (v20 <= v22 && !v17)
      {
        LOBYTE(v12) = [(PGKeyCurator *)self scoreLevelOfCluster:clusterCopy isAboveScoreLevelOfCluster:thanClusterCopy];
      }
    }
  }

  else
  {
    v12 = ![(PGKeyCurator *)self cluster:thanClusterCopy scoresBetterThanCluster:clusterCopy];
  }

  return v12;
}

- (BOOL)scoreLevelOfCluster:(id)cluster isAboveScoreLevelOfCluster:(id)ofCluster
{
  v5 = ContentScoreLevelIsBetterThanOtherContentScoreLevel;
  ofClusterCopy = ofCluster;
  keyItem = [cluster keyItem];
  [keyItem clsContentScore];
  v9 = v8;
  keyItem2 = [ofClusterCopy keyItem];

  [keyItem2 clsContentScore];
  LOBYTE(v5) = v5[2](v9, v11);

  return v5;
}

- (id)clusterWithSubclusters:(id)subclusters keyItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  subclustersCopy = subclusters;
  itemCopy = item;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [subclustersCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(subclustersCopy);
        }

        [*(*(&v16 + 1) + 8 * i) score];
        v10 = v10 + v12;
      }

      v8 = [subclustersCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v13 = -[PGKeyCuratorCluster initWithSubclusters:keyItem:score:]([PGKeyCuratorCluster alloc], "initWithSubclusters:keyItem:score:", subclustersCopy, itemCopy, v10 / [subclustersCopy count]);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_keyItemInItems:(id)items options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block
{
  v129 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  criteriaCopy = criteria;
  infoCopy = info;
  blockCopy = block;
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v67 = _Block_copy(blockCopy);
  if (v67)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v113[3] >= 0.01)
    {
      v113[3] = Current;
      v111 = 0;
      v67[2](v67, &v111, 0.0);
      v14 = *(v117 + 24) | v111;
      *(v117 + 24) = v14;
      if (v14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 284;
          v127 = 2080;
          v128 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGKeyCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_9;
      }
    }
  }

  v15 = [itemsCopy count];
  if (!v15)
  {
LABEL_9:
    firstObject = 0;
    goto LABEL_70;
  }

  if (v15 == 1)
  {
    firstObject = [itemsCopy firstObject];
  }

  else
  {
    if ([optionsCopy complete])
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    v18 = [PGCurationManager summaryClusteringForDuration:v17];
    [v18 setDiffuseDensityClusteringMaximumDistance:28800.0];
    [v18 setConciseDensityClusteringMaximumDistance:2700.0];
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __73__PGKeyCurator__keyItemInItems_options_criteria_debugInfo_progressBlock___block_invoke;
    v106[3] = &unk_27888A188;
    v74 = v67;
    v107 = v74;
    v108 = &v112;
    v110 = 0x3F847AE147AE147BLL;
    v109 = &v116;
    v65 = v18;
    v19 = [v18 densityClustersWithItems:itemsCopy progressBlock:v106];
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v19, "count")}];
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = v19;
    v21 = [obj countByEnumeratingWithState:&v102 objects:v125 count:16];
    if (v21)
    {
      v22 = *v103;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v103 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [MEMORY[0x277D3AC38] clusterWithObjects:*(*(&v102 + 1) + 8 * i)];
          [v20 addObject:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v102 objects:v125 count:16];
      }

      while (v21);
    }

    [infoCopy setClusters:v20 withReason:@"Summarizer"];
    if ([optionsCopy useIconicScore])
    {
      v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"iconicScoreBucket" ascending:0];
      v124[0] = v25;
      v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
      v124[1] = v26;
      v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"keyItem.clsIdentifier" ascending:0];
      v124[2] = v27;
      v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:3];
    }

    else
    {
      v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
      v123[0] = v25;
      v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"keyItem.clsIdentifier" ascending:0];
      v123[1] = v26;
      v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
    }

    isForMemories = [optionsCopy isForMemories];
    allowGuestAsset = [optionsCopy allowGuestAsset];
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v69 = v20;
    v75 = [v69 countByEnumeratingWithState:&v98 objects:v122 count:16];
    if (v75)
    {
      v77 = 0;
      v72 = *v99;
      do
      {
        for (j = 0; j != v75; ++j)
        {
          if (*v99 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v28 = *(*(&v98 + 1) + 8 * j);
          v83 = [infoCopy debugInfoForCluster:v28];
          similarStacker = self->_similarStacker;
          objects = [v28 objects];
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __73__PGKeyCurator__keyItemInItems_options_criteria_debugInfo_progressBlock___block_invoke_2;
          v93[3] = &unk_27888A188;
          v94 = v74;
          v95 = &v112;
          v97 = 0x3F847AE147AE147BLL;
          v96 = &v116;
          v31 = [(CLSSimilarStacker *)similarStacker stackSimilarItems:objects withSimilarity:0 timestampSupport:0 progressBlock:v93];

          v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v31, "count")}];
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v33 = v31;
          v34 = [v33 countByEnumeratingWithState:&v89 objects:v121 count:16];
          if (v34)
          {
            v35 = *v90;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v90 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v37 = [MEMORY[0x277D3AC38] clusterWithObjects:*(*(&v89 + 1) + 8 * k)];
                [v32 addObject:v37];
              }

              v34 = [v33 countByEnumeratingWithState:&v89 objects:v121 count:16];
            }

            while (v34);
          }

          [v83 setClusters:v32 withReason:@"Stack Similar"];
          v81 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v33, "count")}];
          v82 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v33, "count")}];
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v80 = v33;
          v38 = [v80 countByEnumeratingWithState:&v85 objects:v120 count:16];
          if (v38)
          {
            v39 = *v86;
            v40 = 0.0;
            do
            {
              for (m = 0; m != v38; ++m)
              {
                if (*v86 != v39)
                {
                  objc_enumerationMutation(v80);
                }

                v42 = *(*(&v85 + 1) + 8 * m);
                v43 = -[PGKeyCurator bestItemInItems:options:criteria:minimumCriteriaScore:useIconicScore:](self, "bestItemInItems:options:criteria:minimumCriteriaScore:useIconicScore:", v42, optionsCopy, criteriaCopy, [optionsCopy useIconicScore], 0.0);
                if (v43)
                {
                  *buf = 0.0;
                  [(PGKeyCurator *)self item:v43 passesCriteria:criteriaCopy score:buf];
                  [v82 addObject:v43];
                  if (criteriaCopy)
                  {
                    v44 = *buf;
                    [v43 clsContentScore];
                    v46 = (v44 + v45) * 0.5;
                  }

                  else
                  {
                    [v43 clsContentScore];
                    v46 = v48;
                  }

                  if ([optionsCopy useIconicScore])
                  {
                    [v43 clsIconicScore];
                    v50 = v49;
                    curationModel = [v43 curationModel];
                    iconicScoreModel = [curationModel iconicScoreModel];

                    [iconicScoreModel minimumMeaningfulIconicScore];
                    if (v50 < v53)
                    {
                      v54 = 0.0;
                    }

                    else
                    {
                      v54 = v50;
                    }

                    v55 = [iconicScoreModel bucketForIconicScore:v54];
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v56 = [[PGKeyCuratorSubcluster alloc] initWithItems:v42 keyItem:v43 score:v55 iconicScoreBucket:v46];
                  [v81 addObject:v56];
                  v57 = *buf;
                  [v83 dedupItems:v42 toItem:v43 withDedupingType:1];
                  if (criteriaCopy)
                  {
                    v40 = v40 + v57;
                  }
                }

                else
                {
                  v47 = [MEMORY[0x277CBEB98] setWithArray:v42];
                  [v83 setState:2 ofItems:v47 withReason:@"No key item"];
                }
              }

              v38 = [v80 countByEnumeratingWithState:&v85 objects:v120 count:16];
            }

            while (v38);
          }

          else
          {
            v40 = 0.0;
          }

          v58 = [v82 count];
          if (v58)
          {
            v40 = v40 / v58;
          }

          v59 = -[PGKeyCurator bestItemInItems:options:criteria:minimumCriteriaScore:useIconicScore:](self, "bestItemInItems:options:criteria:minimumCriteriaScore:useIconicScore:", v82, optionsCopy, criteriaCopy, [optionsCopy useIconicScore], fmin(v40, 0.5));
          [v83 setState:3 ofItem:v59 withReason:@"Key item in subcluster"];
          [v81 sortUsingDescriptors:v73];
          v60 = [(PGKeyCurator *)self clusterWithSubclusters:v81 keyItem:v59];
          v61 = v77;
          if (!v77 || (v61 = v77, [(PGKeyCurator *)self cluster:v60 isBetterThanCluster:v77 forMemories:isForMemories allowGuestAsset:allowGuestAsset]))
          {
            v62 = v60;

            v77 = v62;
          }
        }

        v75 = [v69 countByEnumeratingWithState:&v98 objects:v122 count:16];
      }

      while (v75);
    }

    else
    {
      v77 = 0;
    }

    firstObject = [v77 keyItem];
    if (firstObject)
    {
      [infoCopy forceState:4 ofItem:firstObject withReason:@"Key item in town"];
    }
  }

LABEL_70:
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);

  v63 = *MEMORY[0x277D85DE8];

  return firstObject;
}

void __73__PGKeyCurator__keyItemInItems_options_criteria_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __73__PGKeyCurator__keyItemInItems_options_criteria_debugInfo_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)bestItemIdentifierWithItems:(id)items options:(id)options debugInfo:(id *)info criteria:(id)criteria curationOptions:(id)curationOptions
{
  optionsCopy = options;
  v13 = MEMORY[0x277CBEB18];
  curationOptionsCopy = curationOptions;
  criteriaCopy = criteria;
  itemsCopy = items;
  v17 = objc_alloc_init(v13);
  v18 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __87__PGKeyCurator_bestItemIdentifierWithItems_options_debugInfo_criteria_curationOptions___block_invoke;
  v26[3] = &unk_278886108;
  v19 = v18;
  v27 = v19;
  v20 = optionsCopy;
  v28 = v20;
  v21 = v17;
  v29 = v21;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v26];

  v22 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v21];
  v23 = [(PGKeyCurator *)self keyItemInItems:v21 options:curationOptionsCopy criteria:criteriaCopy debugInfo:v22 progressBlock:0];

  if (info)
  {
    *info = [v22 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
  }

  clsIdentifier = [v23 clsIdentifier];

  return clsIdentifier;
}

void __87__PGKeyCurator_bestItemIdentifierWithItems_options_debugInfo_criteria_curationOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v5 curationModelForItemInfo:v7 options:v6];
  v9 = [PGCuratorInvestigationItem itemWithUUID:v8 itemInfo:v7 curationModel:v10];

  [*(a1 + 48) addObject:v9];
}

- (id)keyItemIdentifierWithItems:(id)items options:(id)options debugInfo:(id *)info
{
  optionsCopy = options;
  v9 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  v11 = objc_alloc_init(v9);
  v12 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__PGKeyCurator_keyItemIdentifierWithItems_options_debugInfo___block_invoke;
  v25[3] = &unk_278886108;
  v13 = v12;
  v26 = v13;
  v14 = optionsCopy;
  v27 = v14;
  v15 = v11;
  v28 = v15;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v25];

  v16 = [v14 objectForKeyedSubscript:@"useSummarizer"];

  if (v16)
  {
    v17 = [[PGKeyAssetCurationOptions alloc] initWithDictionaryRepresentation:v14];
  }

  else
  {
    v17 = objc_alloc_init(PGKeyAssetCurationOptions);
  }

  v18 = v17;
  v19 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v15];
  v20 = [v14 objectForKeyedSubscript:@"meaningForCriteria"];
  if (v20)
  {
    v21 = [(PGCurationCriteriaFactory *)self->_curationCriteriaFactory curationCriteriaWithCollection:0 meaningLabel:v20 inGraph:0 client:0];
  }

  else
  {
    v21 = 0;
  }

  v22 = [(PGKeyCurator *)self keyItemInItems:v15 options:v18 criteria:v21 debugInfo:v19 progressBlock:0];
  if (info)
  {
    *info = [v19 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
  }

  clsIdentifier = [v22 clsIdentifier];

  return clsIdentifier;
}

void __61__PGKeyCurator_keyItemIdentifierWithItems_options_debugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v5 curationModelForItemInfo:v7 options:v6];
  v9 = [PGCuratorInvestigationItem itemWithUUID:v8 itemInfo:v7 curationModel:v10];

  [*(a1 + 48) addObject:v9];
}

- (id)keyItemInItems:(id)items options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  criteriaCopy = criteria;
  infoCopy = info;
  blockCopy = block;
  if (![itemsCopy count])
  {
    firstObject = 0;
    goto LABEL_5;
  }

  v17 = [(PGKeyCurator *)self _keyItemInItems:itemsCopy options:optionsCopy criteria:criteriaCopy debugInfo:infoCopy progressBlock:blockCopy];
  if (v17)
  {
LABEL_3:
    firstObject = v17;
    goto LABEL_5;
  }

  if (([optionsCopy complete] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Couldn't find a key item with complete == NO, retrying with complete == YES", &buf, 2u);
    }

    [infoCopy resetWithReason:{@"Couldn't find a key item with complete == NO, retrying with complete == YES"}];
    [optionsCopy setComplete:1];
    firstObject = [(PGKeyCurator *)self _keyItemInItems:itemsCopy options:optionsCopy criteria:criteriaCopy debugInfo:infoCopy progressBlock:blockCopy];
    [optionsCopy setComplete:0];
    if (firstObject)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      clsIdentifier = [firstObject clsIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = clsIdentifier;
      v22 = MEMORY[0x277D86220];
      v23 = "Found '%@' as key item with complete == YES";
      goto LABEL_53;
    }
  }

  selfCopy = self;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Couldn't find a key item with complete == YES, try and use the highest content scoring non-utility item, or the if none the highest aesthetic scoring utility item", &buf, 2u);
  }

  v51 = blockCopy;
  v52 = infoCopy;
  [infoCopy resetWithReason:{@"Couldn't find a key item with complete == YES, try and use the highest content scoring non-utility item, or the if none the highest aesthetic scoring utility item"}];
  isForMemories = [optionsCopy isForMemories];
  v53 = optionsCopy;
  allowGuestAsset = [optionsCopy allowGuestAsset];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v26 = itemsCopy;
  v27 = [v26 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v50 = itemsCopy;
    v29 = 0;
    firstObject = 0;
    v30 = *v56;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v56 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v38 = *(*(&v55 + 1) + 8 * i);
        buf = 0uLL;
        v60 = 0.0;
        [v38 clsContentScore];
        *&buf = v39;
        if (!criteriaCopy || [(PGKeyCurator *)selfCopy item:v38 passesCriteria:criteriaCopy score:&buf + 8])
        {
          [v38 clsAestheticScore];
          v60 = v40;
          if ([v38 clsAvoidIfPossibleAsKeyItemForMemories:isForMemories allowGuestAsset:allowGuestAsset])
          {
            if (!v29 || (*(ItemScoreIsBetterThanOtherItemScore + 2))(*&buf, *(&buf + 1), v60, v33, v32, v31))
            {
              v41 = v38;

              v32 = *(&buf + 1);
              v33 = *&buf;
              v29 = v41;
              v31 = v60;
            }
          }

          else if (!firstObject || (*(ItemScoreIsBetterThanOtherItemScore + 2))(*&buf, *(&buf + 1), v60, v36, v35, v34))
          {
            v42 = v38;

            v35 = *(&buf + 1);
            v36 = *&buf;
            firstObject = v42;
            v34 = v60;
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v28);

    v43 = MEMORY[0x277D3C778];
    if (firstObject)
    {
      v44 = *MEMORY[0x277D3C778];
      if (v36 != *MEMORY[0x277D3C778] || v33 <= v44)
      {
        v33 = v36;
        itemsCopy = v50;
        infoCopy = v52;
        goto LABEL_41;
      }
    }

    v46 = v29;

    itemsCopy = v50;
    infoCopy = v52;
    if (v46)
    {
      v44 = *v43;
      firstObject = v46;
LABEL_41:
      if (v33 <= v44)
      {
        [infoCopy chooseItem:firstObject inItems:v26 withReason:@"Key utility item"];
        optionsCopy = v53;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          clsIdentifier2 = [firstObject clsIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = clsIdentifier2;
          v48 = MEMORY[0x277D86220];
          v49 = "Found utility item '%@' for key item";
          goto LABEL_56;
        }
      }

      else
      {
        [infoCopy chooseItem:firstObject inItems:v26 withReason:@"Key non-utility item"];
        optionsCopy = v53;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          clsIdentifier2 = [firstObject clsIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = clsIdentifier2;
          v48 = MEMORY[0x277D86220];
          v49 = "Found non-utility item '%@' for key item";
LABEL_56:
          _os_log_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_INFO, v49, &buf, 0xCu);
        }
      }

      blockCopy = v51;
      goto LABEL_5;
    }
  }

  else
  {
  }

  optionsCopy = v53;
  blockCopy = v51;
  if (criteriaCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Couldn't find a key item with criteria, retrying without criteria", &buf, 2u);
    }

    [infoCopy resetWithReason:{@"Couldn't find a key item with criteria, retrying without criteria"}];
    v17 = [(PGKeyCurator *)selfCopy keyItemInItems:v26 options:v53 criteria:0 debugInfo:infoCopy progressBlock:v51];
    if (v17)
    {
      goto LABEL_3;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf) = 0;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Couldn't find anything although we have items, this should never happen", &buf, 2u);
  }

  firstObject = [v26 firstObject];
  [infoCopy chooseItem:firstObject inItems:v26 withReason:@"At least it's an item"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    clsIdentifier = [firstObject clsIdentifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = clsIdentifier;
    v22 = MEMORY[0x277D86220];
    v23 = "Found '%@' item for key item";
LABEL_53:
    _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, v23, &buf, 0xCu);
  }

LABEL_5:

  v19 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)keyItemWithFeeder:(id)feeder options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  criteriaCopy = criteria;
  optionsCopy = options;
  allItems = [feeder allItems];
  v17 = [(PGKeyCurator *)self keyItemInItems:allItems options:optionsCopy criteria:criteriaCopy debugInfo:infoCopy progressBlock:blockCopy];

  return v17;
}

- (PGKeyCurator)initWithCurationCriteriaFactory:(id)factory
{
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = PGKeyCurator;
  v6 = [(PGKeyCurator *)&v12 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D27670]) initWithSimilarityModelClass:objc_opt_class()];
    beautifier = v6->_beautifier;
    v6->_beautifier = v7;

    v9 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
    similarStacker = v6->_similarStacker;
    v6->_similarStacker = v9;

    objc_storeStrong(&v6->_curationCriteriaFactory, factory);
  }

  return v6;
}

@end