@interface PGMeaningfulEventProcessorCache
- (PGMeaningfulEventProcessorCache)initWithMomentNodes:(id)a3;
- (id)addressNodesForMomentNodes:(id)a3;
- (id)dateNodesForMomentNodes:(id)a3;
- (id)mobilityNodesForMomentNodes:(id)a3;
- (id)peopleNodesForMomentNodes:(id)a3;
- (id)poiNodesWithNonzeroConfidenceForMomentNodes:(id)a3;
- (id)preciseAddressNodesForMomentNodes:(id)a3;
- (id)publicEventCategoryNodesForMomentNodes:(id)a3;
- (id)reliableSceneNodesForMomentNodes:(id)a3;
- (id)roiNodesWithNonzeroConfidenceForMomentNodes:(id)a3;
- (id)sceneNodesForMomentNodes:(id)a3;
- (id)socialGroupNodesForMomentNodes:(id)a3;
- (unint64_t)partsOfDayForMomentNodes:(id)a3;
- (unint64_t)significantPartsOfDayForMomentNodes:(id)a3;
@end

@implementation PGMeaningfulEventProcessorCache

- (id)mobilityNodesForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  mobilityNodesByMomentNode = self->_mobilityNodesByMomentNode;
  if (!mobilityNodesByMomentNode)
  {
    v6 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v8 = +[PGGraphMomentNode mobilityOfMoment];
    v9 = [v6 adjacencyWithSources:momentNodes relation:v8 targetsClass:objc_opt_class()];
    v10 = self->_mobilityNodesByMomentNode;
    self->_mobilityNodesByMomentNode = v9;

    mobilityNodesByMomentNode = self->_mobilityNodesByMomentNode;
  }

  v11 = [(MABinaryAdjacency *)mobilityNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (unint64_t)significantPartsOfDayForMomentNodes:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  significantPartOfDayNodesByMomentNode = self->_significantPartOfDayNodesByMomentNode;
  if (!significantPartOfDayNodesByMomentNode)
  {
    v6 = [v4 graph];
    v7 = ([v6 version] - 1) < 0x18F;

    v8 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v10 = [PGGraphMomentNode significantPartOfDayOfMomentWithHasLegacyWeights:v7];
    v11 = [v8 adjacencyWithSources:momentNodes relation:v10 targetsClass:objc_opt_class()];
    v12 = self->_significantPartOfDayNodesByMomentNode;
    self->_significantPartOfDayNodesByMomentNode = v11;

    significantPartOfDayNodesByMomentNode = self->_significantPartOfDayNodesByMomentNode;
  }

  v13 = [(MABinaryAdjacency *)significantPartOfDayNodesByMomentNode targetsForSources:v4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v13 partsOfDay];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    v18 = 1;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v18 |= [*(*(&v22 + 1) + 8 * i) unsignedIntegerValue];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unint64_t)partsOfDayForMomentNodes:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  partOfDayNodesByMomentNode = self->_partOfDayNodesByMomentNode;
  if (!partOfDayNodesByMomentNode)
  {
    v6 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v8 = +[PGGraphMomentNode partOfDayOfMoment];
    v9 = [v6 adjacencyWithSources:momentNodes relation:v8 targetsClass:objc_opt_class()];
    v10 = self->_partOfDayNodesByMomentNode;
    self->_partOfDayNodesByMomentNode = v9;

    partOfDayNodesByMomentNode = self->_partOfDayNodesByMomentNode;
  }

  v11 = [(MABinaryAdjacency *)partOfDayNodesByMomentNode targetsForSources:v4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [v11 partsOfDay];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    v16 = 1;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v16 |= [*(*(&v20 + 1) + 8 * i) unsignedIntegerValue];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)publicEventCategoryNodesForMomentNodes:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  publicEventCategoryNodesByMomentNode = self->_publicEventCategoryNodesByMomentNode;
  if (!publicEventCategoryNodesByMomentNode)
  {
    v6 = objc_alloc(MEMORY[0x277D22C00]);
    v7 = +[PGGraphMomentNode publicEventOfMoment];
    v16[0] = v7;
    v8 = +[PGGraphPublicEventNode categoryOfPublicEvent];
    v16[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v6 initWithSteps:v9];

    v11 = [MEMORY[0x277D22BF8] adjacencyWithSources:self->_momentNodes relation:v10 targetsClass:objc_opt_class()];
    v12 = self->_publicEventCategoryNodesByMomentNode;
    self->_publicEventCategoryNodesByMomentNode = v11;

    publicEventCategoryNodesByMomentNode = self->_publicEventCategoryNodesByMomentNode;
  }

  v13 = [(MABinaryAdjacency *)publicEventCategoryNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)socialGroupNodesForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  socialGroupNodesByMomentNode = self->_socialGroupNodesByMomentNode;
  if (!socialGroupNodesByMomentNode)
  {
    v6 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v8 = +[PGGraphMomentNode socialGroupInMoment];
    v9 = [v6 adjacencyWithSources:momentNodes relation:v8 targetsClass:objc_opt_class()];
    v10 = self->_socialGroupNodesByMomentNode;
    self->_socialGroupNodesByMomentNode = v9;

    socialGroupNodesByMomentNode = self->_socialGroupNodesByMomentNode;
  }

  v11 = [(MABinaryAdjacency *)socialGroupNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)peopleNodesForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  personNodesByMomentNode = self->_personNodesByMomentNode;
  if (!personNodesByMomentNode)
  {
    v6 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v8 = +[PGGraphMomentNode personInMoment];
    v9 = [v6 adjacencyWithSources:momentNodes relation:v8 targetsClass:objc_opt_class()];
    v10 = self->_personNodesByMomentNode;
    self->_personNodesByMomentNode = v9;

    personNodesByMomentNode = self->_personNodesByMomentNode;
  }

  v11 = [(MABinaryAdjacency *)personNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)dateNodesForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  dateNodesByMomentNode = self->_dateNodesByMomentNode;
  if (!dateNodesByMomentNode)
  {
    v6 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v8 = +[PGGraphMomentNode dateOfMoment];
    v9 = [v6 adjacencyWithSources:momentNodes relation:v8 targetsClass:objc_opt_class()];
    v10 = self->_dateNodesByMomentNode;
    self->_dateNodesByMomentNode = v9;

    dateNodesByMomentNode = self->_dateNodesByMomentNode;
  }

  v11 = [(MABinaryAdjacency *)dateNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)preciseAddressNodesForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  preciseAddressNodesByMomentNode = self->_preciseAddressNodesByMomentNode;
  if (!preciseAddressNodesByMomentNode)
  {
    v6 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v8 = +[PGGraphMomentNode preciseAddressOfMoment];
    v9 = [v6 adjacencyWithSources:momentNodes relation:v8 targetsClass:objc_opt_class()];
    v10 = self->_preciseAddressNodesByMomentNode;
    self->_preciseAddressNodesByMomentNode = v9;

    preciseAddressNodesByMomentNode = self->_preciseAddressNodesByMomentNode;
  }

  v11 = [(MABinaryAdjacency *)preciseAddressNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)addressNodesForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  addressNodesByMomentNode = self->_addressNodesByMomentNode;
  if (!addressNodesByMomentNode)
  {
    v6 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v8 = +[PGGraphMomentNode addressOfMoment];
    v9 = [v6 adjacencyWithSources:momentNodes relation:v8 targetsClass:objc_opt_class()];
    v10 = self->_addressNodesByMomentNode;
    self->_addressNodesByMomentNode = v9;

    addressNodesByMomentNode = self->_addressNodesByMomentNode;
  }

  v11 = [(MABinaryAdjacency *)addressNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)roiNodesWithNonzeroConfidenceForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  roiNodesByMomentNode = self->_roiNodesByMomentNode;
  if (!roiNodesByMomentNode)
  {
    v6 = [v4 graph];
    v7 = ([v6 version] - 1) < 0x18F;

    v8 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v10 = [PGGraphMomentNode roiWithNonzeroConfidenceOfMomentWithHasLegacyWeights:v7];
    v11 = [v8 adjacencyWithSources:momentNodes relation:v10 targetsClass:objc_opt_class()];
    v12 = self->_roiNodesByMomentNode;
    self->_roiNodesByMomentNode = v11;

    roiNodesByMomentNode = self->_roiNodesByMomentNode;
  }

  v13 = [(MABinaryAdjacency *)roiNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (id)poiNodesWithNonzeroConfidenceForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  poiNodesByMomentNode = self->_poiNodesByMomentNode;
  if (!poiNodesByMomentNode)
  {
    v6 = [v4 graph];
    v7 = ([v6 version] - 1) < 0x18F;

    v8 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v10 = [PGGraphMomentNode poiWithNonzeroConfidenceOfMomentWithHasLegacyWeights:v7];
    v11 = [v8 adjacencyWithSources:momentNodes relation:v10 targetsClass:objc_opt_class()];
    v12 = self->_poiNodesByMomentNode;
    self->_poiNodesByMomentNode = v11;

    poiNodesByMomentNode = self->_poiNodesByMomentNode;
  }

  v13 = [(MABinaryAdjacency *)poiNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (id)reliableSceneNodesForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  reliableSceneNodesByMomentNode = self->_reliableSceneNodesByMomentNode;
  if (!reliableSceneNodesByMomentNode)
  {
    v6 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v8 = +[PGGraphMomentNode reliableSceneOfMoment];
    v9 = [v6 adjacencyWithSources:momentNodes relation:v8 targetsClass:objc_opt_class()];
    v10 = self->_reliableSceneNodesByMomentNode;
    self->_reliableSceneNodesByMomentNode = v9;

    reliableSceneNodesByMomentNode = self->_reliableSceneNodesByMomentNode;
  }

  v11 = [(MABinaryAdjacency *)reliableSceneNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)sceneNodesForMomentNodes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  sceneNodesByMomentNode = self->_sceneNodesByMomentNode;
  if (!sceneNodesByMomentNode)
  {
    v6 = MEMORY[0x277D22BF8];
    momentNodes = self->_momentNodes;
    v8 = +[PGGraphMomentNode sceneOfMoment];
    v9 = [v6 adjacencyWithSources:momentNodes relation:v8 targetsClass:objc_opt_class()];
    v10 = self->_sceneNodesByMomentNode;
    self->_sceneNodesByMomentNode = v9;

    sceneNodesByMomentNode = self->_sceneNodesByMomentNode;
  }

  v11 = [(MABinaryAdjacency *)sceneNodesByMomentNode targetsForSources:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (PGMeaningfulEventProcessorCache)initWithMomentNodes:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGMeaningfulEventProcessorCache;
  v6 = [(PGMeaningfulEventProcessorCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentNodes, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

@end