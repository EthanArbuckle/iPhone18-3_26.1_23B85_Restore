@interface PGGraphContactSuggestionEdge
+ (id)filter;
- (BOOL)hasProperties:(id)properties;
- (PGGraphContactSuggestionEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)_readableStringForContactSuggestionProperty:(id)property;
- (id)_stringForBiologicalSexMatch:(unint64_t)match;
- (id)edgeDescription;
- (id)initFromPersonNode:(id)node toContactNode:(id)contactNode confidence:(double)confidence contactScore:(double)score numberOfMomentsAtHome:(unint64_t)home numberOfMomentsAtMentionedAddress:(unint64_t)address numberOfWeakBirthdayMomentsAroundBirthdayDate:(unint64_t)date numberOfWeakBirthdayMomentsAroundPotentialBirthdayDate:(unint64_t)self0 numberOfMomentsOverlappingWithCalendarEvents:(unint64_t)self1 numberOfAppearancesInSharedAssets:(unint64_t)self2 numberOfCMMMoments:(unint64_t)self3 facetimeFaceprintConfidence:(double)self4 contactFaceprintMatch:(BOOL)self5 relationshipsDebug:(id)self6 socialGroupsConfidence:(double)self7 socialGroupsDebug:(id)self8 messageGroupsDebug:(id)self9 birthdayScore:(double)birthdayScore potentialBirthdayScore:(double)potentialBirthdayScore addressScore:(double)addressScore mentionedAddressScore:(double)mentionedAddressScore calendarScore:(double)calendarScore sharedAssetScore:(double)assetScore sharedCMMScore:(double)mScore relationshipScore:(double)relationshipScore scoreAfterMessagePenalty:(double)penalty sexMatch:(unint64_t)sexMatch;
- (id)propertyDictionary;
- (unint64_t)numberOfMatchedMessageGroups;
- (unint64_t)numberOfMatchedRelationships;
@end

@implementation PGGraphContactSuggestionEdge

- (id)_readableStringForContactSuggestionProperty:(id)property
{
  v13[23] = *MEMORY[0x277D85DE8];
  v12[0] = @"gwnummmtshome";
  v12[1] = @"gwnummentndaddrs";
  v13[0] = @"SignalNumberOfMomentsAtHome";
  v13[1] = @"SignalNumberOfMomentsAtMentionedAddress";
  v12[2] = @"gwnumbdaymmt";
  v12[3] = @"gwnummmtsclndrevents";
  v13[2] = @"SignalNumberOfWeakBirthdayMomentsAroundBirthdayDate";
  v13[3] = @"SignalNumberOfMomentsOverlappingWithCalendarEvents";
  v12[4] = @"gwnumassts";
  v12[5] = @"gwnumcmm";
  v13[4] = @"SignalNumberOfAppearancesInSharedAssets";
  v13[5] = @"SignalNumberOfSharedCMMWithPeople";
  v12[6] = @"gwftfprntconf";
  v12[7] = @"gwfprntsmatch";
  v13[6] = @"SignalFacetimeFaceprintConfidence";
  v13[7] = @"SignalContactFaceprintMatch";
  v12[8] = @"gwsocialgrpsconf";
  v12[9] = @"gwsocialgrps";
  v13[8] = @"SignalSocialGroupsConfidence";
  v13[9] = @"DebugSocialGroups";
  v12[10] = @"gwmsggrps";
  v12[11] = @"gwreldebug";
  v13[10] = @"DebugMessageGroups";
  v13[11] = @"SignalRelationships";
  v12[12] = @"gwgenmatch";
  v12[13] = @"gwscore";
  v13[12] = @"SignalBiologicalSexMatch";
  v13[13] = @"TotalContactScore";
  v12[14] = @"bdayscore";
  v12[15] = @"pbdayscore";
  v13[14] = @"SignalBirthdayScore";
  v13[15] = @"SignalPotentialBirthdayScore";
  v12[16] = @"addscore";
  v12[17] = @"maddscore";
  v13[16] = @"SignalAddressScore";
  v13[17] = @"SignalMentionedAddressScore";
  v12[18] = @"calscore";
  v12[19] = @"asstscore";
  v13[18] = @"SignalCalendarScore";
  v13[19] = @"SignalSharedAssetScore";
  v12[20] = @"cmmscore";
  v12[21] = @"relscore";
  v13[20] = @"SignalSharedCMMScore";
  v13[21] = @"SignalRelationshipScore";
  v12[22] = @"scoremfp";
  v13[22] = @"TotalScoreAfterMessageFrequencyPenalty";
  v3 = MEMORY[0x277CBEAC0];
  propertyCopy = property;
  v5 = [v3 dictionaryWithObjects:v13 forKeys:v12 count:23];
  v6 = [v5 objectForKeyedSubscript:propertyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = propertyCopy;
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)numberOfMatchedMessageGroups
{
  result = [(NSString *)self->_messageGroupsDebug length];
  if (result)
  {
    v4 = [(NSString *)self->_messageGroupsDebug componentsSeparatedByString:@" / "];
    v5 = [v4 count];

    return v5;
  }

  return result;
}

- (unint64_t)numberOfMatchedRelationships
{
  result = [(NSString *)self->_relationshipsDebug length];
  if (result)
  {
    v4 = [(NSString *)self->_relationshipsDebug componentsSeparatedByString:@", "];
    v5 = [v4 count];

    return v5;
  }

  return result;
}

- (id)_stringForBiologicalSexMatch:(unint64_t)match
{
  if (match > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278883760[match];
  }
}

- (id)edgeDescription
{
  v30 = *MEMORY[0x277D85DE8];
  propertyDictionary = [(PGGraphContactSuggestionEdge *)self propertyDictionary];
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = propertyDictionary;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [(PGGraphContactSuggestionEdge *)self _readableStringForContactSuggestionProperty:v9];
        v11 = MEMORY[0x277CCACA8];
        v12 = [v4 objectForKeyedSubscript:v9];
        v13 = [v11 stringWithFormat:@"%@", v12];

        if ([v9 isEqualToString:@"gwgenmatch"])
        {
          v14 = -[PGGraphContactSuggestionEdge _stringForBiologicalSexMatch:](self, "_stringForBiologicalSexMatch:", [v13 integerValue]);

          v13 = v14;
        }

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v10, v13];
        [array addObject:v15];
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v16 = [array sortedArrayUsingSelector:sel_compare_];
  v17 = MEMORY[0x277CCACA8];
  v24.receiver = self;
  v24.super_class = PGGraphContactSuggestionEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v24 edgeDescription];
  v19 = [v16 componentsJoinedByString:{@", "}];
  v20 = [v17 stringWithFormat:@"%@ (%@)", edgeDescription, v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)propertyDictionary
{
  v35[25] = *MEMORY[0x277D85DE8];
  v34[0] = @"confidence";
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v35[0] = v33;
  v34[1] = @"gwscore";
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contactScore];
  v35[1] = v32;
  v34[2] = @"gwnummmtshome";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfMomentsAtHome];
  v35[2] = v31;
  v34[3] = @"gwnummentndaddrs";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfMomentsAtMentionedAddress];
  v35[3] = v30;
  v34[4] = @"gwnumbdaymmt";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfWeakBirthdayMomentsAroundBirthdayDate];
  v35[4] = v29;
  v34[5] = @"gwnummbdaymmt";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfWeakBirthdayMomentsAroundPotentialBirthdayDate];
  v35[5] = v28;
  v34[6] = @"gwnummmtsclndrevents";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfMomentsOverlappingWithCalendarEvents];
  v35[6] = v27;
  v34[7] = @"gwnumassts";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfAppearancesInSharedAssets];
  v35[7] = v26;
  v34[8] = @"gwnumcmm";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfCMMMoments];
  v35[8] = v25;
  v34[9] = @"gwftfprntconf";
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_facetimeFaceprintConfidence];
  v35[9] = v24;
  v34[10] = @"gwfprntsmatch";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_contactFaceprintMatch];
  v23 = v3;
  relationshipsDebug = self->_relationshipsDebug;
  if (!relationshipsDebug)
  {
    relationshipsDebug = &stru_2843F5C58;
  }

  v35[10] = v3;
  v35[11] = relationshipsDebug;
  v34[11] = @"gwreldebug";
  v34[12] = @"gwsocialgrpsconf";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_socialGroupsConfidence];
  v22 = v5;
  socialGroupsDebug = self->_socialGroupsDebug;
  if (!socialGroupsDebug)
  {
    socialGroupsDebug = &stru_2843F5C58;
  }

  v35[12] = v5;
  v35[13] = socialGroupsDebug;
  messageGroupsDebug = self->_messageGroupsDebug;
  v34[13] = @"gwsocialgrps";
  v34[14] = @"gwmsggrps";
  if (messageGroupsDebug)
  {
    v8 = messageGroupsDebug;
  }

  else
  {
    v8 = &stru_2843F5C58;
  }

  v35[14] = v8;
  v34[15] = @"gwgenmatch";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sexMatch];
  v35[15] = v21;
  v34[16] = @"bdayscore";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_birthdayScore];
  v35[16] = v9;
  v34[17] = @"pbdayscore";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_potentialBirthdayScore];
  v35[17] = v10;
  v34[18] = @"addscore";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_addressScore];
  v35[18] = v11;
  v34[19] = @"maddscore";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mentionedAddressScore];
  v35[19] = v12;
  v34[20] = @"calscore";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_calendarScore];
  v35[20] = v13;
  v34[21] = @"asstscore";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sharedAssetScore];
  v35[21] = v14;
  v34[22] = @"cmmscore";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sharedCMMScore];
  v35[22] = v15;
  v34[23] = @"relscore";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_relationshipScore];
  v35[23] = v16;
  v34[24] = @"scoremfp";
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scoreAfterMessagePenalty];
  v35[24] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:25];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_confidence)
      {
        goto LABEL_53;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"gwscore"];
    v7 = v9;
    if (v9)
    {
      [v9 doubleValue];
      if (v10 != self->_contactScore)
      {
        goto LABEL_53;
      }
    }

    v11 = [v5 objectForKeyedSubscript:@"gwnummmtshome"];
    v7 = v11;
    if (v11)
    {
      if ([v11 unsignedIntegerValue] != self->_numberOfMomentsAtHome)
      {
        goto LABEL_53;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"gwnummentndaddrs"];
    v7 = v12;
    if (v12)
    {
      if ([v12 unsignedIntegerValue] != self->_numberOfMomentsAtMentionedAddress)
      {
        goto LABEL_53;
      }
    }

    v13 = [v5 objectForKeyedSubscript:@"gwnumbdaymmt"];
    v7 = v13;
    if (v13)
    {
      if ([v13 unsignedIntegerValue] != self->_numberOfWeakBirthdayMomentsAroundBirthdayDate)
      {
        goto LABEL_53;
      }
    }

    v14 = [v5 objectForKeyedSubscript:@"gwnummbdaymmt"];
    v7 = v14;
    if (v14)
    {
      if ([v14 unsignedIntegerValue] != self->_numberOfWeakBirthdayMomentsAroundPotentialBirthdayDate)
      {
        goto LABEL_53;
      }
    }

    v15 = [v5 objectForKeyedSubscript:@"gwnummmtsclndrevents"];
    v7 = v15;
    if (v15)
    {
      if ([v15 unsignedIntegerValue] != self->_numberOfMomentsOverlappingWithCalendarEvents)
      {
        goto LABEL_53;
      }
    }

    v16 = [v5 objectForKeyedSubscript:@"gwnumassts"];
    v7 = v16;
    if (v16)
    {
      if ([v16 unsignedIntegerValue] != self->_numberOfAppearancesInSharedAssets)
      {
        goto LABEL_53;
      }
    }

    v17 = [v5 objectForKeyedSubscript:@"gwnumcmm"];
    v7 = v17;
    if (v17)
    {
      if ([v17 unsignedIntegerValue] != self->_numberOfCMMMoments)
      {
        goto LABEL_53;
      }
    }

    v18 = [v5 objectForKeyedSubscript:@"gwftfprntconf"];
    v7 = v18;
    if (v18)
    {
      [v18 doubleValue];
      if (v19 != self->_facetimeFaceprintConfidence)
      {
        goto LABEL_53;
      }
    }

    v20 = [v5 objectForKeyedSubscript:@"gwfprntsmatch"];
    v7 = v20;
    if (v20)
    {
      if (self->_contactFaceprintMatch != [v20 BOOLValue])
      {
        goto LABEL_53;
      }
    }

    v21 = [v5 objectForKeyedSubscript:@"gwreldebug"];
    v7 = v21;
    if (v21)
    {
      if (![v21 isEqual:self->_relationshipsDebug])
      {
        goto LABEL_53;
      }
    }

    v22 = [v5 objectForKeyedSubscript:@"gwsocialgrpsconf"];
    v7 = v22;
    if (v22)
    {
      [v22 doubleValue];
      if (v23 != self->_socialGroupsConfidence)
      {
        goto LABEL_53;
      }
    }

    v24 = [v5 objectForKeyedSubscript:@"gwsocialgrps"];
    v7 = v24;
    if (v24)
    {
      if (![v24 isEqual:self->_socialGroupsDebug])
      {
        goto LABEL_53;
      }
    }

    v25 = [v5 objectForKeyedSubscript:@"gwmsggrps"];
    v7 = v25;
    if (v25)
    {
      if (![v25 isEqual:self->_messageGroupsDebug])
      {
        goto LABEL_53;
      }
    }

    v26 = [v5 objectForKeyedSubscript:@"gwgenmatch"];
    v7 = v26;
    if (v26)
    {
      if ([v26 unsignedIntegerValue] != self->_sexMatch)
      {
        goto LABEL_53;
      }
    }

    v27 = [v5 objectForKeyedSubscript:@"bdayscore"];
    v7 = v27;
    if (v27)
    {
      [v27 doubleValue];
      if (v28 != self->_birthdayScore)
      {
        goto LABEL_53;
      }
    }

    v29 = [v5 objectForKeyedSubscript:@"pbdayscore"];
    v7 = v29;
    if (v29)
    {
      [v29 doubleValue];
      if (v30 != self->_potentialBirthdayScore)
      {
        goto LABEL_53;
      }
    }

    v31 = [v5 objectForKeyedSubscript:@"addscore"];
    v7 = v31;
    if (v31)
    {
      [v31 doubleValue];
      if (v32 != self->_addressScore)
      {
        goto LABEL_53;
      }
    }

    v33 = [v5 objectForKeyedSubscript:@"maddscore"];
    v7 = v33;
    if (v33)
    {
      [v33 doubleValue];
      if (v34 != self->_mentionedAddressScore)
      {
        goto LABEL_53;
      }
    }

    v35 = [v5 objectForKeyedSubscript:@"calscore"];
    v7 = v35;
    if (v35)
    {
      [v35 doubleValue];
      if (v36 != self->_calendarScore)
      {
        goto LABEL_53;
      }
    }

    v37 = [v5 objectForKeyedSubscript:@"asstscore"];
    v7 = v37;
    if (v37)
    {
      [v37 doubleValue];
      if (v38 != self->_sharedAssetScore)
      {
        goto LABEL_53;
      }
    }

    v39 = [v5 objectForKeyedSubscript:@"cmmscore"];
    v7 = v39;
    if (v39)
    {
      [v39 doubleValue];
      if (v40 != self->_sharedCMMScore)
      {
        goto LABEL_53;
      }
    }

    v41 = [v5 objectForKeyedSubscript:@"relscore"];
    v7 = v41;
    if (v41)
    {
      [v41 doubleValue];
      if (v42 != self->_relationshipScore)
      {
        goto LABEL_53;
      }
    }

    v43 = [v5 objectForKeyedSubscript:@"scoremfp"];
    v7 = v43;
    if (!v43 || ([v43 doubleValue], v44 == self->_scoreAfterMessagePenalty))
    {
      v45 = 1;
    }

    else
    {
LABEL_53:
      v45 = 0;
    }
  }

  else
  {
    v45 = 1;
  }

  return v45;
}

- (PGGraphContactSuggestionEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v12 = [propertiesCopy objectForKeyedSubscript:@"confidence"];
  [v12 doubleValue];
  v74 = v13;

  v14 = [propertiesCopy objectForKeyedSubscript:@"gwscore"];
  [v14 doubleValue];
  v73 = v15;

  v16 = [propertiesCopy objectForKeyedSubscript:@"gwnummmtshome"];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  v17 = [propertiesCopy objectForKeyedSubscript:@"gwnummentndaddrs"];
  unsignedIntegerValue2 = [v17 unsignedIntegerValue];

  v18 = [propertiesCopy objectForKeyedSubscript:@"gwnumbdaymmt"];
  unsignedIntegerValue3 = [v18 unsignedIntegerValue];

  v19 = [propertiesCopy objectForKeyedSubscript:@"gwnummbdaymmt"];
  unsignedIntegerValue4 = [v19 unsignedIntegerValue];

  v20 = [propertiesCopy objectForKeyedSubscript:@"gwnummmtsclndrevents"];
  unsignedIntegerValue5 = [v20 unsignedIntegerValue];

  v21 = [propertiesCopy objectForKeyedSubscript:@"gwnumassts"];
  unsignedIntegerValue6 = [v21 unsignedIntegerValue];

  v23 = [propertiesCopy objectForKeyedSubscript:@"gwnumcmm"];
  unsignedIntegerValue7 = [v23 unsignedIntegerValue];

  v25 = [propertiesCopy objectForKeyedSubscript:@"gwftfprntconf"];
  [v25 doubleValue];
  v67 = v26;

  v27 = [propertiesCopy objectForKeyedSubscript:@"gwfprntsmatch"];
  bOOLValue = [v27 BOOLValue];

  v29 = [propertiesCopy objectForKeyedSubscript:@"gwreldebug"];
  v30 = [propertiesCopy objectForKeyedSubscript:@"gwsocialgrpsconf"];
  [v30 doubleValue];
  v66 = v31;

  v32 = [propertiesCopy objectForKeyedSubscript:@"gwsocialgrps"];
  v33 = [propertiesCopy objectForKeyedSubscript:@"gwmsggrps"];
  v34 = [propertiesCopy objectForKeyedSubscript:@"bdayscore"];
  [v34 doubleValue];
  v65 = v35;

  v36 = [propertiesCopy objectForKeyedSubscript:@"pbdayscore"];
  [v36 doubleValue];
  v38 = v37;

  v39 = [propertiesCopy objectForKeyedSubscript:@"addscore"];
  [v39 doubleValue];
  v41 = v40;

  v42 = [propertiesCopy objectForKeyedSubscript:@"maddscore"];
  [v42 doubleValue];
  v44 = v43;

  v45 = [propertiesCopy objectForKeyedSubscript:@"calscore"];
  [v45 doubleValue];
  v47 = v46;

  v48 = [propertiesCopy objectForKeyedSubscript:@"asstscore"];
  [v48 doubleValue];
  v50 = v49;

  v51 = [propertiesCopy objectForKeyedSubscript:@"cmmscore"];
  [v51 doubleValue];
  v53 = v52;

  v54 = [propertiesCopy objectForKeyedSubscript:@"relscore"];
  [v54 doubleValue];
  v56 = v55;

  v57 = [propertiesCopy objectForKeyedSubscript:@"scoremfp"];
  [v57 doubleValue];
  v59 = v58;

  v60 = [propertiesCopy objectForKeyedSubscript:@"gwgenmatch"];

  unsignedIntegerValue8 = [v60 unsignedIntegerValue];
  LOBYTE(v64) = bOOLValue;
  v62 = [(PGGraphContactSuggestionEdge *)self initFromPersonNode:nodeCopy toContactNode:targetNodeCopy confidence:unsignedIntegerValue contactScore:unsignedIntegerValue2 numberOfMomentsAtHome:unsignedIntegerValue3 numberOfMomentsAtMentionedAddress:unsignedIntegerValue4 numberOfWeakBirthdayMomentsAroundBirthdayDate:v74 numberOfWeakBirthdayMomentsAroundPotentialBirthdayDate:v73 numberOfMomentsOverlappingWithCalendarEvents:v67 numberOfAppearancesInSharedAssets:v66 numberOfCMMMoments:v65 facetimeFaceprintConfidence:v38 contactFaceprintMatch:v41 relationshipsDebug:v44 socialGroupsConfidence:unsignedIntegerValue5 socialGroupsDebug:unsignedIntegerValue6 messageGroupsDebug:unsignedIntegerValue7 birthdayScore:v64 potentialBirthdayScore:v29 addressScore:v32 mentionedAddressScore:v33 calendarScore:v47 sharedAssetScore:v50 sharedCMMScore:v53 relationshipScore:v56 scoreAfterMessagePenalty:v59 sexMatch:unsignedIntegerValue8];

  return v62;
}

- (id)initFromPersonNode:(id)node toContactNode:(id)contactNode confidence:(double)confidence contactScore:(double)score numberOfMomentsAtHome:(unint64_t)home numberOfMomentsAtMentionedAddress:(unint64_t)address numberOfWeakBirthdayMomentsAroundBirthdayDate:(unint64_t)date numberOfWeakBirthdayMomentsAroundPotentialBirthdayDate:(unint64_t)self0 numberOfMomentsOverlappingWithCalendarEvents:(unint64_t)self1 numberOfAppearancesInSharedAssets:(unint64_t)self2 numberOfCMMMoments:(unint64_t)self3 facetimeFaceprintConfidence:(double)self4 contactFaceprintMatch:(BOOL)self5 relationshipsDebug:(id)self6 socialGroupsConfidence:(double)self7 socialGroupsDebug:(id)self8 messageGroupsDebug:(id)self9 birthdayScore:(double)birthdayScore potentialBirthdayScore:(double)potentialBirthdayScore addressScore:(double)addressScore mentionedAddressScore:(double)mentionedAddressScore calendarScore:(double)calendarScore sharedAssetScore:(double)assetScore sharedCMMScore:(double)mScore relationshipScore:(double)relationshipScore scoreAfterMessagePenalty:(double)penalty sexMatch:(unint64_t)sexMatch
{
  debugCopy = debug;
  groupsDebugCopy = groupsDebug;
  messageGroupsDebugCopy = messageGroupsDebug;
  v50.receiver = self;
  v50.super_class = PGGraphContactSuggestionEdge;
  v44 = [(PGGraphEdge *)&v50 initWithSourceNode:node targetNode:contactNode];
  v45 = v44;
  if (v44)
  {
    v44->_confidence = confidence;
    v44->_contactScore = score;
    v44->_numberOfMomentsAtHome = home;
    v44->_numberOfMomentsAtMentionedAddress = address;
    v44->_numberOfWeakBirthdayMomentsAroundBirthdayDate = date;
    v44->_numberOfWeakBirthdayMomentsAroundPotentialBirthdayDate = birthdayDate;
    v44->_numberOfMomentsOverlappingWithCalendarEvents = events;
    v44->_numberOfAppearancesInSharedAssets = assets;
    v44->_numberOfCMMMoments = moments;
    v44->_facetimeFaceprintConfidence = faceprintConfidence;
    v44->_contactFaceprintMatch = match;
    objc_storeStrong(&v44->_relationshipsDebug, debug);
    v45->_socialGroupsConfidence = groupsConfidence;
    objc_storeStrong(&v45->_socialGroupsDebug, groupsDebug);
    objc_storeStrong(&v45->_messageGroupsDebug, messageGroupsDebug);
    v45->_birthdayScore = birthdayScore;
    v45->_potentialBirthdayScore = potentialBirthdayScore;
    v45->_addressScore = addressScore;
    v45->_mentionedAddressScore = mentionedAddressScore;
    v45->_calendarScore = calendarScore;
    v45->_sharedAssetScore = assetScore;
    v45->_sharedCMMScore = mScore;
    v45->_relationshipScore = relationshipScore;
    v45->_scoreAfterMessagePenalty = penalty;
    v45->_sexMatch = sexMatch;
  }

  return v45;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PEOPLE_CONTACT_SUGGESTION" domain:303];

  return v2;
}

@end