@interface TSDDefaultHint
+ (Class)archivedHintClass;
- (BOOL)isLastPartitionHorizontally:(BOOL)horizontally;
- (CGRect)bounds;
- (TSDDefaultHint)initWithBounds:(CGRect)bounds edges:(unint64_t)edges;
- (id)copyForArchiving;
@end

@implementation TSDDefaultHint

- (TSDDefaultHint)initWithBounds:(CGRect)bounds edges:(unint64_t)edges
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10.receiver = self;
  v10.super_class = TSDDefaultHint;
  result = [(TSDDefaultHint *)&v10 init];
  if (result)
  {
    result->mBounds.origin.x = x;
    result->mBounds.origin.y = y;
    result->mBounds.size.width = width;
    result->mBounds.size.height = height;
    result->mEdges = edges;
  }

  return result;
}

- (id)copyForArchiving
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDDefaultHint copyForArchiving]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDefaultHint.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 33, 0, "Should not be copying default hints.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = objc_alloc(objc_opt_class());
  mEdges = self->mEdges;
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;

  return objc_msgSend_initWithBounds_edges_(v10, v11, mEdges, x, y, width, height);
}

- (BOOL)isLastPartitionHorizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  v4 = objc_msgSend_edges(self, a2, horizontally);
  v5 = 4;
  if (horizontallyCopy)
  {
    v5 = 8;
  }

  return (v4 & v5) != 0;
}

+ (Class)archivedHintClass
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSDDefaultHint archivedHintClass]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDefaultHint.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 58, 0, "Can't archive default hints.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  return 0;
}

- (CGRect)bounds
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end