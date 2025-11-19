@interface PGGraphAddressEdgeCollection
- (NSDate)universalStartDate;
- (NSSet)universalDateIntervals;
- (unint64_t)numberOfAssets;
@end

@implementation PGGraphAddressEdgeCollection

- (NSSet)universalDateIntervals
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PGGraphAddressEdgeCollection_universalDateIntervals__block_invoke;
  v6[3] = &unk_278889848;
  v4 = v3;
  v7 = v4;
  [(MAElementCollection *)self enumerateIdentifiersAsCollectionsWithBlock:v6];

  return v4;
}

void __54__PGGraphAddressEdgeCollection_universalDateIntervals__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 anyEdge];
  v4 = [v8 universalStartDate];
  v5 = [v8 universalEndDate];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v5];
    [*(a1 + 32) addObject:v7];
  }
}

- (unint64_t)numberOfAssets
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__PGGraphAddressEdgeCollection_numberOfAssets__block_invoke;
  v4[3] = &unk_278889820;
  v4[4] = &v5;
  [(MAEdgeCollection *)self enumerateUnsignedIntegerPropertyValuesForKey:@"noa" withBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSDate)universalStartDate
{
  if ([(MAElementCollection *)self count])
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0x7FEFFFFFFFFFFFFFLL;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__PGGraphAddressEdgeCollection_universalStartDate__block_invoke;
    v5[3] = &unk_2788897F8;
    v5[4] = &v6;
    [(MAEdgeCollection *)self enumerateDoublePropertyValuesForKey:@"utcs" withBlock:v5];
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7[3]];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __50__PGGraphAddressEdgeCollection_universalStartDate__block_invoke(uint64_t result, double a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) < a2)
  {
    a2 = *(v2 + 24);
  }

  *(v2 + 24) = a2;
  return result;
}

@end