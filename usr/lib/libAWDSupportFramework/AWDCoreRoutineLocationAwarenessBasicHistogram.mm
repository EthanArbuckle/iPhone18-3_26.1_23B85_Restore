@interface AWDCoreRoutineLocationAwarenessBasicHistogram
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)countAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLocationAwarenessBasicHistogram

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessBasicHistogram;
  [(AWDCoreRoutineLocationAwarenessBasicHistogram *)&v3 dealloc];
}

- (int)countAtIndex:(unint64_t)index
{
  p_counts = &self->_counts;
  count = self->_counts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_counts->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessBasicHistogram;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLocationAwarenessBasicHistogram description](&v3, sel_description), -[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"count"];
  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if ([(AWDCoreRoutineLocationAwarenessBasicHistogram *)self countsCount])
  {
    [to clearCounts];
    countsCount = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self countsCount];
    if (countsCount)
    {
      v6 = countsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addCount:{-[AWDCoreRoutineLocationAwarenessBasicHistogram countAtIndex:](self, "countAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v3 = [equal isMemberOfClass:objc_opt_class()];
  if (v3)
  {

    LOBYTE(v3) = PBRepeatedInt32IsEqual();
  }

  return v3;
}

- (void)mergeFrom:(id)from
{
  countsCount = [from countsCount];
  if (countsCount)
  {
    v6 = countsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCoreRoutineLocationAwarenessBasicHistogram addCount:](self, "addCount:", [from countAtIndex:i]);
    }
  }
}

@end