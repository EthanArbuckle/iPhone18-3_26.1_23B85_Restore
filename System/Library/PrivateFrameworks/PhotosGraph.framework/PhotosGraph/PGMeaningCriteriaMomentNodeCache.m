@interface PGMeaningCriteriaMomentNodeCache
- (BOOL)happensAtFrequentLocation;
- (BOOL)happensPartiallyAtMyHome;
- (BOOL)happensPartiallyAtMyHomeOrWork;
- (BOOL)happensPartiallyAtMyWork;
- (BOOL)hasAddressNodes;
- (NSSet)personNodes;
- (NSSet)poiNodes;
- (NSSet)preciseAddressNodes;
- (NSSet)preciseAreaNodes;
- (NSSet)roiNodes;
- (NSSet)specialPOINodes;
- (PGGraphPublicEventCategoryNodeCollection)publicEventCategoryNodes;
- (PGMeaningCriteriaMomentNodeCache)initWithMomentNode:(id)a3;
- (id)preciseAddressNodeCollection;
- (unint64_t)partsOfDay;
- (unint64_t)significantPartsOfDay;
- (void)_computeHomeWork;
- (void)enumerateSceneEdgesAndNodesUsingBlock:(id)a3;
@end

@implementation PGMeaningCriteriaMomentNodeCache

- (void)enumerateSceneEdgesAndNodesUsingBlock:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sceneEdges = self->_sceneEdges;
  if (!sceneEdges)
  {
    v6 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesFromNodes:self->_momentNodeAsCollection];
    v7 = [v6 array];
    v8 = self->_sceneEdges;
    self->_sceneEdges = v7;

    sceneEdges = self->_sceneEdges;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = sceneEdges;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v18 + 1) + 8 * v13);
      v15 = [v14 oppositeNode:self->_momentNode];
      v17 = 0;
      v4[2](v4, v14, v15, &v17);
      LOBYTE(v14) = v17;

      if (v14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (PGGraphPublicEventCategoryNodeCollection)publicEventCategoryNodes
{
  publicEventCategoryNodes = self->_publicEventCategoryNodes;
  if (!publicEventCategoryNodes)
  {
    v4 = [(PGGraphMomentNodeCollection *)self->_momentNodeAsCollection publicEventNodes];
    v5 = [v4 categoryNodes];
    v6 = self->_publicEventCategoryNodes;
    self->_publicEventCategoryNodes = v5;

    publicEventCategoryNodes = self->_publicEventCategoryNodes;
  }

  return publicEventCategoryNodes;
}

- (NSSet)roiNodes
{
  roiNodes = self->_roiNodes;
  if (!roiNodes)
  {
    v4 = [(PGGraphMomentNodeCollection *)self->_momentNodeAsCollection roiNodes];
    v5 = [v4 set];
    v6 = self->_roiNodes;
    self->_roiNodes = v5;

    roiNodes = self->_roiNodes;
  }

  return roiNodes;
}

- (NSSet)specialPOINodes
{
  specialPOINodes = self->_specialPOINodes;
  if (!specialPOINodes)
  {
    v4 = [(PGGraphMomentNodeCollection *)self->_momentNodeAsCollection specialPOINodes];
    v5 = [v4 set];
    v6 = self->_specialPOINodes;
    self->_specialPOINodes = v5;

    specialPOINodes = self->_specialPOINodes;
  }

  return specialPOINodes;
}

- (NSSet)poiNodes
{
  poiNodes = self->_poiNodes;
  if (!poiNodes)
  {
    v4 = [(PGGraphMomentNodeCollection *)self->_momentNodeAsCollection poiNodes];
    v5 = [v4 set];
    v6 = self->_poiNodes;
    self->_poiNodes = v5;

    poiNodes = self->_poiNodes;
  }

  return poiNodes;
}

- (NSSet)preciseAreaNodes
{
  preciseAreaNodes = self->_preciseAreaNodes;
  if (!preciseAreaNodes)
  {
    v4 = [(PGMeaningCriteriaMomentNodeCache *)self preciseAddressNodeCollection];
    v5 = [v4 areaNodes];
    v6 = [v5 set];
    v7 = self->_preciseAreaNodes;
    self->_preciseAreaNodes = v6;

    preciseAreaNodes = self->_preciseAreaNodes;
  }

  return preciseAreaNodes;
}

- (NSSet)preciseAddressNodes
{
  preciseAddressNodes = self->_preciseAddressNodes;
  if (!preciseAddressNodes)
  {
    v4 = [(PGMeaningCriteriaMomentNodeCache *)self preciseAddressNodeCollection];
    v5 = [v4 set];
    v6 = self->_preciseAddressNodes;
    self->_preciseAddressNodes = v5;

    preciseAddressNodes = self->_preciseAddressNodes;
  }

  return preciseAddressNodes;
}

- (NSSet)personNodes
{
  personNodes = self->_personNodes;
  if (!personNodes)
  {
    v4 = [(PGGraphMomentNodeCollection *)self->_momentNodeAsCollection personNodes];
    v5 = [v4 set];
    v6 = self->_personNodes;
    self->_personNodes = v5;

    personNodes = self->_personNodes;
  }

  return personNodes;
}

- (unint64_t)significantPartsOfDay
{
  result = self->_significantPartsOfDay;
  if (!result)
  {
    result = [(PGGraphMomentNode *)self->_momentNode significantPartsOfDay];
    self->_significantPartsOfDay = result;
  }

  return result;
}

- (unint64_t)partsOfDay
{
  result = self->_partsOfDay;
  if (!result)
  {
    result = [(PGGraphMomentNode *)self->_momentNode partsOfDay];
    self->_partsOfDay = result;
  }

  return result;
}

- (BOOL)happensPartiallyAtMyHomeOrWork
{
  if ([(PGMeaningCriteriaMomentNodeCache *)self happensPartiallyAtMyHome])
  {
    return 1;
  }

  return [(PGMeaningCriteriaMomentNodeCache *)self happensPartiallyAtMyWork];
}

- (BOOL)happensAtFrequentLocation
{
  happensAtFrequentLocation = self->_happensAtFrequentLocation;
  if (!happensAtFrequentLocation)
  {
    v4 = [(PGGraphMomentNodeCollection *)self->_momentNodeAsCollection frequentLocationNodes];
    v5 = [v4 count];

    if (v5)
    {
      happensAtFrequentLocation = 2;
    }

    else
    {
      happensAtFrequentLocation = 1;
    }

    self->_happensAtFrequentLocation = happensAtFrequentLocation;
  }

  return happensAtFrequentLocation == 2;
}

- (BOOL)happensPartiallyAtMyWork
{
  happensPartiallyAtMyWork = self->_happensPartiallyAtMyWork;
  if (!self->_happensPartiallyAtMyWork)
  {
    [(PGMeaningCriteriaMomentNodeCache *)self _computeHomeWork];
    happensPartiallyAtMyWork = self->_happensPartiallyAtMyWork;
  }

  return happensPartiallyAtMyWork == 2;
}

- (BOOL)happensPartiallyAtMyHome
{
  happensPartiallyAtMyHome = self->_happensPartiallyAtMyHome;
  if (!self->_happensPartiallyAtMyHome)
  {
    [(PGMeaningCriteriaMomentNodeCache *)self _computeHomeWork];
    happensPartiallyAtMyHome = self->_happensPartiallyAtMyHome;
  }

  return happensPartiallyAtMyHome == 2;
}

- (void)_computeHomeWork
{
  v11 = [(PGMeaningCriteriaMomentNodeCache *)self preciseAddressNodeCollection];
  v3 = [(PGGraphPersonNodeCollection *)self->_meNodeAsCollection homeNodes];
  v4 = [v3 addressNodes];
  v5 = [v11 intersectsCollection:v4];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  self->_happensPartiallyAtMyHome = v6;
  v7 = [(PGGraphPersonNodeCollection *)self->_meNodeAsCollection workNodes];
  v8 = [v7 addressNodes];
  v9 = [v11 intersectsCollection:v8];

  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  self->_happensPartiallyAtMyWork = v10;
}

- (BOOL)hasAddressNodes
{
  hasAddressNodes = self->_hasAddressNodes;
  if (!hasAddressNodes)
  {
    v4 = [(PGGraphMomentNodeCollection *)self->_momentNodeAsCollection addressNodes];
    v5 = [v4 count];

    if (v5)
    {
      hasAddressNodes = 2;
    }

    else
    {
      hasAddressNodes = 1;
    }

    self->_hasAddressNodes = hasAddressNodes;
  }

  return hasAddressNodes == 2;
}

- (id)preciseAddressNodeCollection
{
  preciseAddressNodeCollection = self->_preciseAddressNodeCollection;
  if (!preciseAddressNodeCollection)
  {
    v4 = [(PGGraphMomentNodeCollection *)self->_momentNodeAsCollection preciseAddressNodes];
    v5 = self->_preciseAddressNodeCollection;
    self->_preciseAddressNodeCollection = v4;

    preciseAddressNodeCollection = self->_preciseAddressNodeCollection;
  }

  return preciseAddressNodeCollection;
}

- (PGMeaningCriteriaMomentNodeCache)initWithMomentNode:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PGMeaningCriteriaMomentNodeCache;
  v6 = [(PGMeaningCriteriaMomentNodeCache *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentNode, a3);
    v8 = [(PGGraphMomentNode *)v7->_momentNode collection];
    momentNodeAsCollection = v7->_momentNodeAsCollection;
    v7->_momentNodeAsCollection = v8;

    v10 = [(MANode *)v7->_momentNode graph];
    v11 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v10];
    meNodeAsCollection = v7->_meNodeAsCollection;
    v7->_meNodeAsCollection = v11;
  }

  return v7;
}

@end