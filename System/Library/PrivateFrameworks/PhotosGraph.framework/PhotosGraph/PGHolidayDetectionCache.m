@interface PGHolidayDetectionCache
- (PGHolidayDetectionCache)init;
@end

@implementation PGHolidayDetectionCache

- (PGHolidayDetectionCache)init
{
  v10.receiver = self;
  v10.super_class = PGHolidayDetectionCache;
  v2 = [(PGHolidayDetectionCache *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    holidayDateNodes = v2->_holidayDateNodes;
    v2->_holidayDateNodes = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    positivelyClassifiedMomentNodes = v2->_positivelyClassifiedMomentNodes;
    v2->_positivelyClassifiedMomentNodes = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    negativelyClassifiedMomentNodes = v2->_negativelyClassifiedMomentNodes;
    v2->_negativelyClassifiedMomentNodes = v7;
  }

  return v2;
}

@end