@interface PGGuessWhoRelationshipMetricEvent
- (PGGuessWhoRelationshipMetricEvent)initWithGraphManager:(id)manager;
- (id)_readableStringByRelationshipEdgeProperty;
- (id)_relationshipKeyForLabel:(id)label;
- (id)payload;
- (void)_incrementRelationshipSignalMetricsForRelationshipEdge:(id)edge inferredRelationshipCorrect:(BOOL)correct;
- (void)gatherMetricsWithProgressBlock:(id)block;
@end

@implementation PGGuessWhoRelationshipMetricEvent

- (id)_relationshipKeyForLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"FAMILY"])
  {
    v4 = &unk_284483A50;
  }

  else if ([labelCopy isEqualToString:@"PARTNER"])
  {
    v4 = &unk_284483A98;
  }

  else if ([labelCopy isEqualToString:@"COWORKER"])
  {
    v4 = &unk_284483A80;
  }

  else if ([labelCopy isEqualToString:@"FRIEND"])
  {
    v4 = &unk_284483A68;
  }

  else if ([labelCopy isEqualToString:@"PARENT"])
  {
    v4 = &unk_284483AB0;
  }

  else
  {
    v4 = &unk_284483AE0;
  }

  return v4;
}

- (id)_readableStringByRelationshipEdgeProperty
{
  v6[16] = *MEMORY[0x277D85DE8];
  v5[0] = @"rfamhol";
  v5[1] = @"rparnam";
  v6[0] = @"Family Holiday";
  v6[1] = @"Parent Contact Name";
  v5[2] = @"rfamnam";
  v5[3] = @"gwnummmtshome";
  v6[2] = @"Same Family Name";
  v6[3] = @"Moments At Home";
  v5[4] = @"rhasanniv";
  v5[5] = @"rtop2sg";
  v6[4] = @"Anniversary Date";
  v6[5] = @"Top Two Person SG";
  v5[6] = @"rlovexch";
  v5[7] = @"rtop";
  v6[6] = @"Love Emojis";
  v6[7] = @"Top Person";
  v5[8] = @"rfrndnghtout";
  v5[9] = @"rprtnrtrip";
  v6[8] = @"Friend Night Out";
  v6[9] = @"Partner Trip";
  v5[10] = @"rfrfamtrip";
  v5[11] = @"rwkend";
  v6[10] = @"Friends/Family Trip";
  v6[11] = @"Weekend";
  v5[12] = @"rwork";
  v5[13] = @"rcal";
  v6[12] = @"Coworkers At Work";
  v6[13] = @"Coworker Calendar";
  v5[14] = @"ragediff";
  v5[15] = @"rold";
  v6[14] = @"Age Different Than Me";
  v6[15] = @"Parent Or Grandparent Old Enough";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_incrementRelationshipSignalMetricsForRelationshipEdge:(id)edge inferredRelationshipCorrect:(BOOL)correct
{
  correctCopy = correct;
  edgeCopy = edge;
  [edgeCopy familyHolidayAttendanceRate];
  v7 = v6;
  numberOfFamilyHolidaySignalRegistrations = [(PGGuessWhoRelationshipMetricEvent *)self numberOfFamilyHolidaySignalRegistrations];
  if (v7 <= 0.0)
  {
    v9 = numberOfFamilyHolidaySignalRegistrations;
  }

  else
  {
    v9 = numberOfFamilyHolidaySignalRegistrations + 1;
  }

  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfFamilyHolidaySignalRegistrations:v9];
  numberOfFamilyHolidaySignalRegistrationsInCorrectInference = [(PGGuessWhoRelationshipMetricEvent *)self numberOfFamilyHolidaySignalRegistrationsInCorrectInference];
  v11 = correctCopy && v7 > 0.0;
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfFamilyHolidaySignalRegistrationsInCorrectInference:numberOfFamilyHolidaySignalRegistrationsInCorrectInference + v11];
  hasParentContactName = [edgeCopy hasParentContactName];
  if (correctCopy)
  {
    v13 = hasParentContactName;
  }

  else
  {
    v13 = 0;
  }

  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfParentContactNameSignalRegistrations:[(PGGuessWhoRelationshipMetricEvent *)self numberOfParentContactNameSignalRegistrations]+ hasParentContactName];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfParentContactNameSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfParentContactNameSignalRegistrationsInCorrectInference]+ v13];
  hasSameFamilyNameAsMePerson = [edgeCopy hasSameFamilyNameAsMePerson];
  if (correctCopy)
  {
    v15 = hasSameFamilyNameAsMePerson;
  }

  else
  {
    v15 = 0;
  }

  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfSameFamilyNameSignalRegistrations:[(PGGuessWhoRelationshipMetricEvent *)self numberOfSameFamilyNameSignalRegistrations]+ hasSameFamilyNameAsMePerson];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfSameFamilyNameSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfSameFamilyNameSignalRegistrationsInCorrectInference]+ v15];
  numberOfMomentsAtHome = [edgeCopy numberOfMomentsAtHome];
  numberOfHomeMomentsSignalRegistrations = [(PGGuessWhoRelationshipMetricEvent *)self numberOfHomeMomentsSignalRegistrations];
  if (numberOfMomentsAtHome)
  {
    v18 = numberOfHomeMomentsSignalRegistrations + 1;
  }

  else
  {
    v18 = numberOfHomeMomentsSignalRegistrations;
  }

  v19 = correctCopy && numberOfMomentsAtHome != 0;
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfHomeMomentsSignalRegistrations:v18];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfHomeMomentsSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfHomeMomentsSignalRegistrationsInCorrectInference]+ v19];
  hasAnniversaryDate = [edgeCopy hasAnniversaryDate];
  if (correctCopy)
  {
    v21 = hasAnniversaryDate;
  }

  else
  {
    v21 = 0;
  }

  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfAnniversaryDateSignalRegistrations:[(PGGuessWhoRelationshipMetricEvent *)self numberOfAnniversaryDateSignalRegistrations]+ hasAnniversaryDate];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfAnniversaryDateSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfAnniversaryDateSignalRegistrationsInCorrectInference]+ v21];
  isTopTwoPersonsSocialGroup = [edgeCopy isTopTwoPersonsSocialGroup];
  if (correctCopy)
  {
    v23 = isTopTwoPersonsSocialGroup;
  }

  else
  {
    v23 = 0;
  }

  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfTopTwoPersonSocialGroupSignalRegistrations:[(PGGuessWhoRelationshipMetricEvent *)self numberOfTopTwoPersonSocialGroupSignalRegistrations]+ isTopTwoPersonsSocialGroup];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfTopTwoPersonSocialGroupSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfTopTwoPersonSocialGroupSignalRegistrationsInCorrectInference]+ v23];
  numberOfLoveEmojisExchanged = [edgeCopy numberOfLoveEmojisExchanged];
  numberOfLoveEmojisSignalRegistrations = [(PGGuessWhoRelationshipMetricEvent *)self numberOfLoveEmojisSignalRegistrations];
  if (numberOfLoveEmojisExchanged)
  {
    v26 = numberOfLoveEmojisSignalRegistrations + 1;
  }

  else
  {
    v26 = numberOfLoveEmojisSignalRegistrations;
  }

  v27 = correctCopy && numberOfLoveEmojisExchanged != 0;
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfLoveEmojisSignalRegistrations:v26];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfLoveEmojisSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfLoveEmojisSignalRegistrationsInCorrectInference]+ v27];
  isTopPerson = [edgeCopy isTopPerson];
  if (correctCopy)
  {
    v29 = isTopPerson;
  }

  else
  {
    v29 = 0;
  }

  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfTopPersonSignalRegistrations:[(PGGuessWhoRelationshipMetricEvent *)self numberOfTopPersonSignalRegistrations]+ isTopPerson];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfTopPersonSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfTopPersonSignalRegistrationsInCorrectInference]+ v29];
  [edgeCopy friendNightOutAttendanceRate];
  v31 = v30;
  numberOfFriendNightOutSignalRegistrations = [(PGGuessWhoRelationshipMetricEvent *)self numberOfFriendNightOutSignalRegistrations];
  if (v31 <= 0.0)
  {
    v33 = numberOfFriendNightOutSignalRegistrations;
  }

  else
  {
    v33 = numberOfFriendNightOutSignalRegistrations + 1;
  }

  v34 = correctCopy && v31 > 0.0;
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfFriendNightOutSignalRegistrations:v33];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfFriendNightOutSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfFriendNightOutSignalRegistrationsInCorrectInference]+ v34];
  [edgeCopy partnerTripAttendanceRate];
  v36 = v35;
  numberOfPartnerTripSignalRegistrations = [(PGGuessWhoRelationshipMetricEvent *)self numberOfPartnerTripSignalRegistrations];
  if (v36 <= 0.0)
  {
    v38 = numberOfPartnerTripSignalRegistrations;
  }

  else
  {
    v38 = numberOfPartnerTripSignalRegistrations + 1;
  }

  v39 = correctCopy && v36 > 0.0;
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfPartnerTripSignalRegistrations:v38];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfPartnerTripSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfPartnerTripSignalRegistrationsInCorrectInference]+ v39];
  [edgeCopy friendsAndFamilyTripAttendanceRate];
  v41 = v40;
  numberOfFriendsFamilyTripSignalRegistrations = [(PGGuessWhoRelationshipMetricEvent *)self numberOfFriendsFamilyTripSignalRegistrations];
  if (v41 <= 0.0)
  {
    v43 = numberOfFriendsFamilyTripSignalRegistrations;
  }

  else
  {
    v43 = numberOfFriendsFamilyTripSignalRegistrations + 1;
  }

  v44 = correctCopy && v41 > 0.0;
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfFriendsFamilyTripSignalRegistrations:v43];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfFriendsFamilyTripSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfFriendsFamilyTripSignalRegistrationsInCorrectInference]+ v44];
  [edgeCopy weekendAppearanceRatio];
  v46 = v45;
  numberOfWeekendSignalRegistrations = [(PGGuessWhoRelationshipMetricEvent *)self numberOfWeekendSignalRegistrations];
  if (v46 <= 0.0)
  {
    v48 = numberOfWeekendSignalRegistrations;
  }

  else
  {
    v48 = numberOfWeekendSignalRegistrations + 1;
  }

  v49 = correctCopy && v46 > 0.0;
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfWeekendSignalRegistrations:v48];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfWeekendSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfWeekendSignalRegistrationsInCorrectInference]+ v49];
  [edgeCopy momentsAtWorkAppearanceRate];
  v51 = v50;
  numberOfCoworkersAtWorkSignalRegistrations = [(PGGuessWhoRelationshipMetricEvent *)self numberOfCoworkersAtWorkSignalRegistrations];
  if (v51 <= 0.0)
  {
    v53 = numberOfCoworkersAtWorkSignalRegistrations;
  }

  else
  {
    v53 = numberOfCoworkersAtWorkSignalRegistrations + 1;
  }

  v54 = correctCopy && v51 > 0.0;
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfCoworkersAtWorkSignalRegistrations:v53];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfCoworkersAtWorkSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfCoworkersAtWorkSignalRegistrationsInCorrectInference]+ v54];
  [edgeCopy calendarAttendanceRatio];
  v56 = v55;
  numberOfCoworkerCalendarSignalRegistrations = [(PGGuessWhoRelationshipMetricEvent *)self numberOfCoworkerCalendarSignalRegistrations];
  if (v56 <= 0.0)
  {
    v58 = numberOfCoworkerCalendarSignalRegistrations;
  }

  else
  {
    v58 = numberOfCoworkerCalendarSignalRegistrations + 1;
  }

  v59 = correctCopy && v56 > 0.0;
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfCoworkerCalendarSignalRegistrations:v58];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfCoworkerCalendarSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfCoworkerCalendarSignalRegistrationsInCorrectInference]+ v59];
  isPersonAgeDifferentThanMeNode = [edgeCopy isPersonAgeDifferentThanMeNode];
  if (correctCopy)
  {
    v61 = isPersonAgeDifferentThanMeNode;
  }

  else
  {
    v61 = 0;
  }

  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfAgeDifferentThanMeSignalRegistrations:[(PGGuessWhoRelationshipMetricEvent *)self numberOfAgeDifferentThanMeSignalRegistrations]+ isPersonAgeDifferentThanMeNode];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfAgeDifferentThanMeSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfAgeDifferentThanMeSignalRegistrationsInCorrectInference]+ v61];
  isPersonOldEnoughToBeParentOrGrandparent = [edgeCopy isPersonOldEnoughToBeParentOrGrandparent];
  if (correctCopy)
  {
    v63 = isPersonOldEnoughToBeParentOrGrandparent;
  }

  else
  {
    v63 = 0;
  }

  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfParentGrandparentOldSignalRegistrations:[(PGGuessWhoRelationshipMetricEvent *)self numberOfParentGrandparentOldSignalRegistrations]+ isPersonOldEnoughToBeParentOrGrandparent];
  [(PGGuessWhoRelationshipMetricEvent *)self setNumberOfParentGrandparentOldSignalRegistrationsInCorrectInference:[(PGGuessWhoRelationshipMetricEvent *)self numberOfParentGrandparentOldSignalRegistrationsInCorrectInference]+ v63];
}

- (void)gatherMetricsWithProgressBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v7 = 0;
LABEL_4:
    manager = self->_manager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__PGGuessWhoRelationshipMetricEvent_gatherMetricsWithProgressBlock___block_invoke;
    v11[3] = &unk_27888A3B8;
    v11[4] = self;
    [(PGManager *)manager performSynchronousConcurrentGraphReadUsingBlock:v11];
    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
      {
        v12 = 0;
        v4[2](v4, &v12, 1.0);
        if (v7 | v12)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v14 = 232;
            v15 = 2080;
            v16 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGuessWhoRelationshipMetricEvent.m";
            v9 = MEMORY[0x277D86220];
LABEL_12:
            _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_13;
          }
        }
      }
    }

    goto LABEL_13;
  }

  v12 = 0;
  v4[2](v4, &v12, 0.0);
  v7 = v12;
  if (v12 != 1)
  {
    v5 = Current;
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v14 = 155;
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGuessWhoRelationshipMetricEvent.m";
    v9 = MEMORY[0x277D86220];
    goto LABEL_12;
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
}

void __68__PGGuessWhoRelationshipMetricEvent_gatherMetricsWithProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v13 = [v11 graph];
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  v2 = PGIsAppleInternal_isAppleInternal;
  v12 = [v13 personNodesIncludingMe:0];
  [*(a1 + 32) setNumberOfPeople:{objc_msgSend(v12, "count")}];
  v15 = [v13 meNode];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  [*(a1 + 32) _inferredRelationshipKeys];
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  obj = v29 = 0u;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v57 count:16];
  if (v3)
  {
    v4 = *v30;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        v7 = [v6 unsignedIntegerValue];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __68__PGGuessWhoRelationshipMetricEvent_gatherMetricsWithProgressBlock___block_invoke_2;
        v17[3] = &unk_278883B80;
        v26 = &v33;
        v27 = v7;
        v21 = &v53;
        v22 = &v49;
        v23 = &v45;
        v24 = &v41;
        v25 = &v37;
        v28 = v2;
        v8 = v15;
        v9 = *(a1 + 32);
        v18 = v8;
        v19 = v9;
        v20 = v6;
        [v8 enumeratePersonNodesWithRelationship:v7 matchingQuery:2 usingBlock:v17];
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v57 count:16];
    }

    while (v3);
  }

  [*(a1 + 32) setNumberOfInferredFamilyMembers:v54[3]];
  [*(a1 + 32) setNumberOfInferredFriends:v50[3]];
  [*(a1 + 32) setNumberOfInferredParents:v46[3]];
  [*(a1 + 32) setNumberOfInferredCoworkers:v42[3]];
  [*(a1 + 32) setNumberOfInferredPartners:v38[3]];
  [*(a1 + 32) setNumberOfInferredChildren:v34[3]];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  v10 = *MEMORY[0x277D85DE8];
}

void __68__PGGuessWhoRelationshipMetricEvent_gatherMetricsWithProgressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 104) - 1;
  if (v7 <= 0xC && ((0x109Bu >> v7) & 1) != 0)
  {
    v8 = *(*(a1 + qword_22F78C5D8[v7]) + 8);
    ++*(v8 + 24);
  }

  if (*(a1 + 112) == 1)
  {
    v9 = [*(a1 + 32) relationshipEdgesToPersonNode:v5 matchingQuery:1];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(a1 + 40);
          v16 = [*(*(&v19 + 1) + 8 * i) label];
          v17 = [v15 _relationshipKeyForLabel:v16];
          LOBYTE(v15) = v17 == *(a1 + 48);

          v12 |= v15;
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    [*(a1 + 40) _incrementRelationshipSignalMetricsForRelationshipEdge:v6 inferredRelationshipCorrect:v12 & 1];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)payload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfPeople];
  [dictionary setObject:v4 forKeyedSubscript:@"people_count"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfInferredFamilyMembers];
  [dictionary setObject:v5 forKeyedSubscript:@"inferred_family_members_count"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfInferredFriends];
  [dictionary setObject:v6 forKeyedSubscript:@"inferred_friends_count"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfInferredParents];
  [dictionary setObject:v7 forKeyedSubscript:@"inferred_parents_count"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfInferredCoworkers];
  [dictionary setObject:v8 forKeyedSubscript:@"inferred_coworkers_count"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfInferredPartners];
  [dictionary setObject:v9 forKeyedSubscript:@"inferred_partners_count"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfInferredChildren];
  [dictionary setObject:v10 forKeyedSubscript:@"inferred_children_count"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfFamilyHolidaySignalRegistrations];
  [dictionary setObject:v11 forKeyedSubscript:@"family_holiday_signal_count"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfParentContactNameSignalRegistrations];
  [dictionary setObject:v12 forKeyedSubscript:@"parent_contact_name_signal_count"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfSameFamilyNameSignalRegistrations];
  [dictionary setObject:v13 forKeyedSubscript:@"same_family_name_signal_count"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfHomeMomentsSignalRegistrations];
  [dictionary setObject:v14 forKeyedSubscript:@"home_moments_signal_count"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfAnniversaryDateSignalRegistrations];
  [dictionary setObject:v15 forKeyedSubscript:@"anniversary_date_signal_count"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfTopTwoPersonSocialGroupSignalRegistrations];
  [dictionary setObject:v16 forKeyedSubscript:@"top_two_person_sg_signal_count"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfLoveEmojisSignalRegistrations];
  [dictionary setObject:v17 forKeyedSubscript:@"love_emojis_signal_count"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfTopPersonSignalRegistrations];
  [dictionary setObject:v18 forKeyedSubscript:@"top_person_signal_count"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfFriendNightOutSignalRegistrations];
  [dictionary setObject:v19 forKeyedSubscript:@"friend_night_out_signal_count"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfPartnerTripSignalRegistrations];
  [dictionary setObject:v20 forKeyedSubscript:@"partner_trip_signal_count"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfFriendsFamilyTripSignalRegistrations];
  [dictionary setObject:v21 forKeyedSubscript:@"friends_family_trip_signal_count"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfWeekendSignalRegistrations];
  [dictionary setObject:v22 forKeyedSubscript:@"weekend_signal_count"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfCoworkersAtWorkSignalRegistrations];
  [dictionary setObject:v23 forKeyedSubscript:@"coworker_work_signal_count"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfCoworkerCalendarSignalRegistrations];
  [dictionary setObject:v24 forKeyedSubscript:@"coworker_calendar_signal_count"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfAgeDifferentThanMeSignalRegistrations];
  [dictionary setObject:v25 forKeyedSubscript:@"age_different_signal_count"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfParentGrandparentOldSignalRegistrations];
  [dictionary setObject:v26 forKeyedSubscript:@"parent_grandparent_old_signal_count"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfFamilyHolidaySignalRegistrationsInCorrectInference];
  [dictionary setObject:v27 forKeyedSubscript:@"family_holiday_signal_in_correct_inference_count"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfParentContactNameSignalRegistrationsInCorrectInference];
  [dictionary setObject:v28 forKeyedSubscript:@"parent_contact_name_signal_in_correct_inference_count"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfSameFamilyNameSignalRegistrationsInCorrectInference];
  [dictionary setObject:v29 forKeyedSubscript:@"same_family_name_signal_in_correct_inference_count"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfHomeMomentsSignalRegistrationsInCorrectInference];
  [dictionary setObject:v30 forKeyedSubscript:@"home_moments_signal_in_correct_inference_count"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfAnniversaryDateSignalRegistrationsInCorrectInference];
  [dictionary setObject:v31 forKeyedSubscript:@"anniversary_date_signal_in_correct_inference_count"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfTopTwoPersonSocialGroupSignalRegistrationsInCorrectInference];
  [dictionary setObject:v32 forKeyedSubscript:@"top_two_person_sg_signal_in_correct_inference_count"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfLoveEmojisSignalRegistrationsInCorrectInference];
  [dictionary setObject:v33 forKeyedSubscript:@"love_emojis_signal_in_correct_inference_count"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfTopPersonSignalRegistrationsInCorrectInference];
  [dictionary setObject:v34 forKeyedSubscript:@"top_person_signal_in_correct_inference_count"];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfFriendNightOutSignalRegistrationsInCorrectInference];
  [dictionary setObject:v35 forKeyedSubscript:@"friend_night_out_signal_in_correct_inference_count"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfPartnerTripSignalRegistrationsInCorrectInference];
  [dictionary setObject:v36 forKeyedSubscript:@"partner_trip_signal_in_correct_inference_count"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfFriendsFamilyTripSignalRegistrationsInCorrectInference];
  [dictionary setObject:v37 forKeyedSubscript:@"friends_family_trip_signal_in_correct_inference_count"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfWeekendSignalRegistrationsInCorrectInference];
  [dictionary setObject:v38 forKeyedSubscript:@"weekend_signal_in_correct_inference_count"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfCoworkersAtWorkSignalRegistrationsInCorrectInference];
  [dictionary setObject:v39 forKeyedSubscript:@"coworker_work_signal_in_correct_inference_count"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfCoworkerCalendarSignalRegistrationsInCorrectInference];
  [dictionary setObject:v40 forKeyedSubscript:@"coworker_calendar_signal_in_correct_inference_count"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfAgeDifferentThanMeSignalRegistrationsInCorrectInference];
  [dictionary setObject:v41 forKeyedSubscript:@"age_different_signal_in_correct_inference_count"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfParentGrandparentOldSignalRegistrationsInCorrectInference];
  [dictionary setObject:v42 forKeyedSubscript:@"parent_grandparent_old_signal_in_correct_inference_count"];

  return dictionary;
}

- (PGGuessWhoRelationshipMetricEvent)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PGGuessWhoRelationshipMetricEvent;
  v6 = [(PGGuessWhoRelationshipMetricEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
  }

  return v7;
}

@end