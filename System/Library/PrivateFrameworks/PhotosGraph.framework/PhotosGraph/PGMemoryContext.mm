@interface PGMemoryContext
- (PGMemoryContext)initWithFutureLocalDate:(id)date timeZone:(id)zone photoLibrary:(id)library;
- (PGMemoryContext)initWithLocalDate:(id)date timeZone:(id)zone photoLibrary:(id)library;
- (PGMemoryContext)initWithMemoryPlanner:(id)planner photoLibrary:(id)library;
- (void)initDeniedCategoriesWithPhotoLibrary:(id)library;
@end

@implementation PGMemoryContext

- (PGMemoryContext)initWithFutureLocalDate:(id)date timeZone:(id)zone photoLibrary:(id)library
{
  result = [(PGMemoryContext *)self initWithLocalDate:date timeZone:zone photoLibrary:library];
  if (result)
  {
    result->_futureLookup = 1;
  }

  return result;
}

- (PGMemoryContext)initWithMemoryPlanner:(id)planner photoLibrary:(id)library
{
  plannerCopy = planner;
  libraryCopy = library;
  configuration = [plannerCopy configuration];
  localDate = [configuration localDate];
  timeZone = [configuration timeZone];
  v11 = [(PGMemoryContext *)self initWithLocalDate:localDate timeZone:timeZone photoLibrary:libraryCopy];

  if (v11)
  {
    creationDateOfLastMemory = [plannerCopy creationDateOfLastMemory];
    creationDateOfLastMemory = v11->_creationDateOfLastMemory;
    v11->_creationDateOfLastMemory = creationDateOfLastMemory;

    v11->_numberOfDaysSinceMemoryUpgrade = [plannerCopy numberOfDaysSinceMemoryUpgrade];
  }

  return v11;
}

- (void)initDeniedCategoriesWithPhotoLibrary:(id)library
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [(NSIndexSet *)v4 addIndex:8];
  [(NSIndexSet *)v4 addIndex:23];
  [(NSIndexSet *)v4 addIndex:31];
  categoriesDeniedForFallback = self->_categoriesDeniedForFallback;
  self->_categoriesDeniedForFallback = v4;
  v8 = v4;

  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [(NSIndexSet *)v6 addIndex:31];
  categoriesDeniedForContextual = self->_categoriesDeniedForContextual;
  self->_categoriesDeniedForContextual = v6;
}

- (PGMemoryContext)initWithLocalDate:(id)date timeZone:(id)zone photoLibrary:(id)library
{
  dateCopy = date;
  zoneCopy = zone;
  libraryCopy = library;
  v17.receiver = self;
  v17.super_class = PGMemoryContext;
  v12 = [(PGMemoryContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localDate, date);
    if (zoneCopy)
    {
      systemTimeZone = zoneCopy;
    }

    else
    {
      systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    }

    timeZone = v13->_timeZone;
    v13->_timeZone = systemTimeZone;

    objc_storeStrong(&v13->_photoLibrary, library);
    v13->_futureLookup = 0;
    [(PGMemoryContext *)v13 initDeniedCategoriesWithPhotoLibrary:libraryCopy];
  }

  return v13;
}

@end