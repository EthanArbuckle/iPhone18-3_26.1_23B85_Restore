@interface AWDCoreRoutineLocationAwarenessBasicHistogram
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)countAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineLocationAwarenessBasicHistogram

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessBasicHistogram;
  [(AWDCoreRoutineLocationAwarenessBasicHistogram *)&v3 dealloc];
}

- (int)countAtIndex:(unint64_t)a3
{
  p_counts = &self->_counts;
  count = self->_counts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_counts->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessBasicHistogram;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLocationAwarenessBasicHistogram description](&v3, sel_description), -[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x29EDB8E00] dictionary];
  [v2 setObject:PBRepeatedInt32NSArray() forKey:@"count"];
  return v2;
}

- (void)writeTo:(id)a3
{
  p_counts = &self->_counts;
  if (self->_counts.count)
  {
    v4 = 0;
    do
    {
      v5 = p_counts->list[v4];
      PBDataWriterWriteInt32Field();
      ++v4;
    }

    while (v4 < p_counts->count);
  }
}

- (void)copyTo:(id)a3
{
  if ([(AWDCoreRoutineLocationAwarenessBasicHistogram *)self countsCount])
  {
    [a3 clearCounts];
    v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self countsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addCount:{-[AWDCoreRoutineLocationAwarenessBasicHistogram countAtIndex:](self, "countAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = [a3 isMemberOfClass:objc_opt_class()];
  if (v3)
  {

    LOBYTE(v3) = PBRepeatedInt32IsEqual();
  }

  return v3;
}

- (void)mergeFrom:(id)a3
{
  v5 = [a3 countsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCoreRoutineLocationAwarenessBasicHistogram addCount:](self, "addCount:", [a3 countAtIndex:i]);
    }
  }
}

@end