@interface AMPMusicFeature
- (BOOL)isEqual:(id)a3;
- (float)valueAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AMPMusicFeature

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4[4])
  {
    [(AMPMusicFeature *)self setKey:?];
    v4 = v8;
  }

  v5 = [v4 valuesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      [v8 valueAtIndex:i];
      [(AMPMusicFeature *)self addValue:?];
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[4])) || -[NSString isEqual:](key, "isEqual:")))
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  PBRepeatedFloatCopy();
  return v5;
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if (self->_key)
  {
    [v7 setKey:?];
  }

  if ([(AMPMusicFeature *)self valuesCount])
  {
    [v7 clearValues];
    v4 = [(AMPMusicFeature *)self valuesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [(AMPMusicFeature *)self valueAtIndex:i];
        [v7 addValue:?];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  p_values = &self->_values;
  if (p_values->count)
  {
    v6 = 0;
    do
    {
      v7 = p_values->list[v6];
      PBDataWriterWriteFloatField();
      v4 = v8;
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
  v4 = [(AMPMusicFeature *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (float)valueAtIndex:(unint64_t)a3
{
  p_values = &self->_values;
  count = self->_values.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_values->list[a3];
}

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = AMPMusicFeature;
  [(AMPMusicFeature *)&v3 dealloc];
}

@end