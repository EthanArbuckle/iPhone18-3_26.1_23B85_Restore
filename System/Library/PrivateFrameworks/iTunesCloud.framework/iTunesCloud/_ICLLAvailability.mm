@interface _ICLLAvailability
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation _ICLLAvailability

- (unint64_t)hash
{
  v3 = PBRepeatedInt32Hash();
  v4 = PBRepeatedInt32Hash();
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_autoPlay;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_6;
  }

  v5 = (equalCopy[60] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[60] & 1) == 0)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    if (self->_autoPlay)
    {
      if ((equalCopy[56] & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (equalCopy[56])
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  if (*&self->_has)
  {
    v4[56] = self->_autoPlay;
    v4[60] |= 1u;
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_repeatModes.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      toCopy = v7;
      ++v5;
    }

    while (v5 < self->_repeatModes.count);
  }

  if (self->_shuffleModes.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      toCopy = v7;
      ++v6;
    }

    while (v6 < self->_shuffleModes.count);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedInt32NSArray();
  [dictionary setObject:v4 forKey:@"repeatMode"];

  v5 = PBRepeatedInt32NSArray();
  [dictionary setObject:v5 forKey:@"shuffleMode"];

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_autoPlay];
    [dictionary setObject:v6 forKey:@"autoPlay"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLAvailability;
  v4 = [(_ICLLAvailability *)&v8 description];
  dictionaryRepresentation = [(_ICLLAvailability *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = _ICLLAvailability;
  [(_ICLLAvailability *)&v3 dealloc];
}

@end