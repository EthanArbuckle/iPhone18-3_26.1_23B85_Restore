@interface PGHighlightTailorContext
- (PGBusinessLocationFeatureSummarySource)businessFeatureSummarySource;
- (PGHighlightTailorContext)initWithPhotoLibrary:(id)library graph:(id)graph serviceManager:(id)manager loggingConnection:(id)connection;
- (PGHolidayDateFeatureSummarySource)holidayDateFeatureSummarySource;
- (PGLocationFeatureSummarySource)locationFeatureSummarySource;
- (PGMeaningFeatureSummarySource)meaningFeatureSummarySource;
- (PGPublicEventFeatureSummarySource)publicEventFeatureSummarySource;
- (id)initForTesting;
- (unsigned)pendingEnrichmentStateForHighlightUUID:(id)d;
@end

@implementation PGHighlightTailorContext

- (unsigned)pendingEnrichmentStateForHighlightUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_pendingEnrichmentStateByHighlightUUID objectForKeyedSubscript:d];
  unsignedShortValue = [v3 unsignedShortValue];

  return unsignedShortValue;
}

- (PGHolidayDateFeatureSummarySource)holidayDateFeatureSummarySource
{
  holidayDateFeatureSummarySource = self->_holidayDateFeatureSummarySource;
  if (!holidayDateFeatureSummarySource)
  {
    v4 = [[PGHolidayDateFeatureSummarySource alloc] initWithLoggingConnection:self->_loggingConnection titleGenerationContext:self->_titleGenerationContext graph:self->_graph];
    v5 = self->_holidayDateFeatureSummarySource;
    self->_holidayDateFeatureSummarySource = v4;

    holidayDateFeatureSummarySource = self->_holidayDateFeatureSummarySource;
  }

  return holidayDateFeatureSummarySource;
}

- (PGPublicEventFeatureSummarySource)publicEventFeatureSummarySource
{
  publicEventFeatureSummarySource = self->_publicEventFeatureSummarySource;
  if (!publicEventFeatureSummarySource)
  {
    v4 = [[PGPublicEventFeatureSummarySource alloc] initWithLoggingConnection:self->_loggingConnection titleGenerationContext:self->_titleGenerationContext graph:self->_graph];
    v5 = self->_publicEventFeatureSummarySource;
    self->_publicEventFeatureSummarySource = v4;

    publicEventFeatureSummarySource = self->_publicEventFeatureSummarySource;
  }

  return publicEventFeatureSummarySource;
}

- (PGBusinessLocationFeatureSummarySource)businessFeatureSummarySource
{
  businessFeatureSummarySource = self->_businessFeatureSummarySource;
  if (!businessFeatureSummarySource)
  {
    v4 = [[PGBusinessLocationFeatureSummarySource alloc] initWithLoggingConnection:self->_loggingConnection titleGenerationContext:self->_titleGenerationContext graph:self->_graph];
    v5 = self->_businessFeatureSummarySource;
    self->_businessFeatureSummarySource = v4;

    businessFeatureSummarySource = self->_businessFeatureSummarySource;
  }

  return businessFeatureSummarySource;
}

- (PGMeaningFeatureSummarySource)meaningFeatureSummarySource
{
  meaningFeatureSummarySource = self->_meaningFeatureSummarySource;
  if (!meaningFeatureSummarySource)
  {
    v4 = [[PGMeaningFeatureSummarySource alloc] initWithLoggingConnection:self->_loggingConnection titleGenerationContext:self->_titleGenerationContext graph:self->_graph];
    v5 = self->_meaningFeatureSummarySource;
    self->_meaningFeatureSummarySource = v4;

    meaningFeatureSummarySource = self->_meaningFeatureSummarySource;
  }

  return meaningFeatureSummarySource;
}

- (PGLocationFeatureSummarySource)locationFeatureSummarySource
{
  locationFeatureSummarySource = self->_locationFeatureSummarySource;
  if (!locationFeatureSummarySource)
  {
    v4 = [[PGLocationFeatureSummarySource alloc] initWithLoggingConnection:self->_loggingConnection titleGenerationContext:self->_titleGenerationContext graph:self->_graph];
    v5 = self->_locationFeatureSummarySource;
    self->_locationFeatureSummarySource = v4;

    locationFeatureSummarySource = self->_locationFeatureSummarySource;
  }

  return locationFeatureSummarySource;
}

- (id)initForTesting
{
  v6.receiver = self;
  v6.super_class = PGHighlightTailorContext;
  v2 = [(PGHighlightTailorContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PGNeighborScoreComputer);
    neighborScoreComputer = v2->_neighborScoreComputer;
    v2->_neighborScoreComputer = v3;
  }

  return v2;
}

- (PGHighlightTailorContext)initWithPhotoLibrary:(id)library graph:(id)graph serviceManager:(id)manager loggingConnection:(id)connection
{
  libraryCopy = library;
  graphCopy = graph;
  managerCopy = manager;
  connectionCopy = connection;
  v28.receiver = self;
  v28.super_class = PGHighlightTailorContext;
  v15 = [(PGHighlightTailorContext *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_photoLibrary, library);
    v17 = objc_alloc_init(PGNeighborScoreComputer);
    neighborScoreComputer = v16->_neighborScoreComputer;
    v16->_neighborScoreComputer = v17;

    v19 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v16->_photoLibrary];
    curationContext = v16->_curationContext;
    v16->_curationContext = v19;

    objc_storeStrong(&v16->_loggingConnection, connection);
    v21 = [[PGTitleGenerationContext alloc] initWithGraph:graphCopy serviceManager:managerCopy];
    titleGenerationContext = v16->_titleGenerationContext;
    v16->_titleGenerationContext = v21;

    infoNode = [graphCopy infoNode];
    [infoNode topTierAestheticScore];
    v16->_topTierAestheticScore = v24;

    objc_storeStrong(&v16->_graph, graph);
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingEnrichmentStateByHighlightUUID = v16->_pendingEnrichmentStateByHighlightUUID;
    v16->_pendingEnrichmentStateByHighlightUUID = v25;
  }

  return v16;
}

@end