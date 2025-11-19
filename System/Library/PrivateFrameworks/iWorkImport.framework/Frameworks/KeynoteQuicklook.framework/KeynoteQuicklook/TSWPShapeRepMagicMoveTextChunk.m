@interface TSWPShapeRepMagicMoveTextChunk
- (TSWPShapeRepMagicMoveTextChunk)init;
- (_NSRange)range;
- (id)description;
- (void)dealloc;
@end

@implementation TSWPShapeRepMagicMoveTextChunk

- (TSWPShapeRepMagicMoveTextChunk)init
{
  v3.receiver = self;
  v3.super_class = TSWPShapeRepMagicMoveTextChunk;
  result = [(TSWPShapeRepMagicMoveTextChunk *)&v3 init];
  if (result)
  {
    result->_isVisible = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPShapeRepMagicMoveTextChunk;
  [(TSWPShapeRepMagicMoveTextChunk *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TSWPShapeRepMagicMoveTextChunk;
  v4 = [(TSWPShapeRepMagicMoveTextChunk *)&v10 description];
  rep = self->_rep;
  stringValue = self->_stringValue;
  v7 = NSStringFromRange(self->_range);
  return objc_msgSend_stringWithFormat_(v3, v8, @"%@: %@ {rep:%@, range:%@, hasListLabel:%d, stage:%d}", v4, stringValue, rep, v7, self->_hasListLabel, self->_stageIndex);
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end