@interface PGUpNextMomentCollectionBasedMatchingInfo
+ (id)representativeDateForMomentNodes:(id)nodes;
+ (id)representativeDateForMomentNodesUniversalDateInterval:(id)interval;
+ (id)representativeLocationForLocations:(id)locations;
+ (id)representativeLocationForMomentNodes:(id)nodes;
+ (id)representativeMeaningNodesForEligibleMeaningNodesByMomentNode:(id)node;
+ (id)representativeMeaningNodesForMomentNodes:(id)nodes;
+ (id)representativePersonNodesForMomentNodes:(id)nodes;
+ (id)representativePersonNodesForPersonNodesByMomentNode:(id)node;
+ (id)representativeSceneNodesForMomentNodes:(id)nodes;
+ (id)representativeSceneNodesForSceneNodesByMomentNode:(id)node;
- (BOOL)isTripMemory;
- (CLLocation)representativeLocation;
- (NSDate)representativeDate;
- (NSString)debugInfo;
- (PGGraphMeaningNodeCollection)meaningNodes;
- (PGGraphPersonNodeCollection)personNodes;
- (PGGraphSceneNodeCollection)sceneNodes;
- (PGUpNextMomentCollectionBasedMatchingInfo)initWithMomentNodes:(id)nodes;
- (PGUpNextMomentCollectionBasedMatchingInfo)initWithMomentNodes:(id)nodes personNodes:(id)personNodes sceneNodes:(id)sceneNodes meaningNodes:(id)meaningNodes isTripMemory:(BOOL)memory representativeLocation:(id)location representativeDate:(id)date;
@end

@implementation PGUpNextMomentCollectionBasedMatchingInfo

- (NSString)debugInfo
{
  v2 = MEMORY[0x277CCACA8];
  uuids = [(PGGraphMomentNodeCollection *)self->_momentNodes uuids];
  v4 = [v2 stringWithFormat:@"Moment uuids %@", uuids];

  return v4;
}

- (NSDate)representativeDate
{
  if (!self->_representativeDateIsResolved)
  {
    v3 = [objc_opt_class() representativeDateForMomentNodes:self->_momentNodes];
    representativeDate = self->_representativeDate;
    self->_representativeDate = v3;

    self->_representativeDateIsResolved = 1;
  }

  v5 = self->_representativeDate;

  return v5;
}

- (CLLocation)representativeLocation
{
  if (!self->_representativeLocationIsResolved)
  {
    v3 = [objc_opt_class() representativeLocationForMomentNodes:self->_momentNodes];
    representativeLocation = self->_representativeLocation;
    self->_representativeLocation = v3;

    self->_representativeLocationIsResolved = 1;
  }

  v5 = self->_representativeLocation;

  return v5;
}

- (BOOL)isTripMemory
{
  if (self->_isTripMemoryIsResolved)
  {
    return self->_isTripMemory;
  }

  else
  {
    _implIsTripMemory = [(PGUpNextMomentCollectionBasedMatchingInfo *)self _implIsTripMemory];
    self->_isTripMemory = _implIsTripMemory;
    self->_isTripMemoryIsResolved = 1;
  }

  return _implIsTripMemory;
}

- (PGGraphMeaningNodeCollection)meaningNodes
{
  meaningNodes = self->_meaningNodes;
  if (!meaningNodes)
  {
    v4 = [objc_opt_class() representativeMeaningNodesForMomentNodes:self->_momentNodes];
    v5 = self->_meaningNodes;
    self->_meaningNodes = v4;

    meaningNodes = self->_meaningNodes;
  }

  return meaningNodes;
}

- (PGGraphSceneNodeCollection)sceneNodes
{
  sceneNodes = self->_sceneNodes;
  if (!sceneNodes)
  {
    v4 = [objc_opt_class() representativeSceneNodesForMomentNodes:self->_momentNodes];
    v5 = self->_sceneNodes;
    self->_sceneNodes = v4;

    sceneNodes = self->_sceneNodes;
  }

  return sceneNodes;
}

- (PGGraphPersonNodeCollection)personNodes
{
  personNodes = self->_personNodes;
  if (!personNodes)
  {
    v4 = [objc_opt_class() representativePersonNodesForMomentNodes:self->_momentNodes];
    v5 = self->_personNodes;
    self->_personNodes = v4;

    personNodes = self->_personNodes;
  }

  return personNodes;
}

- (PGUpNextMomentCollectionBasedMatchingInfo)initWithMomentNodes:(id)nodes personNodes:(id)personNodes sceneNodes:(id)sceneNodes meaningNodes:(id)meaningNodes isTripMemory:(BOOL)memory representativeLocation:(id)location representativeDate:(id)date
{
  nodesCopy = nodes;
  personNodesCopy = personNodes;
  sceneNodesCopy = sceneNodes;
  meaningNodesCopy = meaningNodes;
  locationCopy = location;
  dateCopy = date;
  v25.receiver = self;
  v25.super_class = PGUpNextMomentCollectionBasedMatchingInfo;
  v18 = [(PGUpNextMomentCollectionBasedMatchingInfo *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_momentNodes, nodes);
    objc_storeStrong(&v19->_personNodes, personNodes);
    objc_storeStrong(&v19->_sceneNodes, sceneNodes);
    objc_storeStrong(&v19->_meaningNodes, meaningNodes);
    v19->_isTripMemory = memory;
    objc_storeStrong(&v19->_representativeLocation, location);
    objc_storeStrong(&v19->_representativeDate, date);
    *&v19->_isTripMemoryIsResolved = 257;
    v19->_representativeDateIsResolved = 1;
  }

  return v19;
}

- (PGUpNextMomentCollectionBasedMatchingInfo)initWithMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  v9.receiver = self;
  v9.super_class = PGUpNextMomentCollectionBasedMatchingInfo;
  v6 = [(PGUpNextMomentCollectionBasedMatchingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentNodes, nodes);
  }

  return v7;
}

+ (id)representativeDateForMomentNodesUniversalDateInterval:(id)interval
{
  intervalCopy = interval;
  [intervalCopy duration];
  if (v4 <= 2592000.0)
  {
    startDate = [intervalCopy startDate];
    [intervalCopy duration];
    v5 = [startDate dateByAddingTimeInterval:v7 * 0.5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)representativeDateForMomentNodes:(id)nodes
{
  universalDateInterval = [nodes universalDateInterval];
  v5 = [self representativeDateForMomentNodesUniversalDateInterval:universalDateInterval];

  return v5;
}

+ (id)representativeLocationForLocations:(id)locations
{
  v36 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v4 = [locationsCopy count];
  if (v4 > 1)
  {
    v6 = v4;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = locationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      v11 = 0.0;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          [v14 coordinate];
          v12 = v12 + v15;
          [v14 coordinate];
          v11 = v11 + v16;
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
    }

    v17 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v12 / v6 longitude:v11 / v6];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v26 + 1) + 8 * j) distanceFromLocation:{v17, v26}];
          if (v23 > 50000.0)
          {

            firstObject = 0;
            goto LABEL_22;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    firstObject = v17;
LABEL_22:
  }

  else
  {
    firstObject = [locationsCopy firstObject];
  }

  v24 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)representativeLocationForMomentNodes:(id)nodes
{
  addressNodes = [nodes addressNodes];
  locations = [addressNodes locations];
  v6 = [self representativeLocationForLocations:locations];

  return v6;
}

+ (id)representativeMeaningNodesForEligibleMeaningNodesByMomentNode:(id)node
{
  nodeCopy = node;
  v4 = [nodeCopy targetsWithMinimumCount:{vcvtps_u32_f32(vcvts_n_f32_u64(objc_msgSend(nodeCopy, "sourcesCount"), 2uLL))}];

  return v4;
}

+ (id)representativeMeaningNodesForMomentNodes:(id)nodes
{
  v4 = MEMORY[0x277D22BF8];
  nodesCopy = nodes;
  v6 = +[PGGraphMomentNode meaningOfMoment];
  v7 = objc_opt_self();
  v8 = [v4 adjacencyWithSources:nodesCopy relation:v6 targetsClass:v7];

  graph = [nodesCopy graph];

  v10 = [PGGraphMeaningNodeCollection meaningNodesWithMeaning:16 inGraph:graph];

  v11 = [v8 subtractingTargetsWith:v10];

  v12 = [self representativeMeaningNodesForEligibleMeaningNodesByMomentNode:v11];

  return v12;
}

+ (id)representativeSceneNodesForSceneNodesByMomentNode:(id)node
{
  nodeCopy = node;
  v4 = [nodeCopy targetsWithMinimumCount:{vcvtps_u32_f32(vcvts_n_f32_u64(objc_msgSend(nodeCopy, "sourcesCount"), 2uLL))}];

  return v4;
}

+ (id)representativeSceneNodesForMomentNodes:(id)nodes
{
  v4 = MEMORY[0x277D22BF8];
  nodesCopy = nodes;
  v6 = +[PGGraphMomentNode sceneOfMoment];
  v7 = objc_opt_self();
  v8 = [v4 adjacencyWithSources:nodesCopy relation:v6 targetsClass:v7];

  v9 = [self representativeSceneNodesForSceneNodesByMomentNode:v8];

  return v9;
}

+ (id)representativePersonNodesForPersonNodesByMomentNode:(id)node
{
  nodeCopy = node;
  v4 = [nodeCopy targetsWithMinimumCount:{vcvtps_u32_f32(vcvts_n_f32_u64(objc_msgSend(nodeCopy, "sourcesCount"), 2uLL))}];

  return v4;
}

+ (id)representativePersonNodesForMomentNodes:(id)nodes
{
  v4 = MEMORY[0x277D22BF8];
  nodesCopy = nodes;
  v6 = +[PGGraphMomentNode personExcludingMeInMoment];
  v7 = objc_opt_self();
  v8 = [v4 adjacencyWithSources:nodesCopy relation:v6 targetsClass:v7];

  v9 = [self representativePersonNodesForPersonNodesByMomentNode:v8];

  return v9;
}

@end