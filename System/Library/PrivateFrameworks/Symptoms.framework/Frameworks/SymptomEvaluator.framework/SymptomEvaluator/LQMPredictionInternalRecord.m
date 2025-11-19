@interface LQMPredictionInternalRecord
- (LQMPredictionInternalRecord)initWithCoder:(id)a3;
- (LQMPredictionInternalRecord)initWithOffset:(unsigned int)a3 length:(unsigned int)a4 level:(unsigned int)a5 confidence:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LQMPredictionInternalRecord

- (LQMPredictionInternalRecord)initWithOffset:(unsigned int)a3 length:(unsigned int)a4 level:(unsigned int)a5 confidence:(double)a6
{
  v11.receiver = self;
  v11.super_class = LQMPredictionInternalRecord;
  result = [(LQMPredictionInternalRecord *)&v11 init];
  if (result)
  {
    result->_offset = a3;
    result->_length = a4;
    result->_level = a5;
    result->_confidence = a6;
  }

  return result;
}

- (LQMPredictionInternalRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LQMPredictionInternalRecord;
  v5 = [(LQMPredictionInternalRecord *)&v8 init];
  if (v5)
  {
    v5->_offset = [v4 decodeIntForKey:@"offset"];
    v5->_length = [v4 decodeIntForKey:@"length"];
    v5->_level = [v4 decodeIntForKey:@"level"];
    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[LQMPredictionInternalRecord offset](self forKey:{"offset"), @"offset"}];
  [v4 encodeInt:-[LQMPredictionInternalRecord length](self forKey:{"length"), @"length"}];
  [v4 encodeInt:-[LQMPredictionInternalRecord level](self forKey:{"level"), @"level"}];
  [(LQMPredictionInternalRecord *)self confidence];
  [v4 encodeDouble:@"confidence" forKey:?];
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(LQMPredictionInternalRecord *)self offset];
  v5 = [(LQMPredictionInternalRecord *)self length];
  v6 = [(LQMPredictionInternalRecord *)self level];
  [(LQMPredictionInternalRecord *)self confidence];
  return [v3 stringWithFormat:@"p-let: (%d, %d, %d, %f)", v4, v5, v6, v7];
}

@end