@interface PGMemoryContext
- (PGMemoryContext)initWithFutureLocalDate:(id)a3 timeZone:(id)a4 photoLibrary:(id)a5;
- (PGMemoryContext)initWithLocalDate:(id)a3 timeZone:(id)a4 photoLibrary:(id)a5;
- (PGMemoryContext)initWithMemoryPlanner:(id)a3 photoLibrary:(id)a4;
- (void)initDeniedCategoriesWithPhotoLibrary:(id)a3;
@end

@implementation PGMemoryContext

- (PGMemoryContext)initWithFutureLocalDate:(id)a3 timeZone:(id)a4 photoLibrary:(id)a5
{
  result = [(PGMemoryContext *)self initWithLocalDate:a3 timeZone:a4 photoLibrary:a5];
  if (result)
  {
    result->_futureLookup = 1;
  }

  return result;
}

- (PGMemoryContext)initWithMemoryPlanner:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 configuration];
  v9 = [v8 localDate];
  v10 = [v8 timeZone];
  v11 = [(PGMemoryContext *)self initWithLocalDate:v9 timeZone:v10 photoLibrary:v7];

  if (v11)
  {
    v12 = [v6 creationDateOfLastMemory];
    creationDateOfLastMemory = v11->_creationDateOfLastMemory;
    v11->_creationDateOfLastMemory = v12;

    v11->_numberOfDaysSinceMemoryUpgrade = [v6 numberOfDaysSinceMemoryUpgrade];
  }

  return v11;
}

- (void)initDeniedCategoriesWithPhotoLibrary:(id)a3
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

- (PGMemoryContext)initWithLocalDate:(id)a3 timeZone:(id)a4 photoLibrary:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PGMemoryContext;
  v12 = [(PGMemoryContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localDate, a3);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = [MEMORY[0x277CBEBB0] systemTimeZone];
    }

    timeZone = v13->_timeZone;
    v13->_timeZone = v14;

    objc_storeStrong(&v13->_photoLibrary, a5);
    v13->_futureLookup = 0;
    [(PGMemoryContext *)v13 initDeniedCategoriesWithPhotoLibrary:v11];
  }

  return v13;
}

@end