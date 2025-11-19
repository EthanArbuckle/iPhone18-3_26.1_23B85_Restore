@interface PPSourceStats
- (NSSet)featureNames;
- (PPSourceStats)initWithMinRefCount:(int64_t)a3 maxRefCount:(int64_t)a4 avgRefCount:(double)a5 medianRefCount:(double)a6 earliestDate:(id)a7 latestDate:(id)a8 uniqueBundleIdCount:(int64_t)a9 uniqueDocIdCount:(int64_t)a10 recordCount:(unint64_t)a11;
- (id)featureValueForName:(id)a3;
- (id)toDictionary;
@end

@implementation PPSourceStats

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"minRefCount"])
  {
    v5 = MEMORY[0x277CBFEF8];
    minRefCount = self->_minRefCount;
LABEL_5:
    v7 = [v5 featureValueWithInt64:minRefCount];
LABEL_16:
    v12 = v7;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"maxRefCount"])
  {
    v5 = MEMORY[0x277CBFEF8];
    minRefCount = self->_maxRefCount;
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"meanRefCount"])
  {
    v8 = MEMORY[0x277CBFEF8];
    avgRefCount = self->_avgRefCount;
LABEL_15:
    v7 = [v8 featureValueWithDouble:avgRefCount];
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"medianRefCount"])
  {
    v8 = MEMORY[0x277CBFEF8];
    avgRefCount = self->_medianRefCount;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"earliestDate"])
  {
    v10 = MEMORY[0x277CBFEF8];
    earliestDate = self->_earliestDate;
LABEL_14:
    [(NSDate *)earliestDate timeIntervalSince1970];
    v8 = v10;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"latestDate"])
  {
    v10 = MEMORY[0x277CBFEF8];
    earliestDate = self->_latestDate;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"bundleIdCount"])
  {
    v5 = MEMORY[0x277CBFEF8];
    minRefCount = self->_uniqueBundleIdCount;
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"docIdCount"])
  {
    v5 = MEMORY[0x277CBFEF8];
    minRefCount = self->_uniqueDocIdCount;
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"recordCount"])
  {
    v5 = MEMORY[0x277CBFEF8];
    minRefCount = self->_recordCount;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (NSSet)featureNames
{
  if (featureNames__pasOnceToken43 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken43, &__block_literal_global_953);
  }

  v3 = featureNames__pasExprOnceResult;

  return v3;
}

void __29__PPSourceStats_featureNames__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"minRefCount", @"maxRefCount", @"meanRefCount", @"medianRefCount", @"earliestDate", @"latestDate", @"bundleIdCount", @"docIdCount", @"recordCount", 0}];
  objc_autoreleasePoolPop(v1);
  v3 = featureNames__pasExprOnceResult;
  featureNames__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

- (id)toDictionary
{
  v28[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setFormatOptions:275];
  v27[0] = @"ref_count";
  v25[0] = @"min";
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minRefCount];
  v26[0] = v19;
  v25[1] = @"max";
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_maxRefCount];
  v26[1] = v18;
  v25[2] = @"median";
  medianRefCount = self->_medianRefCount;
  if (medianRefCount < 0.0)
  {
    v5 = @"<no-info>";
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_medianRefCount];
  }

  v26[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:{3, v5}];
  v28[0] = v6;
  v27[1] = @"date";
  v23[0] = @"earliest";
  if (self->_earliestDate)
  {
    [v3 stringFromDate:?];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v7 = ;
  v23[1] = @"latest";
  v24[0] = v7;
  v20 = v3;
  if (self->_latestDate)
  {
    [v3 stringFromDate:?];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v8 = ;
  v24[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v28[1] = v9;
  v27[2] = @"unique_field_count";
  v21[0] = @"bundleId";
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_uniqueBundleIdCount];
  v21[1] = @"docId";
  v22[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_uniqueDocIdCount];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v28[2] = v12;
  v27[3] = @"recordCount";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_recordCount];
  v28[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

  if (medianRefCount >= 0.0)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (PPSourceStats)initWithMinRefCount:(int64_t)a3 maxRefCount:(int64_t)a4 avgRefCount:(double)a5 medianRefCount:(double)a6 earliestDate:(id)a7 latestDate:(id)a8 uniqueBundleIdCount:(int64_t)a9 uniqueDocIdCount:(int64_t)a10 recordCount:(unint64_t)a11
{
  v20 = a7;
  v21 = a8;
  v25.receiver = self;
  v25.super_class = PPSourceStats;
  v22 = [(PPSourceStats *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_minRefCount = a3;
    v22->_maxRefCount = a4;
    v22->_avgRefCount = a5;
    v22->_medianRefCount = a6;
    objc_storeStrong(&v22->_earliestDate, a7);
    objc_storeStrong(&v23->_latestDate, a8);
    v23->_uniqueBundleIdCount = a9;
    v23->_uniqueDocIdCount = a10;
    v23->_recordCount = a11;
  }

  return v23;
}

@end