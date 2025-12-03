@interface _UIKBRTKeyboardTouchObserver
- (CGPoint)fCenter;
- (CGPoint)jCenter;
- (CGSize)keySize;
- (void)addTouchLocation:(CGPoint)location withRadius:(double)radius withIdentifier:(id)identifier;
- (void)updateWithFCenter:(CGPoint)center jCenter:(CGPoint)jCenter keySize:(CGSize)size rowOffsets:(id)offsets homeRowOffsetIndex:(int)index;
@end

@implementation _UIKBRTKeyboardTouchObserver

- (void)updateWithFCenter:(CGPoint)center jCenter:(CGPoint)jCenter keySize:(CGSize)size rowOffsets:(id)offsets homeRowOffsetIndex:(int)index
{
  v34[10] = *MEMORY[0x1E69E9840];
  self->_fCenter = center;
  self->_jCenter = jCenter;
  self->_keySize = size;
  v9 = [offsets copy];
  rowOffsets = self->_rowOffsets;
  self->_rowOffsets = v9;

  self->_homeRowOffsetIndex = index;
  x = self->_fCenter.x;
  v12 = (x + self->_jCenter.x) * 0.5;
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:x - self->_keySize.width * 2.5];
  v34[0] = v33;
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fCenter.x - self->_keySize.width * 1.5];
  v34[1] = v32;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fCenter.x - self->_keySize.width * 0.5];
  v34[2] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fCenter.x + self->_keySize.width * 0.5];
  v34[3] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v34[4] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_jCenter.x - self->_keySize.width * 0.5];
  v34[5] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_jCenter.x + self->_keySize.width * 0.5];
  v34[6] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_jCenter.x + self->_keySize.width * 1.5];
  v34[7] = v18;
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_jCenter.x + self->_keySize.width * 2.5];
  v34[8] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v12 + v12];
  v34[9] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:10];
  rowXEdges = self->_rowXEdges;
  self->_rowXEdges = v21;

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = -2.0;
  v26 = 6;
  do
  {
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fCenter.y + (v25 + -0.5) * self->_keySize.height];
    [(NSArray *)v23 addObject:v27];

    v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_jCenter.y + (v25 + -0.5) * self->_keySize.height];
    [(NSArray *)v24 addObject:v28];

    v25 = v25 + 1.0;
    --v26;
  }

  while (v26);
  rowYEdgesLeft = self->_rowYEdgesLeft;
  self->_rowYEdgesLeft = v23;
  v30 = v23;

  rowYEdgesRight = self->_rowYEdgesRight;
  self->_rowYEdgesRight = v24;
}

- (void)addTouchLocation:(CGPoint)location withRadius:(double)radius withIdentifier:(id)identifier
{
  y = location.y;
  x = location.x;
  v9 = MEMORY[0x1E696AE30];
  identifierCopy = identifier;
  processInfo = [v9 processInfo];
  [processInfo systemUptime];
  [(_UIKBRTKeyboardTouchObserver *)self addTouchLocation:identifierCopy withRadius:x withTouchTime:y withIdentifier:radius, v11];
}

- (CGPoint)fCenter
{
  x = self->_fCenter.x;
  y = self->_fCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)jCenter
{
  x = self->_jCenter.x;
  y = self->_jCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)keySize
{
  width = self->_keySize.width;
  height = self->_keySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end