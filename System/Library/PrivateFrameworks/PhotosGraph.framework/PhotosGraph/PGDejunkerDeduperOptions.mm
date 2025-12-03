@interface PGDejunkerDeduperOptions
- (PGDejunkerDeduperOptions)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentationRestrictingToGlobalOptions:(BOOL)options;
- (id)initForCuratedLibrary;
- (id)initForMemories;
@end

@implementation PGDejunkerDeduperOptions

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  if (self->_doIdenticalDeduping)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"Do identical deduping: %@", v5];
  [v4 appendFormat:@"\tTime interval: %.3f", *&self->_identicalDedupingTimeInterval];
  [v4 appendFormat:@"\tTime interval for people: %.3f", *&self->_identicalDedupingTimeIntervalForPeople];
  [v4 appendFormat:@"\tMaximum time group extension: %.3f", *&self->_identicalDedupingMaximumTimeGroupExtension];
  [v4 appendFormat:@"\tMaximum number of items per cluster: %lu", self->_maximumNumberOfItemsPerIdenticalCluster];
  [v4 appendFormat:@"\tDeduping threshold: %.3f", *&self->_identicalDedupingThreshold];
  [v4 appendFormat:@"\tDeduping threshold for people: %.3f", *&self->_identicalDedupingThresholdForPeople];
  [v4 appendFormat:@"\tDeduping threshold for best items: %.3f", *&self->_identicalDedupingThresholdForBestItems];
  if (self->_useFaceprintsForIdenticalDeduping)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v4 appendFormat:@"\tUse faceprints: %@", v6];
  [v4 appendFormat:@"\tFaceprint distance: %.3f", *&self->_identicalDedupingFaceprintDistance];
  if (self->_doSemanticalDeduping)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v4 appendFormat:@"Do semantical deduping: %@", v7];
  [v4 appendFormat:@"\tTime interval: %.3f", *&self->_semanticalDedupingTimeInterval];
  [v4 appendFormat:@"\tTime interval for people: %.3f", *&self->_semanticalDedupingTimeIntervalForPeople];
  [v4 appendFormat:@"\tTime interval for persons: %.3f", *&self->_semanticalDedupingTimeIntervalForPersons];
  [v4 appendFormat:@"\tMaximum time group extension: %.3f", *&self->_semanticalDedupingMaximumTimeGroupExtension];
  [v4 appendFormat:@"\tMaximum number of items per cluster: %lu", self->_maximumNumberOfItemsPerSemanticalCluster];
  [v4 appendFormat:@"\tDeduping threshold: %.3f", *&self->_semanticalDedupingThreshold];
  [v4 appendFormat:@"\tDeduping threshold for people: %.3f", *&self->_semanticalDedupingThresholdForPeople];
  [v4 appendFormat:@"\tDeduping threshold for persons: %.3f", *&self->_semanticalDedupingThresholdForPersons];
  if (self->_doNotSemanticallyDedupePeople)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v4 appendFormat:@"\tDon't dedupe people: %@", v8];
  if (self->_doNotSemanticallyDedupePersons)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v4 appendFormat:@"\tDon't dedupe persons: %@", v9];
  if (self->_allowAdaptiveForSemanticalDeduping)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v4 appendFormat:@"\tAllow adaptive: %@", v10];
  if (self->_semanticalDedupingProtectSmallClusters)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v4 appendFormat:@"\tProtect small clusters: %@", v11];
  personDedupingType = self->_personDedupingType;
  if (personDedupingType > 3)
  {
    v13 = @"Unknown";
  }

  else
  {
    v13 = off_278887390[personDedupingType];
  }

  [v4 appendFormat:@"Person deduping type: %@", v13];
  if (self->_useFaceQualityForElection)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v4 appendFormat:@"Use face quality for election: %@", v14];
  if (self->_doNotDedupeVideos)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v4 appendFormat:@"Don't dedupe videos: %@", v15];
  if (self->_doNotDedupeInterestingPortraitsAndLivePictures)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v4 appendFormat:@"Don't dedupe interesting portraits and live pictures together: %@", v16];
  if (self->_onlyDedupeContiguousItems)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v4 appendFormat:@"Only dedupe contiguous items: %@", v17];
  if (self->_doDejunk)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v4 appendFormat:@"Do dejunk: %@", v18];
  if (self->_returnDedupedJunkIfOnlyJunk)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v4 appendFormat:@"\tReturn deduped junk if only junk: %@", v19];
  if (self->_doFinalPass)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v4 appendFormat:@"Do final pass: %@", v20];
  [v4 appendFormat:@"\tTime interval: %.3f", *&self->_finalPassTimeInterval];
  [v4 appendFormat:@"\tMaximum time group extension: %.3f", *&self->_finalPassMaximumTimeGroupExtension];
  [v4 appendFormat:@"\tDeduping threshold: %.3f", *&self->_finalPassDedupingThreshold];
  allObjects = [(NSSet *)self->_identifiersOfRequiredItems allObjects];
  v22 = [allObjects sortedArrayUsingSelector:sel_compare_];
  v23 = [v22 componentsJoinedByString:{@", "}];
  [v4 appendFormat:@"\tRequired Item Identifiers: %@", v23];

  allObjects2 = [(NSSet *)self->_identifiersOfEligibleItems allObjects];
  v25 = [allObjects2 sortedArrayUsingSelector:sel_compare_];
  v26 = [v25 componentsJoinedByString:{@", "}];
  [v4 appendFormat:@"\tEligible Item Identifiers: %@", v26];

  [v4 appendFormat:@"\tDuration: %lu", self->_duration];

  return v4;
}

- (id)dictionaryRepresentationRestrictingToGlobalOptions:(BOOL)options
{
  v51[36] = *MEMORY[0x277D85DE8];
  baseFlavor = self->_baseFlavor;
  if (!baseFlavor)
  {
    baseFlavor = @"CuratedLibrary";
  }

  v51[0] = baseFlavor;
  v50[0] = @"baseFlavor";
  v50[1] = @"doIdenticalDeduping";
  v48 = [MEMORY[0x277CCABB0] numberWithBool:self->_doIdenticalDeduping];
  v51[1] = v48;
  v50[2] = @"identicalDedupingTimeInterval";
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:self->_identicalDedupingTimeInterval];
  v51[2] = v47;
  v50[3] = @"identicalDedupingTimeIntervalForPeople";
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:self->_identicalDedupingTimeIntervalForPeople];
  v51[3] = v46;
  v50[4] = @"identicalDedupingMaximumTimeGroupExtension";
  v45 = [MEMORY[0x277CCABB0] numberWithDouble:self->_identicalDedupingMaximumTimeGroupExtension];
  v51[4] = v45;
  v50[5] = @"maximumNumberOfItemsPerIdenticalCluster";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maximumNumberOfItemsPerIdenticalCluster];
  v51[5] = v44;
  v50[6] = @"identicalDedupingThreshold";
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:self->_identicalDedupingThreshold];
  v51[6] = v43;
  v50[7] = @"identicalDedupingThresholdForPeople";
  v42 = [MEMORY[0x277CCABB0] numberWithDouble:self->_identicalDedupingThresholdForPeople];
  v51[7] = v42;
  v50[8] = @"identicalDedupingThresholdForBestItems";
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_identicalDedupingThresholdForBestItems];
  v51[8] = v41;
  v50[9] = @"useFaceprintsForIdenticalDeduping";
  v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_useFaceprintsForIdenticalDeduping];
  v51[9] = v40;
  v50[10] = @"identicalDedupingFaceprintDistance";
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:self->_identicalDedupingFaceprintDistance];
  v51[10] = v39;
  v50[11] = @"doSemanticalDeduping";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_doSemanticalDeduping];
  v51[11] = v38;
  v50[12] = @"semanticalDedupingTimeInterval";
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:self->_semanticalDedupingTimeInterval];
  v51[12] = v37;
  v50[13] = @"semanticalDedupingTimeIntervalForPeople";
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:self->_semanticalDedupingTimeIntervalForPeople];
  v51[13] = v36;
  v50[14] = @"semanticalDedupingTimeIntervalForPersons";
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:self->_semanticalDedupingTimeIntervalForPersons];
  v51[14] = v35;
  v50[15] = @"semanticalDedupingMaximumTimeGroupExtension";
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:self->_semanticalDedupingMaximumTimeGroupExtension];
  v51[15] = v34;
  v50[16] = @"maximumNumberOfItemsPerSemanticalCluster";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maximumNumberOfItemsPerSemanticalCluster];
  v51[16] = v33;
  v50[17] = @"semanticalDedupingThreshold";
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:self->_semanticalDedupingThreshold];
  v51[17] = v32;
  v50[18] = @"semanticalDedupingThresholdForPeople";
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:self->_semanticalDedupingThresholdForPeople];
  v51[18] = v31;
  v50[19] = @"semanticalDedupingThresholdForPersons";
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_semanticalDedupingThresholdForPersons];
  v51[19] = v30;
  v50[20] = @"dontSemanticallyDedupePeople";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_doNotSemanticallyDedupePeople];
  v51[20] = v29;
  v50[21] = @"dontSemanticallyDedupePersons";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_doNotSemanticallyDedupePersons];
  v51[21] = v28;
  v50[22] = @"allowAdaptiveForSemanticalDeduping";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowAdaptiveForSemanticalDeduping];
  v51[22] = v27;
  v50[23] = @"semanticalDedupingProtectSmallCluster";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_semanticalDedupingProtectSmallClusters];
  v51[23] = v25;
  v50[24] = @"personDedupingType";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_personDedupingType];
  v51[24] = v24;
  v50[25] = @"useFaceQualityForElection";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_useFaceQualityForElection];
  v51[25] = v23;
  v50[26] = @"doNotDedupeVideos";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_doNotDedupeVideos];
  v51[26] = v22;
  v50[27] = @"doNotDedupeInterestingPortraitsAndLivePictures";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_doNotDedupeInterestingPortraitsAndLivePictures];
  v51[27] = v5;
  v50[28] = @"onlyDedupeContiguousItems";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_onlyDedupeContiguousItems];
  v51[28] = v6;
  v50[29] = @"doDejunk";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_doDejunk];
  v51[29] = v7;
  v50[30] = @"returnDedupedJunkIfOnlyJunk";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_returnDedupedJunkIfOnlyJunk];
  v51[30] = v8;
  v50[31] = @"doFinalPass";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_doFinalPass];
  v51[31] = v9;
  v50[32] = @"finalPassTimeInterval";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_finalPassTimeInterval];
  v51[32] = v10;
  v50[33] = @"finalPassMaximumTimeGroupExtension";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_finalPassMaximumTimeGroupExtension];
  v51[33] = v11;
  v50[34] = @"finalPassDedupingThreshold";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_finalPassDedupingThreshold];
  v51[34] = v12;
  v50[35] = @"duration";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_duration];
  v51[35] = v13;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:36];

  if (options)
  {
    v14 = v26;
  }

  else
  {
    v15 = [v26 mutableCopy];
    allObjects = [(NSSet *)self->_identifiersOfRequiredItems allObjects];
    v17 = [allObjects sortedArrayUsingSelector:sel_compare_];
    [v15 setObject:v17 forKeyedSubscript:@"identifiersOfRequiredItems"];

    allObjects2 = [(NSSet *)self->_identifiersOfEligibleItems allObjects];
    v19 = [allObjects2 sortedArrayUsingSelector:sel_compare_];
    [v15 setObject:v19 forKeyedSubscript:@"identifiersOfEligibleItems"];

    v14 = v15;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (PGDejunkerDeduperOptions)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"baseFlavor"];
  if ([v5 isEqualToString:@"Memories"])
  {
    initForMemories = [(PGDejunkerDeduperOptions *)self initForMemories];
  }

  else
  {
    initForMemories = [(PGDejunkerDeduperOptions *)self initForCuratedLibrary];
  }

  v7 = initForMemories;

  if (!v7)
  {
    goto LABEL_122;
  }

  v8 = [representationCopy objectForKeyedSubscript:@"doIdenticalDeduping"];

  if (v8)
  {
    v9 = [representationCopy objectForKeyedSubscript:@"doIdenticalDeduping"];
    *(v7 + 16) = [v9 BOOLValue];
  }

  v10 = [representationCopy objectForKeyedSubscript:@"identicalDedupingTimeInterval"];

  if (v10)
  {
    v11 = [representationCopy objectForKeyedSubscript:@"identicalDedupingTimeInterval"];
    [v11 doubleValue];
    if (v12 > 0.0)
    {
      v13 = [representationCopy objectForKeyedSubscript:@"identicalDedupingTimeInterval"];
      [v13 doubleValue];
      v7[4] = v14;
    }
  }

  v15 = [representationCopy objectForKeyedSubscript:@"identicalDedupingTimeIntervalForPeople"];

  if (v15)
  {
    v16 = [representationCopy objectForKeyedSubscript:@"identicalDedupingTimeIntervalForPeople"];
    [v16 doubleValue];
    if (v17 > 0.0)
    {
      v18 = [representationCopy objectForKeyedSubscript:@"identicalDedupingTimeIntervalForPeople"];
      [v18 doubleValue];
      v7[5] = v19;
    }
  }

  v20 = [representationCopy objectForKeyedSubscript:@"identicalDedupingMaximumTimeGroupExtension"];

  if (v20)
  {
    v21 = [representationCopy objectForKeyedSubscript:@"identicalDedupingMaximumTimeGroupExtension"];
    [v21 doubleValue];
    if (v22 > 0.0)
    {
      v23 = [representationCopy objectForKeyedSubscript:@"identicalDedupingMaximumTimeGroupExtension"];
      [v23 doubleValue];
      v7[6] = v24;
    }
  }

  v25 = [representationCopy objectForKeyedSubscript:@"maximumNumberOfItemsPerIdenticalCluster"];

  if (v25)
  {
    v26 = [representationCopy objectForKeyedSubscript:@"maximumNumberOfItemsPerIdenticalCluster"];
    unsignedIntegerValue = [v26 unsignedIntegerValue];
    if (!unsignedIntegerValue)
    {
      unsignedIntegerValue = v7[7];
    }

    v7[7] = unsignedIntegerValue;
  }

  v28 = [representationCopy objectForKeyedSubscript:@"identicalDedupingThreshold"];

  if (v28)
  {
    v29 = [representationCopy objectForKeyedSubscript:@"identicalDedupingThreshold"];
    [v29 doubleValue];
    if (v30 > 0.0)
    {
      v31 = [representationCopy objectForKeyedSubscript:@"identicalDedupingThreshold"];
      [v31 doubleValue];
      v7[8] = v32;
    }
  }

  v33 = [representationCopy objectForKeyedSubscript:@"identicalDedupingThresholdForPeople"];

  if (v33)
  {
    v34 = [representationCopy objectForKeyedSubscript:@"identicalDedupingThresholdForPeople"];
    [v34 doubleValue];
    if (v35 > 0.0)
    {
      v36 = [representationCopy objectForKeyedSubscript:@"identicalDedupingThresholdForPeople"];
      [v36 doubleValue];
      v7[9] = v37;
    }
  }

  v38 = [representationCopy objectForKeyedSubscript:@"identicalDedupingThresholdForBestItems"];

  if (v38)
  {
    v39 = [representationCopy objectForKeyedSubscript:@"identicalDedupingThresholdForBestItems"];
    [v39 doubleValue];
    if (v40 > 0.0)
    {
      v41 = [representationCopy objectForKeyedSubscript:@"identicalDedupingThresholdForBestItems"];
      [v41 doubleValue];
      v7[10] = v42;
    }
  }

  v43 = [representationCopy objectForKeyedSubscript:@"useFaceprintsForIdenticalDeduping"];

  if (v43)
  {
    v44 = [representationCopy objectForKeyedSubscript:@"useFaceprintsForIdenticalDeduping"];
    *(v7 + 17) = [v44 BOOLValue];
  }

  v45 = [representationCopy objectForKeyedSubscript:@"identicalDedupingFaceprintDistance"];

  if (v45)
  {
    v46 = [representationCopy objectForKeyedSubscript:@"identicalDedupingFaceprintDistance"];
    [v46 doubleValue];
    if (v47 > 0.0)
    {
      v48 = [representationCopy objectForKeyedSubscript:@"identicalDedupingFaceprintDistance"];
      [v48 doubleValue];
      v7[11] = v49;
    }
  }

  v50 = [representationCopy objectForKeyedSubscript:@"doSemanticalDeduping"];

  if (v50)
  {
    v51 = [representationCopy objectForKeyedSubscript:@"doSemanticalDeduping"];
    *(v7 + 18) = [v51 BOOLValue];
  }

  v52 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingTimeInterval"];

  if (v52)
  {
    v53 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingTimeInterval"];
    [v53 doubleValue];
    if (v54 > 0.0)
    {
      v55 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingTimeInterval"];
      [v55 doubleValue];
      v7[12] = v56;
    }
  }

  v57 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPeople"];

  if (v57)
  {
    v58 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPeople"];
    [v58 doubleValue];
    if (v59 > 0.0)
    {
      v60 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPeople"];
      [v60 doubleValue];
      v7[13] = v61;
    }
  }

  v62 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPersons"];

  if (v62)
  {
    v63 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPersons"];
    [v63 doubleValue];
    if (v64 > 0.0)
    {
      v65 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPersons"];
      [v65 doubleValue];
      v7[14] = v66;
    }
  }

  v67 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingMaximumTimeGroupExtension"];

  if (v67)
  {
    v68 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingMaximumTimeGroupExtension"];
    [v68 doubleValue];
    if (v69 > 0.0)
    {
      v70 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingMaximumTimeGroupExtension"];
      [v70 doubleValue];
      v7[15] = v71;
    }
  }

  v72 = [representationCopy objectForKeyedSubscript:@"maximumNumberOfItemsPerSemanticalCluster"];

  if (v72)
  {
    v73 = [representationCopy objectForKeyedSubscript:@"maximumNumberOfItemsPerSemanticalCluster"];
    unsignedIntegerValue2 = [v73 unsignedIntegerValue];
    if (!unsignedIntegerValue2)
    {
      unsignedIntegerValue2 = v7[16];
    }

    v7[16] = unsignedIntegerValue2;
  }

  v75 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingThreshold"];

  if (v75)
  {
    v76 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingThreshold"];
    [v76 doubleValue];
    if (v77 > 0.0)
    {
      v78 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingThreshold"];
      [v78 doubleValue];
      v7[17] = v79;
    }
  }

  v80 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingThresholdForPeople"];

  if (v80)
  {
    v81 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingThresholdForPeople"];
    [v81 doubleValue];
    if (v82 > 0.0)
    {
      v83 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingThresholdForPeople"];
      [v83 doubleValue];
      v7[18] = v84;
    }
  }

  v85 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingThresholdForPersons"];

  if (v85)
  {
    v86 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingThresholdForPersons"];
    [v86 doubleValue];
    if (v87 > 0.0)
    {
      v88 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingThresholdForPersons"];
      [v88 doubleValue];
      v7[19] = v89;
    }
  }

  v90 = [representationCopy objectForKeyedSubscript:@"dontSemanticallyDedupePeople"];

  if (v90)
  {
    v91 = [representationCopy objectForKeyedSubscript:@"dontSemanticallyDedupePeople"];
    *(v7 + 19) = [v91 BOOLValue];
  }

  v92 = [representationCopy objectForKeyedSubscript:@"dontSemanticallyDedupePersons"];

  if (v92)
  {
    v93 = [representationCopy objectForKeyedSubscript:@"dontSemanticallyDedupePersons"];
    *(v7 + 20) = [v93 BOOLValue];
  }

  v94 = [representationCopy objectForKeyedSubscript:@"allowAdaptiveForSemanticalDeduping"];

  if (v94)
  {
    v95 = [representationCopy objectForKeyedSubscript:@"allowAdaptiveForSemanticalDeduping"];
    *(v7 + 21) = [v95 BOOLValue];
  }

  v96 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingProtectSmallCluster"];

  if (v96)
  {
    v97 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingProtectSmallCluster"];
    *(v7 + 22) = [v97 BOOLValue];
  }

  v98 = [representationCopy objectForKeyedSubscript:@"personDedupingType"];

  if (!v98)
  {
    v100 = [representationCopy objectForKeyedSubscript:@"useOnlyScenesForDeduping"];
    bOOLValue = [v100 BOOLValue];

    if (bOOLValue)
    {
      v102 = 1;
    }

    else
    {
      v103 = [representationCopy objectForKeyedSubscript:@"useAllPersonsForDeduping"];
      bOOLValue2 = [v103 BOOLValue];

      if (!bOOLValue2)
      {
        goto LABEL_90;
      }

      v102 = 3;
    }

    v7[20] = v102;
    goto LABEL_90;
  }

  v99 = [representationCopy objectForKeyedSubscript:@"personDedupingType"];
  v7[20] = [v99 unsignedIntegerValue];

LABEL_90:
  v105 = [representationCopy objectForKeyedSubscript:@"useFaceQualityForElection"];

  if (v105)
  {
    v106 = [representationCopy objectForKeyedSubscript:@"useFaceQualityForElection"];
    *(v7 + 23) = [v106 BOOLValue];
  }

  v107 = [representationCopy objectForKeyedSubscript:@"doNotDedupeVideos"];

  if (v107)
  {
    v108 = [representationCopy objectForKeyedSubscript:@"doNotDedupeVideos"];
    *(v7 + 24) = [v108 BOOLValue];
  }

  v109 = [representationCopy objectForKeyedSubscript:@"doNotDedupeInterestingPortraitsAndLivePictures"];

  if (v109)
  {
    v110 = [representationCopy objectForKeyedSubscript:@"doNotDedupeInterestingPortraitsAndLivePictures"];
    *(v7 + 25) = [v110 BOOLValue];
  }

  v111 = [representationCopy objectForKeyedSubscript:@"onlyDedupeContiguousItems"];

  if (v111)
  {
    v112 = [representationCopy objectForKeyedSubscript:@"onlyDedupeContiguousItems"];
    *(v7 + 26) = [v112 BOOLValue];
  }

  v113 = [representationCopy objectForKeyedSubscript:@"doDejunk"];

  if (v113)
  {
    v114 = [representationCopy objectForKeyedSubscript:@"doDejunk"];
    *(v7 + 27) = [v114 BOOLValue];
  }

  v115 = [representationCopy objectForKeyedSubscript:@"returnDedupedJunkIfOnlyJunk"];

  if (v115)
  {
    v116 = [representationCopy objectForKeyedSubscript:@"returnDedupedJunkIfOnlyJunk"];
    *(v7 + 28) = [v116 BOOLValue];
  }

  v117 = [representationCopy objectForKeyedSubscript:@"doFinalPass"];

  if (v117)
  {
    v118 = [representationCopy objectForKeyedSubscript:@"doFinalPass"];
    *(v7 + 29) = [v118 BOOLValue];
  }

  v119 = [representationCopy objectForKeyedSubscript:@"finalPassTimeInterval"];

  if (v119)
  {
    v120 = [representationCopy objectForKeyedSubscript:@"finalPassTimeInterval"];
    [v120 doubleValue];
    if (v121 > 0.0)
    {
      v122 = [representationCopy objectForKeyedSubscript:@"finalPassTimeInterval"];
      [v122 doubleValue];
      v7[21] = v123;
    }
  }

  v124 = [representationCopy objectForKeyedSubscript:@"finalPassMaximumTimeGroupExtension"];

  if (v124)
  {
    v125 = [representationCopy objectForKeyedSubscript:@"finalPassMaximumTimeGroupExtension"];
    [v125 doubleValue];
    if (v126 > 0.0)
    {
      v127 = [representationCopy objectForKeyedSubscript:@"finalPassMaximumTimeGroupExtension"];
      [v127 doubleValue];
      v7[22] = v128;
    }
  }

  v129 = [representationCopy objectForKeyedSubscript:@"finalPassDedupingThreshold"];

  if (v129)
  {
    v130 = [representationCopy objectForKeyedSubscript:@"finalPassDedupingThreshold"];
    [v130 doubleValue];
    if (v131 > 0.0)
    {
      v132 = [representationCopy objectForKeyedSubscript:@"finalPassDedupingThreshold"];
      [v132 doubleValue];
      v7[23] = v133;
    }
  }

  v134 = [representationCopy objectForKeyedSubscript:@"identifiersOfRequiredItems"];

  if (v134)
  {
    v135 = MEMORY[0x277CBEB98];
    v136 = [representationCopy objectForKeyedSubscript:@"identifiersOfRequiredItems"];
    v137 = [v135 setWithArray:v136];
    v138 = v7[24];
    v7[24] = v137;
  }

  v139 = [representationCopy objectForKeyedSubscript:@"identifiersOfEligibleItems"];

  if (v139)
  {
    v140 = MEMORY[0x277CBEB98];
    v141 = [representationCopy objectForKeyedSubscript:@"identifiersOfEligibleItems"];
    v142 = [v140 setWithArray:v141];
    v143 = v7[25];
    v7[25] = v142;
  }

  v144 = [representationCopy objectForKeyedSubscript:@"duration"];

  if (v144)
  {
    v145 = [representationCopy objectForKeyedSubscript:@"duration"];
    v7[26] = [v145 unsignedIntegerValue];
  }

LABEL_122:
  v146 = v7;

  return v146;
}

- (id)initForMemories
{
  v14.receiver = self;
  v14.super_class = PGDejunkerDeduperOptions;
  v2 = [(PGDejunkerDeduperOptions *)&v14 init];
  v3 = v2;
  if (v2)
  {
    baseFlavor = v2->_baseFlavor;
    v2->_baseFlavor = @"Memories";

    *&v3->_doIdenticalDeduping = 1;
    *&v3->_identicalDedupingTimeInterval = xmmword_22F78C0D0;
    v3->_identicalDedupingMaximumTimeGroupExtension = 5.0;
    v3->_maximumNumberOfItemsPerIdenticalCluster = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v3->_identicalDedupingThreshold = _Q0;
    *&v3->_identicalDedupingThresholdForBestItems = _Q0;
    v3->_doSemanticalDeduping = 1;
    *&v3->_semanticalDedupingTimeInterval = xmmword_22F78C0E0;
    *&v3->_semanticalDedupingTimeIntervalForPersons = xmmword_22F78C0F0;
    v3->_maximumNumberOfItemsPerSemanticalCluster = 0;
    *&v3->_semanticalDedupingThreshold = _Q0;
    *&v3->_doNotSemanticallyDedupePeople = 0;
    v3->_semanticalDedupingThresholdForPersons = -1.0;
    v3->_personDedupingType = 2;
    *&v3->_useFaceQualityForElection = 65537;
    *&v3->_doDejunk = 1;
    v3->_doFinalPass = 0;
    *&v3->_finalPassTimeInterval = xmmword_22F78C100;
    v3->_finalPassDedupingThreshold = -1.0;
    v10 = [MEMORY[0x277CBEB98] set];
    identifiersOfRequiredItems = v3->_identifiersOfRequiredItems;
    v3->_identifiersOfRequiredItems = v10;

    identifiersOfEligibleItems = v3->_identifiersOfEligibleItems;
    v3->_identifiersOfEligibleItems = 0;

    v3->_duration = 16;
  }

  return v3;
}

- (id)initForCuratedLibrary
{
  v18.receiver = self;
  v18.super_class = PGDejunkerDeduperOptions;
  v2 = [(PGDejunkerDeduperOptions *)&v18 init];
  v3 = v2;
  if (v2)
  {
    baseFlavor = v2->_baseFlavor;
    v2->_baseFlavor = @"CuratedLibrary";

    *&v3->_doIdenticalDeduping = 257;
    *&v3->_identicalDedupingTimeInterval = xmmword_22F78C110;
    v3->_identicalDedupingMaximumTimeGroupExtension = 2.0;
    v3->_maximumNumberOfItemsPerIdenticalCluster = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v3->_identicalDedupingThreshold = _Q0;
    *&v3->_identicalDedupingThresholdForBestItems = _Q0;
    v17 = _Q0;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [standardUserDefaults objectForKey:@"PGDeduperIdenticalDedupingFaceprintDistance"];

    if (v11)
    {
      [v11 doubleValue];
      v3->_identicalDedupingFaceprintDistance = v12;
    }

    v3->_doSemanticalDeduping = 1;
    *&v3->_semanticalDedupingTimeInterval = xmmword_22F78C120;
    *&v3->_semanticalDedupingTimeIntervalForPersons = xmmword_22F78C130;
    v3->_maximumNumberOfItemsPerSemanticalCluster = 0;
    *&v3->_semanticalDedupingThreshold = v17;
    *&v3->_doNotSemanticallyDedupePeople = 0x1010101000000;
    v3->_semanticalDedupingThresholdForPersons = -1.0;
    v3->_personDedupingType = 3;
    *&v3->_doDejunk = 1;
    v3->_doFinalPass = 0;
    *&v3->_finalPassTimeInterval = xmmword_22F78C100;
    v3->_finalPassDedupingThreshold = -1.0;
    v13 = [MEMORY[0x277CBEB98] set];
    identifiersOfRequiredItems = v3->_identifiersOfRequiredItems;
    v3->_identifiersOfRequiredItems = v13;

    identifiersOfEligibleItems = v3->_identifiersOfEligibleItems;
    v3->_identifiersOfEligibleItems = 0;

    v3->_duration = 16;
  }

  return v3;
}

@end