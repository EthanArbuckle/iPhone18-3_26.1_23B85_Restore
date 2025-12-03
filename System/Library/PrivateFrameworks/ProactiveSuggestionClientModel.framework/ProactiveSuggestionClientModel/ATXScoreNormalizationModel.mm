@interface ATXScoreNormalizationModel
- (ATXScoreNormalizationModel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)normalizeScore:(id)score;
- (void)addScore:(id)score;
- (void)encodeWithCoder:(id)coder;
- (void)getStateReadyForNormalization;
- (void)resetBuffer;
@end

@implementation ATXScoreNormalizationModel

- (void)addScore:(id)score
{
  scoreCopy = score;
  bufferHead = [(ATXScoreNormalizationModel *)self bufferHead];
  circularBuffer = [(ATXScoreNormalizationModel *)self circularBuffer];
  v7 = [circularBuffer count];

  circularBuffer2 = [(ATXScoreNormalizationModel *)self circularBuffer];
  v9 = circularBuffer2;
  if (v7 <= bufferHead)
  {
    [circularBuffer2 addObject:scoreCopy];
  }

  else
  {
    [circularBuffer2 replaceObjectAtIndex:-[ATXScoreNormalizationModel bufferHead](self withObject:{"bufferHead"), scoreCopy}];
  }

  [(ATXScoreNormalizationModel *)self setBufferHead:(([(ATXScoreNormalizationModel *)self bufferHead]+ 1) % [(ATXScoreNormalizationModel *)self bufferSize])];

  [(ATXScoreNormalizationModel *)self setIsBufferSorted:0];
}

- (void)resetBuffer
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[ATXScoreNormalizationModel bufferSize](self, "bufferSize")}];
  [(ATXScoreNormalizationModel *)self setCircularBuffer:v3];

  [(ATXScoreNormalizationModel *)self setBufferHead:0];
}

- (id)normalizeScore:(id)score
{
  scoreCopy = score;
  circularBuffer = [(ATXScoreNormalizationModel *)self circularBuffer];
  v6 = [circularBuffer count];

  if (v6)
  {
    if (![(ATXScoreNormalizationModel *)self isBufferSorted])
    {
      [(ATXScoreNormalizationModel *)self getStateReadyForNormalization];
    }

    circularBuffer2 = [(ATXScoreNormalizationModel *)self circularBuffer];
    v8 = [circularBuffer2 count];

    v9 = 0;
    if (v8)
    {
      do
      {
        circularBuffer3 = [(ATXScoreNormalizationModel *)self circularBuffer];
        v11 = [circularBuffer3 objectAtIndexedSubscript:v9];
        [v11 doubleValue];
        v13 = v12;
        [scoreCopy doubleValue];
        v15 = v14;

        if (v13 > v15)
        {
          break;
        }

        ++v9;
        circularBuffer4 = [(ATXScoreNormalizationModel *)self circularBuffer];
        v17 = [circularBuffer4 count];
      }

      while (v17 > v9);
      v18 = v9;
    }

    else
    {
      v18 = 0.0;
    }

    circularBuffer5 = [(ATXScoreNormalizationModel *)self circularBuffer];
    v21 = [circularBuffer5 count] - 1;

    if (v21 == v9)
    {
      v19 = &unk_1F5A412C0;
    }

    else
    {
      v22 = MEMORY[0x1E696AD98];
      circularBuffer6 = [(ATXScoreNormalizationModel *)self circularBuffer];
      v19 = [v22 numberWithDouble:{v18 / objc_msgSend(circularBuffer6, "count") * 100.0}];
    }
  }

  else
  {
    v19 = &unk_1F5A412D8;
  }

  return v19;
}

- (void)getStateReadyForNormalization
{
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  circularBuffer = [(ATXScoreNormalizationModel *)self circularBuffer];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
  [circularBuffer sortUsingDescriptors:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSMutableArray *)self->_circularBuffer copyWithZone:zone];
  [v5 setCircularBuffer:v6];

  [v5 setIsBufferSorted:self->_isBufferSorted];
  [v5 setBufferHead:self->_bufferHead];
  [v5 setBufferSize:self->_bufferSize];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  circularBuffer = [(ATXScoreNormalizationModel *)self circularBuffer];
  [coderCopy encodeObject:circularBuffer forKey:@"circularBuffer"];

  [coderCopy encodeBool:-[ATXScoreNormalizationModel isBufferSorted](self forKey:{"isBufferSorted"), @"isBufferSorted"}];
  [coderCopy encodeInt64:-[ATXScoreNormalizationModel bufferSize](self forKey:{"bufferSize"), @"bufferSize"}];
  [coderCopy encodeInt64:-[ATXScoreNormalizationModel bufferHead](self forKey:{"bufferHead"), @"bufferHead"}];
}

- (ATXScoreNormalizationModel)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"circularBuffer"];
  v9 = [coderCopy decodeBoolForKey:@"isBufferSorted"];
  v10 = [coderCopy decodeInt32ForKey:@"bufferSize"];
  v11 = [coderCopy decodeInt32ForKey:@"bufferHead"];

  v12 = [ATXScoreNormalizationParameters alloc];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v14 = [(ATXScoreNormalizationParameters *)v12 initWithBufferSize:v13];

  v15 = [(ATXScoreNormalizationModel *)self initWithParameters:v14 circularBuffer:v8 bufferHead:v11 isBufferSorted:v9];
  return v15;
}

@end