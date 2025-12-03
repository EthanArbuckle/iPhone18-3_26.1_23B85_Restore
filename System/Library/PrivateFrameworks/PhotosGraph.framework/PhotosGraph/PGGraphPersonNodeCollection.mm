@interface PGGraphPersonNodeCollection
+ (id)favoritedPersonNodesExcludingMeInGraph:(id)graph;
+ (id)favoritedPersonNodesIncludingMeInGraph:(id)graph;
+ (id)namedPersonNodesInGraph:(id)graph;
+ (id)personNodesExcludingMeInGraph:(id)graph;
+ (id)personNodesForArrayOfLocalIdentifiers:(id)identifiers inGraph:(id)graph;
+ (id)personNodesForContactIdentifiers:(id)identifiers inGraph:(id)graph;
+ (id)personNodesForLocalIdentifier:(id)identifier inGraph:(id)graph;
+ (id)personNodesForLocalIdentifiers:(id)identifiers inGraph:(id)graph;
+ (id)personNodesForShareParticipantIdentifiers:(id)identifiers inGraph:(id)graph;
+ (id)personNodesForSharedLibraryParticipantsInGraph:(id)graph;
+ (id)personNodesIncludingMeInGraph:(id)graph;
+ (id)personNodesWithName:(id)name inGraph:(id)graph;
+ (id)personNodesWithNames:(id)names inGraph:(id)graph;
+ (id)unnamedPersonNodesInGraph:(id)graph;
- (BOOL)containsMeNode;
- (NSSet)anniversaries;
- (NSSet)birthdays;
- (NSSet)contactIdentifiers;
- (NSSet)localIdentifiers;
- (NSSet)names;
- (NSSet)potentialBirthdays;
- (NSSet)uuids;
- (PGGraphHomeWorkNodeCollection)homeNodes;
- (PGGraphHomeWorkNodeCollection)homeOrWorkNodes;
- (PGGraphHomeWorkNodeCollection)workNodes;
- (PGGraphMomentNodeCollection)anniversaryMomentNodes;
- (PGGraphMomentNodeCollection)authoredMomentNodes;
- (PGGraphMomentNodeCollection)birthdayMomentNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphMomentNodeCollection)momentNodesWithPresence;
- (PGGraphPersonNodeCollection)acquaintancePersonNodes;
- (PGGraphPersonNodeCollection)brotherPersonNodes;
- (PGGraphPersonNodeCollection)childPersonNodes;
- (PGGraphPersonNodeCollection)coworkerPersonNodes;
- (PGGraphPersonNodeCollection)daughterPersonNodes;
- (PGGraphPersonNodeCollection)familyPersonNodes;
- (PGGraphPersonNodeCollection)fatherPersonNodes;
- (PGGraphPersonNodeCollection)friendPersonNodes;
- (PGGraphPersonNodeCollection)inferredAcquaintancePersonNodes;
- (PGGraphPersonNodeCollection)inferredBrotherPersonNodes;
- (PGGraphPersonNodeCollection)inferredChildPersonNodes;
- (PGGraphPersonNodeCollection)inferredCoworkerPersonNodes;
- (PGGraphPersonNodeCollection)inferredDaughterPersonNodes;
- (PGGraphPersonNodeCollection)inferredFamilyPersonNodes;
- (PGGraphPersonNodeCollection)inferredFatherPersonNodes;
- (PGGraphPersonNodeCollection)inferredFriendPersonNodes;
- (PGGraphPersonNodeCollection)inferredMotherPersonNodes;
- (PGGraphPersonNodeCollection)inferredParentPersonNodes;
- (PGGraphPersonNodeCollection)inferredPartnerPersonNodes;
- (PGGraphPersonNodeCollection)inferredSisterPersonNodes;
- (PGGraphPersonNodeCollection)inferredSonPersonNodes;
- (PGGraphPersonNodeCollection)motherPersonNodes;
- (PGGraphPersonNodeCollection)parentPersonNodes;
- (PGGraphPersonNodeCollection)partnerPersonNodes;
- (PGGraphPersonNodeCollection)relatedPersonNodes;
- (PGGraphPersonNodeCollection)sisterPersonNodes;
- (PGGraphPersonNodeCollection)sonPersonNodes;
- (PGGraphPersonNodeCollection)subsetExcludingMe;
- (PGGraphPersonRelationshipTagNodeCollection)relationshipTagNodes;
- (PGGraphSocialGroupMemberNodeCollection)asSocialGroupMemberNodeCollection;
- (PGGraphSocialGroupNodeCollection)socialGroupNodes;
- (id)ownedPetNodes;
- (id)personNodeByLocalIdentifier;
- (id)relationshipTagNodesWithConfidence:(double)confidence;
- (void)enumerateLocalIdentifiersUsingBlock:(id)block;
- (void)enumerateUUIDsUsingBlock:(id)block;
@end

@implementation PGGraphPersonNodeCollection

- (id)relationshipTagNodesWithConfidence:(double)confidence
{
  v4 = [PGGraphPersonNode relationshipTagOfPersonWithConfidence:confidence];
  v5 = [(MANodeCollection *)PGGraphPersonRelationshipTagNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphPersonRelationshipTagNodeCollection)relationshipTagNodes
{
  v3 = +[PGGraphPersonNode relationshipTagOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonRelationshipTagNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)ownedPetNodes
{
  v3 = +[PGGraphIsOwnerOfPetEdge filter];
  outRelation = [v3 outRelation];
  v5 = [(MANodeCollection *)PGGraphPetNodeCollection nodesRelatedToNodes:self withRelation:outRelation];

  return v5;
}

- (void)enumerateLocalIdentifiersUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PGGraphPersonNodeCollection_enumerateLocalIdentifiersUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"id" withBlock:v6];
}

void __67__PGGraphPersonNodeCollection_enumerateLocalIdentifiersUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateUUIDsUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PGGraphPersonNodeCollection_enumerateUUIDsUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"id" withBlock:v6];
}

void __56__PGGraphPersonNodeCollection_enumerateUUIDsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:?];
  if ([v2 length])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)containsMeNode
{
  v2 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection subsetInCollection:self];
  isEmpty = [v2 isEmpty];

  return isEmpty ^ 1;
}

- (id)personNodeByLocalIdentifier
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__PGGraphPersonNodeCollection_personNodeByLocalIdentifier__block_invoke;
  v6[3] = &unk_278889240;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];

  return v4;
}

void __58__PGGraphPersonNodeCollection_personNodeByLocalIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 localIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (NSSet)names
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PGGraphPersonNodeCollection_names__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

- (NSSet)anniversaries
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PGGraphPersonNodeCollection_anniversaries__block_invoke;
  v6[3] = &unk_278883B58;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"anniv" withBlock:v6];

  return v4;
}

void __44__PGGraphPersonNodeCollection_anniversaries__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v1 addObject:v2];
}

- (NSSet)potentialBirthdays
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PGGraphPersonNodeCollection_potentialBirthdays__block_invoke;
  v6[3] = &unk_278883B58;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"pbday" withBlock:v6];

  return v4;
}

void __49__PGGraphPersonNodeCollection_potentialBirthdays__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v1 addObject:v2];
}

- (NSSet)birthdays
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PGGraphPersonNodeCollection_birthdays__block_invoke;
  v6[3] = &unk_278883B58;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"bday" withBlock:v6];

  return v4;
}

void __40__PGGraphPersonNodeCollection_birthdays__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v1 addObject:v2];
}

- (NSSet)uuids
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PGGraphPersonNodeCollection_uuids__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"id" withBlock:v6];

  return v4;
}

void __36__PGGraphPersonNodeCollection_uuids__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:?];
  if ([v2 length])
  {
    [*(a1 + 32) addObject:v2];
  }
}

- (NSSet)contactIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PGGraphPersonNodeCollection_contactIdentifiers__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"cnid" withBlock:v6];

  return v4;
}

void __49__PGGraphPersonNodeCollection_contactIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (NSSet)localIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PGGraphPersonNodeCollection_localIdentifiers__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"id" withBlock:v6];

  return v4;
}

void __47__PGGraphPersonNodeCollection_localIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (PGGraphPersonNodeCollection)subsetExcludingMe
{
  v3 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v3 relation];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:relation];

  return v5;
}

- (PGGraphMomentNodeCollection)anniversaryMomentNodes
{
  v3 = +[PGGraphPersonNode anniversaryMomentOfPerson];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)birthdayMomentNodes
{
  v3 = +[PGGraphPersonNode birthdayMomentOfPerson];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodesWithPresence
{
  v3 = +[PGGraphPersonNode momentWithPhysicallyPresentPerson];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)authoredMomentNodes
{
  v3 = +[PGGraphPersonNode momentAuthoredByPerson];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredAcquaintancePersonNodes
{
  v3 = +[PGGraphPersonNode inferredAcquaintanceOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)acquaintancePersonNodes
{
  v3 = +[PGGraphPersonNode acquaintanceOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredCoworkerPersonNodes
{
  v3 = +[PGGraphPersonNode inferredCoworkerOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)coworkerPersonNodes
{
  v3 = +[PGGraphPersonNode coworkerOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredDaughterPersonNodes
{
  v3 = +[PGGraphPersonNode inferredDaughterOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)daughterPersonNodes
{
  v3 = +[PGGraphPersonNode daughterOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredSonPersonNodes
{
  v3 = +[PGGraphPersonNode inferredSonOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)sonPersonNodes
{
  v3 = +[PGGraphPersonNode sonOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredChildPersonNodes
{
  v3 = +[PGGraphPersonNode inferredChildOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)childPersonNodes
{
  v3 = +[PGGraphPersonNode childOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredBrotherPersonNodes
{
  v3 = +[PGGraphPersonNode inferredBrotherOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)brotherPersonNodes
{
  v3 = +[PGGraphPersonNode brotherOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredSisterPersonNodes
{
  v3 = +[PGGraphPersonNode inferredSisterOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)sisterPersonNodes
{
  v3 = +[PGGraphPersonNode sisterOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredParentPersonNodes
{
  v3 = +[PGGraphPersonNode inferredParentOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)parentPersonNodes
{
  v3 = +[PGGraphPersonNode parentOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredFamilyPersonNodes
{
  v3 = +[PGGraphPersonNode inferredFamilyOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)familyPersonNodes
{
  v3 = +[PGGraphPersonNode familyOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredFriendPersonNodes
{
  v3 = +[PGGraphPersonNode inferredFriendOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)friendPersonNodes
{
  v3 = +[PGGraphPersonNode friendOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphSocialGroupMemberNodeCollection)asSocialGroupMemberNodeCollection
{
  v3 = [PGGraphSocialGroupMemberNodeCollection alloc];
  graph = [(MAElementCollection *)self graph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  v6 = [(MAElementCollection *)v3 initWithGraph:graph elementIdentifiers:elementIdentifiers];

  return v6;
}

- (PGGraphPersonNodeCollection)relatedPersonNodes
{
  v3 = +[PGGraphRelationshipEdge filter];
  anyDirectionRelation = [v3 anyDirectionRelation];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:anyDirectionRelation];

  return v5;
}

- (PGGraphPersonNodeCollection)inferredFatherPersonNodes
{
  v3 = +[PGGraphPersonNode inferredFatherOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)fatherPersonNodes
{
  v3 = +[PGGraphPersonNode fatherOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredMotherPersonNodes
{
  v3 = +[PGGraphPersonNode inferredMotherOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)motherPersonNodes
{
  v3 = +[PGGraphPersonNode motherOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)inferredPartnerPersonNodes
{
  v3 = +[PGGraphPersonNode inferredPartnerOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)partnerPersonNodes
{
  v3 = +[PGGraphPersonNode partnerOfPerson];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHomeWorkNodeCollection)workNodes
{
  v3 = +[PGGraphPersonNode workOfPerson];
  v4 = [(MANodeCollection *)PGGraphHomeWorkNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHomeWorkNodeCollection)homeNodes
{
  v3 = +[PGGraphPersonNode homeOfPerson];
  v4 = [(MANodeCollection *)PGGraphHomeWorkNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHomeWorkNodeCollection)homeOrWorkNodes
{
  v3 = +[PGGraphPersonNode homeOrWorkOfPerson];
  v4 = [(MANodeCollection *)PGGraphHomeWorkNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphSocialGroupNodeCollection)socialGroupNodes
{
  v3 = +[PGGraphPersonNode socialGroupOfPerson];
  v4 = [(MANodeCollection *)PGGraphSocialGroupNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphPersonNode momentOfPerson];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)favoritedPersonNodesIncludingMeInGraph:(id)graph
{
  v12[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = +[PGGraphPersonNode filterIncludingMe];
  v11 = @"fav";
  v12[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v5 filterBySettingProperties:v6];

  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)favoritedPersonNodesExcludingMeInGraph:(id)graph
{
  v12[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = +[PGGraphPersonNode filterExcludingMe];
  v11 = @"fav";
  v12[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v5 filterBySettingProperties:v6];

  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)personNodesForSharedLibraryParticipantsInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphPersonNode filterShareParticipantIdentifierNotEmpty];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

+ (id)personNodesForShareParticipantIdentifiers:(id)identifiers inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphPersonNode filterWithShareParticipantIdentifiers:identifiers];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

+ (id)unnamedPersonNodesInGraph:(id)graph
{
  graphCopy = graph;
  v4 = +[PGGraphPersonNode filterNameEmpty];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesMatchingFilter:v4 inGraph:graphCopy];

  return v5;
}

+ (id)namedPersonNodesInGraph:(id)graph
{
  graphCopy = graph;
  v4 = +[PGGraphPersonNode filterNameNotEmpty];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesMatchingFilter:v4 inGraph:graphCopy];

  return v5;
}

+ (id)personNodesForContactIdentifiers:(id)identifiers inGraph:(id)graph
{
  v15[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  identifiersCopy = identifiers;
  v8 = +[PGGraphPersonNode filterIncludingMe];
  v14 = @"cnid";
  v15[0] = identifiersCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [v8 filterBySettingProperties:v9];

  v11 = [self nodesMatchingFilter:v10 inGraph:graphCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)personNodesWithNames:(id)names inGraph:(id)graph
{
  v15[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  namesCopy = names;
  v8 = +[PGGraphPersonNode filterIncludingMe];
  v14 = @"name";
  v15[0] = namesCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [v8 filterBySettingProperties:v9];

  v11 = [self nodesMatchingFilter:v10 inGraph:graphCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)personNodesWithName:(id)name inGraph:(id)graph
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  graphCopy = graph;
  if (nameCopy)
  {
    v9 = +[PGGraphPersonNode filterIncludingMe];
    v16 = @"name";
    v17 = nameCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [v9 filterBySettingProperties:v10];

    v12 = [self nodesMatchingFilter:v11 inGraph:graphCopy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v15;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%@ called with 'nil' name", buf, 0xCu);
    }

    v12 = [[self alloc] initWithGraph:graphCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)personNodesForArrayOfLocalIdentifiers:(id)identifiers inGraph:(id)graph
{
  v15[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  identifiersCopy = identifiers;
  v8 = +[PGGraphPersonNode filterIncludingMe];
  v14 = @"id";
  v15[0] = identifiersCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [v8 filterBySettingProperties:v9];

  v11 = [self nodesMatchingFilter:v10 inGraph:graphCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)personNodesForLocalIdentifiers:(id)identifiers inGraph:(id)graph
{
  v15[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  identifiersCopy = identifiers;
  v8 = +[PGGraphPersonNode filterIncludingMe];
  v14 = @"id";
  v15[0] = identifiersCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [v8 filterBySettingProperties:v9];

  v11 = [self nodesMatchingFilter:v10 inGraph:graphCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)personNodesForLocalIdentifier:(id)identifier inGraph:(id)graph
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  graphCopy = graph;
  if ([identifierCopy length])
  {
    v9 = +[PGGraphPersonNode filterIncludingMe];
    v16 = @"id";
    v17 = identifierCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [v9 filterBySettingProperties:v10];

    v12 = [self nodesMatchingFilter:v11 inGraph:graphCopy];

    graphCopy = v11;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v15;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%@ called with 'empty' personLocalIdentifier", buf, 0xCu);
    }

    v12 = [[self alloc] initWithGraph:graphCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)personNodesIncludingMeInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphPersonNode filterIncludingMe];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

+ (id)personNodesExcludingMeInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphPersonNode filterExcludingMe];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

@end