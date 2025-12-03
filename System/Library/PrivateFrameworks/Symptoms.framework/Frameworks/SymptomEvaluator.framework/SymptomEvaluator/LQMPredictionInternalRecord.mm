@interface LQMPredictionInternalRecord
- (LQMPredictionInternalRecord)initWithCoder:(id)coder;
- (LQMPredictionInternalRecord)initWithOffset:(unsigned int)offset length:(unsigned int)length level:(unsigned int)level confidence:(double)confidence;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LQMPredictionInternalRecord

- (LQMPredictionInternalRecord)initWithOffset:(unsigned int)offset length:(unsigned int)length level:(unsigned int)level confidence:(double)confidence
{
  v11.receiver = self;
  v11.super_class = LQMPredictionInternalRecord;
  result = [(LQMPredictionInternalRecord *)&v11 init];
  if (result)
  {
    result->_offset = offset;
    result->_length = length;
    result->_level = level;
    result->_confidence = confidence;
  }

  return result;
}

- (LQMPredictionInternalRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = LQMPredictionInternalRecord;
  v5 = [(LQMPredictionInternalRecord *)&v8 init];
  if (v5)
  {
    v5->_offset = [coderCopy decodeIntForKey:@"offset"];
    v5->_length = [coderCopy decodeIntForKey:@"length"];
    v5->_level = [coderCopy decodeIntForKey:@"level"];
    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[LQMPredictionInternalRecord offset](self forKey:{"offset"), @"offset"}];
  [coderCopy encodeInt:-[LQMPredictionInternalRecord length](self forKey:{"length"), @"length"}];
  [coderCopy encodeInt:-[LQMPredictionInternalRecord level](self forKey:{"level"), @"level"}];
  [(LQMPredictionInternalRecord *)self confidence];
  [coderCopy encodeDouble:@"confidence" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(LQMPredictionInternalRecord);
  *(result + 2) = self->_offset;
  *(result + 3) = self->_length;
  *(result + 4) = self->_level;
  *(result + 3) = *&self->_confidence;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  offset = [(LQMPredictionInternalRecord *)self offset];
  v5 = [(LQMPredictionInternalRecord *)self length];
  level = [(LQMPredictionInternalRecord *)self level];
  [(LQMPredictionInternalRecord *)self confidence];
  return [v3 stringWithFormat:@"p-let: (%d, %d, %d, %f)", offset, v5, level, v7];
}

@end