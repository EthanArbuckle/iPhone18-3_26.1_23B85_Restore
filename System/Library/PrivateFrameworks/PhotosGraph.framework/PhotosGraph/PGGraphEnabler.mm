@interface PGGraphEnabler
- (BOOL)locationIsFrequent:(id)frequent;
- (BOOL)locationIsNearMyHomeOrWork:(id)work;
- (PGGraphEnabler)initWithGraph:(id)graph;
@end

@implementation PGGraphEnabler

- (BOOL)locationIsNearMyHomeOrWork:(id)work
{
  workCopy = work;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  [workCopy coordinate];
  latitude = v17.latitude;
  longitude = v17.longitude;
  if (CLLocationCoordinate2DIsValid(v17))
  {
    meNodeCollection = [(PGGraph *)self->_graph meNodeCollection];
    homeOrWorkNodes = [meNodeCollection homeOrWorkNodes];
    addressNodes = [homeOrWorkNodes addressNodes];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__PGGraphEnabler_locationIsNearMyHomeOrWork___block_invoke;
    v12[3] = &unk_27888A520;
    *&v12[5] = latitude;
    *&v12[6] = longitude;
    v12[4] = &v13;
    [addressNodes enumerateNodesUsingBlock:v12];
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __45__PGGraphEnabler_locationIsNearMyHomeOrWork___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 coordinate];
  result = CLLocationCoordinate2DGetDistanceFrom();
  if (v6 < 100.0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)locationIsFrequent:(id)frequent
{
  frequentCopy = frequent;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  [frequentCopy coordinate];
  latitude = v15.latitude;
  longitude = v15.longitude;
  if (CLLocationCoordinate2DIsValid(v15))
  {
    v7 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self->_graph];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__PGGraphEnabler_locationIsFrequent___block_invoke;
    v10[3] = &unk_278882E00;
    *&v10[5] = latitude;
    *&v10[6] = longitude;
    v10[4] = &v11;
    [v7 enumerateNodesUsingBlock:v10];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __37__PGGraphEnabler_locationIsFrequent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 addressNode];
  [v5 coordinate];

  result = CLLocationCoordinate2DGetDistanceFrom();
  if (v7 <= 10000.0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (PGGraphEnabler)initWithGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = PGGraphEnabler;
  v6 = [(PGGraphEnabler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
  }

  return v7;
}

@end