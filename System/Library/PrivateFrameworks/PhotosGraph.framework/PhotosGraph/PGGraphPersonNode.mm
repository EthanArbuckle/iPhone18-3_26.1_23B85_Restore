@interface PGGraphPersonNode
+ (MANodeFilter)filterExcludingMe;
+ (MANodeFilter)filterIncludingMe;
+ (MANodeFilter)filterNameEmpty;
+ (MANodeFilter)filterNameNotEmpty;
+ (MANodeFilter)filterShareParticipantIdentifierNotEmpty;
+ (MARelation)acquaintanceOfPerson;
+ (MARelation)anniversaryMomentOfPerson;
+ (MARelation)birthdayMomentOfPerson;
+ (MARelation)brotherOfPerson;
+ (MARelation)childOfPerson;
+ (MARelation)coworkerOfPerson;
+ (MARelation)coworkerSocialGroupOfPerson;
+ (MARelation)daughterOfPerson;
+ (MARelation)familyOfPerson;
+ (MARelation)familySocialGroupOfPerson;
+ (MARelation)fatherOfPerson;
+ (MARelation)friendOfPerson;
+ (MARelation)homeOfPerson;
+ (MARelation)homeOrWorkOfPerson;
+ (MARelation)inferredAcquaintanceOfPerson;
+ (MARelation)inferredBrotherOfPerson;
+ (MARelation)inferredChildOfPerson;
+ (MARelation)inferredCoworkerOfPerson;
+ (MARelation)inferredCoworkerSocialGroupOfPerson;
+ (MARelation)inferredDaughterOfPerson;
+ (MARelation)inferredFamilyOfPerson;
+ (MARelation)inferredFamilySocialGroupOfPerson;
+ (MARelation)inferredFatherOfPerson;
+ (MARelation)inferredFriendOfPerson;
+ (MARelation)inferredMotherOfPerson;
+ (MARelation)inferredParentOfPerson;
+ (MARelation)inferredPartnerOfPerson;
+ (MARelation)inferredSisterOfPerson;
+ (MARelation)inferredSonOfPerson;
+ (MARelation)inferredVipOfPerson;
+ (MARelation)momentAuthoredByPerson;
+ (MARelation)momentOfPerson;
+ (MARelation)momentWithPhysicallyPresentPerson;
+ (MARelation)motherOfPerson;
+ (MARelation)parentOfPerson;
+ (MARelation)partnerOfPerson;
+ (MARelation)personActivityMeaningOfPerson;
+ (MARelation)relationshipTagOfPerson;
+ (MARelation)sisterOfPerson;
+ (MARelation)socialGroupOfPerson;
+ (MARelation)sonOfPerson;
+ (MARelation)vipOfPerson;
+ (MARelation)workOfPerson;
+ (NSArray)personScoreSortDescriptors;
+ (NSArray)personSortDescriptors;
+ (double)_specialDateTimeIntervalForDate:(id)date;
+ (id)_specialDateComponentsForDate:(id)date;
+ (id)changedPropertyNamesForContactsChange;
+ (id)filter;
+ (id)filterForAgeCategories:(id)categories includingMe:(BOOL)me;
+ (id)filterForBiologicalSex:(unint64_t)sex;
+ (id)filterWithShareParticipantIdentifiers:(id)identifiers;
+ (id)propertiesWithAgeCategory:(unint64_t)category;
+ (id)propertiesWithBiologicalSex:(unint64_t)sex;
+ (id)propertiesWithPerson:(id)person;
+ (id)relationshipTagOfPersonWithConfidence:(double)confidence;
+ (void)setAnniversaryDateComponents:(id)components onPersonNodeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
+ (void)setBirthdayDateComponents:(id)components onPersonNodeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
+ (void)setName:(id)name onPersonNodeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (BOOL)_contactSuggestionEdge:(id)edge fitsQuery:(unint64_t)query;
- (BOOL)_hasRelationshipLabel:(id)label withStatus:(unint64_t)status;
- (BOOL)belongsToBestSocialGroups;
- (BOOL)hasProperties:(id)properties;
- (BOOL)isIdentifiedByProperties:(id)properties;
- (BOOL)isMeNode;
- (BOOL)isMyAcquaintance;
- (BOOL)isMyInferredAcquaintance;
- (BOOL)isMyInferredSibling;
- (BOOL)isMySibling;
- (BOOL)isTaggedWithRelationship:(unint64_t)relationship withConfidence:(double)confidence;
- (NSDateComponents)anniversaryDateComponents;
- (NSDateComponents)birthdayDateComponents;
- (NSDateComponents)potentialBirthdayDateComponents;
- (NSString)description;
- (NSString)featureIdentifier;
- (NSString)suggestedContactIdentifier;
- (PGGraphPersonNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphPersonNode)initWithPerson:(id)person;
- (PGGraphPersonNodeCollection)collection;
- (double)personScore;
- (id)_contactSuggestionEdgesSortedByConfidence;
- (id)associatedNodesForRemoval;
- (id)changingPropertiesWithProperties:(id)properties;
- (id)entityFilter;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
- (id)stringDescription;
- (int64_t)compareToPerson:(id)person;
- (void)enumerateContactSuggestionsSortedByConfidenceMatchingQuery:(unint64_t)query usingBlock:(id)block;
- (void)enumerateHomeOrWorkAddressEdgesAndNodesUsingBlock:(id)block;
- (void)enumerateHomeOrWorkAddressNodesUsingBlock:(id)block;
- (void)enumerateHomeOrWorkNodesUsingBlock:(id)block;
- (void)setLocalProperties:(id)properties;
@end

@implementation PGGraphPersonNode

- (NSString)suggestedContactIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7174;
  v9 = __Block_byref_object_dispose__7175;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__PGGraphPersonNode_PGPersonResult__suggestedContactIdentifier__block_invoke;
  v4[3] = &unk_27887FAD0;
  v4[4] = &v5;
  [(PGGraphPersonNode *)self enumerateContactSuggestionsSortedByConfidenceMatchingQuery:1 usingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __63__PGGraphPersonNode_PGPersonResult__suggestedContactIdentifier__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a2 contactIdentifier];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *a5 = 1;
}

- (int64_t)compareToPerson:(id)person
{
  personCopy = person;
  type = [objc_opt_class() type];
  if (type == [objc_opt_class() type])
  {
    v6 = personCopy;
    contactIdentifier = [(PGGraphPersonNode *)self contactIdentifier];
    v8 = [contactIdentifier length];

    contactIdentifier2 = [v6 contactIdentifier];
    v10 = [contactIdentifier2 length];

    if (!v8 || v10)
    {
      if (v8 || !v10)
      {
        v11 = (*(PGManagerPersonNodeComparisonBlock + 2))(PGManagerPersonNodeComparisonBlock, self, v6);
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localIdentifier = [(PGGraphPersonNode *)self localIdentifier];
  if ([localIdentifier length])
  {
    [(PGGraphPersonNode *)self localIdentifier];
  }

  else
  {
    [(PGGraphPersonNode *)self contactIdentifier];
  }
  v7 = ;
  v8 = [v3 stringWithFormat:@"%@|%@", v5, v7];

  return v8;
}

- (PGGraphPersonNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphPersonNodeCollection alloc] initWithNode:self];

  return v2;
}

- (id)associatedNodesForRemoval
{
  v3 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphPersonNode *)self collection];
  socialGroupNodes = [collection socialGroupNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PGGraphPersonNode_associatedNodesForRemoval__block_invoke;
  v8[3] = &unk_2788803E8;
  v6 = v3;
  v9 = v6;
  [socialGroupNodes enumerateNodesUsingBlock:v8];

  return v6;
}

void __46__PGGraphPersonNode_associatedNodesForRemoval__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"BELONGSTO" domain:302] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (NSDateComponents)anniversaryDateComponents
{
  if (self->_anniversaryDate)
  {
    v3 = [PGGraphPersonNode _specialDateComponentsForDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDateComponents)potentialBirthdayDateComponents
{
  if (self->_potentialBirthdayDate)
  {
    v3 = [PGGraphPersonNode _specialDateComponentsForDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDateComponents)birthdayDateComponents
{
  if (self->_birthdayDate)
  {
    v3 = [PGGraphPersonNode _specialDateComponentsForDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)changingPropertiesWithProperties:(id)properties
{
  v49 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  propertyDictionary = [(PGGraphPersonNode *)self propertyDictionary];
  v6 = [propertyDictionary isEqualToDictionary:propertiesCopy];

  if (v6)
  {
    v7 = MEMORY[0x277CBEC10];
    goto LABEL_62;
  }

  v8 = [propertiesCopy mutableCopy];
  v9 = [propertiesCopy objectForKeyedSubscript:@"id"];
  if (v9)
  {
    if (-[NSString length](self->_localIdentifier, "length") && [v9 length] && !-[NSString isEqualToString:](self->_localIdentifier, "isEqualToString:", v9))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v44 = v9;
        v45 = 2112;
        selfCopy3 = self;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Trying to merge local identifier %@ into person node %@", buf, 0x16u);
      }

      v7 = MEMORY[0x277CBEC10];
      goto LABEL_61;
    }

    if (-[NSString length](self->_localIdentifier, "length") || ![v9 length])
    {
      [v8 removeObjectForKey:@"id"];
    }
  }

  v10 = [propertiesCopy objectForKeyedSubscript:@"cnid"];
  if (v10)
  {
    if (-[NSString length](self->_contactIdentifier, "length") && [v10 length] && !-[NSString isEqualToString:](self->_contactIdentifier, "isEqualToString:", v10) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v44 = v10;
      v45 = 2112;
      selfCopy3 = self;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Trying to merge ContactIdentifier %@ into person node %@", buf, 0x16u);
    }

    if (-[NSString length](self->_contactIdentifier, "length") || ![v10 length])
    {
      [v8 removeObjectForKey:@"cnid"];
    }
  }

  v41 = v10;
  v11 = [propertiesCopy objectForKeyedSubscript:@"shareparticipant"];
  v12 = v11;
  if (v11)
  {
    if ([v11 length] && -[NSString length](self->_shareParticipantLocalIdentifier, "length") && !-[NSString isEqualToString:](self->_shareParticipantLocalIdentifier, "isEqualToString:", v12) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      shareParticipantLocalIdentifier = self->_shareParticipantLocalIdentifier;
      *buf = 138412802;
      v44 = v12;
      v45 = 2112;
      selfCopy3 = self;
      v47 = 2112;
      v48 = shareParticipantLocalIdentifier;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Trying to merge ShareParticipantIdentifier %@ into person node %@ with share participant identifier %@", buf, 0x20u);
    }

    if (-[NSString length](self->_shareParticipantLocalIdentifier, "length") || ![v12 length])
    {
      [v8 removeObjectForKey:@"shareparticipant"];
    }
  }

  v42 = v9;
  v40 = [propertiesCopy objectForKeyedSubscript:@"name"];
  v13 = [v40 length];
  if (v13 <= [(NSString *)self->_name length])
  {
    [v8 removeObjectForKey:@"name"];
  }

  v14 = [propertiesCopy objectForKeyedSubscript:@"sex"];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  if (self->_sex || !unsignedIntegerValue)
  {
    [v8 removeObjectForKey:@"sex"];
  }

  v16 = [propertiesCopy objectForKeyedSubscript:@"agecategory"];
  unsignedIntegerValue2 = [v16 unsignedIntegerValue];

  if (self->_ageCategory || !unsignedIntegerValue2)
  {
    [v8 removeObjectForKey:@"agecategory"];
  }

  if (self->_isFavorite || ([propertiesCopy objectForKeyedSubscript:@"fav"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, (v19 & 1) == 0))
  {
    [v8 removeObjectForKey:@"fav"];
  }

  if (self->_isUserCreated || ([propertiesCopy objectForKeyedSubscript:@"usercreated"], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "BOOLValue"), v20, (v21 & 1) == 0))
  {
    [v8 removeObjectForKey:@"usercreated"];
  }

  v22 = [propertiesCopy objectForKeyedSubscript:@"bday"];
  v23 = v22;
  if (v22)
  {
    v24 = MEMORY[0x277CBEAA8];
    [v22 doubleValue];
    v25 = [v24 dateWithTimeIntervalSince1970:?];
    birthdayDate = self->_birthdayDate;
    if (birthdayDate && v25 && [(NSDate *)birthdayDate isEqualToDate:v25])
    {
      [v8 removeObjectForKey:@"bday"];
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = [propertiesCopy objectForKeyedSubscript:@"pbday"];
  v28 = v27;
  if (v27)
  {
    v29 = MEMORY[0x277CBEAA8];
    [v27 doubleValue];
    v30 = [v29 dateWithTimeIntervalSince1970:?];
    potentialBirthdayDate = self->_potentialBirthdayDate;
    if (potentialBirthdayDate && v30 && [(NSDate *)potentialBirthdayDate isEqualToDate:v30])
    {
      [v8 removeObjectForKey:@"pbday"];
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = [propertiesCopy objectForKeyedSubscript:@"anniv"];
  v33 = v32;
  if (v32)
  {
    v34 = MEMORY[0x277CBEAA8];
    [v32 doubleValue];
    v35 = [v34 dateWithTimeIntervalSince1970:?];
    anniversaryDate = self->_anniversaryDate;
    if (anniversaryDate && v35 && [(NSDate *)anniversaryDate isEqualToDate:v35])
    {
      [v8 removeObjectForKey:@"anniv"];
    }
  }

  else
  {
    v35 = 0;
  }

  v7 = v8;

  v9 = v42;
LABEL_61:

LABEL_62:
  v37 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isIdentifiedByProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [propertiesCopy objectForKeyedSubscript:@"id"];
  if ([v5 length] && -[NSString length](self->_localIdentifier, "length"))
  {
    v6 = [v5 isEqualToString:self->_localIdentifier];
  }

  else
  {
    v7 = [propertiesCopy objectForKeyedSubscript:@"cnid"];
    if ([v7 length] && -[NSString length](self->_contactIdentifier, "length"))
    {
      v6 = [v7 isEqualToString:self->_contactIdentifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)stringDescription
{
  v12 = *MEMORY[0x277D85DE8];
  name = [(PGGraphPersonNode *)self name];
  if (![(__CFString *)name length])
  {
    localIdentifier = [(PGGraphPersonNode *)self localIdentifier];

    if (![(__CFString *)localIdentifier length])
    {
      contactIdentifier = [(PGGraphPersonNode *)self contactIdentifier];

      localIdentifier = contactIdentifier;
    }

    if ([(__CFString *)localIdentifier length])
    {
      if ([(__CFString *)localIdentifier length]< 9)
      {
        name = localIdentifier;
      }

      else
      {
        name = [(__CFString *)localIdentifier substringToIndex:8];
      }
    }

    else
    {

      v8 = +[PGLogging sharedLogging];
      loggingConnection = [v8 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        selfCopy = self;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No identifiers for personNode %@", &v10, 0xCu);
      }

      name = @"unknown";
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return name;
}

- (id)_contactSuggestionEdgesSortedByConfidence
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__PGGraphPersonNode__contactSuggestionEdgesSortedByConfidence__block_invoke;
  v10[3] = &unk_2788803C0;
  v11 = v3;
  v4 = v3;
  [(MANode *)self enumerateEdgesWithLabel:@"PEOPLE_CONTACT_SUGGESTION" domain:303 usingBlock:v10];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"confidence" ascending:0];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_contactSuggestionEdge:(id)edge fitsQuery:(unint64_t)query
{
  queryCopy = query;
  [edge confidence];
  if ((queryCopy & 1) != 0 && v5 == 1.0 || (queryCopy & 2) != 0 && (v5 > 0.0 ? (v6 = v5 < 1.0) : (v6 = 0), v6))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    return (v5 == 0.0) & (queryCopy >> 2);
  }

  return v7;
}

- (void)enumerateContactSuggestionsSortedByConfidenceMatchingQuery:(unint64_t)query usingBlock:(id)block
{
  blockCopy = block;
  _contactSuggestionEdgesSortedByConfidence = [(PGGraphPersonNode *)self _contactSuggestionEdgesSortedByConfidence];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__PGGraphPersonNode_enumerateContactSuggestionsSortedByConfidenceMatchingQuery_usingBlock___block_invoke;
  v9[3] = &unk_278880398;
  v10 = blockCopy;
  queryCopy = query;
  v9[4] = self;
  v8 = blockCopy;
  [_contactSuggestionEdgesSortedByConfidence enumerateObjectsUsingBlock:v9];
}

void __91__PGGraphPersonNode_enumerateContactSuggestionsSortedByConfidenceMatchingQuery_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 48);
  v11 = v7;
  if ([*(a1 + 32) _contactSuggestionEdge:? fitsQuery:?])
  {
    v9 = *(a1 + 40);
    v10 = [v11 targetNode];
    (*(v9 + 16))(v9, v10, v11, a3, a4);
  }
}

- (BOOL)isTaggedWithRelationship:(unint64_t)relationship withConfidence:(double)confidence
{
  confidence = [PGGraphPersonNode relationshipTagOfPersonWithConfidence:relationship, confidence];
  collection = [(PGGraphPersonNode *)self collection];
  v7 = [(MANodeCollection *)PGGraphPersonRelationshipTagNodeCollection nodesRelatedToNodes:collection withRelation:confidence];
  v8 = [v7 count] != 0;

  return v8;
}

- (BOOL)isMyInferredAcquaintance
{
  if ([(PGGraphPersonNode *)self isInferredMemberOfMyFamily]|| [(PGGraphPersonNode *)self isMyInferredPartner]|| [(PGGraphPersonNode *)self isMyInferredChild]|| [(PGGraphPersonNode *)self isMyInferredCoworker])
  {
    return 0;
  }

  else
  {
    return ![(PGGraphPersonNode *)self isMyInferredFriend];
  }
}

- (BOOL)isMyInferredSibling
{
  if ([(PGGraphPersonNode *)self isMyInferredSister])
  {
    return 1;
  }

  return [(PGGraphPersonNode *)self isMyInferredBrother];
}

- (BOOL)isMyAcquaintance
{
  if ([(PGGraphPersonNode *)self isMemberOfMyFamily]|| [(PGGraphPersonNode *)self isMyPartner]|| [(PGGraphPersonNode *)self isMyChild]|| [(PGGraphPersonNode *)self isMyCoworker])
  {
    return 0;
  }

  else
  {
    return ![(PGGraphPersonNode *)self isMyFriend];
  }
}

- (BOOL)isMySibling
{
  if ([(PGGraphPersonNode *)self isMySister])
  {
    return 1;
  }

  return [(PGGraphPersonNode *)self isMyBrother];
}

- (BOOL)_hasRelationshipLabel:(id)label withStatus:(unint64_t)status
{
  v18 = *MEMORY[0x277D85DE8];
  [(MANode *)self edgesForLabel:label domain:300];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * i) status] == status)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)enumerateHomeOrWorkNodesUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PGGraphPersonNode_enumerateHomeOrWorkNodesUsingBlock___block_invoke;
  v6[3] = &unk_278880348;
  v5 = blockCopy;
  v7 = v5;
  v8 = v9;
  [(MANode *)self enumerateNeighborNodesThroughEdgesWithLabel:@"IS_OWNED_BY" domain:202 usingBlock:v6];

  _Block_object_dispose(v9, 8);
}

uint64_t __56__PGGraphPersonNode_enumerateHomeOrWorkNodesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (void)enumerateHomeOrWorkAddressNodesUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__PGGraphPersonNode_enumerateHomeOrWorkAddressNodesUsingBlock___block_invoke;
  v6[3] = &unk_278880348;
  v5 = blockCopy;
  v7 = v5;
  v8 = v9;
  [(PGGraphPersonNode *)self enumerateHomeOrWorkNodesUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __63__PGGraphPersonNode_enumerateHomeOrWorkAddressNodesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__PGGraphPersonNode_enumerateHomeOrWorkAddressNodesUsingBlock___block_invoke_2;
  v8[3] = &unk_278880370;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 40);
  v12 = a3;
  v7 = v5;
  [v7 enumerateNeighborNodesThroughEdgesWithLabel:@"IS_HOME_WORK" domain:202 usingBlock:v8];
}

uint64_t __63__PGGraphPersonNode_enumerateHomeOrWorkAddressNodesUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 48) + 8);
  result = (*(*(a1 + 40) + 16))();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
    **(a1 + 56) = 1;
  }

  return result;
}

- (void)enumerateHomeOrWorkAddressEdgesAndNodesUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__PGGraphPersonNode_enumerateHomeOrWorkAddressEdgesAndNodesUsingBlock___block_invoke;
  v6[3] = &unk_278880348;
  v5 = blockCopy;
  v7 = v5;
  v8 = v9;
  [(MANode *)self enumerateNeighborNodesThroughEdgesWithLabel:@"IS_OWNED_BY" domain:202 usingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __71__PGGraphPersonNode_enumerateHomeOrWorkAddressEdgesAndNodesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__PGGraphPersonNode_enumerateHomeOrWorkAddressEdgesAndNodesUsingBlock___block_invoke_2;
  v8[3] = &unk_278880320;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 40);
  v12 = a3;
  v7 = v5;
  [v7 enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"IS_HOME_WORK" domain:202 usingBlock:v8];
}

uint64_t __71__PGGraphPersonNode_enumerateHomeOrWorkAddressEdgesAndNodesUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  result = (*(*(a1 + 40) + 16))();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
    **(a1 + 56) = 1;
  }

  return result;
}

- (BOOL)belongsToBestSocialGroups
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(MANode *)self hasEdgeWithLabel:@"BELONGSTO" domain:302])
  {
    graph = [(MANode *)self graph];
    bestSocialGroupNodes = [graph bestSocialGroupNodes];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = bestSocialGroupNodes;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([(MANode *)self hasEdgeTowardNode:*(*(&v13 + 1) + 8 * i), v13])
          {
            v10 = 1;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (double)personScore
{
  name = [(PGGraphPersonNode *)self name];
  v4 = [name length];

  belongsToAnySocialGroup = [(PGGraphPersonNode *)self belongsToAnySocialGroup];
  isFavorite = [(PGGraphPersonNode *)self isFavorite];
  isUserCreated = [(PGGraphPersonNode *)self isUserCreated];
  v8 = 0.0;
  if (v4)
  {
    v8 = 1.0;
  }

  return (isFavorite + isUserCreated + v8 + belongsToAnySocialGroup) * 0.25;
}

- (BOOL)isMeNode
{
  label = [(PGGraphPersonNode *)self label];
  v3 = [label isEqualToString:@"Me"];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGGraphPersonNode;
  v4 = [(PGGraphOptimizedNode *)&v11 description];
  name = self->_name;
  if ([(NSString *)name length])
  {
    v6 = @", ";
  }

  else
  {
    v6 = &stru_2843F5C58;
  }

  localIdentifier = self->_localIdentifier;
  if ([(NSString *)self->_contactIdentifier length])
  {
    v8 = @", ";
  }

  else
  {
    v8 = &stru_2843F5C58;
  }

  v9 = [v3 stringWithFormat:@"%@ (%@%@%@%@%@)", v4, name, v6, localIdentifier, v8, self->_contactIdentifier];

  return v9;
}

- (id)propertyForKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"name"])
  {
    v5 = 40;
LABEL_7:
    v6 = *(&self->super.super.super.super.isa + v5);
LABEL_8:
    v7 = v6;
    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:@"id"])
  {
    v5 = 48;
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"cnid"])
  {
    v5 = 56;
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"sex"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = 88;
LABEL_16:
    v6 = [v10 numberWithUnsignedInteger:*(&self->super.super.super.super.isa + v11)];
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"agecategory"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = 96;
    goto LABEL_16;
  }

  if ([keyCopy isEqualToString:@"fav"])
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = 32;
LABEL_21:
    v6 = [v12 numberWithBool:*(&self->super.super.super.super.isa + v13)];
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"usercreated"])
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = 33;
    goto LABEL_21;
  }

  if ([keyCopy isEqualToString:@"shareparticipant"])
  {
    v5 = 104;
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"bday"])
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = 64;
LABEL_30:
    [*(&self->super.super.super.super.isa + v15) timeIntervalSince1970];
    v6 = [v14 numberWithDouble:?];
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"pbday"])
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = 72;
    goto LABEL_30;
  }

  if ([keyCopy isEqualToString:@"anniv"])
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = 80;
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = 138412546;
    v19 = keyCopy;
    v20 = 2112;
    v21 = v17;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on %@.", &v18, 0x16u);
  }

  v7 = 0;
LABEL_9:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)propertyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  [v3 setObject:self->_localIdentifier forKeyedSubscript:@"id"];
  [v3 setObject:self->_contactIdentifier forKeyedSubscript:@"cnid"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFavorite];
  [v3 setObject:v4 forKeyedSubscript:@"fav"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUserCreated];
  [v3 setObject:v5 forKeyedSubscript:@"usercreated"];

  [v3 setObject:self->_shareParticipantLocalIdentifier forKeyedSubscript:@"shareparticipant"];
  if (self->_sex)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v6 forKeyedSubscript:@"sex"];
  }

  if (self->_ageCategory)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v7 forKeyedSubscript:@"agecategory"];
  }

  birthdayDate = self->_birthdayDate;
  if (birthdayDate)
  {
    v9 = MEMORY[0x277CCABB0];
    [(NSDate *)birthdayDate timeIntervalSince1970];
    v10 = [v9 numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"bday"];
  }

  potentialBirthdayDate = self->_potentialBirthdayDate;
  if (potentialBirthdayDate)
  {
    v12 = MEMORY[0x277CCABB0];
    [(NSDate *)potentialBirthdayDate timeIntervalSince1970];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"pbday"];
  }

  anniversaryDate = self->_anniversaryDate;
  if (anniversaryDate)
  {
    v15 = MEMORY[0x277CCABB0];
    [(NSDate *)anniversaryDate timeIntervalSince1970];
    v16 = [v15 numberWithDouble:?];
    [v3 setObject:v16 forKeyedSubscript:@"anniv"];
  }

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v6;
    if (v6 && ![v6 isEqual:self->_name])
    {
      goto LABEL_25;
    }

    v8 = [v5 objectForKeyedSubscript:@"id"];
    v7 = v8;
    if (v8)
    {
      if (![v8 isEqual:self->_localIdentifier])
      {
        goto LABEL_25;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"cnid"];
    v7 = v9;
    if (v9)
    {
      if (![v9 isEqual:self->_contactIdentifier])
      {
        goto LABEL_25;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"sex"];
    v7 = v10;
    if (v10)
    {
      if ([v10 unsignedIntegerValue] != self->_sex)
      {
        goto LABEL_25;
      }
    }

    v11 = [v5 objectForKeyedSubscript:@"agecategory"];
    v7 = v11;
    if (v11)
    {
      if ([v11 unsignedIntegerValue] != self->_ageCategory)
      {
        goto LABEL_25;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"fav"];
    v7 = v12;
    if (v12)
    {
      if (self->_isFavorite != [v12 BOOLValue])
      {
        goto LABEL_25;
      }
    }

    v13 = [v5 objectForKeyedSubscript:@"usercreated"];
    v7 = v13;
    if (v13)
    {
      if (self->_isUserCreated != [v13 BOOLValue])
      {
        goto LABEL_25;
      }
    }

    v14 = [v5 objectForKeyedSubscript:@"shareparticipant"];
    v7 = v14;
    if (v14)
    {
      if (![v14 isEqual:self->_shareParticipantLocalIdentifier])
      {
        goto LABEL_25;
      }
    }

    v15 = [v5 objectForKeyedSubscript:@"bday"];
    v7 = v15;
    if (v15)
    {
      [v15 doubleValue];
      v17 = v16;
      [(NSDate *)self->_birthdayDate timeIntervalSince1970];
      if (v17 != v18)
      {
        goto LABEL_25;
      }
    }

    v19 = [v5 objectForKeyedSubscript:@"pbday"];
    v7 = v19;
    if (v19)
    {
      [v19 doubleValue];
      v21 = v20;
      [(NSDate *)self->_potentialBirthdayDate timeIntervalSince1970];
      if (v21 != v22)
      {
        goto LABEL_25;
      }
    }

    v23 = [v5 objectForKeyedSubscript:@"anniv"];
    v7 = v23;
    if (!v23 || ([v23 doubleValue], v25 = v24, -[NSDate timeIntervalSince1970](self->_anniversaryDate, "timeIntervalSince1970"), v25 == v26))
    {
      v27 = 1;
    }

    else
    {
LABEL_25:
      v27 = 0;
    }
  }

  else
  {
    v27 = 1;
  }

  return v27;
}

- (void)setLocalProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"name"];
  name = self->_name;
  self->_name = v4;

  v6 = [propertiesCopy objectForKeyedSubscript:@"id"];
  localIdentifier = self->_localIdentifier;
  self->_localIdentifier = v6;

  v8 = [propertiesCopy objectForKeyedSubscript:@"cnid"];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v8;

  v10 = [propertiesCopy objectForKeyedSubscript:@"sex"];
  self->_sex = [v10 unsignedIntegerValue];

  v11 = [propertiesCopy objectForKeyedSubscript:@"agecategory"];
  self->_ageCategory = [v11 unsignedIntegerValue];

  v12 = [propertiesCopy objectForKeyedSubscript:@"fav"];
  self->_isFavorite = [v12 BOOLValue];

  v13 = [propertiesCopy objectForKeyedSubscript:@"usercreated"];
  self->_isUserCreated = [v13 BOOLValue];

  v14 = [propertiesCopy objectForKeyedSubscript:@"shareparticipant"];
  shareParticipantLocalIdentifier = self->_shareParticipantLocalIdentifier;
  self->_shareParticipantLocalIdentifier = v14;

  v16 = [propertiesCopy objectForKeyedSubscript:@"bday"];
  v17 = v16;
  if (v16)
  {
    v18 = MEMORY[0x277CBEAA8];
    [v16 doubleValue];
    v19 = [v18 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v19 = 0;
  }

  objc_storeStrong(&self->_birthdayDate, v19);
  if (v17)
  {
  }

  v20 = [propertiesCopy objectForKeyedSubscript:@"pbday"];
  v21 = v20;
  if (v20)
  {
    v22 = MEMORY[0x277CBEAA8];
    [v20 doubleValue];
    v23 = [v22 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v23 = 0;
  }

  objc_storeStrong(&self->_potentialBirthdayDate, v23);
  if (v21)
  {
  }

  v24 = [propertiesCopy objectForKeyedSubscript:@"anniv"];
  v25 = v24;
  if (v24)
  {
    v26 = MEMORY[0x277CBEAA8];
    [v24 doubleValue];
    v27 = [v26 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v27 = 0;
  }

  objc_storeStrong(&self->_anniversaryDate, v27);
  if (v25)
  {
  }
}

- (id)entityFilter
{
  v21[1] = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_localIdentifier length])
  {
    v3 = objc_alloc(MEMORY[0x277D22C78]);
    label = [(PGGraphPersonNode *)self label];
    localIdentifier = self->_localIdentifier;
    v20 = @"id";
    v21[0] = localIdentifier;
    v6 = MEMORY[0x277CBEAC0];
    v7 = v21;
    v8 = &v20;
  }

  else
  {
    v9 = [(NSString *)self->_contactIdentifier length];
    v3 = objc_alloc(MEMORY[0x277D22C78]);
    label = [(PGGraphPersonNode *)self label];
    if (v9)
    {
      contactIdentifier = self->_contactIdentifier;
      v18 = @"cnid";
      v19 = contactIdentifier;
      v6 = MEMORY[0x277CBEAC0];
      v7 = &v19;
      v8 = &v18;
    }

    else
    {
      name = self->_name;
      v16 = @"name";
      v17 = name;
      v6 = MEMORY[0x277CBEAC0];
      v7 = &v17;
      v8 = &v16;
    }
  }

  v12 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];
  v13 = [v3 initWithLabel:label domain:300 properties:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (PGGraphPersonNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [(PGGraphNode *)self init];
  v8 = v7;
  if (v7)
  {
    [(PGGraphPersonNode *)v7 setLocalProperties:propertiesCopy];
  }

  return v8;
}

- (PGGraphPersonNode)initWithPerson:(id)person
{
  personCopy = person;
  v8.receiver = self;
  v8.super_class = PGGraphPersonNode;
  v5 = [(PGGraphNode *)&v8 init];
  if (v5)
  {
    v6 = [objc_opt_class() propertiesWithPerson:personCopy];
    [(PGGraphPersonNode *)v5 setLocalProperties:v6];
  }

  return v5;
}

+ (id)filterForBiologicalSex:(unint64_t)sex
{
  v11[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v10 = @"sex";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sex];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [filter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filterForAgeCategories:(id)categories includingMe:(BOOL)me
{
  v12[1] = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  if (me)
  {
    +[PGGraphPersonNode filterIncludingMe];
  }

  else
  {
    +[PGGraphPersonNode filterExcludingMe];
  }
  v6 = ;
  v11 = @"agecategory";
  v12[0] = categoriesCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v8 = [v6 filterBySettingProperties:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)relationshipTagOfPersonWithConfidence:(double)confidence
{
  v3 = [PGGraphRelationshipTagEdge filterWithConfidence:confidence];
  outRelation = [v3 outRelation];

  return outRelation;
}

+ (MARelation)relationshipTagOfPerson
{
  v2 = +[PGGraphRelationshipTagEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)personActivityMeaningOfPerson
{
  v2 = +[PGGraphPracticesActivityEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)workOfPerson
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  homeOrWorkOfPerson = [self homeOrWorkOfPerson];
  v10[0] = homeOrWorkOfPerson;
  v4 = +[PGGraphHomeWorkNode workFilter];
  relation = [v4 relation];
  v10[1] = relation;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v2 chain:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (MARelation)homeOfPerson
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  homeOrWorkOfPerson = [self homeOrWorkOfPerson];
  v10[0] = homeOrWorkOfPerson;
  v4 = +[PGGraphHomeWorkNode homeFilter];
  relation = [v4 relation];
  v10[1] = relation;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v2 chain:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (MARelation)homeOrWorkOfPerson
{
  v2 = +[PGGraphIsOwnedByEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)socialGroupOfPerson
{
  v2 = +[PGGraphBelongsToEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)anniversaryMomentOfPerson
{
  v2 = +[PGGraphAnniversaryEventEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)birthdayMomentOfPerson
{
  v2 = +[PGGraphBirthdayEventEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)momentWithPhysicallyPresentPerson
{
  v15[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphPersonProximityEdge filter];
  outRelation = [v3 outRelation];
  v15[0] = outRelation;
  v5 = +[PGGraphPeoplePersonIsAroundEdge filter];
  outRelation2 = [v5 outRelation];
  v15[1] = outRelation2;
  v7 = +[PGGraphPersonPresentEdge filter];
  outRelation3 = [v7 outRelation];
  v15[2] = outRelation3;
  v9 = +[PGGraphAuthorEdge filter];
  outRelation4 = [v9 outRelation];
  v15[3] = outRelation4;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v12 = [v2 union:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (MARelation)momentAuthoredByPerson
{
  v2 = +[PGGraphAuthorEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)momentOfPerson
{
  v2 = +[PGGraphPersonPresentEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)inferredVipOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredVipFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)vipOfPerson
{
  v2 = +[PGGraphRelationshipEdge vipFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)inferredAcquaintanceOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredAcquaintanceFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)acquaintanceOfPerson
{
  v2 = +[PGGraphRelationshipEdge acquaintanceFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)inferredCoworkerSocialGroupOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredCoworkerSocialGroupFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)coworkerSocialGroupOfPerson
{
  v2 = +[PGGraphRelationshipEdge coworkerSocialGroupFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)inferredCoworkerOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredCoworkerFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)coworkerOfPerson
{
  v2 = +[PGGraphRelationshipEdge coworkerFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)inferredFriendOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredFriendFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)friendOfPerson
{
  v2 = +[PGGraphRelationshipEdge friendFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)inferredChildOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredChildFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)childOfPerson
{
  v2 = +[PGGraphRelationshipEdge childFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)inferredFamilySocialGroupOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredFamilySocialGroupFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)familySocialGroupOfPerson
{
  v2 = +[PGGraphRelationshipEdge familySocialGroupFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)inferredFamilyOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredFamilyFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)familyOfPerson
{
  v2 = +[PGGraphRelationshipEdge familyFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)inferredParentOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredParentFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)parentOfPerson
{
  v2 = +[PGGraphRelationshipEdge parentFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)inferredSonOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredSonFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)sonOfPerson
{
  v2 = +[PGGraphRelationshipEdge sonFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)inferredDaughterOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredDaughterFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)daughterOfPerson
{
  v2 = +[PGGraphRelationshipEdge daughterFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)inferredSisterOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredSisterFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)sisterOfPerson
{
  v2 = +[PGGraphRelationshipEdge sisterFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)inferredBrotherOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredBrotherFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)brotherOfPerson
{
  v2 = +[PGGraphRelationshipEdge brotherFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)inferredMotherOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredMotherFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)motherOfPerson
{
  v2 = +[PGGraphRelationshipEdge motherFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)inferredFatherOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredFatherFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)fatherOfPerson
{
  v2 = +[PGGraphRelationshipEdge fatherFilter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)inferredPartnerOfPerson
{
  v2 = +[PGGraphRelationshipEdge inferredPartnerFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (MARelation)partnerOfPerson
{
  v2 = +[PGGraphRelationshipEdge partnerFilter];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (id)_specialDateComponentsForDate:(id)date
{
  if (date)
  {
    v3 = [MEMORY[0x277D27690] components:28 fromDate:date];
    if ([v3 year] == 1)
    {
      [v3 setYear:0x7FFFFFFFFFFFFFFFLL];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (double)_specialDateTimeIntervalForDate:(id)date
{
  v3 = [self _specialDateComponentsForDate:date];
  v4 = [PGGraphPersonNode _specialDateForDateComponents:v3];
  [v4 timeIntervalSince1970];
  v6 = v5;

  return v6;
}

+ (void)setAnniversaryDateComponents:(id)components onPersonNodeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graphCopy = graph;
  v9 = [PGGraphPersonNode _specialDateForDateComponents:components];
  [PGGraphPersonNode _specialDateTimeIntervalForDate:v9];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [graphCopy persistModelProperty:v8 forKey:@"anniv" forNodeWithIdentifier:identifier];
}

+ (void)setBirthdayDateComponents:(id)components onPersonNodeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graphCopy = graph;
  v9 = [PGGraphPersonNode _specialDateForDateComponents:components];
  [PGGraphPersonNode _specialDateTimeIntervalForDate:v9];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [graphCopy persistModelProperty:v8 forKey:@"bday" forNodeWithIdentifier:identifier];
}

+ (void)setName:(id)name onPersonNodeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  if (name)
  {
    [graph persistModelProperty:name forKey:@"name" forNodeWithIdentifier:identifier];
  }

  else
  {
    [graph removeModelPropertyForKey:@"name" forNodeWithIdentifier:identifier];
  }
}

+ (id)propertiesWithAgeCategory:(unint64_t)category
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"agecategory";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)propertiesWithBiologicalSex:(unint64_t)sex
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"sex";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sex];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)propertiesWithPerson:(id)person
{
  v44[8] = *MEMORY[0x277D85DE8];
  personCopy = person;
  fullName = [personCopy fullName];
  v5 = fullName;
  if (fullName)
  {
    v6 = fullName;
  }

  else
  {
    v6 = &stru_2843F5C58;
  }

  v7 = v6;

  localIdentifier = [personCopy localIdentifier];
  v9 = localIdentifier;
  if (localIdentifier)
  {
    v10 = localIdentifier;
  }

  else
  {
    v10 = &stru_2843F5C58;
  }

  v11 = v10;

  contactID = [personCopy contactID];
  v13 = contactID;
  if (contactID)
  {
    v14 = contactID;
  }

  else
  {
    v14 = &stru_2843F5C58;
  }

  v15 = v14;

  shareParticipantLocalIdentifier = [personCopy shareParticipantLocalIdentifier];
  v17 = shareParticipantLocalIdentifier;
  if (shareParticipantLocalIdentifier)
  {
    v18 = shareParticipantLocalIdentifier;
  }

  else
  {
    v18 = &stru_2843F5C58;
  }

  v19 = v18;

  isFavorite = [personCopy isFavorite];
  isUserCreated = [personCopy isUserCreated];
  v22 = [personCopy sex];
  ageCategory = [personCopy ageCategory];
  v42 = v7;
  v43[0] = @"name";
  v44[0] = v7;
  v43[1] = @"fav";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:isFavorite];
  v44[1] = v24;
  v44[2] = v11;
  v41 = v11;
  v25 = v19;
  v43[2] = @"id";
  v43[3] = @"usercreated";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:isUserCreated];
  v44[3] = v26;
  v44[4] = v15;
  v43[4] = @"cnid";
  v43[5] = @"shareparticipant";
  v44[5] = v19;
  v43[6] = @"sex";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  v44[6] = v27;
  v43[7] = @"agecategory";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ageCategory];
  v44[7] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:8];
  v30 = [v29 mutableCopy];

  birthdayDate = [personCopy birthdayDate];
  if (birthdayDate)
  {
    v32 = MEMORY[0x277CCABB0];
    [PGGraphPersonNode _specialDateTimeIntervalForDate:birthdayDate];
    potentialBirthdayDate = [v32 numberWithDouble:?];
    [v30 setObject:potentialBirthdayDate forKeyedSubscript:@"bday"];
  }

  else
  {
    potentialBirthdayDate = [personCopy potentialBirthdayDate];
    if (potentialBirthdayDate)
    {
      v34 = MEMORY[0x277CCABB0];
      [PGGraphPersonNode _specialDateTimeIntervalForDate:potentialBirthdayDate];
      v35 = [v34 numberWithDouble:?];
      [v30 setObject:v35 forKeyedSubscript:@"pbday"];
    }
  }

  anniversaryDate = [personCopy anniversaryDate];
  if (anniversaryDate)
  {
    v37 = MEMORY[0x277CCABB0];
    [PGGraphPersonNode _specialDateTimeIntervalForDate:anniversaryDate];
    v38 = [v37 numberWithDouble:?];
    [v30 setObject:v38 forKeyedSubscript:@"anniv"];
  }

  v39 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (NSArray)personSortDescriptors
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"contactIdentifier" ascending:0];
  v7[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localIdentifier" ascending:0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (NSArray)personScoreSortDescriptors
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personScore" ascending:0];
  v7[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localIdentifier" ascending:0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)changedPropertyNamesForContactsChange
{
  v7[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"cnid";
  v7[1] = @"bday";
  v7[2] = @"pbday";
  v7[3] = @"anniv";
  v7[4] = @"sex";
  v7[5] = @"agecategory";
  v7[6] = @"name";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:7];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (MANodeFilter)filterShareParticipantIdentifierNotEmpty
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphPersonNode filterIncludingMe];
  v8 = @"shareparticipant";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:2 value:&stru_2843F5C58];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)filterWithShareParticipantIdentifiers:(id)identifiers
{
  v10[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = +[PGGraphPersonNode filterIncludingMe];
  v9 = @"shareparticipant";
  v10[0] = identifiersCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [v4 filterBySettingProperties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MANodeFilter)filterNameEmpty
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphPersonNode filterIncludingMe];
  v7 = @"name";
  v8[0] = &stru_2843F5C58;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (MANodeFilter)filterNameNotEmpty
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphPersonNode filterIncludingMe];
  v8 = @"name";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:2 value:&stru_2843F5C58];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MANodeFilter)filterIncludingMe
{
  v2 = objc_alloc(MEMORY[0x277D22C78]);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"People", @"Me", 0}];
  v4 = [v2 initWithLabels:v3 domain:300 properties:MEMORY[0x277CBEC10]];

  return v4;
}

+ (MANodeFilter)filterExcludingMe
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"People" domain:300];

  return v2;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:300];

  return v2;
}

@end