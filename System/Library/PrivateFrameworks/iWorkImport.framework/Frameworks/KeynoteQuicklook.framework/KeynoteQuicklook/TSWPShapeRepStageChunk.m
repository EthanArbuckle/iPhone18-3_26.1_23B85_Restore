@interface TSWPShapeRepStageChunk
- (id)description;
- (void)dealloc;
@end

@implementation TSWPShapeRepStageChunk

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPShapeRepStageChunk;
  [(TSWPShapeRepStageChunk *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = TSWPShapeRepStageChunk;
  v4 = [(TSWPShapeRepStageChunk *)&v7 description];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@: stage %d, ranges:%@", v4, self->_stageIndex, self->_storageRanges);
}

@end