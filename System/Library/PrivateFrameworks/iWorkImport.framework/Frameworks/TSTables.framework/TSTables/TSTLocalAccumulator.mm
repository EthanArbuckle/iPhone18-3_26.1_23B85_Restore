@interface TSTLocalAccumulator
- (id)description;
@end

@implementation TSTLocalAccumulator

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = (objc_msgSend_idOfFirstOccurence(self, a2, v2, v3, v4) >> 32);
  Occurence = objc_msgSend_idOfFirstOccurence(self, v8, v9, v10, v11);
  v17 = objc_msgSend_count(self, v13, v14, v15, v16);
  return objc_msgSend_stringWithFormat_(v6, v18, @"cellID:%u, %u, count:%lu", v19, v20, v7, Occurence, v17);
}

@end