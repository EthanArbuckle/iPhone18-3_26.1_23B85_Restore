@interface TSTMergeChangeDistributor
- (void)didMergeRange:(TSUModelCellRect)range;
- (void)didUnmergeRange:(TSUModelCellRect)range;
@end

@implementation TSTMergeChangeDistributor

- (void)didMergeRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  if (objc_msgSend_hasReceivers(self, a2, *&range.var0.origin, *&range.var0.size, v3))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211F0DA4;
    v10[3] = &unk_278461380;
    v10[4] = origin;
    v10[5] = size;
    objc_msgSend_distributeBlock_(self, v7, v10, v8, v9);
  }
}

- (void)didUnmergeRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  if (objc_msgSend_hasReceivers(self, a2, *&range.var0.origin, *&range.var0.size, v3))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211F0E44;
    v10[3] = &unk_278461380;
    v10[4] = origin;
    v10[5] = size;
    objc_msgSend_distributeBlock_(self, v7, v10, v8, v9);
  }
}

@end