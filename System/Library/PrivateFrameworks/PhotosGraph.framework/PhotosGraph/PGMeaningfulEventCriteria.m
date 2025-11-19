@interface PGMeaningfulEventCriteria
- (PGMeaningfulEventCollectionTrait)datesTrait;
- (PGMeaningfulEventCollectionTrait)peopleTrait;
- (PGMeaningfulEventCollectionTrait)poisTrait;
- (PGMeaningfulEventCollectionTrait)roisTrait;
- (PGMeaningfulEventCollectionTrait)socialGroupsTrait;
- (PGMeaningfulEventCriteria)initWithGraph:(id)a3;
- (PGMeaningfulEventLocationCollectionTrait)locationsTrait;
- (PGMeaningfulEventLocationMobilityTrait)locationMobilityTrait;
- (PGMeaningfulEventNumberTrait)maximumDurationTrait;
- (PGMeaningfulEventNumberTrait)minimumDurationTrait;
- (PGMeaningfulEventNumberTrait)numberOfPeopleTrait;
- (PGMeaningfulEventPartOfDayTrait)allPartsOfDayTrait;
- (PGMeaningfulEventPartOfDayTrait)significantPartsOfDayTrait;
- (id)_debugDescriptionWithMomentNode:(id)a3;
@end

@implementation PGMeaningfulEventCriteria

- (id)_debugDescriptionWithMomentNode:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  if ([v4 isSmartInteresting])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([v4 isInteresting])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v5 appendFormat:@"\n\tsmartInteresting: %@, interesting: %@", v6, v7];
  [v5 appendFormat:@"\n\tassetCount: %lu, ", objc_msgSend(v4, "numberOfAssets")];
  v8 = [(PGMeaningfulEventCriteria *)self significantPartsOfDayTrait];
  v9 = [v8 debugDescriptionWithMomentNode:v4];
  [v5 appendFormat:@"\n\tsignificantPartsOfDay: %@, ", v9];

  v10 = [(PGMeaningfulEventCriteria *)self allPartsOfDayTrait];
  v11 = [v10 debugDescriptionWithMomentNode:v4];
  [v5 appendFormat:@"\n\tallPartsOfDay: %@, ", v11];

  v12 = [(PGMeaningfulEventCriteria *)self minimumDurationTrait];
  v13 = [v12 debugDescriptionWithMomentNode:v4];
  [v5 appendFormat:@"\n\tminDuration: %@, ", v13];

  v14 = [(PGMeaningfulEventCriteria *)self maximumDurationTrait];
  v15 = [v14 debugDescriptionWithMomentNode:v4];
  [v5 appendFormat:@"\n\tmaxDuration: %@, ", v15];

  v16 = [(PGMeaningfulEventCriteria *)self numberOfPeopleTrait];
  v17 = [v16 debugDescriptionWithMomentNode:v4];
  [v5 appendFormat:@"\n\tnumberOfPeople: %@, ", v17];

  v18 = [(PGMeaningfulEventCriteria *)self locationMobilityTrait];
  v19 = [v18 debugDescriptionWithMomentNode:v4];
  [v5 appendFormat:@"\n\tlocationMobility: %@, ", v19];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PGMeaningfulEventCriteria__debugDescriptionWithMomentNode___block_invoke;
  aBlock[3] = &unk_2788820B0;
  v20 = v5;
  v40 = v20;
  v21 = v4;
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
  v26 = [(PGMeaningfulEventCriteria *)self datesTrait];
  v22[2](v22, @"dates", v26);

  v27 = [(PGMeaningfulEventCriteria *)self peopleTrait];
  v22[2](v22, @"people", v27);

  v28 = [(PGMeaningfulEventCriteria *)self socialGroupsTrait];
  v22[2](v22, @"socialGroups", v28);

  v29 = [(PGMeaningfulEventCriteria *)self locationsTrait];
  v22[2](v22, @"locations", v29);

  v30 = [(PGMeaningfulEventCriteria *)self poisTrait];
  v22[2](v22, @"pois", v30);

  v31 = [(PGMeaningfulEventCriteria *)self roisTrait];
  v22[2](v22, @"rois", v31);

  v32 = [(PGMeaningfulEventCriteria *)self scenesTrait];
  v25[2](v25, @"scenes", v32);

  v33 = [(PGMeaningfulEventCriteria *)self publicEventCategoriesTrait];
  v22[2](v22, @"publicEvents", v33);

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

- (PGMeaningfulEventCriteria)initWithGraph:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGMeaningfulEventCriteria;
  v6 = [(PGMeaningfulEventCriteria *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, a3);
    v7->_debug = 0;
  }

  return v7;
}

@end