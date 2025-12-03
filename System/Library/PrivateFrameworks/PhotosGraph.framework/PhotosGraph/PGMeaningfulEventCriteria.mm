@interface PGMeaningfulEventCriteria
- (PGMeaningfulEventCollectionTrait)datesTrait;
- (PGMeaningfulEventCollectionTrait)peopleTrait;
- (PGMeaningfulEventCollectionTrait)poisTrait;
- (PGMeaningfulEventCollectionTrait)roisTrait;
- (PGMeaningfulEventCollectionTrait)socialGroupsTrait;
- (PGMeaningfulEventCriteria)initWithGraph:(id)graph;
- (PGMeaningfulEventLocationCollectionTrait)locationsTrait;
- (PGMeaningfulEventLocationMobilityTrait)locationMobilityTrait;
- (PGMeaningfulEventNumberTrait)maximumDurationTrait;
- (PGMeaningfulEventNumberTrait)minimumDurationTrait;
- (PGMeaningfulEventNumberTrait)numberOfPeopleTrait;
- (PGMeaningfulEventPartOfDayTrait)allPartsOfDayTrait;
- (PGMeaningfulEventPartOfDayTrait)significantPartsOfDayTrait;
- (id)_debugDescriptionWithMomentNode:(id)node;
@end

@implementation PGMeaningfulEventCriteria

- (id)_debugDescriptionWithMomentNode:(id)node
{
  nodeCopy = node;
  string = [MEMORY[0x277CCAB68] string];
  if ([nodeCopy isSmartInteresting])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([nodeCopy isInteresting])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@"\n\tsmartInteresting: %@, interesting: %@", v6, v7];
  [string appendFormat:@"\n\tassetCount: %lu, ", objc_msgSend(nodeCopy, "numberOfAssets")];
  significantPartsOfDayTrait = [(PGMeaningfulEventCriteria *)self significantPartsOfDayTrait];
  v9 = [significantPartsOfDayTrait debugDescriptionWithMomentNode:nodeCopy];
  [string appendFormat:@"\n\tsignificantPartsOfDay: %@, ", v9];

  allPartsOfDayTrait = [(PGMeaningfulEventCriteria *)self allPartsOfDayTrait];
  v11 = [allPartsOfDayTrait debugDescriptionWithMomentNode:nodeCopy];
  [string appendFormat:@"\n\tallPartsOfDay: %@, ", v11];

  minimumDurationTrait = [(PGMeaningfulEventCriteria *)self minimumDurationTrait];
  v13 = [minimumDurationTrait debugDescriptionWithMomentNode:nodeCopy];
  [string appendFormat:@"\n\tminDuration: %@, ", v13];

  maximumDurationTrait = [(PGMeaningfulEventCriteria *)self maximumDurationTrait];
  v15 = [maximumDurationTrait debugDescriptionWithMomentNode:nodeCopy];
  [string appendFormat:@"\n\tmaxDuration: %@, ", v15];

  numberOfPeopleTrait = [(PGMeaningfulEventCriteria *)self numberOfPeopleTrait];
  v17 = [numberOfPeopleTrait debugDescriptionWithMomentNode:nodeCopy];
  [string appendFormat:@"\n\tnumberOfPeople: %@, ", v17];

  locationMobilityTrait = [(PGMeaningfulEventCriteria *)self locationMobilityTrait];
  v19 = [locationMobilityTrait debugDescriptionWithMomentNode:nodeCopy];
  [string appendFormat:@"\n\tlocationMobility: %@, ", v19];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PGMeaningfulEventCriteria__debugDescriptionWithMomentNode___block_invoke;
  aBlock[3] = &unk_2788820B0;
  v20 = string;
  v40 = v20;
  v21 = nodeCopy;
  v41 = v21;
  v22 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __61__PGMeaningfulEventCriteria__debugDescriptionWithMomentNode___block_invoke_2;
  v36[3] = &unk_2788820B0;
  v23 = v20;
  v37 = v23;
  v38 = v21;
  v24 = v21;
  v25 = _Block_copy(v36);
  datesTrait = [(PGMeaningfulEventCriteria *)self datesTrait];
  v22[2](v22, @"dates", datesTrait);

  peopleTrait = [(PGMeaningfulEventCriteria *)self peopleTrait];
  v22[2](v22, @"people", peopleTrait);

  socialGroupsTrait = [(PGMeaningfulEventCriteria *)self socialGroupsTrait];
  v22[2](v22, @"socialGroups", socialGroupsTrait);

  locationsTrait = [(PGMeaningfulEventCriteria *)self locationsTrait];
  v22[2](v22, @"locations", locationsTrait);

  poisTrait = [(PGMeaningfulEventCriteria *)self poisTrait];
  v22[2](v22, @"pois", poisTrait);

  roisTrait = [(PGMeaningfulEventCriteria *)self roisTrait];
  v22[2](v22, @"rois", roisTrait);

  scenesTrait = [(PGMeaningfulEventCriteria *)self scenesTrait];
  v25[2](v25, @"scenes", scenesTrait);

  publicEventCategoriesTrait = [(PGMeaningfulEventCriteria *)self publicEventCategoriesTrait];
  v22[2](v22, @"publicEvents", publicEventCategoriesTrait);

  v34 = v23;
  return v23;
}

void __61__PGMeaningfulEventCriteria__debugDescriptionWithMomentNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 nodes];
  v7 = [v6 count];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v5 debugDescriptionWithMomentNode:*(a1 + 40)];
    [v8 appendFormat:@"\n\t%@: %@", v10, v9];
  }
}

void __61__PGMeaningfulEventCriteria__debugDescriptionWithMomentNode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 nodes];
  v7 = [v6 count];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v5 debugDescriptionWithMomentNode:*(a1 + 40)];
    [v8 appendFormat:@"\n\t%@: %@", v10, v9];
  }
}

- (PGMeaningfulEventNumberTrait)maximumDurationTrait
{
  maximumDurationTrait = self->_maximumDurationTrait;
  if (!maximumDurationTrait)
  {
    v4 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:0.0];
    v5 = self->_maximumDurationTrait;
    self->_maximumDurationTrait = v4;

    maximumDurationTrait = self->_maximumDurationTrait;
  }

  return maximumDurationTrait;
}

- (PGMeaningfulEventNumberTrait)minimumDurationTrait
{
  minimumDurationTrait = self->_minimumDurationTrait;
  if (!minimumDurationTrait)
  {
    v4 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:0.0];
    v5 = self->_minimumDurationTrait;
    self->_minimumDurationTrait = v4;

    minimumDurationTrait = self->_minimumDurationTrait;
  }

  return minimumDurationTrait;
}

- (PGMeaningfulEventLocationMobilityTrait)locationMobilityTrait
{
  locationMobilityTrait = self->_locationMobilityTrait;
  if (!locationMobilityTrait)
  {
    v4 = [[PGMeaningfulEventLocationMobilityTrait alloc] initWithMobility:0];
    v5 = self->_locationMobilityTrait;
    self->_locationMobilityTrait = v4;

    locationMobilityTrait = self->_locationMobilityTrait;
  }

  return locationMobilityTrait;
}

- (PGMeaningfulEventPartOfDayTrait)allPartsOfDayTrait
{
  allPartsOfDayTrait = self->_allPartsOfDayTrait;
  if (!allPartsOfDayTrait)
  {
    v4 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:1];
    v5 = self->_allPartsOfDayTrait;
    self->_allPartsOfDayTrait = v4;

    allPartsOfDayTrait = self->_allPartsOfDayTrait;
  }

  return allPartsOfDayTrait;
}

- (PGMeaningfulEventPartOfDayTrait)significantPartsOfDayTrait
{
  significantPartsOfDayTrait = self->_significantPartsOfDayTrait;
  if (!significantPartsOfDayTrait)
  {
    v4 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:1];
    v5 = self->_significantPartsOfDayTrait;
    self->_significantPartsOfDayTrait = v4;

    significantPartsOfDayTrait = self->_significantPartsOfDayTrait;
  }

  return significantPartsOfDayTrait;
}

- (PGMeaningfulEventCollectionTrait)socialGroupsTrait
{
  socialGroupsTrait = self->_socialGroupsTrait;
  if (!socialGroupsTrait)
  {
    v4 = [PGMeaningfulEventCollectionTrait alloc];
    v5 = [(MAElementCollection *)[PGGraphNodeCollection alloc] initWithGraph:self->_graph];
    v6 = [(PGMeaningfulEventCollectionTrait *)v4 initWithNodes:v5];
    v7 = self->_socialGroupsTrait;
    self->_socialGroupsTrait = v6;

    socialGroupsTrait = self->_socialGroupsTrait;
  }

  return socialGroupsTrait;
}

- (PGMeaningfulEventNumberTrait)numberOfPeopleTrait
{
  numberOfPeopleTrait = self->_numberOfPeopleTrait;
  if (!numberOfPeopleTrait)
  {
    v4 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:0.0];
    v5 = self->_numberOfPeopleTrait;
    self->_numberOfPeopleTrait = v4;

    numberOfPeopleTrait = self->_numberOfPeopleTrait;
  }

  return numberOfPeopleTrait;
}

- (PGMeaningfulEventCollectionTrait)peopleTrait
{
  peopleTrait = self->_peopleTrait;
  if (!peopleTrait)
  {
    v4 = [PGMeaningfulEventCollectionTrait alloc];
    v5 = [(MAElementCollection *)[PGGraphNodeCollection alloc] initWithGraph:self->_graph];
    v6 = [(PGMeaningfulEventCollectionTrait *)v4 initWithNodes:v5];
    v7 = self->_peopleTrait;
    self->_peopleTrait = v6;

    peopleTrait = self->_peopleTrait;
  }

  return peopleTrait;
}

- (PGMeaningfulEventCollectionTrait)datesTrait
{
  datesTrait = self->_datesTrait;
  if (!datesTrait)
  {
    v4 = [PGMeaningfulEventCollectionTrait alloc];
    v5 = [(MAElementCollection *)[PGGraphNodeCollection alloc] initWithGraph:self->_graph];
    v6 = [(PGMeaningfulEventCollectionTrait *)v4 initWithNodes:v5];
    v7 = self->_datesTrait;
    self->_datesTrait = v6;

    datesTrait = self->_datesTrait;
  }

  return datesTrait;
}

- (PGMeaningfulEventLocationCollectionTrait)locationsTrait
{
  locationsTrait = self->_locationsTrait;
  if (!locationsTrait)
  {
    v4 = [(PGMeaningfulEventCollectionTrait *)[PGMeaningfulEventLocationCollectionTrait alloc] initWithNodes:0];
    v5 = self->_locationsTrait;
    self->_locationsTrait = v4;

    locationsTrait = self->_locationsTrait;
  }

  return locationsTrait;
}

- (PGMeaningfulEventCollectionTrait)poisTrait
{
  poisTrait = self->_poisTrait;
  if (!poisTrait)
  {
    v4 = [PGMeaningfulEventCollectionTrait alloc];
    v5 = [(MAElementCollection *)[PGGraphNodeCollection alloc] initWithGraph:self->_graph];
    v6 = [(PGMeaningfulEventCollectionTrait *)v4 initWithNodes:v5];
    v7 = self->_poisTrait;
    self->_poisTrait = v6;

    poisTrait = self->_poisTrait;
  }

  return poisTrait;
}

- (PGMeaningfulEventCollectionTrait)roisTrait
{
  roisTrait = self->_roisTrait;
  if (!roisTrait)
  {
    v4 = [PGMeaningfulEventCollectionTrait alloc];
    v5 = [(MAElementCollection *)[PGGraphNodeCollection alloc] initWithGraph:self->_graph];
    v6 = [(PGMeaningfulEventCollectionTrait *)v4 initWithNodes:v5];
    v7 = self->_roisTrait;
    self->_roisTrait = v6;

    roisTrait = self->_roisTrait;
  }

  return roisTrait;
}

- (PGMeaningfulEventCriteria)initWithGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = PGMeaningfulEventCriteria;
  v6 = [(PGMeaningfulEventCriteria *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
    v7->_debug = 0;
  }

  return v7;
}

@end