@interface TSTWPColumnCache
- (void)invalidateObjectsWithKeysInCellRange:(TSUCellRect)range;
- (void)invalidateObjectsWithKeysInCellRegion:(id)region;
@end

@implementation TSTWPColumnCache

- (void)invalidateObjectsWithKeysInCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22168A570;
  v11[3] = &unk_2784680F8;
  v13 = origin;
  v14 = size;
  v12 = v6;
  v7 = v6;
  objc_msgSend_performSyncWriteWithUnderlyingDictionary_(self, v8, v11, v9, v10);
}

- (void)invalidateObjectsWithKeysInCellRegion:(id)region
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22168A7A4;
  v5[3] = &unk_278468120;
  v5[4] = self;
  objc_msgSend_enumerateCellRangesUsingBlock_(region, a2, v5, v3, v4);
}

@end