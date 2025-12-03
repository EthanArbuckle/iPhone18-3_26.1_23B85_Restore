@interface PGGraphRelationshipEdge
+ (MAEdgeFilter)confirmedRelationshipFilter;
+ (MAEdgeFilter)inferredRelationshipFilter;
+ (id)familyRelationshipLabels;
+ (id)filter;
+ (id)filterWithRelationship:(id)relationship;
+ (id)filterWithRelationship:(id)relationship status:(unint64_t)status;
+ (id)relationshipSourceToString:(unsigned __int8)string;
+ (id)supportedRelationshipLabels;
- (BOOL)hasProperties:(id)properties;
- (PGGraphRelationshipEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphRelationshipEdge)initWithRelationship:(id)relationship fromPersonNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence status:(unint64_t)status familyHolidayAttendanceRate:(double)rate hasParentContactName:(BOOL)name hasSameFamilyNameAsMePerson:(BOOL)self0 numberOfMomentsAtHome:(unint64_t)self1 hasAnniversaryDate:(BOOL)self2 isTopTwoPersonsSocialGroup:(BOOL)self3 numberOfLoveEmojisExchanged:(unint64_t)self4 isTopPerson:(BOOL)self5 friendNightOutAttendanceRate:(double)self6 partnerTripAttendanceRate:(double)self7 friendsAndFamilyTripAttendanceRate:(double)self8 weekendAppearanceRatio:(double)self9 momentsAtWorkAppearanceRate:(double)appearanceRate calendarAttendanceRatio:(double)attendanceRatio isPersonAgeDifferentThanMeNode:(BOOL)meNode isPersonOldEnoughToBeParentOrGrandparent:(BOOL)grandparent isPersonYoungEnoughToBeMeNodeChild:(BOOL)child source:(unsigned __int8)source;
- (id)_readableStringForProperty:(id)property;
- (id)edgeDescription;
- (id)propertyDictionary;
@end

@implementation PGGraphRelationshipEdge

- (id)_readableStringForProperty:(id)property
{
  v13[20] = *MEMORY[0x277D85DE8];
  v12[0] = @"confidence";
  v12[1] = @"rfamhol";
  v13[0] = @"SignalConfidence";
  v13[1] = @"SignalFamilyHolidayAttendanceRatio";
  v12[2] = @"rparnam";
  v12[3] = @"rfamnam";
  v13[2] = @"SignalHasParentContactName";
  v13[3] = @"SignalHasSameFamilyNameAsMePerson";
  v12[4] = @"gwnummmtshome";
  v12[5] = @"rhasanniv";
  v13[4] = @"SignalNumberOfMomentsAtHome";
  v13[5] = @"SignalHasAnniversaryDate";
  v12[6] = @"rtop2sg";
  v12[7] = @"rlovexch";
  v13[6] = @"SignalIsTopTwoPersonsSocialGroup";
  v13[7] = @"SignalNumberOfLoveEmojisExchanged";
  v12[8] = @"rtop";
  v12[9] = @"rfrndnghtout";
  v13[8] = @"SignalTopPerson";
  v13[9] = @"SignalFriendNightOutAttendanceRatio";
  v12[10] = @"rprtnrtrip";
  v12[11] = @"rfrfamtrip";
  v13[10] = @"SignalPartnerTripAttendanceRatio";
  v13[11] = @"SignalFriendsAndFamilyTripAttendanceRatio";
  v12[12] = @"rwkend";
  v12[13] = @"rwork";
  v13[12] = @"SignalWeekendAppearanceRatio";
  v13[13] = @"SignalCoworkerWorkMomentsRatio";
  v12[14] = @"rcal";
  v12[15] = @"ragediff";
  v13[14] = @"SignalCalendarAttendanceRatio";
  v13[15] = @"SignalAgeDifferentThanMeNode";
  v12[16] = @"rold";
  v12[17] = @"rchild";
  v13[16] = @"SignalAgeOldEnoughToBeParentOrGrandparent";
  v13[17] = @"SignalAgeYoungEnoughToBeMeNodeChild";
  v12[18] = @"relstatus";
  v12[19] = @"relsource";
  v13[18] = @"RelationshipStatus";
  v13[19] = @"RelationshipSource";
  v3 = MEMORY[0x277CBEAC0];
  propertyCopy = property;
  v5 = [v3 dictionaryWithObjects:v13 forKeys:v12 count:20];
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

- (id)edgeDescription
{
  v32 = *MEMORY[0x277D85DE8];
  propertyDictionary = [(PGGraphRelationshipEdge *)self propertyDictionary];
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = propertyDictionary;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [(PGGraphRelationshipEdge *)self _readableStringForProperty:v10];
        v12 = MEMORY[0x277CCACA8];
        v13 = [v5 objectForKeyedSubscript:v10];
        v14 = [v12 stringWithFormat:@"%@", v13];

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v11, v14];
        [array addObject:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v16 = [array sortedArrayUsingSelector:sel_compare_];
  v17 = MEMORY[0x277CCACA8];
  v26.receiver = self;
  v26.super_class = PGGraphRelationshipEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v26 edgeDescription];
  relationship = self->_relationship;
  [(PGGraphRelationshipEdge *)self confidence];
  v21 = v20;
  v22 = [v16 componentsJoinedByString:{@", "}];
  v23 = [v17 stringWithFormat:@"%@ (%@, confidence = %f, %@)", edgeDescription, relationship, v21, v22];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)propertyDictionary
{
  v27[20] = *MEMORY[0x277D85DE8];
  v26[0] = @"confidence";
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v27[0] = v25;
  v26[1] = @"rfamhol";
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_familyHolidayAttendanceRate];
  v27[1] = v24;
  v26[2] = @"rparnam";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 48) & 1];
  v27[2] = v23;
  v26[3] = @"rfamnam";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 1) & 1];
  v27[3] = v22;
  v26[4] = @"gwnummmtshome";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 10)];
  v27[4] = v21;
  v26[5] = @"rhasanniv";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 2) & 1];
  v27[5] = v20;
  v26[6] = @"rtop2sg";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 3) & 1];
  v27[6] = v19;
  v26[7] = @"rlovexch";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 11)];
  v27[7] = v18;
  v26[8] = @"rtop";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 4) & 1];
  v27[8] = v17;
  v26[9] = @"rfrndnghtout";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_friendNightOutAttendanceRate];
  v27[9] = v16;
  v26[10] = @"rprtnrtrip";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_partnerTripAttendanceRate];
  v27[10] = v15;
  v26[11] = @"rfrfamtrip";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_friendsAndFamilyTripAttendanceRate];
  v27[11] = v3;
  v26[12] = @"rwkend";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_weekendAppearanceRatio];
  v27[12] = v4;
  v26[13] = @"rwork";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_momentsAtWorkAppearanceRate];
  v27[13] = v5;
  v26[14] = @"rcal";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_calendarAttendanceRatio];
  v27[14] = v6;
  v26[15] = @"ragediff";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 5) & 1];
  v27[15] = v7;
  v26[16] = @"rold";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 6) & 1];
  v27[16] = v8;
  v26[17] = @"rchild";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPersonYoungEnoughToBeMeNodeChild];
  v27[17] = v9;
  v26[18] = @"relstatus";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_status];
  v27[18] = v10;
  v26[19] = @"relsource";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_source];
  v27[19] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:20];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
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
        goto LABEL_45;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"rfamhol"];
    v7 = v9;
    if (v9)
    {
      [v9 doubleValue];
      if (v10 != self->_familyHolidayAttendanceRate)
      {
        goto LABEL_45;
      }
    }

    v11 = [v5 objectForKeyedSubscript:@"rparnam"];
    v7 = v11;
    if (v11)
    {
      if ([v11 BOOLValue] != (*(self + 48) & 1))
      {
        goto LABEL_45;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"rfamnam"];
    v7 = v12;
    if (v12)
    {
      if ([v12 BOOLValue] == ((*(self + 48) & 2) == 0))
      {
        goto LABEL_45;
      }
    }

    v13 = [v5 objectForKeyedSubscript:@"gwnummmtshome"];
    v7 = v13;
    if (v13)
    {
      if ([v13 unsignedIntegerValue] != *(self + 10))
      {
        goto LABEL_45;
      }
    }

    v14 = [v5 objectForKeyedSubscript:@"rhasanniv"];
    v7 = v14;
    if (v14)
    {
      if ([v14 BOOLValue] == ((*(self + 48) & 4) == 0))
      {
        goto LABEL_45;
      }
    }

    v15 = [v5 objectForKeyedSubscript:@"rtop2sg"];
    v7 = v15;
    if (v15)
    {
      if ([v15 BOOLValue] == ((*(self + 48) & 8) == 0))
      {
        goto LABEL_45;
      }
    }

    v16 = [v5 objectForKeyedSubscript:@"rlovexch"];
    v7 = v16;
    if (v16)
    {
      if ([v16 unsignedIntegerValue] != *(self + 11))
      {
        goto LABEL_45;
      }
    }

    v17 = [v5 objectForKeyedSubscript:@"rtop"];
    v7 = v17;
    if (v17)
    {
      if ([v17 BOOLValue] == ((*(self + 48) & 0x10) == 0))
      {
        goto LABEL_45;
      }
    }

    v18 = [v5 objectForKeyedSubscript:@"rfrndnghtout"];
    v7 = v18;
    if (v18)
    {
      [v18 doubleValue];
      if (v19 != self->_friendNightOutAttendanceRate)
      {
        goto LABEL_45;
      }
    }

    v20 = [v5 objectForKeyedSubscript:@"rprtnrtrip"];
    v7 = v20;
    if (v20)
    {
      [v20 doubleValue];
      if (v21 != self->_partnerTripAttendanceRate)
      {
        goto LABEL_45;
      }
    }

    v22 = [v5 objectForKeyedSubscript:@"rfrfamtrip"];
    v7 = v22;
    if (v22)
    {
      [v22 doubleValue];
      if (v23 != self->_friendsAndFamilyTripAttendanceRate)
      {
        goto LABEL_45;
      }
    }

    v24 = [v5 objectForKeyedSubscript:@"rwkend"];
    v7 = v24;
    if (v24)
    {
      [v24 doubleValue];
      if (v25 != self->_weekendAppearanceRatio)
      {
        goto LABEL_45;
      }
    }

    v26 = [v5 objectForKeyedSubscript:@"rwork"];
    v7 = v26;
    if (v26)
    {
      [v26 doubleValue];
      if (v27 != self->_momentsAtWorkAppearanceRate)
      {
        goto LABEL_45;
      }
    }

    v28 = [v5 objectForKeyedSubscript:@"rcal"];
    v7 = v28;
    if (v28)
    {
      [v28 doubleValue];
      if (v29 != self->_calendarAttendanceRatio)
      {
        goto LABEL_45;
      }
    }

    v30 = [v5 objectForKeyedSubscript:@"ragediff"];
    v7 = v30;
    if (v30)
    {
      if ([v30 BOOLValue] == ((*(self + 48) & 0x20) == 0))
      {
        goto LABEL_45;
      }
    }

    v31 = [v5 objectForKeyedSubscript:@"rold"];
    v7 = v31;
    if (v31)
    {
      if ([v31 BOOLValue] == ((*(self + 48) & 0x40) == 0))
      {
        goto LABEL_45;
      }
    }

    v32 = [v5 objectForKeyedSubscript:@"rchild"];
    v7 = v32;
    if (v32)
    {
      if (self->_isPersonYoungEnoughToBeMeNodeChild != [v32 BOOLValue])
      {
        goto LABEL_45;
      }
    }

    v33 = [v5 objectForKeyedSubscript:@"relstatus"];
    v7 = v33;
    if (v33)
    {
      if ([v33 unsignedIntegerValue] != self->_status)
      {
        goto LABEL_45;
      }
    }

    v34 = [v5 objectForKeyedSubscript:@"relsource"];
    v7 = v34;
    if (v34 && [v34 unsignedIntValue] != self->_source)
    {
LABEL_45:
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
    v35 = 1;
  }

  return v35;
}

- (PGGraphRelationshipEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  labelCopy = label;
  v12 = [propertiesCopy objectForKeyedSubscript:@"confidence"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [propertiesCopy objectForKeyedSubscript:@"rfamhol"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [propertiesCopy objectForKeyedSubscript:@"rparnam"];
  bOOLValue = [v18 BOOLValue];

  v19 = [propertiesCopy objectForKeyedSubscript:@"rfamnam"];
  bOOLValue2 = [v19 BOOLValue];

  v20 = [propertiesCopy objectForKeyedSubscript:@"gwnummmtshome"];
  unsignedIntegerValue = [v20 unsignedIntegerValue];

  v21 = [propertiesCopy objectForKeyedSubscript:@"rhasanniv"];
  bOOLValue3 = [v21 BOOLValue];

  v22 = [propertiesCopy objectForKeyedSubscript:@"rtop2sg"];
  bOOLValue4 = [v22 BOOLValue];

  v24 = [propertiesCopy objectForKeyedSubscript:@"rlovexch"];
  unsignedIntegerValue2 = [v24 unsignedIntegerValue];

  v26 = [propertiesCopy objectForKeyedSubscript:@"rtop"];
  LOBYTE(v24) = [v26 BOOLValue];

  v27 = [propertiesCopy objectForKeyedSubscript:@"rfrndnghtout"];
  [v27 doubleValue];
  v29 = v28;

  v30 = [propertiesCopy objectForKeyedSubscript:@"rprtnrtrip"];
  [v30 doubleValue];
  v32 = v31;

  v33 = [propertiesCopy objectForKeyedSubscript:@"rfrfamtrip"];
  [v33 doubleValue];
  v35 = v34;

  v36 = [propertiesCopy objectForKeyedSubscript:@"rwkend"];
  [v36 doubleValue];
  v38 = v37;

  v39 = [propertiesCopy objectForKeyedSubscript:@"rwork"];
  [v39 doubleValue];
  v41 = v40;

  v42 = [propertiesCopy objectForKeyedSubscript:@"rcal"];
  [v42 doubleValue];
  v44 = v43;

  v45 = [propertiesCopy objectForKeyedSubscript:@"ragediff"];
  LOBYTE(v42) = [v45 BOOLValue];

  v46 = [propertiesCopy objectForKeyedSubscript:@"rold"];
  LOBYTE(v45) = [v46 BOOLValue];

  v47 = [propertiesCopy objectForKeyedSubscript:@"rchild"];
  LOBYTE(targetNode) = [v47 BOOLValue];

  v48 = [propertiesCopy objectForKeyedSubscript:@"relstatus"];
  unsignedIntegerValue3 = [v48 unsignedIntegerValue];

  v50 = [propertiesCopy objectForKeyedSubscript:@"relsource"];

  LOBYTE(propertiesCopy) = [v50 unsignedIntValue];
  BYTE4(v54) = propertiesCopy;
  BYTE3(v54) = targetNode;
  BYTE2(v54) = v45;
  BYTE1(v54) = v42;
  LOBYTE(v54) = v24;
  BYTE1(v53) = bOOLValue4;
  LOBYTE(v53) = bOOLValue3;
  v51 = [PGGraphRelationshipEdge initWithRelationship:"initWithRelationship:fromPersonNode:toPersonNode:confidence:status:familyHolidayAttendanceRate:hasParentContactName:hasSameFamilyNameAsMePerson:numberOfMomentsAtHome:hasAnniversaryDate:isTopTwoPersonsSocialGroup:numberOfLoveEmojisExchanged:isTopPerson:friendNightOutAttendanceRate:partnerTripAttendanceRate:friendsAndFamilyTripAttendanceRate:weekendAppearanceRatio:momentsAtWorkAppearanceRate:calendarAttendanceRatio:isPersonAgeDifferentThanMeNode:isPersonOldEnoughToBeParentOrGrandparent:isPersonYoungEnoughToBeMeNodeChild:source:" fromPersonNode:labelCopy toPersonNode:nodeCopy confidence:targetNodeCopy status:unsignedIntegerValue3 familyHolidayAttendanceRate:bOOLValue hasParentContactName:bOOLValue2 hasSameFamilyNameAsMePerson:v14 numberOfMomentsAtHome:v17 hasAnniversaryDate:v29 isTopTwoPersonsSocialGroup:v32 numberOfLoveEmojisExchanged:v35 isTopPerson:v38 friendNightOutAttendanceRate:v41 partnerTripAttendanceRate:v44 friendsAndFamilyTripAttendanceRate:unsignedIntegerValue weekendAppearanceRatio:v53 momentsAtWorkAppearanceRate:unsignedIntegerValue2 calendarAttendanceRatio:v54 isPersonAgeDifferentThanMeNode:? isPersonOldEnoughToBeParentOrGrandparent:? isPersonYoungEnoughToBeMeNodeChild:? source:?];

  return v51;
}

- (PGGraphRelationshipEdge)initWithRelationship:(id)relationship fromPersonNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence status:(unint64_t)status familyHolidayAttendanceRate:(double)rate hasParentContactName:(BOOL)name hasSameFamilyNameAsMePerson:(BOOL)self0 numberOfMomentsAtHome:(unint64_t)self1 hasAnniversaryDate:(BOOL)self2 isTopTwoPersonsSocialGroup:(BOOL)self3 numberOfLoveEmojisExchanged:(unint64_t)self4 isTopPerson:(BOOL)self5 friendNightOutAttendanceRate:(double)self6 partnerTripAttendanceRate:(double)self7 friendsAndFamilyTripAttendanceRate:(double)self8 weekendAppearanceRatio:(double)self9 momentsAtWorkAppearanceRate:(double)appearanceRate calendarAttendanceRatio:(double)attendanceRatio isPersonAgeDifferentThanMeNode:(BOOL)meNode isPersonOldEnoughToBeParentOrGrandparent:(BOOL)grandparent isPersonYoungEnoughToBeMeNodeChild:(BOOL)child source:(unsigned __int8)source
{
  personCopy = person;
  relationshipCopy = relationship;
  v50.receiver = self;
  v50.super_class = PGGraphRelationshipEdge;
  v40 = [(PGGraphEdge *)&v50 initWithSourceNode:node targetNode:personNode];
  if (v40)
  {
    v41 = [relationshipCopy copy];
    relationship = v40->_relationship;
    v40->_relationship = v41;

    v40->_confidence = confidence;
    v40->_status = status;
    v40->_familyHolidayAttendanceRate = rate;
    *(v40 + 48) = *(v40 + 48) & 0xFE | name;
    if (personCopy)
    {
      v43 = 2;
    }

    else
    {
      v43 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xFD | v43;
    *(v40 + 10) = home;
    if (date)
    {
      v44 = 4;
    }

    else
    {
      v44 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xFB | v44;
    if (group)
    {
      v45 = 8;
    }

    else
    {
      v45 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xF7 | v45;
    *(v40 + 11) = exchanged;
    if (topPerson)
    {
      v46 = 16;
    }

    else
    {
      v46 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xEF | v46;
    v40->_friendNightOutAttendanceRate = attendanceRate;
    v40->_partnerTripAttendanceRate = tripAttendanceRate;
    v40->_friendsAndFamilyTripAttendanceRate = familyTripAttendanceRate;
    v40->_weekendAppearanceRatio = ratio;
    v40->_momentsAtWorkAppearanceRate = appearanceRate;
    v40->_calendarAttendanceRatio = attendanceRatio;
    if (meNode)
    {
      v47 = 32;
    }

    else
    {
      v47 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xDF | v47;
    if (grandparent)
    {
      v48 = 64;
    }

    else
    {
      v48 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xBF | v48;
    v40->_isPersonYoungEnoughToBeMeNodeChild = child;
    v40->_source = source;
  }

  return v40;
}

+ (id)familyRelationshipLabels
{
  v7[9] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"FAMILY";
  v7[1] = @"SISTER";
  v7[2] = @"BROTHER";
  v7[3] = @"PARENT";
  v7[4] = @"MOTHER";
  v7[5] = @"FATHER";
  v7[6] = @"CHILD";
  v7[7] = @"DAUGHTER";
  v7[8] = @"SON";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:9];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filterWithRelationship:(id)relationship status:(unint64_t)status
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [self filterWithRelationship:relationship];
  v11 = @"relstatus";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 filterBySettingProperties:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)filterWithRelationship:(id)relationship
{
  v3 = MEMORY[0x277D22C20];
  relationshipCopy = relationship;
  v5 = [[v3 alloc] initWithLabel:relationshipCopy domain:300];

  return v5;
}

+ (MAEdgeFilter)inferredRelationshipFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphRelationshipEdge filter];
  v7 = @"relstatus";
  v8[0] = &unk_2844821A8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (MAEdgeFilter)confirmedRelationshipFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphRelationshipEdge filter];
  v7 = @"relstatus";
  v8[0] = &unk_284482190;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v3 = objc_alloc(MEMORY[0x277D22C20]);
  supportedRelationshipLabels = [self supportedRelationshipLabels];
  v5 = [v3 initWithLabels:supportedRelationshipLabels domain:300 properties:MEMORY[0x277CBEC10]];

  return v5;
}

+ (id)relationshipSourceToString:(unsigned __int8)string
{
  if (string)
  {
    return @"Megadome";
  }

  else
  {
    return @"Graph";
  }
}

+ (id)supportedRelationshipLabels
{
  if (supportedRelationshipLabels_onceToken != -1)
  {
    dispatch_once(&supportedRelationshipLabels_onceToken, &__block_literal_global_3372);
  }

  v3 = supportedRelationshipLabels_supportedRelationshipLabels;

  return v3;
}

void __54__PGGraphRelationshipEdge_supportedRelationshipLabels__block_invoke()
{
  v5[17] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"PARTNER";
  v5[1] = @"FATHER";
  v5[2] = @"MOTHER";
  v5[3] = @"BROTHER";
  v5[4] = @"SISTER";
  v5[5] = @"DAUGHTER";
  v5[6] = @"SON";
  v5[7] = @"PARENT";
  v5[8] = @"FAMILY";
  v5[9] = @"FAMILY_SOCIALGROUP";
  v5[10] = @"CHILD";
  v5[11] = @"FRIEND";
  v5[12] = @"COWORKER";
  v5[13] = @"COWORKER_SOCIALGROUP";
  v5[14] = @"ACQUAINTANCE";
  v5[15] = @"VIP";
  v5[16] = @"HOUSEHOLD_MEMBER";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:17];
  v2 = [v0 setWithArray:v1];
  v3 = supportedRelationshipLabels_supportedRelationshipLabels;
  supportedRelationshipLabels_supportedRelationshipLabels = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end