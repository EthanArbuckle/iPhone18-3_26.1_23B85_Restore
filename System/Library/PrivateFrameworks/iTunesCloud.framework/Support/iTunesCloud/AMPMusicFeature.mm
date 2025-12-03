@interface AMPMusicFeature
- (BOOL)isEqual:(id)equal;
- (float)valueAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AMPMusicFeature

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (fromCopy[4])
  {
    [(AMPMusicFeature *)self setKey:?];
    fromCopy = v8;
  }

  valuesCount = [fromCopy valuesCount];
  if (valuesCount)
  {
    v6 = valuesCount;
    for (i = 0; i != v6; ++i)
    {
      [v8 valueAtIndex:i];
      [(AMPMusicFeature *)self addValue:?];
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[4])) || -[NSString isEqual:](key, "isEqual:")))
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  PBRepeatedFloatCopy();
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_key)
  {
    [toCopy setKey:?];
  }

  if ([(AMPMusicFeature *)self valuesCount])
  {
    [toCopy clearValues];
    valuesCount = [(AMPMusicFeature *)self valuesCount];
    if (valuesCount)
    {
      v5 = valuesCount;
      for (i = 0; i != v5; ++i)
      {
        [(AMPMusicFeature *)self valueAtIndex:i];
        [toCopy addValue:?];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  p_values = &self->_values;
  if (p_values->count)
  {
    v6 = 0;
    do
    {
      v7 = p_values->list[v6];
      PBDataWriterWriteFloatField();
      toCopy = v8;
      ++v6;
    }

    while (v6 < p_values->count);
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  v6 = PBRepeatedFloatNSArray();
  [v4 setObject:v6 forKey:@"value"];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AMPMusicFeature;
  v3 = [(AMPMusicFeature *)&v7 description];
  dictionaryRepresentation = [(AMPMusicFeature *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (float)valueAtIndex:(unint64_t)index
{
  p_values = &self->_values;
  count = self->_values.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_values->list[index];
}

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = AMPMusicFeature;
  [(AMPMusicFeature *)&v3 dealloc];
}

@end