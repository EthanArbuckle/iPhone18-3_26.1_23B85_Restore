@interface PGGraph
+ (BOOL)graphExistsAtURL:(id)l;
+ (BOOL)graphExistsWithName:(id)name parentDirectoryURL:(id)l;
+ (PGGraph)graphWithVisualString:(id)string error:(id *)error;
+ (id)_closestRelationshipEdgeLabelForPersonNode:(id)node andOtherPersonNode:(id)personNode;
+ (id)_findParentMeaningLabelForMeaningLabel:(id)label inTree:(id)tree currentParent:(id)parent;
+ (id)_graphNodePOILabelByPlaceType;
+ (id)_meaningLabelTree;
+ (id)_personClosestToMeBetweenPersonNode:(id)node andOtherPersonNode:(id)personNode;
+ (id)assetPropertySetsForIngest;
+ (id)availableInferredMeaningLabels;
+ (id)defaultSpecification;
+ (id)frequentMeaningLabels;
+ (id)graphURLForName:(id)name parentDirectoryURL:(id)l;
+ (id)lessMeaningfulMeanings;
+ (id)mostSignificantMeaningLabels;
+ (id)parentMeaningLabelForMeaningLabel:(id)label;
+ (id)poiLabelForPOIType:(id)type;
+ (id)preciseMeaningNodeForMeaningLabel:(id)label meaningfulEvent:(id)event;
+ (id)socialGroupMemberSortDescriptorForSocialGroupNode:(id)node;
+ (id)stellarMeanings;
+ (id)veryMeaningfulMeanings;
+ (int64_t)librarySizeRangeForNumberOfAssets:(unint64_t)assets;
+ (void)_traverseMeaningLabelsInTree:(id)tree usingBlock:(id)block;
+ (void)_traverseMeaningLabelsUsingBlock:(id)block;
+ (void)traverseParentMeaningsForMeaningLabel:(id)label usingBlock:(id)block;
- (BOOL)_enumerateMomentNodesForAssetCollection:(id)collection paddingTime:(double)time error:(id *)error enumerationBlock:(id)block;
- (BOOL)copyToURL:(id)l;
- (BOOL)eventIsStellar:(id)stellar;
- (BOOL)eventIsVeryMeaningful:(id)meaningful;
- (BOOL)hasSocialGroups;
- (BOOL)isBestPairSocialGroup:(id)group;
- (BOOL)isPairSocialGroup:(id)group;
- (BOOL)isSharedLibraryEnabled;
- (BOOL)saveToURL:(id)l;
- (BOOL)singlePersonBelongsToSocialGroupOfMaxSize:(id)size groups:(id)groups maxSize:(unint64_t)maxSize;
- (BOOL)singlePersonGroupIsInSocialGroups:(id)groups groups:(id)a4;
- (NSDictionary)zeroKeywordMappingByMeaningLabel;
- (NSSet)supersets;
- (NSString)localeIdentifier;
- (OS_dispatch_queue)graphQueue;
- (PGGraph)initWithSpecification:(id)specification;
- (PGGraph)initWithURL:(id)l persistenceOptions:(int64_t)options error:(id *)error;
- (PGGraphLocationCityNodeCollection)supersetCityNodes;
- (PGGraphLocationCountryNodeCollection)supersetCountryNodes;
- (PGGraphLocationCountyNodeCollection)supersetCountyNodes;
- (PGGraphLocationStateNodeCollection)supersetStateNodes;
- (double)averageTopMomentTimes:(id)times numberOfMoments:(unint64_t)moments;
- (double)libraryDuration;
- (double)longevity:(id)longevity;
- (double)momentsCountDistance:(id)distance withSecondBaseGroup:(id)group withSubsetBias:(double)bias withDistanceThreshold:(double)threshold withIntersectionBias:(double)intersectionBias withKey:(id)key;
- (double)peopleDistance:(id)distance withSecondBaseGroup:(id)group threshold:(double)threshold factor:(double)factor;
- (float)normalizeFeatureValue:(float)value average:(float)average featureValues:(id)values factor:(float)factor;
- (float)recencyFeature:(double)feature;
- (id)_createZeroKeywordMappingByMeaningLabel;
- (id)_fuzzyMomentLookupForMomentNode:(id)node inPhotoLibrary:(id)library error:(id *)error;
- (id)_fuzzyMomentNodeLookupForAssetCollection:(id)collection error:(id *)error;
- (id)_momentNodeForAssetCollection:(id)collection error:(id *)error;
- (id)_momentNodesForDateComponents:(id)components error:(id *)error;
- (id)_personNodeIntersectingSocialGroups:(id)groups;
- (id)_previousSeasonForSeason:(id)season;
- (id)_socialGroupNodeForPersonNodes:(id)nodes searchWithTolerance:(BOOL)tolerance;
- (id)_strictMomentLookupForMomentNode:(id)node inPhotoLibrary:(id)library;
- (id)_strictMomentNodeLookupForAssetCollection:(id)collection error:(id *)error;
- (id)aggregationHighlightTypeNode;
- (id)aggregationNodes;
- (id)allSocialGroupsForMemberLocalIdentifier:(id)identifier options:(id)options;
- (id)allTimeYearsNodes;
- (id)allTripNodes;
- (id)bestFittingAreaNodeFromAreaNodes:(id)nodes;
- (id)bestMeaningLabelForMeaningfulEvent:(id)event;
- (id)bestSocialGroupNodes;
- (id)celebratedHolidayNodes;
- (id)celebratedHolidays;
- (id)children;
- (id)closestMomentNodeForLocalDate:(id)date;
- (id)commonSocialGroupNodesForMemberNodes:(id)nodes withThreshold:(double)threshold;
- (id)coworkers;
- (id)dateNodeFilterForLocalDateInterval:(id)interval;
- (id)dateNodeForLocalDate:(id)date;
- (id)dateNodeNameWithDateComponents:(id)components;
- (id)dateNodeNameWithLocalDate:(id)date;
- (id)dateNodesForLocalDate:(id)date;
- (id)dateNodesForLocalDateInterval:(id)interval;
- (id)dateNodesForMonth:(int64_t)month;
- (id)dateNodesForWeekOfMonth:(int64_t)month;
- (id)dateNodesForWeekOfYear:(int64_t)year;
- (id)dateNodesForYear:(int64_t)year;
- (id)dateNodesIgnoringYearForLocalDate:(id)date;
- (id)dayHighlightNodes;
- (id)dayHighlightNodesSortedByDate;
- (id)dayNodeForDay:(int64_t)day;
- (id)dayOfWeekNodeForDayOfWeek:(int64_t)week;
- (id)dayOfWeekNodes;
- (id)defaultHighlightNodes;
- (id)defaultHighlightTypeNode;
- (id)eventNodeForAssetCollection:(id)collection;
- (id)familyMembers;
- (id)favoritedPersonNodesIncludingMe:(BOOL)me;
- (id)fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:(id)nodes;
- (id)fetchMemberNodesBySocialGroupNodeForSocialGroups:(id)groups;
- (id)friends;
- (id)highlightForHighlightNode:(id)node inPhotoLibrary:(id)library;
- (id)highlightGroupNodesSortedByDate;
- (id)highlightNodeForHighlight:(id)highlight;
- (id)inferMeNodeFromSocialGroups;
- (id)inferredUserLocales;
- (id)interestingAreaNodes;
- (id)interestingCityNodes;
- (id)largeFrequentLocationNodes;
- (id)localDatesForMomentNode:(id)node;
- (id)longTripHighlightTypeNode;
- (id)longTripNodes;
- (id)mainUrbanCityNodes;
- (id)maximalSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers;
- (id)meNode;
- (id)meNodeCollection;
- (id)meNodeWithFallbackInferredMeNode;
- (id)meaningfulEventNodeForUUID:(id)d;
- (id)meaningfulEvents;
- (id)meaningfulMomentNodesSortedByDate;
- (id)meaningsFromMeaningfulEvent:(id)event;
- (id)memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:(id)node shouldIncludeMeNode:(BOOL)meNode simulateMeNodeNotSet:(BOOL)set;
- (id)momentForMomentNode:(id)node inPhotoLibrary:(id)library;
- (id)momentNodeForAsset:(id)asset;
- (id)momentNodeForMoment:(id)moment;
- (id)momentNodesForPersonNodes:(id)nodes;
- (id)momentNodesOverlappingLocalDateInterval:(id)interval;
- (id)momentNodesSortedByDate;
- (id)momentNodesSortedByDateFromMomentNodes:(id)nodes;
- (id)momentNodesWithMeaning:(unint64_t)meaning;
- (id)momentsResultForMomentNodes:(id)nodes inPhotoLibrary:(id)library sortChronologically:(BOOL)chronologically;
- (id)monthNodeForMonth:(int64_t)month;
- (id)nodeLabelForHighlightType:(unsigned __int16)type;
- (id)onGoingTripHighlightTypeNode;
- (id)onGoingTripNodes;
- (id)parents;
- (id)partners;
- (id)personNodeForPersonLocalIdentifier:(id)identifier;
- (id)personNodesForPersonLocalIdentifiers:(id)identifiers;
- (id)personNodesIncludingMe:(BOOL)me;
- (id)previousSeasonNodeForSeasonNode:(id)node;
- (id)relevantMomentNodesForSocialGroupProcessing;
- (id)sceneNodeForSceneName:(id)name;
- (id)sceneNodesForSceneNames:(id)names;
- (id)seasonNodeForLocalDate:(id)date;
- (id)shortTripHighlightTypeNode;
- (id)shortTripNodes;
- (id)socialGroupMemberNodesForMemberLocalIdentifiers:(id)identifiers;
- (id)socialGroupNodeForMemberNodes:(id)nodes;
- (id)socialGroupNodesSortedByImportance;
- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers;
- (id)sortedSocialGroupNodesWithMomentNodes:(id)nodes;
- (id)staticGraphSchema;
- (id)trips;
- (id)weekends;
- (id)yearNodeForYear:(int64_t)year;
- (int64_t)libraryAge;
- (int64_t)librarySizeRange;
- (unint64_t)_cluePeopleForRelationships:(id)relationships;
- (unint64_t)_countOfDistinctSocialGroups:(id)groups;
- (unint64_t)numberOfPersonNodesIncludingMe:(BOOL)me;
- (void)_checkCanRead;
- (void)_enumerateMeaningfulEventsWithMeaningLabel:(id)label visitedMeaningfulEvents:(id)events usingBlock:(id)block;
- (void)_enumerateMomentForMomentNode:(id)node inPhotoLibrary:(id)library paddingTime:(double)time enumerationBlock:(id)block;
- (void)_reportBusinessItemsWithAnalytics:(id)analytics;
- (void)_reportDeviceOwnerWithAnalytics:(id)analytics photoLibrary:(id)library serviceManager:(id)manager;
- (void)_reportDisambiguatedLocationsWithAnalytics:(id)analytics;
- (void)_reportLibraryWithAnalytics:(id)analytics;
- (void)_reportMobilityWithAnalytics:(id)analytics;
- (void)enableInTransactionCheck;
- (void)enumerateCelebratedHolidayNodesUsingBlock:(id)block;
- (void)enumerateMeaningfulEventsWithMeaning:(unint64_t)meaning usingBlock:(id)block;
- (void)enumerateMeaningsFromMeaningfulEvent:(id)event usingBlock:(id)block;
- (void)enumerateMomentNodesWithMeaning:(unint64_t)meaning usingBlock:(id)block;
- (void)enumeratePeopleClustersWithLinkage:(unint64_t)linkage threshold:(double)threshold includingMeNode:(BOOL)node socialGroupsVersion:(unint64_t)version singlePersonGroups:(id *)groups withBlock:(id)block;
- (void)enumeratePersonNodesIncludingMe:(BOOL)me withBlock:(id)block;
- (void)enumerateSocialGroupsWithBlock:(id)block includeInvalidGroups:(BOOL)groups;
- (void)invalidateMemoryCaches;
- (void)invalidateProcessingCaches;
- (void)invalidateSupersetCaches;
- (void)reportMetricsLogsWithAnalytics:(id)analytics photoLibrary:(id)library serviceManager:(id)manager;
- (void)setGraphQueue:(id)queue;
@end

@implementation PGGraph

- (int64_t)libraryAge
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFLL;
  allTimeYearsNodes = [(PGGraph *)self allTimeYearsNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__PGGraph_Lookup__libraryAge__block_invoke;
  v8[3] = &unk_2788801D0;
  v8[4] = &v9;
  [allTimeYearsNodes enumerateObjectsUsingBlock:v8];
  v3 = MEMORY[0x277D27690];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 yearFromDate:date];

  if (v5 - v10[3] <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 - v10[3];
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __29__PGGraph_Lookup__libraryAge__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 calendarUnitValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result < v5)
  {
    v5 = result;
  }

  *(v4 + 24) = v5;
  return result;
}

- (id)dayOfWeekNodeForDayOfWeek:(int64_t)week
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [PGGraphDayOfWeekNode nameForDayOfWeek:week];
  v9 = @"name";
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [(MAGraph *)self anyNodeForLabel:@"DayOfWeek" domain:400 properties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)momentNodesOverlappingLocalDateInterval:(id)interval
{
  intervalCopy = interval;
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:intervalCopy inGraph:self];

  v6 = [v5 set];

  return v6;
}

- (id)_momentNodeForAssetCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  v7 = [(PGGraph *)self _strictMomentNodeLookupForAssetCollection:collectionCopy error:error];
  if (!v7)
  {
    v7 = [(PGGraph *)self _fuzzyMomentNodeLookupForAssetCollection:collectionCopy error:error];
  }

  return v7;
}

- (id)localDatesForMomentNode:(id)node
{
  nodeCopy = node;
  [(PGGraph *)self _checkCanRead];
  v5 = [MEMORY[0x277CBEB58] set];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PGGraph_Lookup__localDatesForMomentNode___block_invoke;
  v8[3] = &unk_2788875A8;
  v6 = v5;
  v9 = v6;
  [nodeCopy enumerateDateNodesUsingBlock:v8];

  return v6;
}

void __43__PGGraph_Lookup__localDatesForMomentNode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localDate];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (id)closestMomentNodeForLocalDate:(id)date
{
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12216;
  v25 = __Block_byref_object_dispose__12217;
  v26 = 0;
  v5 = [(PGGraph *)self dateNodeForLocalDate:dateCopy];
  collection = [v5 collection];
  momentNodes = [collection momentNodes];

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0x7FEFFFFFFFFFFFFFLL;
  if ([momentNodes count])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__PGGraph_Lookup__closestMomentNodeForLocalDate___block_invoke;
    v16[3] = &unk_2788858A0;
    v17 = dateCopy;
    v18 = &v21;
    v19 = v20;
    [momentNodes enumerateNodesUsingBlock:v16];
    v8 = v17;
  }

  else
  {
    momentNodes2 = [(PGGraph *)self momentNodes];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__PGGraph_Lookup__closestMomentNodeForLocalDate___block_invoke_2;
    v12[3] = &unk_2788858A0;
    v13 = dateCopy;
    v14 = &v21;
    v15 = v20;
    [momentNodes2 enumerateNodesUsingBlock:v12];

    v8 = v13;
  }

  _Block_object_dispose(v20, 8);
  v10 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v10;
}

void __49__PGGraph_Lookup__closestMomentNodeForLocalDate___block_invoke(void *a1, void *a2)
{
  v10 = a2;
  v4 = [v10 localStartDate];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = fabs(v5);

  v7 = *(a1[5] + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9 || v6 < *(*(a1[6] + 8) + 24))
  {
    objc_storeStrong(v8, a2);
    *(*(a1[6] + 8) + 24) = v6;
  }
}

void __49__PGGraph_Lookup__closestMomentNodeForLocalDate___block_invoke_2(void *a1, void *a2)
{
  v10 = a2;
  v4 = [v10 localStartDate];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = fabs(v5);

  v7 = *(a1[5] + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9 || v6 < *(*(a1[6] + 8) + 24))
  {
    objc_storeStrong(v8, a2);
    *(*(a1[6] + 8) + 24) = v6;
  }
}

- (id)yearNodeForYear:(int64_t)year
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"name";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:year];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [(MAGraph *)self anyNodeForLabel:@"Year" domain:400 properties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)monthNodeForMonth:(int64_t)month
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"name";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:month];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [(MAGraph *)self anyNodeForLabel:@"Month" domain:400 properties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dayNodeForDay:(int64_t)day
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"name";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:day];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [(MAGraph *)self anyNodeForLabel:@"Day" domain:400 properties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_previousSeasonForSeason:(id)season
{
  v12 = *MEMORY[0x277D85DE8];
  seasonCopy = season;
  if (_previousSeasonForSeason__onceToken != -1)
  {
    dispatch_once(&_previousSeasonForSeason__onceToken, &__block_literal_global_12219);
  }

  v4 = [_previousSeasonForSeason__seasons indexOfObject:seasonCopy];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  if (v4)
  {
    [_previousSeasonForSeason__seasons objectAtIndex:v4 - 1];
  }

  else
  {
    [_previousSeasonForSeason__seasons lastObject];
  }
  v5 = ;
  if (!v5)
  {
LABEL_8:
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = seasonCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error: could not find _previousSeasonForSeason: string %@", &v10, 0xCu);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

void __44__PGGraph_Lookup___previousSeasonForSeason___block_invoke()
{
  v0 = _previousSeasonForSeason__seasons;
  _previousSeasonForSeason__seasons = &unk_284485670;
}

- (id)previousSeasonNodeForSeasonNode:(id)node
{
  v12[1] = *MEMORY[0x277D85DE8];
  name = [node name];
  v5 = [(PGGraph *)self _previousSeasonForSeason:name];

  if (v5)
  {
    v11 = @"name";
    v12[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [(MAGraph *)self nodesForLabel:@"Season" domain:400 properties:v6];
    anyObject = [v7 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return anyObject;
}

- (id)seasonNodeForLocalDate:(id)date
{
  v14[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  infoNode = [(PGGraph *)self infoNode];
  locale = [infoNode locale];

  v7 = [MEMORY[0x277D27690] seasonNameForLocalDate:dateCopy locale:locale];

  if (v7)
  {
    v13 = @"name";
    v14[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [(MAGraph *)self nodesForLabel:@"Season" domain:400 properties:v8];
    anyObject = [v9 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return anyObject;
}

- (id)dateNodesForWeekOfMonth:(int64_t)month
{
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphWeekOfMonthNodeCollection weekOfMonthNodesForWeekOfMonth:month inGraph:self];
  dateNodes = [v5 dateNodes];
  temporarySet = [dateNodes temporarySet];

  return temporarySet;
}

- (id)dateNodesForWeekOfYear:(int64_t)year
{
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphWeekOfYearNodeCollection weekOfYearNodesForWeekOfYear:year inGraph:self];
  dateNodes = [v5 dateNodes];
  temporarySet = [dateNodes temporarySet];

  return temporarySet;
}

- (id)dateNodesForYear:(int64_t)year
{
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphYearNodeCollection yearNodesForYear:year inGraph:self];
  dateNodes = [v5 dateNodes];
  temporarySet = [dateNodes temporarySet];

  return temporarySet;
}

- (id)dateNodesForMonth:(int64_t)month
{
  v3 = [PGGraphMonthNodeCollection monthNodesForMonth:month inGraph:self];
  dateNodes = [v3 dateNodes];
  temporarySet = [dateNodes temporarySet];

  return temporarySet;
}

- (id)dateNodesIgnoringYearForLocalDate:(id)date
{
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphMonthDayNodeCollection monthDayNodesForLocalDate:dateCopy inGraph:self];

  dateNodes = [v5 dateNodes];

  return dateNodes;
}

- (id)dateNodesForLocalDateInterval:(id)interval
{
  v4 = [(PGGraph *)self dateNodeFilterForLocalDateInterval:interval];
  v5 = [(MANodeCollection *)PGGraphDateNodeCollection nodesMatchingFilter:v4 inGraph:self];

  return v5;
}

- (id)dateNodeFilterForLocalDateInterval:(id)interval
{
  v20[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v8 = v7;

  endDate = [intervalCopy endDate];
  [endDate timeIntervalSince1970];
  v11 = v10;

  while (v8 <= v11)
  {
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
    v13 = [(PGGraph *)self dateNodeNameWithLocalDate:v12];
    [v5 addObject:v13];

    v8 = v8 + 86400.0;
  }

  v14 = objc_alloc(MEMORY[0x277D22C78]);
  v19 = @"name";
  v20[0] = v5;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v16 = [v14 initWithLabel:@"Date" domain:400 properties:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dateNodeForLocalDate:(id)date
{
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  v5 = [(PGGraph *)self dateNodesForLocalDate:dateCopy];

  anyNode = [v5 anyNode];

  return anyNode;
}

- (id)dateNodesForLocalDate:(id)date
{
  v21[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  v5 = [(PGGraph *)self dateNodeNameWithLocalDate:dateCopy];

  v6 = objc_alloc(MEMORY[0x277D22C78]);
  v20 = @"name";
  v21[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v8 = [v6 initWithLabel:@"Date" domain:400 properties:v7];

  v9 = [(MANodeCollection *)PGGraphDateNodeCollection nodesMatchingFilter:v8 inGraph:self];
  v10 = [v9 count];
  if (v10 >= 2)
  {
    v11 = v10;
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2048;
      v19 = v11;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error: too many date nodes for local date %@, count: %lu", &v16, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)momentsResultForMomentNodes:(id)nodes inPhotoLibrary:(id)library sortChronologically:(BOOL)chronologically
{
  chronologicallyCopy = chronologically;
  v26[1] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  if (chronologicallyCopy)
  {
    v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v26[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v10];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = nodesCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        localIdentifier = [*(*(&v21 + 1) + 8 * i) localIdentifier];
        [v11 addObject:localIdentifier];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)momentForMomentNode:(id)node inPhotoLibrary:(id)library
{
  v25[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  libraryCopy = library;
  [(PGGraph *)self _checkCanRead];
  localIdentifier = [nodeCopy localIdentifier];
  if (!localIdentifier)
  {
    goto LABEL_3;
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:1];
  v10 = MEMORY[0x277CD97B8];
  v25[0] = localIdentifier;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v12 = [v10 fetchAssetCollectionsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];

  firstObject = [v12 firstObject];

  if (!firstObject)
  {
LABEL_3:
    v14 = [(PGGraph *)self _strictMomentLookupForMomentNode:nodeCopy inPhotoLibrary:libraryCopy];
    if (v14)
    {
      firstObject = v14;
      v15 = 0;
    }

    else
    {
      v20 = 0;
      firstObject = [(PGGraph *)self _fuzzyMomentLookupForMomentNode:nodeCopy inPhotoLibrary:libraryCopy error:&v20];
      v15 = v20;
      if (!firstObject)
      {
        v16 = +[PGLogging sharedLogging];
        loggingConnection = [v16 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v22 = "[PGGraph(Lookup) momentForMomentNode:inPhotoLibrary:]";
          v23 = 2112;
          v24 = v15;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "error: %s %@", buf, 0x16u);
        }

        firstObject = 0;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)highlightForHighlightNode:(id)node inPhotoLibrary:(id)library
{
  v23 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  nodeCopy = node;
  [(PGGraph *)self _checkCanRead];
  localIdentifier = [nodeCopy localIdentifier];

  if (localIdentifier)
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier == %@", localIdentifier];
    [librarySpecificFetchOptions setPredicate:v10];

    [librarySpecificFetchOptions setFetchLimit:1];
    v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
    firstObject = [v11 firstObject];
    if ([v11 count] != 1)
    {
      v13 = +[PGLogging sharedLogging];
      loggingConnection = [v13 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315651;
        v18 = "[PGGraph(Lookup) highlightForHighlightNode:inPhotoLibrary:]";
        v19 = 2112;
        v20 = localIdentifier;
        v21 = 2113;
        v22 = v11;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "error: %s Didn't find highlight with identifier %@. %{private}@", buf, 0x20u);
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)_fuzzyMomentLookupForMomentNode:(id)node inPhotoLibrary:(id)library error:(id *)error
{
  nodeCopy = node;
  libraryCopy = library;
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = objc_autoreleasePoolPush();
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __72__PGGraph_Lookup___fuzzyMomentLookupForMomentNode_inPhotoLibrary_error___block_invoke;
  v19 = &unk_2788801A8;
  selfCopy = self;
  v12 = nodeCopy;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  [(PGGraph *)self _enumerateMomentForMomentNode:v12 inPhotoLibrary:libraryCopy paddingTime:&v16 enumerationBlock:10800.0];

  objc_autoreleasePoolPop(v11);
  if ([v13 count] == 1)
  {
    error = [v13 anyObject];
  }

  else if (error)
  {
    if ([v13 count])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Event node %@ matching multiple moments", v12, v16, v17, v18, v19, selfCopy];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Event node %@ matching 0 moment", v12, v16, v17, v18, v19, selfCopy];
    }
    v14 = ;
    *error = [PGError errorWithCode:-3 description:v14];

    error = 0;
  }

  return error;
}

void __72__PGGraph_Lookup___fuzzyMomentLookupForMomentNode_inPhotoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) _strictMomentNodeLookupForAssetCollection:? error:?];
  v4 = v3;
  if (!v3 || [v3 isSameNodeAsNode:*(a1 + 40)])
  {
    [*(a1 + 48) addObject:v5];
  }
}

- (id)_strictMomentLookupForMomentNode:(id)node inPhotoLibrary:(id)library
{
  nodeCopy = node;
  libraryCopy = library;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12216;
  v16 = __Block_byref_object_dispose__12217;
  v17 = 0;
  v8 = objc_autoreleasePoolPush();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__PGGraph_Lookup___strictMomentLookupForMomentNode_inPhotoLibrary___block_invoke;
  v11[3] = &unk_278880180;
  v11[4] = &v12;
  [(PGGraph *)self _enumerateMomentForMomentNode:nodeCopy inPhotoLibrary:libraryCopy paddingTime:v11 enumerationBlock:0.001];
  objc_autoreleasePoolPop(v8);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)momentNodeForMoment:(id)moment
{
  v21 = *MEMORY[0x277D85DE8];
  momentCopy = moment;
  [(PGGraph *)self _checkCanRead];
  uuid = [momentCopy uuid];
  v6 = [PGGraphMomentNodeCollection momentNodeForUUID:uuid inGraph:self];
  anyNode = [v6 anyNode];

  if (anyNode)
  {
    v8 = 0;
  }

  else
  {
    v14 = 0;
    anyNode = [(PGGraph *)self _momentNodeForAssetCollection:momentCopy error:&v14];
    v8 = v14;
    if (!anyNode)
    {
      v9 = +[PGLogging sharedLogging];
      loggingConnection = [v9 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [momentCopy uuid];
        *buf = 136315650;
        v16 = "[PGGraph(Lookup) momentNodeForMoment:]";
        v17 = 2112;
        v18 = uuid2;
        v19 = 2112;
        v20 = v8;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%s - Can't get node for moment (%@), error:%@", buf, 0x20u);
      }

      anyNode = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return anyNode;
}

- (id)highlightNodeForHighlight:(id)highlight
{
  uuid = [highlight uuid];
  v5 = [PGGraphHighlightNodeCollection highlightNodeForUUID:uuid inGraph:self];
  anyNode = [v5 anyNode];

  return anyNode;
}

- (id)momentNodeForAsset:(id)asset
{
  v14 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [(PGGraph *)self _checkCanRead];
  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:assetCopy withType:3 options:0];
  if ([v5 count] == 1)
  {
    firstObject = [v5 firstObject];
    v7 = [(PGGraph *)self momentNodeForMoment:firstObject];
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = assetCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Multiple moment for asset %@", &v12, 0xCu);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)eventNodeForAssetCollection:(id)collection
{
  v14 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  assetCollectionType = [collectionCopy assetCollectionType];
  v6 = 0;
  if (assetCollectionType <= 0xD)
  {
    if (((1 << assetCollectionType) & 0x3F97) != 0)
    {
      v7 = +[PGLogging sharedLogging];
      loggingConnection = [v7 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = collectionCopy;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Requesting event node for unsupported asset collection type: %@", &v12, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      if (assetCollectionType == 3)
      {
        v11 = [(PGGraph *)self momentNodeForMoment:collectionCopy];
      }

      else
      {
        if (assetCollectionType != 6)
        {
          goto LABEL_6;
        }

        v11 = [(PGGraph *)self highlightNodeForHighlight:collectionCopy];
      }

      v6 = v11;
    }
  }

LABEL_6:

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_fuzzyMomentNodeLookupForAssetCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  v7 = [MEMORY[0x277CBEB58] set];
  photoLibrary = [collectionCopy photoLibrary];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __66__PGGraph_Lookup___fuzzyMomentNodeLookupForAssetCollection_error___block_invoke;
  v17 = &unk_278883C98;
  v9 = collectionCopy;
  v18 = v9;
  selfCopy = self;
  v10 = photoLibrary;
  v20 = v10;
  v11 = v7;
  v21 = v11;
  [(PGGraph *)self _enumerateMomentNodesForAssetCollection:v9 paddingTime:error error:&v14 enumerationBlock:10800.0];
  if ([v11 count] == 1)
  {
    anyObject = [v11 anyObject];
  }

  else if (error)
  {
    [PGError errorWithCode:-3 description:@"Fuzzy event find multiple events"];
    *error = anyObject = 0;
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

void __66__PGGraph_Lookup___fuzzyMomentNodeLookupForAssetCollection_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) assetCollectionType] == 3)
  {
    v4 = [*(a1 + 40) _strictMomentLookupForMomentNode:v5 inPhotoLibrary:*(a1 + 48)];
    if (!v4 || [*(a1 + 32) isEqual:v4])
    {
      [*(a1 + 56) addObject:v5];
    }
  }

  else
  {
    [*(a1 + 56) addObject:v5];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_strictMomentNodeLookupForAssetCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12216;
  v14 = __Block_byref_object_dispose__12217;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__PGGraph_Lookup___strictMomentNodeLookupForAssetCollection_error___block_invoke;
  v9[3] = &unk_278885948;
  v9[4] = &v10;
  [(PGGraph *)self _enumerateMomentNodesForAssetCollection:collectionCopy paddingTime:error error:v9 enumerationBlock:0.001];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)_momentNodesForDateComponents:(id)components error:(id *)error
{
  v6 = MEMORY[0x277D27690];
  componentsCopy = components;
  timeZone = [componentsCopy timeZone];
  v9 = [v6 dateFromComponents:componentsCopy inTimeZone:timeZone];

  v10 = [(PGGraph *)self dateNodeForLocalDate:v9];
  v11 = v10;
  if (v10)
  {
    collection = [v10 collection];
    momentNodes = [collection momentNodes];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    collection = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - Cannot find node with date: %@", "-[PGGraph(Lookup) _momentNodesForDateComponents:error:]", v9];
    [PGError errorWithCode:-3 description:collection];
    *error = momentNodes = 0;
    goto LABEL_5;
  }

  momentNodes = 0;
LABEL_6:

  return momentNodes;
}

- (void)_enumerateMomentForMomentNode:(id)node inPhotoLibrary:(id)library paddingTime:(double)time enumerationBlock:(id)block
{
  v28[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = MEMORY[0x277CBEAA8];
  libraryCopy = library;
  nodeCopy = node;
  [nodeCopy timestampUTCStart];
  time = [v10 dateWithTimeIntervalSince1970:v13 - time];
  v15 = MEMORY[0x277CBEAA8];
  [nodeCopy timestampUTCEnd];
  v17 = v16;

  time2 = [v15 dateWithTimeIntervalSince1970:v17 + time];
  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate >= %@) AND (endDate <= %@)", time, time2];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v28[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v22];

  [librarySpecificFetchOptions setPredicate:v19];
  v23 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __93__PGGraph_Lookup___enumerateMomentForMomentNode_inPhotoLibrary_paddingTime_enumerationBlock___block_invoke;
  v26[3] = &unk_278880158;
  v27 = blockCopy;
  v24 = blockCopy;
  [v23 enumerateObjectsUsingBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_enumerateMomentNodesForAssetCollection:(id)collection paddingTime:(double)time error:(id *)error enumerationBlock:(id)block
{
  collectionCopy = collection;
  blockCopy = block;
  cls_localStartDateComponents = [collectionCopy cls_localStartDateComponents];
  if (cls_localStartDateComponents)
  {
    v14 = [(PGGraph *)self _momentNodesForDateComponents:cls_localStartDateComponents error:error];
    v15 = v14;
    if (v14 && [v14 count])
    {
      cls_universalStartDate = [collectionCopy cls_universalStartDate];
      [cls_universalStartDate timeIntervalSince1970];
      v18 = v17;

      cls_universalEndDate = [collectionCopy cls_universalEndDate];
      [cls_universalEndDate timeIntervalSince1970];
      v21 = v20;

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __94__PGGraph_Lookup___enumerateMomentNodesForAssetCollection_paddingTime_error_enumerationBlock___block_invoke;
      v25[3] = &unk_278880130;
      v27 = v18;
      timeCopy = time;
      v29 = v21;
      v26 = blockCopy;
      [v15 enumerateNodesUsingBlock:v25];

      v22 = 1;
    }

    else
    {
      v22 = 0;
      v6 = v15 != 0;
    }

    v23 = v22 | v6;
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDescription:@"Couldn't get asset collection's dates"];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

void __94__PGGraph_Lookup___enumerateMomentNodesForAssetCollection_paddingTime_error_enumerationBlock___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  [v15 timestampUTCStart];
  v4 = v3;
  [v15 timestampUTCEnd];
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v7 - v6;
  v9 = v7 + v6;
  if (v4 >= v8 && v4 <= v9)
  {
    v11 = *(a1 + 56);
    v12 = v11 - v6;
    v13 = v6 + v11;
    if (v5 >= v12 && v5 <= v13)
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (id)largeFrequentLocationNodes
{
  v56[2] = *MEMORY[0x277D85DE8];
  supersets = [(PGGraph *)self supersets];
  allObjects = [supersets allObjects];

  if ([allObjects count] > 2)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = MEMORY[0x277D27688];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __51__PGGraph_Conveniences__largeFrequentLocationNodes__block_invoke_2;
    v51[3] = &unk_278880D10;
    v37 = allObjects;
    v52 = allObjects;
    v7 = v5;
    v53 = v7;
    [v6 calculateStandardDeviationForItems:v52 valueBlock:&__block_literal_global_273 result:v51];
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"numberOfMomentNodes" ascending:0];
    v56[0] = v8;
    v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:0];
    v56[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v11 = [v7 sortedArrayUsingDescriptors:v10];

    v12 = [v11 mutableCopy];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v11;
    v41 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v41)
    {
      v40 = *v48;
      v39 = v12;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v48 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v47 + 1) + 8 * v13);
        collection = [v14 collection];
        momentNodes = [collection momentNodes];
        v17 = [momentNodes count];

        [v12 removeObject:v14];
        if (!v17)
        {
          break;
        }

        v42 = v13;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        reverseObjectEnumerator = [v12 reverseObjectEnumerator];
        v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v43 objects:v54 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v44;
          v22 = v17;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v24 = *(*(&v43 + 1) + 8 * i);
              if ([v7 containsObject:v24])
              {
                collection2 = [v24 collection];
                momentNodes2 = [collection2 momentNodes];
                v27 = [momentNodes2 count];

                if (v27 / v22 >= 0.2)
                {
                  goto LABEL_21;
                }

                universalDateInterval = [v24 universalDateInterval];
                [universalDateInterval duration];
                v30 = v29;
                universalDateInterval2 = [v14 universalDateInterval];
                v32 = [universalDateInterval intersectionWithDateInterval:universalDateInterval2];
                [v32 duration];
                v34 = v33;

                if (v34 / v30 >= 0.5)
                {
                  [v7 removeObject:{v24, v34 / v30}];
                }
              }
            }

            v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v43 objects:v54 count:16];
          }

          while (v20);
        }

LABEL_21:

        v13 = v42 + 1;
        v12 = v39;
        if (v42 + 1 == v41)
        {
          v41 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v41)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v4 = v7;
    allObjects = v37;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:allObjects];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v4;
}

void __51__PGGraph_Conveniences__largeFrequentLocationNodes__block_invoke_2(uint64_t a1, double a2, double a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = ceil(a3 - a2);
  if (v4 >= 1.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 collection];
        v13 = [v12 momentNodes];
        v14 = [v13 count];

        if (v14 >= v5)
        {
          [*(a1 + 40) addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

double __51__PGGraph_Conveniences__largeFrequentLocationNodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 collection];
  v3 = [v2 momentNodes];
  v4 = [v3 count];

  return v4;
}

- (id)sceneNodesForSceneNames:(id)names
{
  v22 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = namesCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        capitalizedString = [*(*(&v17 + 1) + 8 * i) capitalizedString];
        [v5 addObject:capitalizedString];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc(MEMORY[0x277D22C78]);
  v13 = [v12 initWithLabels:v5 domain:600 properties:MEMORY[0x277CBEC10]];
  v14 = [(MANodeCollection *)PGGraphSceneNodeCollection nodesMatchingFilter:v13 inGraph:self];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)sceneNodeForSceneName:(id)name
{
  capitalizedString = [name capitalizedString];
  v5 = [(MAGraph *)self anyNodeForLabel:capitalizedString domain:600];

  return v5;
}

- (id)dayOfWeekNodes
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__PGGraph_Conveniences__dayOfWeekNodes__block_invoke;
  v6[3] = &unk_278880CC8;
  v4 = array;
  v7 = v4;
  [(MAGraph *)self enumerateNodesWithLabel:@"DayOfWeek" domain:400 usingBlock:v6];

  return v4;
}

- (void)enumerateCelebratedHolidayNodesUsingBlock:(id)block
{
  blockCopy = block;
  [(PGGraph *)self _checkCanRead];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PGGraph_Conveniences__enumerateCelebratedHolidayNodesUsingBlock___block_invoke;
  v6[3] = &unk_278880CA0;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MAGraph *)self enumerateEdgesWithLabel:@"CELEBRATING" domain:401 usingBlock:v6];
}

void __67__PGGraph_Conveniences__enumerateCelebratedHolidayNodesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 targetNode];
  (*(v4 + 16))(v4, v5, a3);
}

- (id)bestFittingAreaNodeFromAreaNodes:(id)nodes
{
  nodesCopy = nodes;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__17132;
  v13 = __Block_byref_object_dispose__17133;
  v14 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0x7FEFFFFFFFFFFFFFLL;
  v4 = [(PGGraphEdgeCollection *)PGGraphAreaEdgeCollection edgesToNodes:nodesCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PGGraph_Conveniences__bestFittingAreaNodeFromAreaNodes___block_invoke;
  v7[3] = &unk_278880C78;
  v7[4] = v8;
  v7[5] = &v9;
  [v4 enumerateEdgesUsingBlock:v7];
  v5 = v10[5];

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __58__PGGraph_Conveniences__bestFittingAreaNodeFromAreaNodes___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 relevance];
  v4 = v3;
  if (v3 < *(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [v8 targetNode];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(*(a1 + 32) + 8) + 24) = v4;
  }
}

- (BOOL)isSharedLibraryEnabled
{
  v2 = [PGGraphPersonNodeCollection personNodesForSharedLibraryParticipantsInGraph:self];
  v3 = [v2 count] != 0;

  return v3;
}

- (double)libraryDuration
{
  momentNodesSortedByDate = [(PGGraph *)self momentNodesSortedByDate];
  lastObject = [momentNodesSortedByDate lastObject];
  universalEndDate = [lastObject universalEndDate];
  firstObject = [momentNodesSortedByDate firstObject];
  universalStartDate = [firstObject universalStartDate];
  [universalEndDate timeIntervalSinceDate:universalStartDate];
  v8 = v7;

  return v8;
}

- (id)celebratedHolidayNodes
{
  [(PGGraph *)self _checkCanRead];
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PGGraph_Conveniences__celebratedHolidayNodes__block_invoke;
  v6[3] = &unk_278888D00;
  v4 = v3;
  v7 = v4;
  [(PGGraph *)self enumerateCelebratedHolidayNodesUsingBlock:v6];

  return v4;
}

- (id)allTimeYearsNodes
{
  [(PGGraph *)self _checkCanRead];

  return [(MAGraph *)self nodesForLabel:@"Year" domain:400];
}

- (id)dateNodeNameWithDateComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy month] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "day") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "year") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = +[PGLogging sharedLogging];
    loggingConnection = [v4 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Invalid date components", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld-%02ld-%04ld", objc_msgSend(componentsCopy, "month"), objc_msgSend(componentsCopy, "day"), objc_msgSend(componentsCopy, "year")];
  }

  return v6;
}

- (id)dateNodeNameWithLocalDate:(id)date
{
  dateCopy = date;
  dateFormatter = [(PGGraph *)self dateFormatter];
  v6 = [dateFormatter stringFromDate:dateCopy];

  return v6;
}

- (id)coworkers
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__PGGraph_Conveniences__coworkers__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:1 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)friends
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__PGGraph_Conveniences__friends__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:2 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)children
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__PGGraph_Conveniences__children__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:5 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)parents
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__PGGraph_Conveniences__parents__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:8 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)partners
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__PGGraph_Conveniences__partners__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:13 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)familyMembers
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__PGGraph_Conveniences__familyMembers__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:4 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)meNodeCollection
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:self];
  if ([v2 count] >= 2)
  {
    v3 = +[PGLogging sharedLogging];
    loggingConnection = [v3 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = [v2 set];
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Graph has multiple meNodes: %@", &v8, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)meNode
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(MAGraph *)self nodesForLabel:@"Me" domain:300];
  if ([v2 count] >= 2)
  {
    v3 = +[PGLogging sharedLogging];
    loggingConnection = [v3 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Graph has multiple meNodes: %@", &v8, 0xCu);
    }
  }

  anyObject = [v2 anyObject];

  v6 = *MEMORY[0x277D85DE8];

  return anyObject;
}

+ (id)poiLabelForPOIType:(id)type
{
  typeCopy = type;
  _graphNodePOILabelByPlaceType = [self _graphNodePOILabelByPlaceType];
  v6 = [_graphNodePOILabelByPlaceType objectForKeyedSubscript:typeCopy];

  return v6;
}

+ (id)_graphNodePOILabelByPlaceType
{
  if (_graphNodePOILabelByPlaceType_onceToken != -1)
  {
    dispatch_once(&_graphNodePOILabelByPlaceType_onceToken, &__block_literal_global_17142);
  }

  v3 = _graphNodePOILabelByPlaceType_graphNodePOILabelByPlaceType;

  return v3;
}

void __54__PGGraph_Conveniences___graphNodePOILabelByPlaceType__block_invoke()
{
  v18[14] = *MEMORY[0x277D85DE8];
  v16 = +[PGPhotosGraphProfile poiHospital];
  v17[0] = v16;
  v18[0] = @"Hospital";
  v15 = +[PGPhotosGraphProfile poiHiking];
  v17[1] = v15;
  v18[1] = @"Hiking";
  v14 = +[PGPhotosGraphProfile poiDiving];
  v17[2] = v14;
  v18[2] = @"Diving";
  v13 = +[PGPhotosGraphProfile poiActivity];
  v17[3] = v13;
  v18[3] = @"Activity";
  v0 = +[PGPhotosGraphProfile poiStadium];
  v17[4] = v0;
  v18[4] = @"Stadium";
  v1 = +[PGPhotosGraphProfile poiPerformance];
  v17[5] = v1;
  v18[5] = @"Performance";
  v2 = +[PGPhotosGraphProfile poiPark];
  v17[6] = v2;
  v18[6] = @"Park";
  v3 = +[PGPhotosGraphProfile poiAmusementPark];
  v17[7] = v3;
  v18[7] = @"AmusementPark";
  v4 = +[PGPhotosGraphProfile poiEntertainment];
  v17[8] = v4;
  v18[8] = @"Entertainment";
  v5 = +[PGPhotosGraphProfile poiMuseum];
  v17[9] = v5;
  v18[9] = @"Museum";
  v6 = +[PGPhotosGraphProfile poiCulture];
  v17[10] = v6;
  v18[10] = @"Culture";
  v7 = +[PGPhotosGraphProfile poiTravel];
  v17[11] = v7;
  v18[11] = @"Travel";
  v8 = +[PGPhotosGraphProfile poiNightlife];
  v17[12] = v8;
  v18[12] = @"Nightlife";
  v9 = +[PGPhotosGraphProfile poiRestaurant];
  v17[13] = v9;
  v18[13] = @"Restaurant";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:14];
  v11 = _graphNodePOILabelByPlaceType_graphNodePOILabelByPlaceType;
  _graphNodePOILabelByPlaceType_graphNodePOILabelByPlaceType = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (OS_dispatch_queue)graphQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_graphQueue);

  return WeakRetained;
}

- (int64_t)librarySizeRange
{
  v3 = objc_opt_class();
  infoNode = [(PGGraph *)self infoNode];
  v5 = [v3 librarySizeRangeForNumberOfAssets:{objc_msgSend(infoNode, "numberOfAssets")}];

  return v5;
}

- (NSString)localeIdentifier
{
  infoNode = [(PGGraph *)self infoNode];
  localeIdentifier = [infoNode localeIdentifier];

  return localeIdentifier;
}

- (void)invalidateMemoryCaches
{
  v3.receiver = self;
  v3.super_class = PGGraph;
  [(MAGraph *)&v3 invalidateMemoryCaches];
  [(PGGraph *)self invalidateProcessingCaches];
}

- (BOOL)copyToURL:(id)l
{
  lCopy = l;
  [(PGGraph *)self _checkCanRead];
  if (lCopy)
  {
    databaseURL = [(MAGraph *)self databaseURL];
    v11 = 0;
    v6 = [(MAGraph *)PGGraph copyPersistentStoreFromURL:databaseURL toURL:lCopy error:&v11];
    loggingConnection = v11;
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "URL is nil", v10, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)saveToURL:(id)l
{
  lCopy = l;
  [(PGGraph *)self _checkCanRead];
  if (lCopy)
  {
    v10 = 0;
    v5 = [(MAGraph *)self writeDataToURL:lCopy error:&v10];
    loggingConnection = v10;
  }

  else
  {
    v7 = +[PGLogging sharedLogging];
    loggingConnection = [v7 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Url is nil", v9, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)enableInTransactionCheck
{
  graph = [(MAGraph *)self graph];
  store = [graph store];
  [store enableInTransactionCheck];
}

- (PGGraph)initWithSpecification:(id)specification
{
  v8.receiver = self;
  v8.super_class = PGGraph;
  v3 = [(MAGraph *)&v8 initWithSpecification:specification];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v3->_dateFormatter;
    v3->_dateFormatter = v4;

    v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
    [(NSDateFormatter *)v3->_dateFormatter setTimeZone:v6];

    [(NSDateFormatter *)v3->_dateFormatter setDateFormat:@"MM-dd-yyyy"];
    v3->_supersetLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (PGGraph)initWithURL:(id)l persistenceOptions:(int64_t)options error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = [(MAGraph *)self initWithPersistentStoreURL:lCopy options:options error:error];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v11 = *MEMORY[0x277CBE878];
    v18 = 0;
    v12 = [lCopy setResourceValue:v10 forKey:v11 error:&v18];
    v13 = v18;

    if ((v12 & 1) == 0)
    {
      v14 = +[PGLogging sharedLogging];
      loggingConnection = [v14 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = lCopy;
        v21 = 2112;
        v22 = v13;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error excluding %@ from backup: %@", buf, 0x16u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_checkCanRead
{
  WeakRetained = objc_loadWeakRetained(&self->_graphQueue);
  if (WeakRetained && ![(PGGraph *)self isOnGraphQueue])
  {
    v4 = +[PGLogging sharedLogging];
    loggingConnection = [v4 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Accessing graph on the wrong queue!", v6, 2u);
    }
  }
}

- (void)setGraphQueue:(id)queue
{
  obj = queue;
  WeakRetained = objc_loadWeakRetained(&self->_graphQueue);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      dispatch_queue_set_specific(WeakRetained, self, 0, 0);
    }

    objc_storeWeak(&self->_graphQueue, obj);
    if (obj)
    {
      dispatch_queue_set_specific(obj, self, self, 0);
    }
  }
}

+ (int64_t)librarySizeRangeForNumberOfAssets:(unint64_t)assets
{
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (assets >> 4 >= 0xC35)
  {
    v6 = 5;
  }

  if (assets >> 4 >= 0x271)
  {
    v5 = v6;
  }

  if (assets >= 0x7D0)
  {
    v4 = v5;
  }

  if (assets >= 0x1F4)
  {
    v3 = v4;
  }

  if (assets)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (id)defaultSpecification
{
  v2 = objc_alloc_init(PGGraphSpecification);

  return v2;
}

+ (PGGraph)graphWithVisualString:(id)string error:(id *)error
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___PGGraph;
  v4 = objc_msgSendSuper2(&v6, sel_graphWithVisualString_error_, string, error);

  return v4;
}

+ (BOOL)graphExistsWithName:(id)name parentDirectoryURL:(id)l
{
  selfCopy = self;
  v5 = [self graphURLForName:name parentDirectoryURL:l];
  LOBYTE(selfCopy) = [selfCopy graphExistsAtURL:v5];

  return selfCopy;
}

+ (BOOL)graphExistsAtURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  v9 = 0;
  relativePath = [lCopy relativePath];

  v6 = [v4 fileExistsAtPath:relativePath isDirectory:&v9];
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

+ (id)graphURLForName:(id)name parentDirectoryURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = MEMORY[0x277CCAA00];
  lCopy = l;
  v8 = objc_alloc_init(v6);
  path = [lCopy path];

  v10 = [path stringByAppendingPathComponent:@"PhotosGraph"];

  if (([v8 fileExistsAtPath:v10 isDirectory:0] & 1) != 0 || (v18 = 0, objc_msgSend(v8, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v10, 1, 0, &v18), (v11 = v18) == 0))
  {
    v15 = [objc_opt_class() persistentStoreURLWithPath:v10 andName:nameCopy];
  }

  else
  {
    v12 = v11;
    v13 = +[PGLogging sharedLogging];
    loggingConnection = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)assetPropertySetsForIngest
{
  v14[14] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = *MEMORY[0x277CD9B10];
  v14[0] = *MEMORY[0x277CD9B28];
  v14[1] = v3;
  v4 = *MEMORY[0x277CD9AD0];
  v14[2] = *MEMORY[0x277CD9B18];
  v14[3] = v4;
  v5 = *MEMORY[0x277CD9A80];
  v14[4] = *MEMORY[0x277CD9B08];
  v14[5] = v5;
  v6 = *MEMORY[0x277CD9A60];
  v14[6] = *MEMORY[0x277CD9AC0];
  v14[7] = v6;
  v7 = *MEMORY[0x277CD9A90];
  v14[8] = *MEMORY[0x277CD9A70];
  v14[9] = v7;
  v8 = *MEMORY[0x277CD9A98];
  v14[10] = *MEMORY[0x277CD9AB8];
  v14[11] = v8;
  v9 = *MEMORY[0x277CD9AF0];
  v14[12] = *MEMORY[0x277CD9B20];
  v14[13] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:14];
  v11 = [v2 initWithArray:v10];

  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    [v11 addObject:*MEMORY[0x277CD9AD8]];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)sortedSocialGroupNodesWithMomentNodes:(id)nodes
{
  socialGroupNodes = [nodes socialGroupNodes];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__PGGraph_OnDiskQueries__sortedSocialGroupNodesWithMomentNodes___block_invoke;
  v13[3] = &unk_278882150;
  v7 = v6;
  v14 = v7;
  [socialGroupNodes enumerateIdentifiersAsCollectionsWithBlock:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PGGraph_OnDiskQueries__sortedSocialGroupNodesWithMomentNodes___block_invoke_2;
  v10[3] = &unk_278882178;
  v11 = v7;
  selfCopy = self;
  v8 = v7;
  [v5 sortUsingComparator:v10];

  return v5;
}

void __64__PGGraph_OnDiskQueries__sortedSocialGroupNodesWithMomentNodes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v9 = [a3 momentNodes];
  v6 = [v5 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

uint64_t __64__PGGraph_OnDiskQueries__sortedSocialGroupNodesWithMomentNodes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "identifier")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "identifier")}];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = [v12 compare:v9];
  if (!v13)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "rankInGraph:", *(a1 + 40))}];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "rankInGraph:", *(a1 + 40))}];
    v13 = [v15 compare:v14];
  }

  return v13;
}

- (id)maximalSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers
{
  v53 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB58] set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(PGGraph *)self allSocialGroupsForMemberLocalIdentifier:v11 options:0];
        if (v13)
        {
          [v5 addObjectsFromArray:v13];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v8);
  }

  v30 = v6;

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"@count" ascending:0];
  v51 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v31 = v5;
  v16 = [v5 sortedArrayUsingDescriptors:v15];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v16;
  v33 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v33)
  {
    v32 = *v42;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * j);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v19 = obj;
        v20 = [v19 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v38;
LABEL_17:
          v23 = 0;
          while (1)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v37 + 1) + 8 * v23);
            v25 = [v18 count];
            if (v25 >= [v24 count])
            {
              break;
            }

            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __72__PGGraph_People__maximalSocialGroupsOverlappingMemberLocalIdentifiers___block_invoke;
            v36[3] = &unk_278882440;
            v36[4] = v24;
            v26 = [v18 indexesOfObjectsPassingTest:v36];
            v27 = [v26 count];
            if (v27 != [v18 count])
            {
              [array addObject:v18];
            }

            if (v21 == ++v23)
            {
              v21 = [v19 countByEnumeratingWithState:&v37 objects:v49 count:16];
              if (v21)
              {
                goto LABEL_17;
              }

              break;
            }
          }
        }
      }

      v33 = [v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v33);
  }

  v28 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:identifiersCopy inGraph:self];
  if ([v5 count])
  {
    asSocialGroupMemberNodeCollection = [v5 asSocialGroupMemberNodeCollection];
    v7 = [(PGGraph *)self commonSocialGroupNodesForMemberNodes:asSocialGroupMemberNodeCollection];

    if ([v7 count])
    {
      meNode = [(PGGraph *)self meNode];
      v9 = meNode;
      if (meNode)
      {
        localIdentifier = [meNode localIdentifier];
        v11 = [identifiersCopy containsObject:localIdentifier];
      }

      else
      {
        v11 = 0;
      }

      v12 = [(PGGraph *)self socialGroupsIdentifiersFromSocialGroupNodes:v7 shouldIncludeMeNode:v11];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)allSocialGroupsForMemberLocalIdentifier:(id)identifier options:(id)options
{
  identifierCopy = identifier;
  v7 = [options objectForKeyedSubscript:*MEMORY[0x277D3AFF0]];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AFF8]];
    bOOLValue = [v9 BOOLValue];

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __67__PGGraph_People__allSocialGroupsForMemberLocalIdentifier_options___block_invoke;
    v23 = &unk_2788885C8;
    socialGroupNodes = v11;
    v24 = socialGroupNodes;
    selfCopy = self;
    [(PGGraph *)self enumerateSocialGroupsIncludingMeNode:1 socialGroupsVersion:0 simulateMeNodeNotSet:bOOLValue validGroupsBlock:&v20 invalidGroupsBlock:0 averageWeight:0];
    if ([socialGroupNodes count])
    {
      v13 = [(PGGraph *)self socialGroupsIdentifiersFromSocialGroupNodesWithMemberNodesBySocialGroupNode:socialGroupNodes shouldIncludeMeNode:1 simulateMeNodeNotSet:bOOLValue];
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    goto LABEL_17;
  }

  if (identifierCopy)
  {
    meNode = [(PGGraph *)self meNode];
    v15 = meNode;
    if (meNode && ([meNode localIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", identifierCopy), v16, v17))
    {
      socialGroupNodes = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:self];
    }

    else
    {
      v18 = [PGGraphPersonNodeCollection personNodesForLocalIdentifier:identifierCopy inGraph:self];
      socialGroupNodes = [v18 socialGroupNodes];
    }

    if (!socialGroupNodes)
    {
      goto LABEL_16;
    }
  }

  else
  {
    socialGroupNodes = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:self];
    if (!socialGroupNodes)
    {
      goto LABEL_16;
    }
  }

  if ([socialGroupNodes count])
  {
    v13 = [(PGGraph *)self socialGroupsIdentifiersFromSocialGroupNodes:socialGroupNodes shouldIncludeMeNode:1];
    goto LABEL_17;
  }

LABEL_16:
  v13 = MEMORY[0x277CBEBF8];
LABEL_17:

  return v13;
}

void __67__PGGraph_People__allSocialGroupsForMemberLocalIdentifier_options___block_invoke(uint64_t a1, void *a2, float a3)
{
  v5 = MEMORY[0x277CCAD78];
  v6 = a2;
  v7 = [v5 UUID];
  v8 = [v7 hash];

  v10 = [[PGGraphSocialGroupNode alloc] initWithSocialGroupIdentifier:v8 importance:a3];
  [(MANode *)v10 resolveIdentifier:v8];
  v9 = [(MAElementCollection *)[PGGraphSocialGroupMemberNodeCollection alloc] initWithArray:v6 graph:*(a1 + 40)];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

- (unint64_t)_countOfDistinctSocialGroups:(id)groups
{
  v61 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v34 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = groupsCopy;
  v35 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v35)
  {
    v33 = *v54;
    do
    {
      v4 = 0;
      do
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v4;
        v5 = *(*(&v53 + 1) + 8 * v4);
        v39 = [MEMORY[0x277CBEB58] setWithObject:{v5, v33}];
        v6 = [v5 count];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v7 = obj;
        v8 = [v7 countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = vcvtpd_u64_f64(vcvtd_n_f64_u64(v6, 1uLL));
          v11 = *v50;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v50 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v49 + 1) + 8 * i);
              if (v13 != v5)
              {
                v14 = [MEMORY[0x277CBEB58] setWithSet:v5];
                [v14 intersectSet:v13];
                if ([v14 count] > v10 || (v15 = objc_msgSend(v14, "count"), v15 == objc_msgSend(v5, "count")))
                {
                  [v39 addObject:v13];
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v49 objects:v59 count:16];
          }

          while (v9);
        }

        [v34 addObject:v39];
        v4 = v37 + 1;
      }

      while (v37 + 1 != v35);
      v35 = [v7 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v35);
  }

  v16 = [v34 mutableCopy];
  v17 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = v34;
  v18 = [v38 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v40 = *v46;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(v38);
        }

        v21 = *(*(&v45 + 1) + 8 * j);
        [v16 removeObject:v21];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v22 = v16;
        v23 = [v22 countByEnumeratingWithState:&v41 objects:v57 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v42;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v42 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v41 + 1) + 8 * k);
              if (([v21 isSubsetOfSet:v27] & 1) == 0)
              {
                v28 = [v27 isSubsetOfSet:v21];
                v27 = v21;
                if (!v28)
                {
                  continue;
                }
              }

              [v17 addObject:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v41 objects:v57 count:16];
          }

          while (v24);
        }
      }

      v19 = [v38 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v19);
  }

  v29 = [v38 count];
  v30 = [v17 count];

  v31 = *MEMORY[0x277D85DE8];
  return v29 - v30;
}

- (id)_personNodeIntersectingSocialGroups:(id)groups
{
  v45 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v4 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = groupsCopy;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 unionSet:*(*(&v35 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v7);
  }

  v10 = vcvtmd_u64_f64([v5 count] * 0.8);
  if (v10 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (!v13)
  {

    v15 = 0;
    goto LABEL_29;
  }

  v14 = v13;
  v30 = v5;
  v15 = 0;
  loggingConnection = 0;
  v17 = *v32;
  v18 = 1;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v32 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v31 + 1) + 8 * j);
      v21 = [v12 countForObject:v20];
      v22 = v21;
      if (v21 >= v11 && v21 > v15)
      {
        v24 = v20;

        v18 = 1;
        v15 = v22;
        loggingConnection = v24;
      }

      else
      {
        v18 &= v21 != v15;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v31 objects:v43 count:16];
  }

  while (v14);

  if (!loggingConnection)
  {
    v5 = v30;
LABEL_29:
    v25 = +[PGLogging sharedLogging];
    loggingConnection = [v25 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v40 = v15;
      v41 = 2112;
      v42 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Can't suggest Me Person: Not getting 1 person intersect between social groups. Highest overlap count %lu for person %@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if (v18)
  {
    v5 = v30;
    goto LABEL_35;
  }

  v26 = +[PGLogging sharedLogging];
  loggingConnection2 = [v26 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v40 = v15;
    v41 = 2112;
    v42 = loggingConnection;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Can't suggest Me Person: Not getting a unique person intersecting between the social groups. Highest overlap count %lu for person %@", buf, 0x16u);
  }

  v5 = v30;
LABEL_34:

  loggingConnection = 0;
LABEL_35:

  v28 = *MEMORY[0x277D85DE8];

  return loggingConnection;
}

- (id)_socialGroupNodeForPersonNodes:(id)nodes searchWithTolerance:(BOOL)tolerance
{
  toleranceCopy = tolerance;
  nodesCopy = nodes;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__28669;
  v23 = __Block_byref_object_dispose__28670;
  asSocialGroupMemberNodeCollection = [nodesCopy asSocialGroupMemberNodeCollection];
  v24 = [(PGGraph *)self socialGroupNodeForMemberNodes:asSocialGroupMemberNodeCollection];

  v8 = v20[5];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !toleranceCopy;
  }

  if (!v9)
  {
    asSocialGroupMemberNodeCollection2 = [nodesCopy asSocialGroupMemberNodeCollection];
    v11 = [(PGGraph *)self commonSocialGroupNodesForMemberNodes:asSocialGroupMemberNodeCollection2];

    if ([v11 count])
    {
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2020000000;
      v18[3] = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__PGGraph_People___socialGroupNodeForPersonNodes_searchWithTolerance___block_invoke;
      v14[3] = &unk_278882418;
      v15 = nodesCopy;
      v16 = v18;
      v17 = &v19;
      [v11 enumerateIdentifiersAsCollectionsWithBlock:v14];

      _Block_object_dispose(v18, 8);
    }

    v8 = v20[5];
  }

  v12 = v8;
  _Block_object_dispose(&v19, 8);

  return v12;
}

void __70__PGGraph_People___socialGroupNodeForPersonNodes_searchWithTolerance___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [v7 personNodes];
  v6 = [v5 count];

  if (v6 > [*(a1 + 32) count] && v6 > *(*(*(a1 + 40) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

- (id)fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:(id)nodes
{
  v26 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    v4 = [PGGraphSocialGroupNodeCollection alloc];
    firstObject = [nodesCopy firstObject];
    graph = [firstObject graph];
    v7 = [(MAElementCollection *)v4 initWithArray:nodesCopy graph:graph];

    v8 = MEMORY[0x277D22BF8];
    v9 = +[PGGraphSocialGroupNode memberOfSocialGroup];
    v10 = [v8 adjacencyWithSources:v7 relation:v9 targetsClass:objc_opt_class()];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = nodesCopy;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v10 targetsForSourceIdentifier:{objc_msgSend(v17, "identifier", v21)}];
          [dictionary setObject:v18 forKeyedSubscript:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  else
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)fetchMemberNodesBySocialGroupNodeForSocialGroups:(id)groups
{
  array = [groups array];
  v5 = [(PGGraph *)self fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:array];

  return v5;
}

- (id)memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:(id)node shouldIncludeMeNode:(BOOL)meNode simulateMeNodeNotSet:(BOOL)set
{
  meNodeCopy = meNode;
  v34 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(nodeCopy, "count")}];
  if (!set)
  {
    meNode = [(PGGraph *)self meNode];
    localIdentifier = [meNode localIdentifier];

    if ([localIdentifier length])
    {
      goto LABEL_6;
    }

    meNode2 = [(PGGraph *)self meNode];
    inferredPersonNode = [meNode2 inferredPersonNode];
    localIdentifier2 = [inferredPersonNode localIdentifier];

    if ([localIdentifier2 length])
    {
      localIdentifier = localIdentifier2;
      goto LABEL_6;
    }
  }

  localIdentifier = 0;
LABEL_6:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = nodeCopy;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16;
  v18 = *v30;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v30 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v29 + 1) + 8 * i);
      v21 = [v15 objectForKeyedSubscript:{v20, v29}];
      localIdentifiers = [v21 localIdentifiers];

      if ([localIdentifiers count] == 1 && meNodeCopy)
      {
        if (!localIdentifier)
        {
          goto LABEL_18;
        }

        v24 = [localIdentifiers setByAddingObject:localIdentifier];

        localIdentifiers = v24;
      }

      allObjects = [localIdentifiers allObjects];
      uUID = [v20 UUID];
      [v9 setObject:allObjects forKeyedSubscript:uUID];

LABEL_18:
    }

    v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v17);
LABEL_20:

  v27 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)personNodeForPersonLocalIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [PGGraphPersonNodeCollection personNodesForLocalIdentifier:identifierCopy inGraph:self];
  if (![v5 count])
  {
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[PGGraph(People) personNodeForPersonLocalIdentifier:]";
      v13 = 2112;
      v14 = identifierCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%s - Cannot find person node for person local identifier: %@", &v11, 0x16u);
    }
  }

  anyNode = [v5 anyNode];

  v9 = *MEMORY[0x277D85DE8];

  return anyNode;
}

- (id)momentNodesForPersonNodes:(id)nodes
{
  nodesCopy = nodes;
  v5 = nodesCopy;
  if (nodesCopy && [nodesCopy count])
  {
    if ([v5 count] == 1)
    {
      momentNodes = [v5 momentNodes];
    }

    else
    {
      v7 = [(PGGraph *)self _socialGroupNodeForPersonNodes:v5 searchWithTolerance:1];
      v8 = v7;
      if (v7)
      {
        momentNodes = [v7 momentNodes];
      }

      else
      {
        momentNodes = 0;
      }
    }
  }

  else
  {
    momentNodes = 0;
  }

  return momentNodes;
}

- (id)socialGroupMemberNodesForMemberLocalIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:identifiersCopy];
  v6 = [PGGraphSocialGroupMemberNodeCollection memberNodesForLocalIdentifiers:v5 inGraph:self];

  memberNodeByLocalIdentifier = [v6 memberNodeByLocalIdentifier];
  v8 = [v6 count];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = identifiersCopy;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [memberNodeByLocalIdentifier objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)personNodesForPersonLocalIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:identifiersCopy inGraph:self];
  personNodeByLocalIdentifier = [v5 personNodeByLocalIdentifier];
  v7 = [v5 count];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = identifiersCopy;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [personNodeByLocalIdentifier objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)enumeratePersonNodesIncludingMe:(BOOL)me withBlock:(id)block
{
  meCopy = me;
  blockCopy = block;
  v7 = blockCopy;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (!meCopy)
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__PGGraph_People__enumeratePersonNodesIncludingMe_withBlock___block_invoke;
  v11 = &unk_2788823F0;
  v12 = blockCopy;
  v13 = &v14;
  [(MAGraph *)self enumerateNodesWithLabel:@"Me" domain:300 usingBlock:&v8];

  if (!*(v15 + 24))
  {
LABEL_3:
    [(MAGraph *)self enumerateNodesWithLabel:@"People" domain:300 usingBlock:v7, v8, v9, v10, v11];
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __61__PGGraph_People__enumeratePersonNodesIncludingMe_withBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (id)favoritedPersonNodesIncludingMe:(BOOL)me
{
  meCopy = me;
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = @"fav";
  v5 = MEMORY[0x277CBEC38];
  v16[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v7 = [(MAGraph *)self nodesForLabel:@"People" domain:300 properties:v6];

  if (meCopy)
  {
    v13 = @"fav";
    v14 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [(MAGraph *)self nodesForLabel:@"Me" domain:300 properties:v8];

    if ([v9 count])
    {
      v10 = [v7 mutableCopy];
      [v10 unionSet:v9];

      v7 = v10;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)personNodesIncludingMe:(BOOL)me
{
  meCopy = me;
  v5 = [(MAGraph *)self nodesForLabel:@"People" domain:300];
  if (meCopy)
  {
    v6 = [(MAGraph *)self nodesForLabel:@"Me" domain:300];
    if ([v6 count])
    {
      v7 = [v5 mutableCopy];
      [v7 unionSet:v6];

      v5 = v7;
    }
  }

  return v5;
}

- (unint64_t)numberOfPersonNodesIncludingMe:(BOOL)me
{
  meCopy = me;
  v5 = [(MAGraph *)self nodesCountForLabel:@"People" domain:300];
  if (meCopy)
  {
    v5 += [(MAGraph *)self nodesCountForLabel:@"Me" domain:300];
  }

  return v5;
}

- (id)commonSocialGroupNodesForMemberNodes:(id)nodes withThreshold:(double)threshold
{
  nodesCopy = nodes;
  meNode = [(PGGraph *)self meNode];
  v8 = meNode;
  if (meNode)
  {
    collection = [meNode collection];
    v10 = [nodesCopy collectionBySubtracting:collection];

    nodesCopy = v10;
  }

  socialGroupNodes = [nodesCopy socialGroupNodes];
  v12 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__PGGraph_People__commonSocialGroupNodesForMemberNodes_withThreshold___block_invoke;
  v17[3] = &unk_2788823C8;
  thresholdCopy = threshold;
  v18 = nodesCopy;
  v19 = v12;
  v13 = v12;
  v14 = nodesCopy;
  [socialGroupNodes enumerateIdentifiersAsCollectionsWithBlock:v17];
  v15 = [(MAElementCollection *)[PGGraphSocialGroupNodeCollection alloc] initWithGraph:self elementIdentifiers:v13];

  return v15;
}

void __70__PGGraph_People__commonSocialGroupNodesForMemberNodes_withThreshold___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = [a3 memberNodes];
  v5 = [v10 collectionByIntersecting:*(a1 + 32)];
  v6 = [v10 count];
  v7 = [v5 count];
  v8 = vcvtmd_u64_f64(*(a1 + 48) * v6);
  if (v8 <= 2)
  {
    v8 = 2;
  }

  if (v7 >= v8 || v7 == v6)
  {
    [*(a1 + 40) addIdentifier:a2];
  }
}

- (BOOL)isBestPairSocialGroup:(id)group
{
  groupCopy = group;
  [groupCopy importance];
  v6 = v5 == 1.0 && [(PGGraph *)self isPairSocialGroup:groupCopy];

  return v6;
}

- (BOOL)isPairSocialGroup:(id)group
{
  groupCopy = group;
  meNode = [(PGGraph *)self meNode];
  v6 = [groupCopy countOfEdgesWithLabel:@"BELONGSTO" domain:302];

  v7 = 1;
  if (!meNode)
  {
    v7 = 2;
  }

  v8 = v6 == v7;

  return v8;
}

- (BOOL)hasSocialGroups
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__PGGraph_People__hasSocialGroups__block_invoke;
  v4[3] = &unk_2788823A0;
  v4[4] = &v5;
  [(MAGraph *)self enumerateEdgesWithLabel:@"SOCIALGROUP" domain:302 properties:0 usingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __34__PGGraph_People__hasSocialGroups__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (id)bestSocialGroupNodes
{
  socialGroupNodesSortedByImportance = [(PGGraph *)self socialGroupNodesSortedByImportance];
  v3 = [socialGroupNodesSortedByImportance count];
  if (v3 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  v5 = [socialGroupNodesSortedByImportance subarrayWithRange:{0, v4}];

  return v5;
}

- (id)socialGroupNodesSortedByImportance
{
  v2 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:self];
  v3 = +[PGGraphSocialGroupNode importanceSortDescriptors];
  v4 = [v2 sortedArrayUsingDescriptors:v3];

  return v4;
}

- (id)socialGroupNodeForMemberNodes:(id)nodes
{
  v34 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  meNode = [(PGGraph *)self meNode];
  v6 = meNode;
  if (meNode)
  {
    collection = [meNode collection];
    v8 = [nodesCopy collectionBySubtracting:collection];

    nodesCopy = v8;
  }

  socialGroupNodes = [nodesCopy socialGroupNodes];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__28669;
  v28 = __Block_byref_object_dispose__28670;
  v29 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __49__PGGraph_People__socialGroupNodeForMemberNodes___block_invoke;
  v21 = &unk_278882378;
  v10 = nodesCopy;
  v22 = v10;
  v23 = &v24;
  [socialGroupNodes enumerateIdentifiersAsCollectionsWithBlock:&v18];
  v11 = v25[5];
  if (!v11)
  {
    v12 = [PGLogging sharedLogging:v18];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = [v10 set];
      *buf = 136315394;
      v31 = "[PGGraph(People) socialGroupNodeForMemberNodes:]";
      v32 = 2112;
      v33 = v17;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%s - Cannot find social group for people nodes %@", buf, 0x16u);
    }

    v11 = v25[5];
  }

  v14 = v11;

  _Block_object_dispose(&v24, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __49__PGGraph_People__socialGroupNodeForMemberNodes___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 memberNodes];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)inferMeNodeFromSocialGroups
{
  v24 = *MEMORY[0x277D85DE8];
  [(PGGraph *)self libraryDuration];
  v4 = v3;
  if (v3 >= 15552000.0)
  {
    v8 = objc_opt_new();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__PGGraph_People__inferMeNodeFromSocialGroups__block_invoke;
    v16[3] = &unk_278885AB8;
    loggingConnection2 = v8;
    v17 = loggingConnection2;
    [(PGGraph *)self enumerateSocialGroupsIncludingMeNode:1 socialGroupsVersion:0 simulateMeNodeNotSet:0 validGroupsBlock:v16 invalidGroupsBlock:0 averageWeight:0];
    v9 = [(PGGraph *)self _countOfDistinctSocialGroups:loggingConnection2];
    if (v9 > 2)
    {
      v7 = [(PGGraph *)self _personNodeIntersectingSocialGroups:loggingConnection2];
    }

    else
    {
      v10 = v9;
      v11 = +[PGLogging sharedLogging];
      loggingConnection = [v11 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        v13 = [loggingConnection2 count];
        *buf = 134218496;
        v19 = v13;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = 3;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Can't suggest Me Person: Not enough distinct social groups (%lu social groups, %lu distinct < %lu)", buf, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    v5 = +[PGLogging sharedLogging];
    loggingConnection2 = [v5 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v19 = *&v4;
      v20 = 2048;
      v21 = 0x416DA9C000000000;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Can't suggest Me Person: Library time interval too small (%.2f < %.2f)", buf, 0x16u);
    }

    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

void __46__PGGraph_People__inferMeNodeFromSocialGroups__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] setWithArray:a2];
  [v2 addObject:v3];
}

- (id)meNodeWithFallbackInferredMeNode
{
  meNode = [(PGGraph *)self meNode];
  localIdentifier = [meNode localIdentifier];
  if ([localIdentifier length])
  {
    inferredPersonNode = meNode;
  }

  else
  {
    inferredPersonNode = [meNode inferredPersonNode];
  }

  v5 = inferredPersonNode;

  return v5;
}

+ (id)socialGroupMemberSortDescriptorForSocialGroupNode:(id)node
{
  nodeCopy = node;
  v4 = MEMORY[0x277CCAC98];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__PGGraph_People__socialGroupMemberSortDescriptorForSocialGroupNode___block_invoke;
  v8[3] = &unk_278882350;
  v9 = nodeCopy;
  v5 = nodeCopy;
  v6 = [v4 sortDescriptorWithKey:@"self" ascending:0 comparator:v8];

  return v6;
}

uint64_t __69__PGGraph_People__socialGroupMemberSortDescriptorForSocialGroupNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 anyEdgeTowardNode:*(a1 + 32)];
  [v7 importance];
  v9 = v8;

  v10 = [v6 anyEdgeTowardNode:*(a1 + 32)];
  [v10 importance];
  v12 = v11;

  if (v9 < v12)
  {
    goto LABEL_2;
  }

  if (v9 > v12)
  {
LABEL_4:
    v13 = 1;
    goto LABEL_5;
  }

  v15 = [v5 edgesCount];
  v16 = [v6 edgesCount];
  if (v15 >= v16)
  {
    if (v15 <= v16)
    {
      v17 = [v5 localIdentifier];
      v18 = [v6 localIdentifier];
      v13 = [v17 compare:v18];

      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_2:
  v13 = -1;
LABEL_5:

  return v13;
}

- (id)staticGraphSchema
{
  v2 = objc_alloc_init(MEMORY[0x277D22C48]);
  v123 = [v2 nodeSchemeWithLabel:@"Info" domain:1];
  v3 = [v2 nodeSchemeWithLabel:@"Moment" domain:100];
  v4 = [v2 nodeSchemeWithLabel:@"Highlight" domain:102];
  v5 = [v2 nodeSchemeWithLabel:@"HighlightGroup" domain:102];
  v120 = [v2 nodeSchemeWithLabel:0 domain:103];
  v6 = [v2 nodeSchemeWithLabel:@"Address" domain:200];
  v7 = [v2 nodeSchemeWithLabel:@"Number" domain:200];
  v8 = [v2 nodeSchemeWithLabel:@"Street" domain:200];
  v9 = [v2 nodeSchemeWithLabel:@"District" domain:200];
  v136 = [v2 nodeSchemeWithLabel:@"City" domain:200];
  v171 = [v2 nodeSchemeWithLabel:@"County" domain:200];
  v170 = [v2 nodeSchemeWithLabel:@"State" domain:200];
  v135 = [v2 nodeSchemeWithLabel:@"Country" domain:200];
  v169 = [v2 nodeSchemeWithLabel:@"Language" domain:205];
  v168 = [v2 nodeSchemeWithLabel:@"Area" domain:201];
  v134 = [v2 nodeSchemeWithLabel:@"Home" domain:202];
  v133 = [v2 nodeSchemeWithLabel:@"Work" domain:202];
  v167 = [v2 nodeSchemeWithLabel:0 domain:203];
  v132 = [v2 nodeSchemeWithLabel:@"FrequentLocation" domain:204];
  v130 = [v2 nodeSchemeWithLabel:@"Me" domain:300];
  v126 = [v2 nodeSchemeWithLabel:@"People" domain:300];
  v131 = [v2 nodeSchemeWithLabel:@"SocialGroup" domain:302];
  v127 = [v2 nodeSchemeWithLabel:@"Contact" domain:303];
  v166 = [v2 nodeSchemeWithLabel:0 domain:305];
  v124 = [v2 nodeSchemeWithLabel:@"Date" domain:400];
  v165 = [v2 nodeSchemeWithLabel:@"Day" domain:400];
  v164 = [v2 nodeSchemeWithLabel:@"Month" domain:400];
  v163 = [v2 nodeSchemeWithLabel:@"Year" domain:400];
  v162 = [v2 nodeSchemeWithLabel:@"WeekMonth" domain:400];
  v161 = [v2 nodeSchemeWithLabel:@"WeekYear" domain:400];
  v160 = [v2 nodeSchemeWithLabel:@"Season" domain:400];
  v159 = [v2 nodeSchemeWithLabel:@"Weekend" domain:400];
  v158 = [v2 nodeSchemeWithLabel:@"Weekday" domain:400];
  v125 = [v2 nodeSchemeWithLabel:@"Holiday" domain:401];
  v157 = [v2 nodeSchemeWithLabel:@"PartOfDay" domain:400];
  v156 = [v2 nodeSchemeWithLabel:@"DayOfWeek" domain:400];
  v155 = [v2 nodeSchemeWithLabel:@"Urban" domain:502];
  v154 = [v2 nodeSchemeWithLabel:@"Beach" domain:502];
  v153 = [v2 nodeSchemeWithLabel:@"Water" domain:502];
  v152 = [v2 nodeSchemeWithLabel:@"Nature" domain:502];
  v151 = [v2 nodeSchemeWithLabel:@"Mountain" domain:502];
  v150 = [v2 nodeSchemeWithLabel:@"Restaurant" domain:501];
  v149 = [v2 nodeSchemeWithLabel:@"Nightlife" domain:501];
  v148 = [v2 nodeSchemeWithLabel:@"Travel" domain:501];
  v147 = [v2 nodeSchemeWithLabel:@"Culture" domain:501];
  v146 = [v2 nodeSchemeWithLabel:@"Entertainment" domain:501];
  v145 = [v2 nodeSchemeWithLabel:@"Park" domain:501];
  v144 = [v2 nodeSchemeWithLabel:@"AmusementPark" domain:501];
  v143 = [v2 nodeSchemeWithLabel:@"Museum" domain:501];
  v142 = [v2 nodeSchemeWithLabel:@"Stadium" domain:501];
  v128 = [v2 nodeSchemeWithLabel:@"Business" domain:503];
  v141 = [v2 nodeSchemeWithLabel:0 domain:504];
  v129 = [v2 nodeSchemeWithLabel:@"PublicEvent" domain:900];
  v140 = [v2 nodeSchemeWithLabel:@"Performer" domain:900];
  v139 = [v2 nodeSchemeWithLabel:0 domain:901];
  v138 = [v2 nodeSchemeWithLabel:0 domain:902];
  v137 = [v2 nodeSchemeWithLabel:0 domain:600];
  v10 = objc_opt_class();
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v176[2] = __36__PGGraph_Schema__staticGraphSchema__block_invoke;
  v176[3] = &unk_278887698;
  v11 = v2;
  v177 = v11;
  [v10 _traverseMeaningLabelsUsingBlock:v176];
  v119 = [v11 edgeSchemeWithLabel:@"NEXT" domain:101 sourceNode:v3 targetNode:v3];
  v122 = v4;
  v118 = [v11 edgeSchemeWithLabel:@"CONTAINS" domain:102 sourceNode:v4 targetNode:v3];
  v121 = v5;
  v117 = [v11 edgeSchemeWithLabel:@"GROUP_CONTAINS" domain:102 sourceNode:v5 targetNode:v4];
  v115 = [v11 edgeSchemeWithLabel:@"HAS_TYPE" domain:103 sourceNode:v5 targetNode:v120];
  v114 = [v11 edgeSchemeWithLabel:@"ADDRESS" domain:200 sourceNode:v3 targetNode:v6];
  v112 = [v11 edgeSchemeWithLabel:@"NUMBER" domain:200 sourceNode:v6 targetNode:v7];
  v111 = [v11 edgeSchemeWithLabel:@"STREET" domain:200 sourceNode:v6 targetNode:v8];
  v110 = [v11 edgeSchemeWithLabel:@"STREET" domain:200 sourceNode:v7 targetNode:v8];
  v109 = [v11 edgeSchemeWithLabel:@"DISTRICT" domain:200 sourceNode:v6 targetNode:v9];
  v108 = [v11 edgeSchemeWithLabel:@"DISTRICT" domain:200 sourceNode:v7 targetNode:v9];
  v107 = [v11 edgeSchemeWithLabel:@"DISTRICT" domain:200 sourceNode:v8 targetNode:v9];
  v106 = [v11 edgeSchemeWithLabel:@"CITY" domain:200 sourceNode:v6 targetNode:v136];
  v105 = [v11 edgeSchemeWithLabel:@"CITY" domain:200 sourceNode:v7 targetNode:v136];
  v104 = [v11 edgeSchemeWithLabel:@"CITY" domain:200 sourceNode:v8 targetNode:v136];
  v102 = [v11 edgeSchemeWithLabel:@"CITY" domain:200 sourceNode:v9 targetNode:v136];
  v101 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v6 targetNode:v171];
  v100 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v7 targetNode:v171];
  v99 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v8 targetNode:v171];
  v98 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v9 targetNode:v171];
  v97 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v136 targetNode:v171];
  v96 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v6 targetNode:v170];
  v116 = v7;
  v95 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v7 targetNode:v170];
  v94 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v8 targetNode:v170];
  v113 = v9;
  v93 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v9 targetNode:v170];
  v92 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v136 targetNode:v170];
  v91 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v171 targetNode:v170];
  v90 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v6 targetNode:v135];
  v89 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v7 targetNode:v135];
  v88 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v8 targetNode:v135];
  v87 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v9 targetNode:v135];
  v86 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v136 targetNode:v135];
  v84 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v171 targetNode:v135];
  v83 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v170 targetNode:v135];
  v82 = [v11 edgeSchemeWithLabel:@"POPULAR_LANGUAGE" domain:205 sourceNode:v135 targetNode:v169];
  v81 = [v11 edgeSchemeWithLabel:@"AREA" domain:201 sourceNode:v6 targetNode:v168];
  v80 = [v11 edgeSchemeWithLabel:@"IS_HOME_WORK" domain:202 sourceNode:v6 targetNode:v134];
  v103 = v6;
  v79 = [v11 edgeSchemeWithLabel:@"IS_HOME_WORK" domain:202 sourceNode:v6 targetNode:v133];
  v78 = [v11 edgeSchemeWithLabel:@"IS_OWNED_BY" domain:202 sourceNode:v134 targetNode:v126];
  v77 = [v11 edgeSchemeWithLabel:@"IS_OWNED_BY" domain:202 sourceNode:v133 targetNode:v126];
  v76 = [v11 edgeSchemeWithLabel:@"IS_OWNED_BY" domain:202 sourceNode:v134 targetNode:v130];
  v75 = [v11 edgeSchemeWithLabel:@"IS_OWNED_BY" domain:202 sourceNode:v133 targetNode:v130];
  v74 = [v11 edgeSchemeWithLabel:@"MOBILITY" domain:203 sourceNode:v3 targetNode:v167];
  v73 = [v11 edgeSchemeWithLabel:@"IN" domain:204 sourceNode:v3 targetNode:v132];
  v72 = [v11 edgeSchemeWithLabel:@"AT" domain:204 sourceNode:v132 targetNode:v6];
  v71 = [v11 edgeSchemeWithLabel:@"PRESENT" domain:300 sourceNode:v126 targetNode:v3];
  v70 = [v11 edgeSchemeWithLabel:@"PRESENT" domain:300 sourceNode:v130 targetNode:v3];
  v69 = [v11 edgeSchemeWithLabel:@"FAMILY" domain:300 sourceNode:v130 targetNode:v126];
  v68 = [v11 edgeSchemeWithLabel:@"CHILD" domain:300 sourceNode:v130 targetNode:v126];
  v67 = [v11 edgeSchemeWithLabel:@"PARENT" domain:300 sourceNode:v130 targetNode:v126];
  v66 = [v11 edgeSchemeWithLabel:@"FRIEND" domain:300 sourceNode:v130 targetNode:v126];
  v65 = [v11 edgeSchemeWithLabel:@"PARTNER" domain:300 sourceNode:v130 targetNode:v126];
  v64 = [v11 edgeSchemeWithLabel:@"VIP" domain:300 sourceNode:v130 targetNode:v126];
  v63 = [v11 edgeSchemeWithLabel:@"COWORKER" domain:300 sourceNode:v130 targetNode:v126];
  v62 = [v11 edgeSchemeWithLabel:@"BELONGSTO" domain:302 sourceNode:v126 targetNode:v131];
  v61 = [v11 edgeSchemeWithLabel:@"SOCIALGROUP" domain:302 sourceNode:v3 targetNode:v131];
  v60 = [v11 edgeSchemeWithLabel:@"FAMILY_SOCIALGROUP" domain:302 sourceNode:v130 targetNode:v131];
  v59 = [v11 edgeSchemeWithLabel:@"COWORKER_SOCIALGROUP" domain:302 sourceNode:v130 targetNode:v131];
  v58 = [v11 edgeSchemeWithLabel:@"BIRTHDAY" domain:301 sourceNode:v3 targetNode:v126];
  v57 = [v11 edgeSchemeWithLabel:@"ANNIVERSARY" domain:301 sourceNode:v3 targetNode:v126];
  v56 = [v11 edgeSchemeWithLabel:@"BIRTHDAY" domain:301 sourceNode:v3 targetNode:v130];
  v55 = [v11 edgeSchemeWithLabel:@"ANNIVERSARY" domain:301 sourceNode:v3 targetNode:v130];
  v54 = [v11 edgeSchemeWithLabel:@"PEOPLE_CONTACT_SUGGESTION" domain:303 sourceNode:v126 targetNode:v127];
  v53 = [v11 edgeSchemeWithLabel:@"PEOPLE_CONTACT_SUGGESTION" domain:303 sourceNode:v130 targetNode:v127];
  v52 = [v11 edgeSchemeWithLabel:@"RELATIONSHIP_TAG" domain:305 sourceNode:v126 targetNode:v166];
  v51 = [v11 edgeSchemeWithLabel:@"DATE" domain:400 sourceNode:v3 targetNode:v124];
  v50 = [v11 edgeSchemeWithLabel:@"DAY" domain:400 sourceNode:v124 targetNode:v165];
  v49 = [v11 edgeSchemeWithLabel:@"MONTH" domain:400 sourceNode:v124 targetNode:v164];
  v48 = [v11 edgeSchemeWithLabel:@"YEAR" domain:400 sourceNode:v124 targetNode:v163];
  v47 = [v11 edgeSchemeWithLabel:@"WEEKMONTH" domain:400 sourceNode:v124 targetNode:v162];
  v46 = [v11 edgeSchemeWithLabel:@"WEEKYEAR" domain:400 sourceNode:v124 targetNode:v161];
  v45 = [v11 edgeSchemeWithLabel:@"SEASON" domain:400 sourceNode:v124 targetNode:v160];
  v44 = [v11 edgeSchemeWithLabel:@"PARTOFWEEK" domain:400 sourceNode:v3 targetNode:v159];
  v43 = [v11 edgeSchemeWithLabel:@"PARTOFWEEK" domain:400 sourceNode:v3 targetNode:v158];
  v42 = [v11 edgeSchemeWithLabel:@"CELEBRATING" domain:401 sourceNode:v3 targetNode:v125];
  v41 = [v11 edgeSchemeWithLabel:@"HOLIDAY" domain:401 sourceNode:v124 targetNode:v125];
  v40 = [v11 edgeSchemeWithLabel:@"PARTOFDAY" domain:400 sourceNode:v3 targetNode:v157];
  v39 = [v11 edgeSchemeWithLabel:@"DAYOFWEEK" domain:400 sourceNode:v124 targetNode:v156];
  v38 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v155];
  v37 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v154];
  v36 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v153];
  v35 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v152];
  v34 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v151];
  v33 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v150];
  v32 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v149];
  v31 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v148];
  v30 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v147];
  v29 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v146];
  v28 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v145];
  v27 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v144];
  v26 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v143];
  v25 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v142];
  v24 = [v11 edgeSchemeWithLabel:@"BUSINESS" domain:503 sourceNode:v3 targetNode:v128];
  v23 = [v11 edgeSchemeWithLabel:@"BUSINESSCATEGORY" domain:504 sourceNode:v128 targetNode:v141];
  v12 = [v11 edgeSchemeWithLabel:@"PUBLIC_EVENT" domain:900 sourceNode:v3 targetNode:v129];
  v13 = [v11 edgeSchemeWithLabel:@"PERFORMER" domain:900 sourceNode:v129 targetNode:v140];
  v14 = [v11 edgeSchemeWithLabel:@"CATEGORY" domain:901 sourceNode:v129 targetNode:v139];
  v15 = [v11 edgeSchemeWithLabel:@"LOCALIZED_SUBCATEGORY" domain:900 sourceNode:v129 targetNode:v138];
  v16 = [v11 edgeSchemeWithLabel:@"PUBLIC_EVENT_BUSINESS" domain:900 sourceNode:v129 targetNode:v128];
  v17 = [v11 edgeSchemeWithLabel:@"SCENE" domain:600 sourceNode:v3 targetNode:v137];
  v18 = objc_opt_class();
  v172[0] = MEMORY[0x277D85DD0];
  v172[1] = 3221225472;
  v172[2] = __36__PGGraph_Schema__staticGraphSchema__block_invoke_2;
  v172[3] = &unk_278882B00;
  v19 = v11;
  v173 = v19;
  v174 = v3;
  selfCopy = self;
  v20 = v3;
  [v18 _traverseMeaningLabelsUsingBlock:v172];
  v21 = v19;

  return v19;
}

void __36__PGGraph_Schema__staticGraphSchema__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) nodeSchemeWithLabel:a2 domain:700];
}

void __36__PGGraph_Schema__staticGraphSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) nodesForLabel:v3 domain:700];
  v5 = [v4 anyObject];

  if (v5)
  {
    v6 = [*(a1 + 32) edgeSchemeWithLabel:@"MEANING" domain:700 sourceNode:*(a1 + 40) targetNode:v5];
    v7 = *(a1 + 48);
    v8 = [objc_opt_class() parentMeaningLabelForMeaningLabel:v3];
    if (v8)
    {
      v9 = [*(a1 + 32) nodesForLabel:v8 domain:700];
      v10 = [v9 anyObject];

      if (v10)
      {
        [*(a1 + 32) edgeSchemeWithLabel:@"SUBMEANING_OF" domain:700 sourceNode:v5 targetNode:v10];
      }

      else
      {
        v12 = +[PGLogging sharedLogging];
        v13 = [v12 loggingConnection];

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = v3;
          _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Cannot find meaning node for meaning %@", &v15, 0xCu);
        }
      }
    }
  }

  else
  {
    v11 = +[PGLogging sharedLogging];
    v6 = [v11 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "Cannot find meaning node for meaning %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_meaningLabelTree
{
  v19[5] = *MEMORY[0x277D85DE8];
  v18[0] = @"Activity";
  v2 = MEMORY[0x277CBEC10];
  v16[0] = @"Hiking";
  v16[1] = @"Climbing";
  v17[0] = MEMORY[0x277CBEC10];
  v17[1] = MEMORY[0x277CBEC10];
  v16[2] = @"Beaching";
  v16[3] = @"Diving";
  v17[2] = MEMORY[0x277CBEC10];
  v17[3] = MEMORY[0x277CBEC10];
  v16[4] = @"WinterSport";
  v17[4] = MEMORY[0x277CBEC10];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v19[0] = v3;
  v18[1] = @"Entertainment";
  v14[0] = @"AmusementPark";
  v14[1] = @"SportEvent";
  v15[0] = v2;
  v15[1] = v2;
  v14[2] = @"Performance";
  v14[3] = @"Concert";
  v15[2] = v2;
  v15[3] = v2;
  v14[4] = @"Festival";
  v14[5] = @"NightOut";
  v15[4] = v2;
  v15[5] = v2;
  v14[6] = @"Museum";
  v14[7] = @"Theater";
  v15[6] = v2;
  v15[7] = v2;
  v14[8] = @"Dance";
  v15[8] = v2;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];
  v19[1] = v4;
  v18[2] = @"Celebration";
  v12[0] = @"Birthday";
  v12[1] = @"Anniversary";
  v13[0] = v2;
  v13[1] = v2;
  v12[2] = @"Wedding";
  v12[3] = @"HolidayEvent";
  v13[2] = v2;
  v13[3] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v19[2] = v5;
  v18[3] = @"Restaurant";
  v10[0] = @"Breakfast";
  v10[1] = @"Lunch";
  v11[0] = v2;
  v11[1] = v2;
  v10[2] = @"Dinner";
  v11[2] = v2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v18[4] = @"Gathering";
  v19[3] = v6;
  v19[4] = v2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)_traverseMeaningLabelsInTree:(id)tree usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__PGGraph_Schema___traverseMeaningLabelsInTree_usingBlock___block_invoke;
  v8[3] = &unk_278882B50;
  v9 = blockCopy;
  selfCopy = self;
  v7 = blockCopy;
  [tree enumerateKeysAndObjectsUsingBlock:v8];
}

void __59__PGGraph_Schema___traverseMeaningLabelsInTree_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  *a4 = 0;
  if ([v6 count])
  {
    [*(a1 + 40) _traverseMeaningLabelsInTree:v6 usingBlock:*(a1 + 32)];
  }
}

+ (void)_traverseMeaningLabelsUsingBlock:(id)block
{
  blockCopy = block;
  _meaningLabelTree = [self _meaningLabelTree];
  [self _traverseMeaningLabelsInTree:_meaningLabelTree usingBlock:blockCopy];
}

+ (id)_findParentMeaningLabelForMeaningLabel:(id)label inTree:(id)tree currentParent:(id)parent
{
  labelCopy = label;
  treeCopy = tree;
  parentCopy = parent;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__30964;
  v24 = __Block_byref_object_dispose__30965;
  v25 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__PGGraph_Schema___findParentMeaningLabelForMeaningLabel_inTree_currentParent___block_invoke;
  v15[3] = &unk_278882B28;
  v11 = labelCopy;
  v16 = v11;
  v18 = &v20;
  v12 = parentCopy;
  v17 = v12;
  selfCopy = self;
  [treeCopy enumerateKeysAndObjectsUsingBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __79__PGGraph_Schema___findParentMeaningLabelForMeaningLabel_inTree_currentParent___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  if ([v13 isEqualToString:*(a1 + 32)])
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = *(a1 + 40);
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [*(a1 + 56) _findParentMeaningLabelForMeaningLabel:*(a1 + 32) inTree:v7 currentParent:v13];
    v12 = *(*(a1 + 48) + 8);
    v10 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

+ (id)parentMeaningLabelForMeaningLabel:(id)label
{
  labelCopy = label;
  _meaningLabelTree = [self _meaningLabelTree];
  v6 = [self _findParentMeaningLabelForMeaningLabel:labelCopy inTree:_meaningLabelTree currentParent:0];

  return v6;
}

+ (void)traverseParentMeaningsForMeaningLabel:(id)label usingBlock:(id)block
{
  blockCopy = block;
  v7 = [self parentMeaningLabelForMeaningLabel:label];
  if (v7)
  {
    v8 = 0;
    blockCopy[2](blockCopy, v7, &v8);
    if ((v8 & 1) == 0)
    {
      [self traverseParentMeaningsForMeaningLabel:v7 usingBlock:blockCopy];
    }
  }
}

- (id)_createZeroKeywordMappingByMeaningLabel
{
  v24[9] = *MEMORY[0x277D85DE8];
  v24[0] = @"AmusementPark";
  v24[1] = @"Concert";
  v24[2] = @"Festival";
  v24[3] = @"SportEvent";
  v24[4] = @"Museum";
  v24[5] = @"Wedding";
  v24[6] = @"Birthday";
  v24[7] = @"Anniversary";
  v24[8] = @"Restaurant";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:9];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(MAGraph *)self anyNodeForLabel:v9 domain:700 properties:0];
        if (v10)
        {
          v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __58__PGGraph_Search___createZeroKeywordMappingByMeaningLabel__block_invoke;
          v17[3] = &unk_2788877E0;
          v18 = v11;
          v12 = v11;
          [v10 traverseSubmeaningHierarchyUsingBlock:v17];
          v13 = [[PGZeroKeywordMapping alloc] initWithDisplayNode:v10 mappedMeaningNodes:v12];
          [dictionary setObject:v13 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

void __58__PGGraph_Search___createZeroKeywordMappingByMeaningLabel__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 label];
  v4 = [v3 isEqualToString:@"HolidayEvent"];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (NSDictionary)zeroKeywordMappingByMeaningLabel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  zeroKeywordMappingByMeaningLabel = selfCopy->_zeroKeywordMappingByMeaningLabel;
  if (!zeroKeywordMappingByMeaningLabel)
  {
    _createZeroKeywordMappingByMeaningLabel = [(PGGraph *)selfCopy _createZeroKeywordMappingByMeaningLabel];
    v5 = selfCopy->_zeroKeywordMappingByMeaningLabel;
    selfCopy->_zeroKeywordMappingByMeaningLabel = _createZeroKeywordMappingByMeaningLabel;

    zeroKeywordMappingByMeaningLabel = selfCopy->_zeroKeywordMappingByMeaningLabel;
  }

  v6 = zeroKeywordMappingByMeaningLabel;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)nodeLabelForHighlightType:(unsigned __int16)type
{
  if (type > 7u)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_278883EA8[type];
  }

  return v4;
}

- (id)onGoingTripNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  onGoingTripHighlightTypeNode = [(PGGraph *)self onGoingTripHighlightTypeNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PGGraph_Highlight__onGoingTripNodes__block_invoke;
  v7[3] = &unk_278885850;
  v5 = v3;
  v8 = v5;
  [onGoingTripHighlightTypeNode enumerateNeighborNodesThroughEdgesWithLabel:@"HAS_TYPE" domain:103 usingBlock:v7];

  return v5;
}

- (id)highlightGroupNodesSortedByDate
{
  v10[3] = *MEMORY[0x277D85DE8];
  highlightGroupNodes = [(PGGraph *)self highlightGroupNodes];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v7 = [highlightGroupNodes sortedArrayUsingDescriptors:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dayHighlightNodesSortedByDate
{
  v10[3] = *MEMORY[0x277D85DE8];
  dayHighlightNodes = [(PGGraph *)self dayHighlightNodes];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v7 = [dayHighlightNodes sortedArrayUsingDescriptors:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dayHighlightNodes
{
  v2 = [PGGraphHighlightNodeCollection dayHighlightNodesInGraph:self];
  temporarySet = [v2 temporarySet];

  return temporarySet;
}

- (id)defaultHighlightNodes
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dayHighlightNodes = [(PGGraph *)self dayHighlightNodes];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [dayHighlightNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(dayHighlightNodes);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isPartOfTrip] & 1) == 0 && (objc_msgSend(v9, "isPartOfAggregation") & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [dayHighlightNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)aggregationNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aggregationHighlightTypeNode = [(PGGraph *)self aggregationHighlightTypeNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PGGraph_Highlight__aggregationNodes__block_invoke;
  v7[3] = &unk_278885850;
  v5 = v3;
  v8 = v5;
  [aggregationHighlightTypeNode enumerateNeighborNodesThroughEdgesWithLabel:@"HAS_TYPE" domain:103 usingBlock:v7];

  return v5;
}

- (id)allTripNodes
{
  longTripNodes = [(PGGraph *)self longTripNodes];
  shortTripNodes = [(PGGraph *)self shortTripNodes];
  v5 = [longTripNodes arrayByAddingObjectsFromArray:shortTripNodes];

  return v5;
}

- (id)shortTripNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  shortTripHighlightTypeNode = [(PGGraph *)self shortTripHighlightTypeNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PGGraph_Highlight__shortTripNodes__block_invoke;
  v7[3] = &unk_278885850;
  v5 = v3;
  v8 = v5;
  [shortTripHighlightTypeNode enumerateNeighborNodesThroughEdgesWithLabel:@"HAS_TYPE" domain:103 usingBlock:v7];

  return v5;
}

- (id)longTripNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  longTripHighlightTypeNode = [(PGGraph *)self longTripHighlightTypeNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__PGGraph_Highlight__longTripNodes__block_invoke;
  v7[3] = &unk_278885850;
  v5 = v3;
  v8 = v5;
  [longTripHighlightTypeNode enumerateNeighborNodesThroughEdgesWithLabel:@"HAS_TYPE" domain:103 usingBlock:v7];

  return v5;
}

- (id)defaultHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"Default" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)onGoingTripHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"OngoingTrip" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)aggregationHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"Aggregation" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)shortTripHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"ShortTrip" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)longTripHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"LongTrip" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)meaningfulMomentNodesSortedByDate
{
  v11[3] = *MEMORY[0x277D85DE8];
  meaningfulEvents = [(PGGraph *)self meaningfulEvents];
  allObjects = [meaningfulEvents allObjects];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v4}];
  v11[1] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v8 = [allObjects sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)momentNodesSortedByDateFromMomentNodes:(id)nodes
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  nodesCopy = nodes;
  v5 = [v3 sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v5}];
  v12[1] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  v9 = [nodesCopy sortedArrayUsingDescriptors:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)momentNodesSortedByDate
{
  v11[3] = *MEMORY[0x277D85DE8];
  momentNodes = [(PGGraph *)self momentNodes];
  v3 = [momentNodes set];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v4}];
  v11[1] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v8 = [v3 sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)interestingAreaNodes
{
  v60 = *MEMORY[0x277D85DE8];
  [(PGGraph *)self _checkCanRead];
  v2 = MEMORY[0x277D86220];
  v3 = MEMORY[0x277D86220];
  v4 = os_signpost_id_generate(v2);
  v5 = v2;
  spid = v4;
  v40 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v4, "InterestingAreaNodes", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v37 = mach_absolute_time();
  context = objc_autoreleasePoolPush();
  supersetCityNodes = [(PGGraph *)self supersetCityNodes];
  addressNodes = [supersetCityNodes addressNodes];
  v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
  v8 = +[PGGraphAreaNode nonBlockedFilter];
  v9 = [(MANodeCollection *)PGGraphAreaNodeCollection nodesMatchingFilter:v8 inGraph:self];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v59 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __43__PGGraph_Processing__interestingAreaNodes__block_invoke;
  v51[3] = &unk_2788862D8;
  v10 = addressNodes;
  v52 = v10;
  v54 = buf;
  v11 = v7;
  v53 = v11;
  [v9 enumerateIdentifiersAsCollectionsWithBlock:v51];
  v12 = [v11 count];
  if (v12)
  {
    *(*&buf[8] + 24) = *(*&buf[8] + 24) / v12;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    objectEnumerator = [v11 objectEnumerator];
    v14 = [objectEnumerator countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v14)
    {
      v15 = *v48;
      v16 = 0.0;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v48 != v15)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v47 + 1) + 8 * i) doubleValue];
          v16 = v16 + (v18 - *(*&buf[8] + 24)) * (v18 - *(*&buf[8] + 24));
        }

        v14 = [objectEnumerator countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 0.0;
    }

    v20 = [v11 count];
    v21 = *(*&buf[8] + 24);
    v22 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    keyEnumerator = [v11 keyEnumerator];
    v24 = [keyEnumerator countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v24)
    {
      v25 = v21 + sqrt(v16 / v20) * 0.5;
      v26 = *v44;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v28 = *(*(&v43 + 1) + 8 * j);
          v29 = [v11 objectForKey:{v28, v37}];
          [v29 doubleValue];
          if (v30 >= v25)
          {
            [v22 addIdentifier:{objc_msgSend(v28, "unsignedIntegerValue")}];
          }
        }

        v24 = [keyEnumerator countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v24);
    }

    if ([v22 count])
    {
      v19 = [(MAElementCollection *)[PGGraphAreaNodeCollection alloc] initWithGraph:self elementIdentifiers:v22];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(context);
  v31 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v34 = MEMORY[0x277D86220];
  if (v40 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, spid, "InterestingAreaNodes", "", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "InterestingAreaNodes";
    *&buf[12] = 2048;
    *&buf[14] = ((((v31 - v37) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  if (!v19)
  {
    v19 = [(MAElementCollection *)[PGGraphAreaNodeCollection alloc] initWithGraph:self];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v19;
}

void __43__PGGraph_Processing__interestingAreaNodes__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v16 addressNodes];
  v7 = [v6 collectionBySubtracting:a1[4]];
  v8 = [v7 momentNodes];
  v9 = [v8 count];
  if (v9 >= 3)
  {
    v10 = v9;
    v11 = [v8 universalDateInterval];
    [v11 duration];
    if (v12 >= 7776000.0)
    {
      *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + v10;
      v13 = a1[5];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
      [v13 setObject:v14 forKey:v15];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (id)interestingCityNodes
{
  v26 = *MEMORY[0x277D85DE8];
  [(PGGraph *)self _checkCanRead];
  supersets = [(PGGraph *)self supersets];
  objc_sync_enter(supersets);
  interestingCityNodes = self->_interestingCityNodes;
  if (!interestingCityNodes)
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
    v7 = os_signpost_id_generate(v5);
    v8 = v5;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v7, "InterestingCityNodes", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v9 = mach_absolute_time();
    v10 = objc_autoreleasePoolPush();
    mainUrbanCityNodes = [(PGGraph *)self mainUrbanCityNodes];
    supersetCityNodes = [(PGGraph *)self supersetCityNodes];
    v13 = [mainUrbanCityNodes collectionBySubtracting:supersetCityNodes];
    v14 = self->_interestingCityNodes;
    self->_interestingCityNodes = v13;

    objc_autoreleasePoolPop(v10);
    v15 = mach_absolute_time();
    v16 = info;
    v17 = MEMORY[0x277D86220];
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v7, "InterestingCityNodes", "", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "InterestingCityNodes";
      v24 = 2048;
      v25 = ((((v15 - v9) * v16.numer) / v16.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    interestingCityNodes = self->_interestingCityNodes;
  }

  v18 = interestingCityNodes;
  objc_sync_exit(supersets);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)mainUrbanCityNodes
{
  v32 = *MEMORY[0x277D85DE8];
  [(PGGraph *)self _checkCanRead];
  v3 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v4 = MEMORY[0x277D86220];
  v5 = MEMORY[0x277D86220];
  v6 = os_signpost_id_generate(v4);
  v7 = v4;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v6, "MainUrbanCityNodes", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v23 = mach_absolute_time();
  v8 = objc_autoreleasePoolPush();
  v9 = +[PGGraphROINode urbanFilter];
  v10 = [(MANodeCollection *)PGGraphROINodeCollection nodesMatchingFilter:v9 inGraph:self];

  momentNodes = [v10 momentNodes];
  v12 = +[PGGraphLocationCityNode filter];
  v13 = [(MANodeCollection *)PGGraphLocationCityNodeCollection nodesMatchingFilter:v12 inGraph:self];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __41__PGGraph_Processing__mainUrbanCityNodes__block_invoke;
  v24[3] = &unk_2788862B0;
  v25 = momentNodes;
  v14 = v3;
  v26 = v14;
  v15 = momentNodes;
  [v13 enumerateIdentifiersAsCollectionsWithBlock:v24];

  objc_autoreleasePoolPop(v8);
  v16 = mach_absolute_time();
  v17 = info;
  v18 = v4;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v6, "MainUrbanCityNodes", "", buf, 2u);
  }

  v19 = MEMORY[0x277D86220];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "MainUrbanCityNodes";
    v30 = 2048;
    v31 = ((((v16 - v23) * v17.numer) / v17.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v20 = [(MAElementCollection *)[PGGraphLocationCityNodeCollection alloc] initWithGraph:self elementIdentifiers:v14];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __41__PGGraph_Processing__mainUrbanCityNodes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 momentNodes];
  v5 = [v8 collectionByIntersecting:*(a1 + 32)];
  if ([v5 count] >= 3)
  {
    v6 = [v5 universalDateInterval];
    [v6 duration];
    if (v7 >= 7776000.0)
    {
      [*(a1 + 40) addIdentifier:a2];
    }
  }
}

- (unint64_t)_cluePeopleForRelationships:(id)relationships
{
  relationshipsCopy = relationships;
  if ([relationshipsCopy containsObject:@"FAMILY"])
  {
    v4 = 1;
  }

  else if ([relationshipsCopy containsObject:@"FRIEND"])
  {
    v4 = 2;
  }

  else if ([relationshipsCopy containsObject:@"PARTNER"])
  {
    v4 = 8;
  }

  else if ([relationshipsCopy containsObject:@"COWORKER"])
  {
    v4 = 16;
  }

  else if ([relationshipsCopy containsObject:@"ACQUAINTANCE"])
  {
    v4 = 32;
  }

  else if ([relationshipsCopy containsObject:@"VIP"])
  {
    v4 = 64;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)inferredUserLocales
{
  supersetCountryNodes = [(PGGraph *)self supersetCountryNodes];
  languageNodes = [supersetCountryNodes languageNodes];
  locales = [languageNodes locales];
  v5 = [locales mutableCopy];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  if (currentLocale)
  {
    [v5 addObject:currentLocale];
  }

  return v5;
}

- (id)celebratedHolidays
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection nodesInGraph:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__PGGraph_Processing__celebratedHolidays__block_invoke;
  v7[3] = &unk_278886278;
  v5 = v3;
  v8 = v5;
  [v4 enumerateIdentifiersAsCollectionsWithBlock:v7];

  return v5;
}

void __41__PGGraph_Processing__celebratedHolidays__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = [a3 celebratingMomentNodes];
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v5}];
    v11[1] = v6;
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
    v11[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

    v9 = [v4 sortedArrayUsingDescriptors:v8];

    [*(a1 + 32) addObject:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)weekends
{
  v23[3] = *MEMORY[0x277D85DE8];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(PGGraph *)self shortTripNodes];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        collection = [*(*(&v18 + 1) + 8 * i) collection];
        momentNodes = [collection momentNodes];
        v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
        v23[0] = v9;
        v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
        v23[1] = v10;
        v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
        v23[2] = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];

        v13 = [momentNodes sortedArrayUsingDescriptors:v12];
        [v17 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)trips
{
  v23[3] = *MEMORY[0x277D85DE8];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(PGGraph *)self longTripNodes];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        collection = [*(*(&v18 + 1) + 8 * i) collection];
        momentNodes = [collection momentNodes];
        v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
        v23[0] = v9;
        v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
        v23[1] = v10;
        v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
        v23[2] = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];

        v13 = [momentNodes sortedArrayUsingDescriptors:v12];
        [v17 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v17;
}

- (PGGraphLocationCountryNodeCollection)supersetCountryNodes
{
  [(PGGraph *)self _checkCanRead];
  os_unfair_lock_lock(&self->_supersetLock);
  supersetCountryNodes = self->_supersetCountryNodes;
  if (!supersetCountryNodes)
  {
    v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
    addressNodes = [v4 addressNodes];
    countryNodes = [addressNodes countryNodes];
    v7 = self->_supersetCountryNodes;
    self->_supersetCountryNodes = countryNodes;

    supersetCountryNodes = self->_supersetCountryNodes;
  }

  v8 = supersetCountryNodes;
  os_unfair_lock_unlock(&self->_supersetLock);

  return v8;
}

- (PGGraphLocationStateNodeCollection)supersetStateNodes
{
  [(PGGraph *)self _checkCanRead];
  os_unfair_lock_lock(&self->_supersetLock);
  supersetStateNodes = self->_supersetStateNodes;
  if (!supersetStateNodes)
  {
    v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
    addressNodes = [v4 addressNodes];
    stateNodes = [addressNodes stateNodes];
    v7 = self->_supersetStateNodes;
    self->_supersetStateNodes = stateNodes;

    supersetStateNodes = self->_supersetStateNodes;
  }

  v8 = supersetStateNodes;
  os_unfair_lock_unlock(&self->_supersetLock);

  return v8;
}

- (PGGraphLocationCountyNodeCollection)supersetCountyNodes
{
  [(PGGraph *)self _checkCanRead];
  os_unfair_lock_lock(&self->_supersetLock);
  supersetCountyNodes = self->_supersetCountyNodes;
  if (!supersetCountyNodes)
  {
    v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
    addressNodes = [v4 addressNodes];
    countyNodes = [addressNodes countyNodes];
    v7 = self->_supersetCountyNodes;
    self->_supersetCountyNodes = countyNodes;

    supersetCountyNodes = self->_supersetCountyNodes;
  }

  v8 = supersetCountyNodes;
  os_unfair_lock_unlock(&self->_supersetLock);

  return v8;
}

- (PGGraphLocationCityNodeCollection)supersetCityNodes
{
  [(PGGraph *)self _checkCanRead];
  os_unfair_lock_lock(&self->_supersetLock);
  supersetCityNodes = self->_supersetCityNodes;
  if (!supersetCityNodes)
  {
    v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
    addressNodes = [v4 addressNodes];
    cityNodes = [addressNodes cityNodes];
    v7 = self->_supersetCityNodes;
    self->_supersetCityNodes = cityNodes;

    supersetCityNodes = self->_supersetCityNodes;
  }

  v8 = supersetCityNodes;
  os_unfair_lock_unlock(&self->_supersetLock);

  return v8;
}

- (NSSet)supersets
{
  [(PGGraph *)self _checkCanRead];
  v3 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
  temporarySet = [v3 temporarySet];

  return temporarySet;
}

- (BOOL)singlePersonBelongsToSocialGroupOfMaxSize:(id)size groups:(id)groups maxSize:(unint64_t)maxSize
{
  v27 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v8 = MEMORY[0x277CBEB98];
  v9 = [size objectForKeyedSubscript:@"personNodes"];
  v10 = [v8 setWithArray:v9];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = groupsCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = MEMORY[0x277CBEB98];
        v17 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:{@"personNodes", v22}];
        v18 = [v16 setWithArray:v17];

        if ([v18 count] <= maxSize && objc_msgSend(v10, "isSubsetOfSet:", v18))
        {

          v19 = 1;
          goto LABEL_12;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)singlePersonGroupIsInSocialGroups:(id)groups groups:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CBEB98];
  v7 = [groups objectForKeyedSubscript:@"personNodes"];
  v8 = [v6 setWithArray:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = MEMORY[0x277CBEB98];
        v15 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:{@"personNodes", v20}];
        v16 = [v14 setWithArray:v15];

        LOBYTE(v15) = [v16 isEqualToSet:v8];
        if (v15)
        {
          v17 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (double)longevity:(id)longevity
{
  longevityCopy = longevity;
  if ([longevityCopy count])
  {
    v4 = [longevityCopy sortedArrayUsingComparator:&__block_literal_global_352_54206];
    v5 = 0.0;
    if ([v4 count] >= 2)
    {
      v6 = [v4 objectAtIndexedSubscript:0];
      universalStartDate = [v6 universalStartDate];
      [universalStartDate timeIntervalSince1970];
      v9 = v8;
      lastObject = [v4 lastObject];
      universalStartDate2 = [lastObject universalStartDate];
      [universalStartDate2 timeIntervalSince1970];
      v5 = v9 - v12;
    }
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

uint64_t __33__PGGraph_Processing__longevity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 universalStartDate];
  v6 = [v4 universalEndDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (float)recencyFeature:(double)feature
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v6 = v5;

  date2 = [MEMORY[0x277CBEAA8] date];
  v8 = [date2 dateByAddingTimeInterval:-157680000.0];

  [v8 timeIntervalSince1970];
  *&feature = (feature - v9) / (v6 - v9);

  return *&feature;
}

- (double)averageTopMomentTimes:(id)times numberOfMoments:(unint64_t)moments
{
  timesCopy = times;
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [date dateByAddingTimeInterval:-315360000.0];

  [v7 timeIntervalSince1970];
  v9 = v8;
  v10 = [timesCopy sortedArrayUsingComparator:&__block_literal_global_350];
  v11 = [timesCopy count];
  if (v11 >= moments)
  {
    momentsCopy = moments;
  }

  else
  {
    momentsCopy = v11;
  }

  if (momentsCopy)
  {
    v13 = 0;
    v14 = 0.0;
    do
    {
      v15 = [v10 objectAtIndexedSubscript:v13];
      universalStartDate = [v15 universalStartDate];
      [universalStartDate timeIntervalSince1970];
      v14 = v14 + v17;

      ++v13;
    }

    while (momentsCopy != v13);
    v18 = v14 / momentsCopy;
  }

  else
  {
    v18 = 0.0;
  }

  if (v18 >= v9)
  {
    v9 = v18;
  }

  return v9;
}

uint64_t __61__PGGraph_Processing__averageTopMomentTimes_numberOfMoments___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 universalStartDate];
  v6 = [v4 universalEndDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (float)normalizeFeatureValue:(float)value average:(float)average featureValues:(id)values factor:(float)factor
{
  valuesCopy = values;
  if ([valuesCopy count])
  {
    lastObject = [valuesCopy lastObject];
    [lastObject floatValue];
    v12 = v11;

    v13 = -1.0;
    if (v12 <= value)
    {
      v14 = [valuesCopy objectAtIndexedSubscript:0];
      [v14 floatValue];
      v16 = v15;

      v13 = 1.0;
      if (v16 >= value)
      {
        if (value < average)
        {
          v17 = value - average;
          lastObject2 = [valuesCopy lastObject];
          [lastObject2 floatValue];
          v20 = average - v19;
LABEL_9:
          v13 = (v17 / v20) * factor;

          goto LABEL_10;
        }

        v21 = [valuesCopy objectAtIndexedSubscript:0];
        [v21 floatValue];
        v23 = v22;

        v13 = 0.0;
        if (v23 != average)
        {
          v17 = value - average;
          lastObject2 = [valuesCopy objectAtIndexedSubscript:0];
          [lastObject2 floatValue];
          v20 = v24 - average;
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v13 = -0.1;
  }

LABEL_10:

  return v13;
}

void __151__PGGraph_Processing__enumerateSocialGroupsIncludingMeNode_socialGroupsVersion_simulateMeNodeNotSet_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, float a5, float a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = v13;
  ++*(*(*(a1 + 80) + 8) + 24);
  *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24) + a5;
  v15 = *(*(a1 + 96) + 8);
  if (*(v15 + 24) == 0.0)
  {
    *(v15 + 24) = a5;
  }

  v16 = *(a1 + 104);
  if (v16 == 1)
  {
    v17 = *(a1 + 32);
    v18 = MEMORY[0x277CCABB0];
    *&v19 = [v13 count];
    v20 = [v18 numberWithFloat:v19];
    [v17 addObject:v20];

    v21 = *(a1 + 40);
    *&v22 = a6;
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    [v21 addObject:v23];

    v16 = *(a1 + 104);
  }

  if (v16)
  {
    if (![v11 count])
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v25 = [MEMORY[0x277CBEB98] setWithArray:v11];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v26 = *(a1 + 48);
  v27 = [v26 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v49;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(v26);
        }

        if ([v25 isSubsetOfSet:*(*(&v48 + 1) + 8 * i)])
        {

          v31 = 1;
          goto LABEL_18;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 48) addObject:v25];
  v31 = 0;
LABEL_18:

  if (*(a1 + 104) || [v11 count] != 1)
  {
LABEL_31:
    if ([v11 count])
    {
      if (!v31)
      {
LABEL_35:
        v37 = 0;
        goto LABEL_36;
      }

      if (*(a1 + 72))
      {
        v37 = 1;
LABEL_36:
        v38 = *(a1 + 64);
        v52[0] = @"personNodes";
        v52[1] = @"peopleWeights";
        v53[0] = v11;
        v53[1] = v12;
        v53[2] = v14;
        v52[2] = @"momentNodes";
        v52[3] = @"frequency";
        *&v24 = a5;
        v32 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
        v53[3] = v32;
        v52[4] = @"longevity";
        *&v39 = a6;
        v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
        v53[4] = v40;
        v52[5] = @"isSubset";
        v41 = [MEMORY[0x277CCABB0] numberWithBool:v37];
        v53[5] = v41;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:6];
        [v38 addObject:v42];

LABEL_37:
      }
    }
  }

  else if ([*(a1 + 56) count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v32 = v14;
    v33 = [v32 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v45;
      while (2)
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(v32);
          }

          if ([*(a1 + 56) containsNode:{*(*(&v44 + 1) + 8 * j), v44}])
          {

            goto LABEL_31;
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_37;
  }

LABEL_38:

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __151__PGGraph_Processing__enumerateSocialGroupsIncludingMeNode_socialGroupsVersion_simulateMeNodeNotSet_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    if (v8 <= [v5 count])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __151__PGGraph_Processing__enumerateSocialGroupsIncludingMeNode_socialGroupsVersion_simulateMeNodeNotSet_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)enumerateSocialGroupsWithBlock:(id)block includeInvalidGroups:(BOOL)groups
{
  blockCopy = block;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__PGGraph_Processing__enumerateSocialGroupsWithBlock_includeInvalidGroups___block_invoke;
  v11[3] = &unk_2788861E0;
  v12 = blockCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__PGGraph_Processing__enumerateSocialGroupsWithBlock_includeInvalidGroups___block_invoke_2;
  v8[3] = &unk_278886208;
  groupsCopy = groups;
  v9 = v12;
  v7 = v12;
  [(PGGraph *)self enumerateSocialGroupsIncludingMeNode:0 socialGroupsVersion:1 simulateMeNodeNotSet:0 validGroupsBlock:v11 invalidGroupsBlock:v8 averageWeight:0];
}

uint64_t __75__PGGraph_Processing__enumerateSocialGroupsWithBlock_includeInvalidGroups___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)relevantMomentNodesForSocialGroupProcessing
{
  v13[3] = *MEMORY[0x277D85DE8];
  meNodeCollection = [(PGGraph *)self meNodeCollection];
  if (-[PGGraph isSharedLibraryEnabled](self, "isSharedLibraryEnabled") && [meNodeCollection count])
  {
    momentNodesWithPresence = [meNodeCollection momentNodesWithPresence];
  }

  else
  {
    momentNodesWithPresence = [(PGGraph *)self momentNodes];
  }

  v5 = momentNodesWithPresence;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v6}];
  v13[1] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];

  v10 = [v5 sortedArrayUsingDescriptors:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (double)momentsCountDistance:(id)distance withSecondBaseGroup:(id)group withSubsetBias:(double)bias withDistanceThreshold:(double)threshold withIntersectionBias:(double)intersectionBias withKey:(id)key
{
  keyCopy = key;
  groupCopy = group;
  distanceCopy = distance;
  v16 = [groupCopy objectForKeyedSubscript:@"personNodes"];
  v17 = [distanceCopy objectForKeyedSubscript:@"personNodes"];
  v18 = [MEMORY[0x277CBEB58] setWithSet:v16];
  [v18 intersectSet:v17];
  v19 = [groupCopy objectForKeyedSubscript:keyCopy];

  v20 = [distanceCopy objectForKeyedSubscript:keyCopy];

  v21 = [v19 count];
  v22 = [v20 count];
  if (([v16 isSubsetOfSet:v17] & 1) != 0 || objc_msgSend(v17, "isSubsetOfSet:", v16))
  {
    v23 = [v16 isSubsetOfSet:v17];
    v24 = v21 + v22;
    v25 = v22 / v24 + bias;
    if (v23)
    {
      v25 = v21 / v24 + bias;
    }
  }

  else
  {
    v26 = v22 - v21;
    if (v21 >= v22)
    {
      v26 = v21 - v22;
    }

    if (v21 <= v22)
    {
      v27 = v22;
    }

    else
    {
      v27 = v21;
    }

    v25 = threshold - intersectionBias + v26 / v27;
  }

  v28 = v25 - threshold;

  return v28;
}

- (double)peopleDistance:(id)distance withSecondBaseGroup:(id)group threshold:(double)threshold factor:(double)factor
{
  distanceCopy = distance;
  v10 = [group objectForKeyedSubscript:@"personNodes"];
  v11 = [distanceCopy objectForKeyedSubscript:@"personNodes"];

  v12 = [MEMORY[0x277CBEB58] setWithSet:v10];
  [v12 intersectSet:v11];
  v13 = [v10 count];
  v14 = [v11 count];
  v15 = [v12 count];
  v16 = -(threshold - ((v14 - v15) / v14 + (v13 - v15) / v13) * factor);

  return v16;
}

- (void)enumeratePeopleClustersWithLinkage:(unint64_t)linkage threshold:(double)threshold includingMeNode:(BOOL)node socialGroupsVersion:(unint64_t)version singlePersonGroups:(id *)groups withBlock:(id)block
{
  nodeCopy = node;
  v277 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  [(PGGraph *)self _checkCanRead];
  v11 = MEMORY[0x277D86220];
  v12 = MEMORY[0x277D86220];
  v13 = os_signpost_id_generate(v11);
  v14 = v11;
  spid = v13;
  v205 = (v13 - 1);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v13, "BaseGroupsCreation", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v195 = mach_absolute_time();
  v15 = MEMORY[0x277D86220];
  v16 = MEMORY[0x277D86220];
  v17 = os_signpost_id_generate(v15);
  v18 = v15;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v17, "GatherExclusiveMoments", "", buf, 2u);
  }

  v254 = 0;
  mach_timebase_info(&v254);
  v19 = mach_absolute_time();
  v197 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
  relevantMomentNodesForSocialGroupProcessing = [(PGGraph *)selfCopy relevantMomentNodesForSocialGroupProcessing];
  v177 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:relevantMomentNodesForSocialGroupProcessing graph:selfCopy];
  *buf = 0;
  v251 = buf;
  v252 = 0x2020000000;
  v253 = 0;
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (nodeCopy)
  {
    +[PGGraphMomentNode personInMoment];
  }

  else
  {
    +[PGGraphMomentNode personExcludingMeInMoment];
  }
  v176 = ;
  v21 = MEMORY[0x277D22BF8];
  v22 = objc_opt_self();
  v23 = [v21 adjacencyWithSources:v177 relation:v176 targetsClass:v22];

  v246[0] = MEMORY[0x277D85DD0];
  v246[1] = 3221225472;
  v246[2] = __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke;
  v246[3] = &unk_278886190;
  v171 = v23;
  v247 = v171;
  v24 = v20;
  v248 = v24;
  v249 = buf;
  [relevantMomentNodesForSocialGroupProcessing enumerateObjectsUsingBlock:v246];
  v25 = mach_absolute_time();
  numer = v254.numer;
  denom = v254.denom;
  v28 = MEMORY[0x277D86220];
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v273 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v17, "GatherExclusiveMoments", "", v273, 2u);
  }

  v29 = MEMORY[0x277D86220];
  v30 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *v273 = 136315394;
    v274 = "GatherExclusiveMoments";
    v275 = 2048;
    v276 = ((((v25 - v19) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v273, 0x16u);
  }

  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  obj = v24;
  v31 = [obj countByEnumeratingWithState:&v242 objects:v272 count:16];
  if (!v31)
  {
    v46 = 0.0;
    goto LABEL_33;
  }

  v32 = 0;
  v33 = *v243;
  do
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v243 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v242 + 1) + 8 * i);
      v36 = [obj objectForKeyedSubscript:v35];
      v37 = v36;
      if (version != 1)
      {
        relationshipEdges = [v35 relationshipEdges];
        labels = [relationshipEdges labels];

        v44 = [v37 count];
        v267[0] = v37;
        v266[0] = @"momentNodes";
        v266[1] = @"personNodes";
        temporarySet = [v35 temporarySet];
        v266[2] = @"relationships";
        v267[1] = temporarySet;
        v267[2] = labels;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v267 forKeys:v266 count:3];
        [v197 addObject:v45];

        v32 += v44;
        goto LABEL_28;
      }

      if ([v36 count] && objc_msgSend(v35, "count"))
      {
        v38 = [v37 count];
        v271[0] = v37;
        v270[0] = @"momentNodes";
        v270[1] = @"personNodes";
        temporarySet2 = [v35 temporarySet];
        v271[1] = temporarySet2;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v271 forKeys:v270 count:2];
        [v197 addObject:v40];

        v32 += v38;
      }

      if ([v35 count] == 1 && objc_msgSend(v37, "count"))
      {
        v269[0] = v37;
        v268[0] = @"momentNodes";
        v268[1] = @"personNodes";
        labels = [v35 temporarySet];
        v269[1] = labels;
        temporarySet = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v269 forKeys:v268 count:2];
        [v193 addObject:temporarySet];
LABEL_28:
      }
    }

    v31 = [obj countByEnumeratingWithState:&v242 objects:v272 count:16];
  }

  while (v31);
  v46 = v32;
LABEL_33:
  v167 = v46;

  v47 = mach_absolute_time();
  v48 = info.numer;
  v49 = info.denom;
  v50 = MEMORY[0x277D86220];
  if (v205 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v273 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, spid, "BaseGroupsCreation", "", v273, 2u);
  }

  v51 = MEMORY[0x277D86220];
  v52 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *v273 = 136315394;
    v274 = "BaseGroupsCreation";
    v275 = 2048;
    v276 = ((((v47 - v195) * v48) / v49) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v273, 0x16u);
  }

  if (groups)
  {
    v53 = v193;
    *groups = v193;
  }

  v54 = v51;
  v55 = os_signpost_id_generate(v51);
  v56 = v51;
  if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v273 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v55, "BaseGroupsClustering", "", v273, 2u);
  }

  v241 = 0;
  mach_timebase_info(&v241);
  v57 = mach_absolute_time();
  v175 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personNodes" ascending:1 comparator:&__block_literal_global_54246];
  v178 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"momentNodes" ascending:0 comparator:&__block_literal_global_300];
  if (version == 1)
  {
    v265[0] = v175;
    v265[1] = v178;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v265 count:2];
    [v197 sortUsingDescriptors:v58];
  }

  else
  {
    v58 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"momentNodes" ascending:0 comparator:&__block_literal_global_303];
    v264[0] = v175;
    v264[1] = v58;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v264 count:2];
    [v197 sortUsingDescriptors:v59];
  }

  v60 = objc_alloc(MEMORY[0x277D3AC88]);
  v240[0] = MEMORY[0x277D85DD0];
  v240[1] = 3221225472;
  v240[2] = __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_4;
  v240[3] = &unk_2788861B8;
  v240[5] = version;
  v240[4] = selfCopy;
  v61 = [v60 initWithDistanceBlock:v240];
  [v61 setK:1];
  [v61 setLinkage:linkage];
  [v61 setThreshold:threshold];
  if (version == 1)
  {
    if ([v61 linkage] == 5)
    {
      [v61 setClusterKeyElementBlock:&__block_literal_global_309];
    }

    if ([v61 linkage] == 4)
    {
      [v61 setClusterConsolidationBlock:&__block_literal_global_312];
    }
  }

  v170 = v61;
  v62 = [v61 performWithDataset:v197 progressBlock:0];
  v63 = [v62 sortedArrayUsingComparator:&__block_literal_global_315];

  v64 = mach_absolute_time();
  v65 = v241.numer;
  v66 = v241.denom;
  v67 = MEMORY[0x277D86220];
  if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v273 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v55, "BaseGroupsClustering", "", v273, 2u);
  }

  v68 = MEMORY[0x277D86220];
  v69 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    *v273 = 136315394;
    v274 = "BaseGroupsClustering";
    v275 = 2048;
    v276 = ((((v64 - v57) * v65) / v66) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v273, 0x16u);
  }

  v70 = v68;
  v71 = os_signpost_id_generate(v68);
  v72 = v68;
  v168 = v71;
  v169 = v71 - 1;
  if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v273 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v71, "ClusterConsolidation", "", v273, 2u);
  }

  v239 = 0;
  mach_timebase_info(&v239);
  v164 = mach_absolute_time();
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v174 = v63;
  v73 = [v174 countByEnumeratingWithState:&v235 objects:v263 count:16];
  if (v73)
  {
    v74 = *v236;
    v165 = *v236;
    do
    {
      v179 = 0;
      v166 = v73;
      do
      {
        if (*v236 != v74)
        {
          objc_enumerationMutation(v174);
        }

        v75 = *(*(&v235 + 1) + 8 * v179);
        context = objc_autoreleasePoolPush();
        objects = [v75 objects];
        v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v183 = v76;
        if (version == 1)
        {
          v184 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personNodes" ascending:1 comparator:&__block_literal_global_322];
          v196 = [MEMORY[0x277CBEB18] arrayWithArray:objects];
          v262[0] = v184;
          v262[1] = v178;
          v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v262 count:2];
          [v196 sortUsingDescriptors:v78];

          v163 = [v196 objectAtIndexedSubscript:0];
          v162 = [v163 objectForKeyedSubscript:@"personNodes"];
          if ([v162 count] > 3)
          {
            v182 = 3;
            v80 = 0.05;
            v81 = 0.3;
            v79 = 0.8;
          }

          else
          {
            v79 = 1.0;
            v80 = 0.0;
            v182 = 1;
            v81 = 0.0;
          }

          v185 = 0;
          v99 = 0;
LABEL_91:
          if (((v185 < [v196 count]) & (v99 ^ 1)) != 0)
          {
            v100 = [v196 objectAtIndexedSubscript:?];
            v101 = [v100 objectForKeyedSubscript:@"personNodes"];
            v192 = v100;
            v102 = [v100 objectForKeyedSubscript:@"momentNodes"];
            v210 = [v102 count];
            v186 = v102;
            v188 = [MEMORY[0x277CBEB18] arrayWithArray:v102];
            v103 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v233 = 0u;
            v234 = 0u;
            v231 = 0u;
            v232 = 0u;
            v207 = v101;
            v104 = [v207 countByEnumeratingWithState:&v231 objects:v261 count:16];
            if (v104)
            {
              v105 = *v232;
              do
              {
                for (j = 0; j != v104; ++j)
                {
                  if (*v232 != v105)
                  {
                    objc_enumerationMutation(v207);
                  }

                  v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v231 + 1) + 8 * j), "identifier")}];
                  v108 = [v103 objectForKeyedSubscript:v107];
                  unsignedIntegerValue = [v108 unsignedIntegerValue];

                  v210 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + v210];
                  [v103 setObject:v210 forKeyedSubscript:v107];
                }

                v104 = [v207 countByEnumeratingWithState:&v231 objects:v261 count:16];
              }

              while (v104);
            }

            spida = ++v185;
            v191 = [v186 count];
            v187 = v191;
            while (1)
            {
              if (spida >= [v196 count])
              {
LABEL_116:
                if (v191)
                {
                  v123 = v187 / v191;
                  v124 = v210 / v191;
                }

                else
                {
                  v123 = 0.0;
                  v124 = 0.0;
                }

                [(PGGraph *)selfCopy longevity:v186];
                if (v123 < v81 || v124 < v80)
                {
                  v99 = 0;
                }

                else
                {
                  v99 = 0;
                  if (v210 >= v182)
                  {
                    v127 = v125 / 31536000.0;
                    if (v127 >= 0.083333)
                    {
                      v128 = v103;

                      v129 = v188;
                      v99 = 1;
                      v77 = v128;
                      v183 = v129;
                    }
                  }
                }

                goto LABEL_91;
              }

              v111 = [v196 objectAtIndexedSubscript:?];
              v202 = [v111 objectForKeyedSubscript:@"personNodes"];
              v112 = [v111 objectForKeyedSubscript:@"momentNodes"];
              v194 = v111;
              if ([v202 isSubsetOfSet:v207])
              {
                [(PGGraph *)selfCopy peopleDistance:v192 withSecondBaseGroup:v111 threshold:0.0 factor:1.0];
                if (v113 > v79)
                {
                  v122 = 0;
                  goto LABEL_115;
                }

                if (v113 <= 0.6)
                {
                  v187 += [v112 count];
                }

                v189 = [v112 count];
                [v188 addObjectsFromArray:v112];
                v229 = 0u;
                v230 = 0u;
                v227 = 0u;
                v228 = 0u;
                v114 = v202;
                v115 = [v114 countByEnumeratingWithState:&v227 objects:v260 count:16];
                if (v115)
                {
                  v116 = *v228;
                  do
                  {
                    for (k = 0; k != v115; ++k)
                    {
                      if (*v228 != v116)
                      {
                        objc_enumerationMutation(v114);
                      }

                      v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v227 + 1) + 8 * k), "identifier")}];
                      v119 = [v103 objectForKeyedSubscript:v118];
                      unsignedIntegerValue2 = [v119 unsignedIntegerValue];

                      v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v112, "count") + unsignedIntegerValue2}];
                      [v103 setObject:v121 forKeyedSubscript:v118];
                    }

                    v115 = [v114 countByEnumeratingWithState:&v227 objects:v260 count:16];
                  }

                  while (v115);
                }

                v191 += v189;
              }

              v122 = 1;
LABEL_115:

              ++spida;
              if ((v122 & 1) == 0)
              {
                goto LABEL_116;
              }
            }
          }
        }

        else
        {
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v82 = [objects valueForKey:@"momentNodes"];
          v83 = [v82 countByEnumeratingWithState:&v223 objects:v259 count:16];
          if (v83)
          {
            v84 = *v224;
            do
            {
              for (m = 0; m != v83; ++m)
              {
                if (*v224 != v84)
                {
                  objc_enumerationMutation(v82);
                }

                [v76 addObjectsFromArray:*(*(&v223 + 1) + 8 * m)];
              }

              v83 = [v82 countByEnumeratingWithState:&v223 objects:v259 count:16];
            }

            while (v83);
          }

          v221 = 0u;
          v222 = 0u;
          v219 = 0u;
          v220 = 0u;
          v184 = objects;
          v86 = [v184 countByEnumeratingWithState:&v219 objects:v258 count:16];
          if (v86)
          {
            v201 = *v220;
            do
            {
              v87 = 0;
              v206 = v86;
              do
              {
                if (*v220 != v201)
                {
                  objc_enumerationMutation(v184);
                }

                v209 = v87;
                v88 = *(*(&v219 + 1) + 8 * v87);
                v215 = 0u;
                v216 = 0u;
                v217 = 0u;
                v218 = 0u;
                v89 = [v88 objectForKeyedSubscript:@"personNodes"];
                v90 = [v89 countByEnumeratingWithState:&v215 objects:v257 count:16];
                if (v90)
                {
                  v91 = *v216;
                  do
                  {
                    for (n = 0; n != v90; ++n)
                    {
                      if (*v216 != v91)
                      {
                        objc_enumerationMutation(v89);
                      }

                      v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v215 + 1) + 8 * n), "identifier")}];
                      v94 = [v77 objectForKeyedSubscript:v93];
                      unsignedIntegerValue3 = [v94 unsignedIntegerValue];

                      v96 = MEMORY[0x277CCABB0];
                      v97 = [v88 objectForKeyedSubscript:@"momentNodes"];
                      v98 = [v96 numberWithUnsignedInteger:{objc_msgSend(v97, "count") + unsignedIntegerValue3}];
                      [v77 setObject:v98 forKeyedSubscript:v93];
                    }

                    v90 = [v89 countByEnumeratingWithState:&v215 objects:v257 count:16];
                  }

                  while (v90);
                }

                v87 = v209 + 1;
              }

              while ((v209 + 1) != v206);
              v86 = [v184 countByEnumeratingWithState:&v219 objects:v258 count:16];
            }

            while (v86);
          }
        }

        if (![v183 count])
        {
          goto LABEL_135;
        }

        if (version == 1)
        {
          [(PGGraph *)selfCopy longevity:v183];
          v131 = v130 / 31536000.0;
        }

        else
        {
          v131 = 0.0;
          if (!version && [v183 count] < 3)
          {
LABEL_135:
            v132 = 5;
            goto LABEL_161;
          }
        }

        v133 = [v77 keysSortedByValueUsingComparator:&__block_literal_global_327];
        v134 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v135 = objc_alloc_init(MEMORY[0x277CBEB18]);
        firstObject = [v133 firstObject];
        v137 = [v77 objectForKeyedSubscript:firstObject];
        [v137 floatValue];
        v139 = v138;

        v213 = 0u;
        v214 = 0u;
        v211 = 0u;
        v212 = 0u;
        v140 = v133;
        v141 = [v140 countByEnumeratingWithState:&v211 objects:v256 count:16];
        if (!v141)
        {
          goto LABEL_151;
        }

        v142 = *v212;
        while (2)
        {
          for (ii = 0; ii != v141; ++ii)
          {
            if (*v212 != v142)
            {
              objc_enumerationMutation(v140);
            }

            v144 = *(*(&v211 + 1) + 8 * ii);
            if (v139 <= 0.0)
            {
              v148 = 0.0;
              if (version != 1)
              {
                goto LABEL_153;
              }
            }

            else
            {
              v145 = [v77 objectForKeyedSubscript:*(*(&v211 + 1) + 8 * ii)];
              [v145 floatValue];
              v147 = v146;

              v148 = (v147 / v139);
              if (version != 1)
              {
                if (v148 < 0.35)
                {
LABEL_153:

                  v151 = v183;
                  goto LABEL_159;
                }

                goto LABEL_149;
              }

              if (v148 >= 0.35)
              {
                goto LABEL_149;
              }
            }

            if ([v77 count] != 1)
            {

              v151 = v183;
              goto LABEL_155;
            }

LABEL_149:
            v149 = -[MAGraph nodeForIdentifier:](selfCopy, "nodeForIdentifier:", [v144 unsignedIntegerValue]);
            [v134 addObject:v149];

            v150 = [MEMORY[0x277CCABB0] numberWithDouble:v148];
            [v135 addObject:v150];
          }

          v141 = [v140 countByEnumeratingWithState:&v211 objects:v256 count:16];
          if (v141)
          {
            continue;
          }

          break;
        }

LABEL_151:

        v151 = v183;
        if (version == 1)
        {
LABEL_155:
          if ([v134 count] == 1)
          {
            v152 = [v134 objectAtIndexedSubscript:0];
            v153 = [v152 numberOfMomentNodes] > 1;

            v151 = v183;
            if (v153)
            {
              goto LABEL_159;
            }
          }

          else if ([v151 count] >= 2)
          {
            goto LABEL_159;
          }

          v132 = 5;
        }

        else
        {
LABEL_159:
          v154 = [v151 count];
          v273[0] = 0;
          blockCopy[2](blockCopy, v134, v135, v151, v273, v154 / v167, v131);
          v132 = v273[0];
        }

LABEL_161:
        objc_autoreleasePoolPop(context);
        v74 = v165;
        if (v132 != 5 && v132)
        {
          v159 = v174;
          goto LABEL_170;
        }

        ++v179;
      }

      while (v179 != v166);
      v73 = [v174 countByEnumeratingWithState:&v235 objects:v263 count:16];
    }

    while (v73);
  }

  v155 = mach_absolute_time();
  v156 = v239.numer;
  v157 = v239.denom;
  v158 = MEMORY[0x277D86220];
  if (v169 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v273 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v168, "ClusterConsolidation", "", v273, 2u);
  }

  v159 = MEMORY[0x277D86220];
  v160 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
  {
    *v273 = 136315394;
    v274 = "ClusterConsolidation";
    v275 = 2048;
    v276 = ((((v155 - v164) * v156) / v157) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v159, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v273, 0x16u);
  }

LABEL_170:

  _Block_object_dispose(buf, 8);
  v161 = *MEMORY[0x277D85DE8];
}

void __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v10 = a2;
  v6 = [*(a1 + 32) targetsForSourceIdentifier:{objc_msgSend(v10, "identifier")}];
  if ([v6 count])
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [*(a1 + 40) objectForKeyedSubscript:v6];
      [v8 addObject:v10];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v6];

      ++*(*(*(a1 + 48) + 8) + 24);
    }

    *a4 = *(*(*(a1 + 48) + 8) + 24) > 0x3E8uLL;
  }
}

double __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"personNodes"];
  v8 = [v5 objectForKeyedSubscript:@"personNodes"];
  if (*(a1 + 40) == 1)
  {
    if (([v7 isSubsetOfSet:v8] & 1) != 0 || (v9 = 3.0, objc_msgSend(v8, "isSubsetOfSet:", v7)))
    {
      [*(a1 + 32) peopleDistance:v5 withSecondBaseGroup:v6 threshold:0.28 factor:0.5];
      v11 = v10 + 0.0;
      [*(a1 + 32) momentsCountDistance:v5 withSecondBaseGroup:v6 withSubsetBias:@"momentNodes" withDistanceThreshold:0.0 withIntersectionBias:0.66 withKey:0.2];
      v9 = v11 + v12;
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [v5 objectForKeyedSubscript:@"relationships"];
    v15 = [v13 _cluePeopleForRelationships:v14];

    v16 = *(a1 + 32);
    v17 = [v6 objectForKeyedSubscript:@"relationships"];
    v18 = [v16 _cluePeopleForRelationships:v17];

    if (v18 | v15)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 0.33;
    }

    v19 = [MEMORY[0x277CBEB58] setWithSet:v7];
    [v19 unionSet:v8];
    v20 = [v19 count];
    if (v20)
    {
      v21 = v20;
      v22 = [MEMORY[0x277CBEB58] setWithSet:v7];
      [v22 intersectSet:v8];
      v23 = v19;
      [v23 minusSet:v22];
      v9 = v9 + ((v21 + 1) / (v21 + 1 - [v23 count]) + -1.0) / v21;
    }

    else
    {
      v23 = 0;
    }
  }

  return v9;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_320(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    if (v8 <= [v5 count])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objects];
  v6 = [v5 valueForKeyPath:@"@sum.momentNodes.@count"];

  v7 = [v4 objects];

  v8 = [v7 valueForKeyPath:@"@sum.momentNodes.@count"];

  v9 = [v8 compare:v6];
  return v9;
}

id __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = a5;
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (a4)
  {
    v9 = 0;
    do
    {
      v10 = [v21 objectAtIndexedSubscript:*(*(a2 + 8 * a3) + 8 * v9)];
      v11 = [v10 objectForKeyedSubscript:@"momentNodes"];
      [v7 addObjectsFromArray:v11];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = [v10 objectForKeyedSubscript:@"personNodes"];
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v8 addObject:*(*(&v22 + 1) + 8 * i)];
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }

      ++v9;
    }

    while (v9 != a4);
  }

  [v19 setObject:v8 forKeyedSubscript:@"personNodes"];
  [v19 setObject:v7 forKeyedSubscript:@"momentNodes"];

  v17 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a2 + 8 * a3);
  if (a4)
  {
    v8 = 0;
    v9 = 0;
    for (i = 0; i != a4; ++i)
    {
      v11 = [a5 objectAtIndexedSubscript:*(v5 + 8 * i)];
      v12 = [v11 objectForKeyedSubscript:@"personNodes"];
      if ([v12 count] > v8)
      {
        v8 = [v12 count];
        v9 = i;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return *(v5 + 8 * v9);
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 firstObject];
  v6 = [v5 universalStartDate];
  v7 = [v4 firstObject];

  v8 = [v7 universalEndDate];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_296(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)invalidateSupersetCaches
{
  os_unfair_lock_lock(&self->_supersetLock);
  supersetCityNodes = self->_supersetCityNodes;
  self->_supersetCityNodes = 0;

  supersetCountyNodes = self->_supersetCountyNodes;
  self->_supersetCountyNodes = 0;

  supersetStateNodes = self->_supersetStateNodes;
  self->_supersetStateNodes = 0;

  supersetCountryNodes = self->_supersetCountryNodes;
  self->_supersetCountryNodes = 0;

  os_unfair_lock_unlock(&self->_supersetLock);
}

- (void)invalidateProcessingCaches
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  zeroKeywordMappingByMeaningLabel = selfCopy->_zeroKeywordMappingByMeaningLabel;
  selfCopy->_zeroKeywordMappingByMeaningLabel = 0;

  objc_sync_exit(selfCopy);
  interestingCityNodes = selfCopy->_interestingCityNodes;
  selfCopy->_interestingCityNodes = 0;
}

+ (id)_personClosestToMeBetweenPersonNode:(id)node andOtherPersonNode:(id)personNode
{
  v29[5] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  personNodeCopy = personNode;
  graph = [nodeCopy graph];
  v8 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];
  anyNode = [v8 anyNode];

  v10 = [nodeCopy anyEdgeFromNode:anyNode];
  label = [v10 label];

  v12 = [personNodeCopy anyEdgeFromNode:anyNode];
  label2 = [v12 label];

  v29[0] = @"PARTNER";
  v29[1] = @"FAMILY";
  v29[2] = @"FRIEND";
  v29[3] = @"COWORKER";
  v29[4] = @"ACQUAINTANCE";
  [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v27 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v15)
  {
    v20 = 0;
    goto LABEL_15;
  }

  v16 = v15;
  v17 = *v25;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v24 + 1) + 8 * i);
      if ([label isEqualToString:{v19, v24}])
      {
        v21 = nodeCopy;
LABEL_14:
        v20 = v21;
        goto LABEL_15;
      }

      if ([label2 isEqualToString:v19])
      {
        v21 = personNodeCopy;
        goto LABEL_14;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    v20 = 0;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_closestRelationshipEdgeLabelForPersonNode:(id)node andOtherPersonNode:(id)personNode
{
  nodeCopy = node;
  personNodeCopy = personNode;
  graph = [nodeCopy graph];
  v8 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];
  anyNode = [v8 anyNode];

  v10 = [objc_opt_class() _personClosestToMeBetweenPersonNode:nodeCopy andOtherPersonNode:personNodeCopy];
  if (v10)
  {
    if ([nodeCopy isSameNodeAsNode:v10])
    {
      v11 = personNodeCopy;
    }

    else
    {
      v11 = nodeCopy;
    }

    v12 = v11;
    v13 = [v10 anyEdgeFromNode:anyNode];
    label = [v13 label];

    v15 = [v12 anyEdgeFromNode:anyNode];

    label2 = [v15 label];

    v17 = @"ACQUAINTANCE";
    if ([label isEqualToString:@"PARTNER"] && !-[__CFString isEqualToString:](label2, "isEqualToString:", @"COWORKER"))
    {
      v17 = label2;
    }

    v14Label = v17;
  }

  else
  {
    label = [nodeCopy anyEdgeFromNode:anyNode];
    v14Label = [label label];
  }

  return v14Label;
}

- (void)_enumerateMeaningfulEventsWithMeaningLabel:(id)label visitedMeaningfulEvents:(id)events usingBlock:(id)block
{
  eventsCopy = events;
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke;
  v12[3] = &unk_278886AD0;
  selfCopy = self;
  v15 = blockCopy;
  v13 = eventsCopy;
  v10 = blockCopy;
  v11 = eventsCopy;
  [(MAGraph *)self enumerateNodesWithLabel:label domain:700 usingBlock:v12];
}

void __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_2;
  v13[3] = &unk_278886A58;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = &v17;
  [v5 enumerateMeaningfulEventsUsingBlock:v13];
  if (v18[3])
  {
    v6 = 1;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_3;
    v9[3] = &unk_278886AA8;
    v8 = *(a1 + 32);
    v7 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    v11 = *(a1 + 48);
    v12 = &v17;
    [v5 enumerateSubmeaningsUsingBlock:v9];

    v6 = *(v18 + 24);
  }

  *a3 = v6;

  _Block_object_dispose(&v17, 8);
}

void __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v5 = *(*(a1 + 48) + 8);
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) addObject:v6];
    *a3 = *(*(*(a1 + 48) + 8) + 24);
  }
}

void __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 label];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_4;
  v11[3] = &unk_278886A80;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = v9;
  v13 = v10;
  v14 = a4;
  [v6 _enumerateMeaningfulEventsWithMeaningLabel:v7 visitedMeaningfulEvents:v8 usingBlock:v11];
}

uint64_t __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_4(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1[5] + 8);
  result = (*(a1[4] + 16))();
  v7 = a1[6];
  *a3 = *(*(a1[5] + 8) + 24);
  *v7 = *(*(a1[5] + 8) + 24);
  return result;
}

- (id)meaningfulEventNodeForUUID:(id)d
{
  v3 = [PGGraphMomentNodeCollection momentNodeForUUID:d inGraph:self];
  anyNode = [v3 anyNode];

  return anyNode;
}

- (id)bestMeaningLabelForMeaningfulEvent:(id)event
{
  eventCopy = event;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__56365;
  v17 = __Block_byref_object_dispose__56366;
  v18 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  availableInferredMeaningLabels = [objc_opt_class() availableInferredMeaningLabels];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PGGraph_Meaning__bestMeaningLabelForMeaningfulEvent___block_invoke;
  v8[3] = &unk_278886A30;
  v5 = availableInferredMeaningLabels;
  v9 = v5;
  v10 = v12;
  v11 = &v13;
  [eventCopy enumerateMeaningNodesUsingBlock:v8];
  v6 = v14[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

void __55__PGGraph_Meaning__bestMeaningLabelForMeaningfulEvent___block_invoke(uint64_t a1, void *a2)
{
  obj = [a2 label];
  v3 = [*(a1 + 32) indexOfObject:?];
  if (v3 < *(*(*(a1 + 40) + 8) + 24))
  {
    v4 = v3;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }
}

- (void)enumerateMomentNodesWithMeaning:(unint64_t)meaning usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__PGGraph_Meaning__enumerateMomentNodesWithMeaning_usingBlock___block_invoke;
  v8[3] = &unk_278886A08;
  v9 = blockCopy;
  v7 = blockCopy;
  [(PGGraph *)self enumerateMeaningfulEventsWithMeaning:meaning usingBlock:v8];
}

void __63__PGGraph_Meaning__enumerateMomentNodesWithMeaning_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 eventCollection];
  v6 = [v5 eventMomentNodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PGGraph_Meaning__enumerateMomentNodesWithMeaning_usingBlock___block_invoke_2;
  v7[3] = &unk_2788869E0;
  v8 = *(a1 + 32);
  v9 = a3;
  [v6 enumerateNodesUsingBlock:v7];
}

uint64_t __63__PGGraph_Meaning__enumerateMomentNodesWithMeaning_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  **(a1 + 40) = *a3;
  return result;
}

- (id)momentNodesWithMeaning:(unint64_t)meaning
{
  v5 = [MEMORY[0x277CBEB58] set];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PGGraph_Meaning__momentNodesWithMeaning___block_invoke;
  v8[3] = &unk_278889290;
  v6 = v5;
  v9 = v6;
  [(PGGraph *)self enumerateMomentNodesWithMeaning:meaning usingBlock:v8];

  return v6;
}

- (void)enumerateMeaningsFromMeaningfulEvent:(id)event usingBlock:(id)block
{
  blockCopy = block;
  v6 = MEMORY[0x277CCAB58];
  eventCopy = event;
  indexSet = [v6 indexSet];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke;
  v11[3] = &unk_2788869B8;
  v12 = indexSet;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = indexSet;
  [eventCopy enumerateMeaningNodesUsingBlock:v11];
}

void __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke_2;
  aBlock[3] = &unk_278886968;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = &v18;
  v6 = _Block_copy(aBlock);
  v7 = [v5 label];
  v6[2](v6, v7);

  if (v19[3])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 collection];
    v10 = [v9 parentMeaningNodes];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke_3;
    v11[3] = &unk_278886990;
    v12 = v6;
    v13 = &v18;
    [v10 enumerateNodesUsingBlock:v11];

    v8 = *(v19 + 24);
  }

  *a3 = v8;

  _Block_object_dispose(&v18, 8);
}

uint64_t __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  result = PGMeaningForMeaningLabel(a2);
  if (result)
  {
    v4 = result;
    result = [*(a1 + 32) containsIndex:result];
    if ((result & 1) == 0)
    {
      [*(a1 + 32) addIndex:v4];
      v5 = *(*(a1 + 40) + 16);
      v6 = *(*(a1 + 48) + 8) + 24;

      return v5();
    }
  }

  return result;
}

void __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 label];
  (*(v5 + 16))(v5, v6);

  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

- (id)meaningsFromMeaningfulEvent:(id)event
{
  v4 = MEMORY[0x277CCAB58];
  eventCopy = event;
  indexSet = [v4 indexSet];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__PGGraph_Meaning__meaningsFromMeaningfulEvent___block_invoke;
  v9[3] = &unk_27888A200;
  v7 = indexSet;
  v10 = v7;
  [(PGGraph *)self enumerateMeaningsFromMeaningfulEvent:eventCopy usingBlock:v9];

  return v7;
}

- (void)enumerateMeaningfulEventsWithMeaning:(unint64_t)meaning usingBlock:(id)block
{
  blockCopy = block;
  v6 = PGMeaningLabelForMeaning(meaning);
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [(PGGraph *)self _enumerateMeaningfulEventsWithMeaningLabel:v6 visitedMeaningfulEvents:v7 usingBlock:blockCopy];
  }
}

- (BOOL)eventIsStellar:(id)stellar
{
  stellarCopy = stellar;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stellarMeanings = [objc_opt_class() stellarMeanings];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__PGGraph_Meaning__eventIsStellar___block_invoke;
  v8[3] = &unk_278886940;
  v10 = &v11;
  v6 = stellarMeanings;
  v9 = v6;
  [(PGGraph *)self enumerateMeaningsFromMeaningfulEvent:stellarCopy usingBlock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

uint64_t __35__PGGraph_Meaning__eventIsStellar___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsIndex:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (BOOL)eventIsVeryMeaningful:(id)meaningful
{
  meaningfulCopy = meaningful;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  veryMeaningfulMeanings = [objc_opt_class() veryMeaningfulMeanings];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PGGraph_Meaning__eventIsVeryMeaningful___block_invoke;
  v8[3] = &unk_278886940;
  v10 = &v11;
  v6 = veryMeaningfulMeanings;
  v9 = v6;
  [(PGGraph *)self enumerateMeaningsFromMeaningfulEvent:meaningfulCopy usingBlock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

uint64_t __42__PGGraph_Meaning__eventIsVeryMeaningful___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsIndex:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (id)meaningfulEvents
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [objc_opt_class() availableInferredMeaningLabels];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(MAGraph *)self nodesForLabel:*(*(&v15 + 1) + 8 * i) domain:700];
        anyObject = [v8 anyObject];

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __36__PGGraph_Meaning__meaningfulEvents__block_invoke;
        v13[3] = &unk_278886918;
        v14 = v3;
        [anyObject enumerateMeaningfulEventsUsingBlock:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)availableInferredMeaningLabels
{
  v2 = MEMORY[0x277CBEB58];
  availableMeaningLabels = [objc_opt_class() availableMeaningLabels];
  v4 = [v2 setWithArray:availableMeaningLabels];

  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    v5 = objc_alloc_init(PGEventLabelingConfiguration);
    meaningLabels = [(PGEventLabelingConfiguration *)v5 meaningLabels];
    [v4 unionSet:meaningLabels];
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)preciseMeaningNodeForMeaningLabel:(id)label meaningfulEvent:(id)event
{
  labelCopy = label;
  eventCopy = event;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__56365;
  v17 = __Block_byref_object_dispose__56366;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__PGGraph_Meaning__preciseMeaningNodeForMeaningLabel_meaningfulEvent___block_invoke;
  v10[3] = &unk_278887670;
  v12 = &v13;
  v7 = labelCopy;
  v11 = v7;
  [eventCopy enumerateMeaningNodesUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __70__PGGraph_Meaning__preciseMeaningNodeForMeaningLabel_meaningfulEvent___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v6 = a2;
  v7 = [v6 label];
  v8 = v6;
  v14 = v8;
  if (v8)
  {
    v9 = v8;
    do
    {
      if (*(*(*(a1 + 40) + 8) + 40))
      {
        break;
      }

      v10 = [v9 parentMeaningNode];
      v11 = [v10 label];
      if ([*(a1 + 32) isEqualToString:v11])
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
      }

      v9 = v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 40);
  if (!*(*(v12 + 8) + 40))
  {
    v13 = [*(a1 + 32) isEqualToString:v7];
    v12 = *(a1 + 40);
    if (v13)
    {
      objc_storeStrong((*(v12 + 8) + 40), a2);
      v12 = *(a1 + 40);
    }
  }

  *a3 = *(*(v12 + 8) + 40) != 0;
}

+ (id)mostSignificantMeaningLabels
{
  if (mostSignificantMeaningLabels_onceToken != -1)
  {
    dispatch_once(&mostSignificantMeaningLabels_onceToken, &__block_literal_global_256);
  }

  v3 = mostSignificantMeaningLabels_mostSignificantMeaningLabels;

  return v3;
}

void __48__PGGraph_Meaning__mostSignificantMeaningLabels__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"Wedding", @"Celebration", @"Birthday", @"HolidayEvent", 0}];
  v1 = mostSignificantMeaningLabels_mostSignificantMeaningLabels;
  mostSignificantMeaningLabels_mostSignificantMeaningLabels = v0;
}

+ (id)frequentMeaningLabels
{
  if (frequentMeaningLabels_onceToken != -1)
  {
    dispatch_once(&frequentMeaningLabels_onceToken, &__block_literal_global_253);
  }

  v3 = frequentMeaningLabels_frequentMeaningLabels;

  return v3;
}

void __41__PGGraph_Meaning__frequentMeaningLabels__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"Restaurant", @"Lunch", @"Dinner", @"Breakfast", 0}];
  v1 = frequentMeaningLabels_frequentMeaningLabels;
  frequentMeaningLabels_frequentMeaningLabels = v0;
}

+ (id)stellarMeanings
{
  allMeaningfulMeanings = [self allMeaningfulMeanings];
  v3 = [allMeaningfulMeanings mutableCopy];
  [v3 removeIndex:16];
  [v3 removeIndex:15];
  [v3 removeIndex:0];

  return v3;
}

+ (id)lessMeaningfulMeanings
{
  allMeaningfulMeanings = [self allMeaningfulMeanings];
  veryMeaningfulMeanings = [self veryMeaningfulMeanings];
  v5 = [allMeaningfulMeanings mutableCopy];
  [v5 removeIndexes:veryMeaningfulMeanings];

  return v5;
}

+ (id)veryMeaningfulMeanings
{
  if (veryMeaningfulMeanings_onceToken != -1)
  {
    dispatch_once(&veryMeaningfulMeanings_onceToken, &__block_literal_global_56370);
  }

  v3 = veryMeaningfulMeanings_meanings;

  return v3;
}

uint64_t __42__PGGraph_Meaning__veryMeaningfulMeanings__block_invoke()
{
  v0 = [MEMORY[0x277CCAB58] indexSet];
  v1 = veryMeaningfulMeanings_meanings;
  veryMeaningfulMeanings_meanings = v0;

  [veryMeaningfulMeanings_meanings addIndex:12];
  [veryMeaningfulMeanings_meanings addIndex:11];
  [veryMeaningfulMeanings_meanings addIndex:14];
  v2 = veryMeaningfulMeanings_meanings;

  return [v2 addIndex:10];
}

- (void)_reportBusinessItemsWithAnalytics:(id)analytics
{
  v29[4] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__PGGraph_Metrics___reportBusinessItemsWithAnalytics___block_invoke;
  v11[3] = &unk_27888A0C0;
  v11[4] = &v24;
  v11[5] = &v20;
  v11[6] = &v16;
  v11[7] = &v12;
  [(MAGraph *)self enumerateNodesWithLabel:@"Business" domain:503 usingBlock:v11];
  v28[0] = @"businessItemsCount";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25[3]];
  v29[0] = v5;
  v28[1] = @"businessItemsCountFromPublicEvent";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21[3]];
  v29[1] = v6;
  v28[2] = @"businessItemsCountFromRoutine";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17[3]];
  v29[2] = v7;
  v28[3] = @"businessItemsCountFromMeaningInference";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13[3]];
  v29[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.businessItems" withPayload:v9];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  v10 = *MEMORY[0x277D85DE8];
}

void __54__PGGraph_Metrics___reportBusinessItemsWithAnalytics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 32) + 8) + 24);
  v4 = [v3 collection];
  v5 = [v4 publicEventNodes];
  v6 = [v5 count];

  if (v6)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__PGGraph_Metrics___reportBusinessItemsWithAnalytics___block_invoke_2;
    v8[3] = &unk_27888A098;
    v8[4] = &v9;
    [v3 enumerateMomentEdgesAndNodesUsingBlock:v8];
    v7 = 56;
    if (*(v10 + 24))
    {
      v7 = 48;
    }

    ++*(*(*(a1 + v7) + 8) + 24);
    _Block_object_dispose(&v9, 8);
  }
}

void __54__PGGraph_Metrics___reportBusinessItemsWithAnalytics___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  [v8 confidence];
  if (v6 >= 0.6)
  {
    v7 = [v8 hasRoutineInfo];
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

- (void)_reportDisambiguatedLocationsWithAnalytics:(id)analytics
{
  v33[10] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__PGGraph_Metrics___reportDisambiguatedLocationsWithAnalytics___block_invoke;
  v23[3] = &unk_27888A068;
  v23[4] = &v28;
  v23[5] = &v24;
  [(MAGraph *)self enumerateNodesWithLabel:@"Address" domain:200 usingBlock:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  infoNode = [(PGGraph *)self infoNode];
  v5 = infoNode;
  if (infoNode)
  {
    [infoNode routineInfo];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
  }

  v32[0] = @"improvedLocationsCount";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29[3]];
  v33[0] = v18;
  v32[1] = @"remoteLocationsCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25[3]];
  v33[1] = v6;
  v32[2] = @"routineAvailable";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  v33[2] = v7;
  v32[3] = @"routineNumberOfLocationsOfInterest";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(&v19 + 1)];
  v33[3] = v8;
  v32[4] = @"routineNumberOfVisits";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
  v33[4] = v9;
  v32[5] = @"routineNumberOfTimeMatches";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(&v20 + 1)];
  v33[5] = v10;
  v32[6] = @"routineNumberOfCloseByLocationMatches";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
  v33[6] = v11;
  v32[7] = @"routineNumberOfRemoteLocationMatches";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(&v21 + 1)];
  v33[7] = v12;
  v32[8] = @"routineNumberOfMatchRequests";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  v33[8] = v13;
  v32[9] = @"routinePinningVisitsRatio";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v22 + 1) * 100.0];
  v33[9] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:10];
  [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.disambiguatedLocations" withPayload:v15];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  v16 = *MEMORY[0x277D85DE8];
}

void __63__PGGraph_Metrics___reportDisambiguatedLocationsWithAnalytics___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v6 isImproved])
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  v4 = [v6 collection];
  v5 = [v4 momentNodes];
  *(*(*(a1 + 40) + 8) + 24) += [v5 count];

  objc_autoreleasePoolPop(v3);
}

- (void)_reportMobilityWithAnalytics:(id)analytics
{
  v30[4] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  momentNodes = [(PGGraph *)self momentNodes];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__PGGraph_Metrics___reportMobilityWithAnalytics___block_invoke;
  v12[3] = &unk_27888A040;
  v12[4] = &v25;
  v12[5] = &v21;
  v12[6] = &v17;
  v12[7] = &v13;
  [momentNodes enumerateNodesUsingBlock:v12];

  v29[0] = @"locationMobilityPedestrianCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26[3]];
  v30[0] = v6;
  v29[1] = @"locationMobilityBicycleCount";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22[3]];
  v30[1] = v7;
  v29[2] = @"locationMobilityCarCount";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18[3]];
  v30[2] = v8;
  v29[3] = @"locationMobilityPlaneCount";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14[3]];
  v30[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
  [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.locationMobility" withPayload:v10];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PGGraph_Metrics___reportMobilityWithAnalytics___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 locationMobilityType];
  if ((result - 1) <= 3)
  {
    v4 = *(*(a1 + 8 * (result - 1) + 32) + 8);
    ++*(v4 + 24);
  }

  return result;
}

- (void)_reportDeviceOwnerWithAnalytics:(id)analytics photoLibrary:(id)library serviceManager:(id)manager
{
  v41[1] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  libraryCopy = library;
  managerCopy = manager;
  meNode = [(PGGraph *)self meNode];
  localIdentifier = [meNode localIdentifier];

  [libraryCopy ratioOfAssetsWithFacesProcessed];
  v14 = v13;
  if ([localIdentifier length] && v14 >= 0.9)
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setPersonContext:1];
    [librarySpecificFetchOptions setFetchLimit:1];
    [librarySpecificFetchOptions setShouldPrefetchCount:1];
    v16 = MEMORY[0x277CD9938];
    v41[0] = localIdentifier;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    v18 = [v16 fetchPersonsWithLocalIdentifiers:v17 options:librarySpecificFetchOptions];

    if ([v18 count])
    {
      v35 = v18;
      v36 = managerCopy;
      v19 = [managerCopy inferredDeviceOwnerForPhotoLibrary:libraryCopy ignoreContactLinking:1];
      localIdentifier2 = [v19 localIdentifier];

      inferMeNodeFromSocialGroups = [(PGGraph *)self inferMeNodeFromSocialGroups];
      localIdentifier3 = [inferMeNodeFromSocialGroups localIdentifier];

      v23 = [localIdentifier3 length];
      if (v23)
      {
        v24 = [localIdentifier3 isEqualToString:localIdentifier];
      }

      else
      {
        v24 = 0;
      }

      v26 = [localIdentifier2 length];
      if (v26)
      {
        v27 = [localIdentifier2 isEqualToString:localIdentifier];
      }

      else
      {
        v27 = 0;
      }

      v38[0] = MEMORY[0x277CBEC38];
      v37[0] = @"VUEnabled";
      v37[1] = @"graphInferenceAvailable";
      v28 = [MEMORY[0x277CCABB0] numberWithBool:v23 != 0];
      v38[1] = v28;
      v37[2] = @"graphInferenceMatchesGroundTruth";
      v29 = [MEMORY[0x277CCABB0] numberWithBool:v24];
      v38[2] = v29;
      v37[3] = @"vuInferenceAvailable";
      v30 = [MEMORY[0x277CCABB0] numberWithBool:v26 != 0];
      v38[3] = v30;
      v37[4] = @"vuInferenceMatchesGroundTruth";
      v31 = [MEMORY[0x277CCABB0] numberWithBool:v27];
      v38[4] = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];
      [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.deviceOwnerInference" withPayload:v32];

      v18 = v35;
      managerCopy = v36;
    }

    else
    {
      v25 = +[PGLogging sharedLogging];
      localIdentifier2 = [v25 loggingConnection];

      if (os_log_type_enabled(localIdentifier2, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = localIdentifier;
        _os_log_impl(&dword_22F0FC000, localIdentifier2, OS_LOG_TYPE_INFO, "No person node for local identifier %@, skipping device owner metric reporting.", buf, 0xCu);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_reportLibraryWithAnalytics:(id)analytics
{
  v13[4] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  infoNode = [(PGGraph *)self infoNode];
  v12[0] = @"numberOfUtilityAssets";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoNode, "numberOfUtilityAssets")}];
  v13[0] = v6;
  v12[1] = @"numberOfDefaultAssets";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoNode, "numberOfDefaultAssets")}];
  v13[1] = v7;
  v12[2] = @"numberOfImprovedAssets";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoNode, "numberOfImprovedAssets")}];
  v13[2] = v8;
  v12[3] = @"numberOfBetterAssets";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoNode, "numberOfBetterAssets")}];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.library" withPayload:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reportMetricsLogsWithAnalytics:(id)analytics photoLibrary:(id)library serviceManager:(id)manager
{
  managerCopy = manager;
  libraryCopy = library;
  analyticsCopy = analytics;
  [(PGGraph *)self _reportLibraryWithAnalytics:analyticsCopy];
  [(PGGraph *)self _reportMobilityWithAnalytics:analyticsCopy];
  [(PGGraph *)self _reportDisambiguatedLocationsWithAnalytics:analyticsCopy];
  [(PGGraph *)self _reportBusinessItemsWithAnalytics:analyticsCopy];
  [(PGGraph *)self _reportDeviceOwnerWithAnalytics:analyticsCopy photoLibrary:libraryCopy serviceManager:managerCopy];
}

@end