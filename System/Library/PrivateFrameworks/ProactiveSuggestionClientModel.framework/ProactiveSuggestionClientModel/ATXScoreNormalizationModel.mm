@interface ATXScoreNormalizationModel
- (ATXScoreNormalizationModel)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)normalizeScore:(id)a3;
- (void)addScore:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getStateReadyForNormalization;
- (void)resetBuffer;
@end

@implementation ATXScoreNormalizationModel

- (void)addScore:(id)a3
{
  v4 = a3;
  v5 = [(ATXScoreNormalizationModel *)self bufferHead];
  v6 = [(ATXScoreNormalizationModel *)self circularBuffer];
  v7 = [v6 count];

  v8 = [(ATXScoreNormalizationModel *)self circularBuffer];
  v9 = v8;
  if (v7 <= v5)
  {
    [v8 addObject:v4];
  }

  else
  {
    [v8 replaceObjectAtIndex:-[ATXScoreNormalizationModel bufferHead](self withObject:{"bufferHead"), v4}];
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

- (id)normalizeScore:(id)a3
{
  v4 = a3;
  v5 = [(ATXScoreNormalizationModel *)self circularBuffer];
  v6 = [v5 count];

  if (v6)
  {
    if (![(ATXScoreNormalizationModel *)self isBufferSorted])
    {
      [(ATXScoreNormalizationModel *)self getStateReadyForNormalization];
    }

    v7 = [(ATXScoreNormalizationModel *)self circularBuffer];
    v8 = [v7 count];

    v9 = 0;
    if (v8)
    {
      do
      {
        v10 = [(ATXScoreNormalizationModel *)self circularBuffer];
        v11 = [v10 objectAtIndexedSubscript:v9];
        [v11 doubleValue];
        v13 = v12;
        [v4 doubleValue];
        v15 = v14;

        if (v13 > v15)
        {
          break;
        }

        ++v9;
        v16 = [(ATXScoreNormalizationModel *)self circularBuffer];
        v17 = [v16 count];
      }

      while (v17 > v9);
      v18 = v9;
    }

    else
    {
      v18 = 0.0;
    }

    v20 = [(ATXScoreNormalizationModel *)self circularBuffer];
    v21 = [v20 count] - 1;

    if (v21 == v9)
    {
      v19 = &unk_1F5A412C0;
    }

    else
    {
      v22 = MEMORY[0x1E696AD98];
      v23 = [(ATXScoreNormalizationModel *)self circularBuffer];
      v19 = [v22 numberWithDouble:{v18 / objc_msgSend(v23, "count") * 100.0}];
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
  v3 = [(ATXScoreNormalizationModel *)self circularBuffer];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
  [v3 sortUsingDescriptors:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSMutableArray *)self->_circularBuffer copyWithZone:a3];
  [v5 setCircularBuffer:v6];

  [v5 setIsBufferSorted:self->_isBufferSorted];
  [v5 setBufferHead:self->_bufferHead];
  [v5 setBufferSize:self->_bufferSize];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ATXScoreNormalizationModel *)self circularBuffer];
  [v5 encodeObject:v4 forKey:@"circularBuffer"];

  [v5 encodeBool:-[ATXScoreNormalizationModel isBufferSorted](self forKey:{"isBufferSorted"), @"isBufferSorted"}];
  [v5 encodeInt64:-[ATXScoreNormalizationModel bufferSize](self forKey:{"bufferSize"), @"bufferSize"}];
  [v5 encodeInt64:-[ATXScoreNormalizationModel bufferHead](self forKey:{"bufferHead"), @"bufferHead"}];
}

- (ATXScoreNormalizationModel)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"circularBuffer"];
  v9 = [v5 decodeBoolForKey:@"isBufferSorted"];
  v10 = [v5 decodeInt32ForKey:@"bufferSize"];
  v11 = [v5 decodeInt32ForKey:@"bufferHead"];

  v12 = [ATXScoreNormalizationParameters alloc];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v14 = [(ATXScoreNormalizationParameters *)v12 initWithBufferSize:v13];

  v15 = [(ATXScoreNormalizationModel *)self initWithParameters:v14 circularBuffer:v8 bufferHead:v11 isBufferSorted:v9];
  return v15;
}

@end