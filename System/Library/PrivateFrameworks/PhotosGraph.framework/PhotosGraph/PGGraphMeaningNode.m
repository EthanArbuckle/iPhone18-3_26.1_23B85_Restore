@interface PGGraphMeaningNode
+ (MARelation)childMeaningOfMeaning;
+ (MARelation)eventOfMeaning;
+ (MARelation)eventOfReliableMeaning;
+ (MARelation)momentOfMeaning;
+ (MARelation)momentOfReliableMeaning;
+ (MARelation)parentMeaningOfMeaning;
+ (id)_localizationKeyForMeaningLabel:(id)a3;
+ (id)_localizedNameForLabel:(id)a3;
+ (id)filter;
+ (id)filterWithMeaning:(unint64_t)a3;
- (BOOL)isVeryMeaningful;
- (NSArray)localizedSynonyms;
- (NSString)featureIdentifier;
- (NSString)localizedName;
- (PGGraphMeaningNode)initWithLabel:(id)a3;
- (PGGraphMeaningNode)parentMeaningNode;
- (PGGraphMeaningNodeCollection)collection;
- (id)associatedNodesForRemoval;
- (void)enumerateMomentAlternativeEdgesAndNodesUsingBlock:(id)a3;
- (void)enumerateMomentEdgesAndNodesUsingBlock:(id)a3;
- (void)enumerateSubmeaningsUsingBlock:(id)a3;
- (void)traverseParentMeaningHierarchyUsingBlock:(id)a3;
- (void)traverseSubmeaningHierarchyUsingBlock:(id)a3;
@end

@implementation PGGraphMeaningNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphMeaningNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, v6];

  return v7;
}

- (PGGraphMeaningNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphMeaningNodeCollection alloc] initWithNode:self];

  return v2;
}

- (id)associatedNodesForRemoval
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(PGGraphMeaningNode *)self parentMeaningNode];

  if (v4)
  {
    v5 = [(PGGraphMeaningNode *)self parentMeaningNode];
    if (![v5 countOfEdgesWithLabel:@"MEANING" domain:700] && objc_msgSend(v5, "countOfEdgesWithLabel:domain:", @"SUBMEANING_OF", 700) == 1)
    {
      [v3 addObject:v5];
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__PGGraphMeaningNode_associatedNodesForRemoval__block_invoke;
    v7[3] = &unk_278882C20;
    v8 = v3;
    [(PGGraphMeaningNode *)self enumerateSubmeaningsUsingBlock:v7];
  }

  return v3;
}

- (NSArray)localizedSynonyms
{
  v3 = objc_opt_class();
  v4 = [(PGGraphMeaningNode *)self label];
  v5 = [v3 _localizationKeyForMeaningLabel:v4];

  v6 = [PGGraphSynonymSupportHelper localizedSynonymsForLocalizationKey:v5];

  return v6;
}

- (NSString)localizedName
{
  v3 = objc_opt_class();
  v4 = [(PGGraphMeaningNode *)self label];
  v5 = [v3 _localizedNameForLabel:v4];

  return v5;
}

- (BOOL)isVeryMeaningful
{
  isVeryMeaningfulCachedValue = self->_isVeryMeaningfulCachedValue;
  if (isVeryMeaningfulCachedValue)
  {
    LOBYTE(v3) = isVeryMeaningfulCachedValue == 1;
  }

  else
  {
    v5 = [(PGGraphMeaningNode *)self label];
    v6 = [PGGraph meaningForMeaningLabel:v5];

    v7 = +[PGGraph veryMeaningfulMeanings];
    v3 = [v7 containsIndex:v6];
    v8 = 1;
    if (!v3)
    {
      v8 = -1;
    }

    self->_isVeryMeaningfulCachedValue = v8;
  }

  return v3;
}

- (PGGraphMeaningNode)parentMeaningNode
{
  v2 = [(PGGraphMeaningNode *)self collection];
  v3 = [v2 parentMeaningNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (void)traverseParentMeaningHierarchyUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PGGraphMeaningNode *)self parentMeaningNode];
  v8 = 0;
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = v6;
      v4[2](v4, v6, &v8);
      v6 = [v6 parentMeaningNode];
    }

    while (v6 && !v8);
  }
}

- (void)traverseSubmeaningHierarchyUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__PGGraphMeaningNode_traverseSubmeaningHierarchyUsingBlock___block_invoke;
  v6[3] = &unk_278882BF8;
  v7 = v4;
  v5 = v4;
  [(PGGraphMeaningNode *)self enumerateSubmeaningsUsingBlock:v6];
}

void __60__PGGraphMeaningNode_traverseSubmeaningHierarchyUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  if ((*a4 & 1) == 0)
  {
    [v6 traverseSubmeaningHierarchyUsingBlock:*(a1 + 32)];
  }
}

- (void)enumerateSubmeaningsUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__PGGraphMeaningNode_enumerateSubmeaningsUsingBlock___block_invoke;
  v6[3] = &unk_278882BD0;
  v7 = v4;
  v5 = v4;
  [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"SUBMEANING_OF" domain:700 usingBlock:v6];
}

void __53__PGGraphMeaningNode_enumerateSubmeaningsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 sourceNode];
  v7 = [v6 isSameNodeAsNode:v5];

  if (v7)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateMomentAlternativeEdgesAndNodesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__PGGraphMeaningNode_enumerateMomentAlternativeEdgesAndNodesUsingBlock___block_invoke;
  v6[3] = &unk_278882BA0;
  v7 = v4;
  v5 = v4;
  [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"MEANING" domain:702 usingBlock:v6];
}

void __72__PGGraphMeaningNode_enumerateMomentAlternativeEdgesAndNodesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 label];
  v7 = [v6 isEqualToString:@"Moment"];

  if (v7)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateMomentEdgesAndNodesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__PGGraphMeaningNode_enumerateMomentEdgesAndNodesUsingBlock___block_invoke;
  v6[3] = &unk_278882B78;
  v7 = v4;
  v5 = v4;
  [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"MEANING" domain:700 usingBlock:v6];
}

void __61__PGGraphMeaningNode_enumerateMomentEdgesAndNodesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 label];
  v7 = [v6 isEqualToString:@"Moment"];

  if (v7)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (PGGraphMeaningNode)initWithLabel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphMeaningNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)filterWithMeaning:(unint64_t)a3
{
  v3 = PGMeaningLabelForMeaning(a3);
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:v3 domain:700];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (MARelation)momentOfReliableMeaning
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 eventOfReliableMeaning];
  v10[0] = v3;
  v4 = +[PGGraphMomentNode filter];
  v5 = [v4 relation];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v2 chain:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (MARelation)momentOfMeaning
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 eventOfMeaning];
  v10[0] = v3;
  v4 = +[PGGraphMomentNode filter];
  v5 = [v4 relation];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v2 chain:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (MARelation)eventOfReliableMeaning
{
  v2 = +[PGGraphMeaningEdge reliableFilter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)eventOfMeaning
{
  v2 = +[PGGraphMeaningEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)parentMeaningOfMeaning
{
  v2 = +[PGGraphSubmeaningOfEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)childMeaningOfMeaning
{
  v2 = +[PGGraphSubmeaningOfEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (id)_localizationKeyForMeaningLabel:(id)a3
{
  v3 = _localizationKeyForMeaningLabel__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_localizationKeyForMeaningLabel__onceToken, &__block_literal_global_31127);
  }

  v5 = [_localizationKeyForMeaningLabel__searchKeyByLabel objectForKeyedSubscript:v4];

  return v5;
}

void __54__PGGraphMeaningNode__localizationKeyForMeaningLabel___block_invoke()
{
  v4[26] = *MEMORY[0x277D85DE8];
  v3[0] = @"Activity";
  v3[1] = @"Hiking";
  v4[0] = @"PGMeaningActivitySearchableText";
  v4[1] = @"PGMeaningHikingSearchableText";
  v3[2] = @"Beaching";
  v3[3] = @"Diving";
  v4[2] = @"PGMeaningBeachingSearchableText";
  v4[3] = @"PGMeaningDivingSearchableText";
  v3[4] = @"WinterSport";
  v3[5] = @"Climbing";
  v4[4] = @"PGMeaningWinterSportSearchableText";
  v4[5] = @"PGMeaningClimbingSearchableText";
  v3[6] = @"Entertainment";
  v3[7] = @"AmusementPark";
  v4[6] = @"PGMeaningEntertainmentSearchableText";
  v4[7] = @"PGMeaningAmusementParkSearchableText";
  v3[8] = @"Performance";
  v3[9] = @"Concert";
  v4[8] = @"PGMeaningPerformanceSearchableText";
  v4[9] = @"PGMeaningConcertSearchableText";
  v3[10] = @"Festival";
  v3[11] = @"Theater";
  v4[10] = @"PGMeaningFestivalSearchableText";
  v4[11] = @"PGMeaningTheaterSearchableText";
  v3[12] = @"Dance";
  v3[13] = @"SportEvent";
  v4[12] = @"PGMeaningDanceSearchableText";
  v4[13] = @"PGMeaningSportEventSearchableText";
  v3[14] = @"NightOut";
  v3[15] = @"Museum";
  v4[14] = @"PGMeaningNightOutSearchableText";
  v4[15] = @"PGMeaningMuseumSearchableText";
  v3[16] = @"Celebration";
  v3[17] = @"Birthday";
  v4[16] = @"PGMeaningCelebrationSearchableText";
  v4[17] = @"PGMeaningBirthdaySearchableText";
  v3[18] = @"Anniversary";
  v3[19] = @"Wedding";
  v4[18] = @"PGMeaningAnniversarySearchableText";
  v4[19] = @"PGMeaningWeddingSearchableText";
  v3[20] = @"HolidayEvent";
  v3[21] = @"Gathering";
  v4[20] = @"PGMeaningHolidayEventSearchableText";
  v4[21] = @"PGMeaningGatheringSearchableText";
  v3[22] = @"Restaurant";
  v3[23] = @"Breakfast";
  v4[22] = @"PGMeaningRestaurantSearchableText";
  v4[23] = @"PGMeaningBreakfastSearchableText";
  v3[24] = @"Lunch";
  v3[25] = @"Dinner";
  v4[24] = @"PGMeaningLunchSearchableText";
  v4[25] = @"PGMeaningDinnerSearchableText";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:26];
  v1 = _localizationKeyForMeaningLabel__searchKeyByLabel;
  _localizationKeyForMeaningLabel__searchKeyByLabel = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)_localizedNameForLabel:(id)a3
{
  v3 = [a1 _localizationKeyForMeaningLabel:a3];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:v3 table:@"Localizable"];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:700];

  return v2;
}

@end