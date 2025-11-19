@interface TSTUniqueValuesToRows
- (TSTUniqueValuesToRows)init;
@end

@implementation TSTUniqueValuesToRows

- (TSTUniqueValuesToRows)init
{
  v8.receiver = self;
  v8.super_class = TSTUniqueValuesToRows;
  v2 = [(TSTUniqueValuesToRows *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uniqueValueToRowUids = v2->_uniqueValueToRowUids;
    v2->_uniqueValueToRowUids = v3;

    v5 = objc_opt_new();
    uniqueValueToRowIndexes = v2->_uniqueValueToRowIndexes;
    v2->_uniqueValueToRowIndexes = v5;
  }

  return v2;
}

@end