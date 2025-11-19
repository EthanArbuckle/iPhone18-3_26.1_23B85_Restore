@interface _ICLLAvailability
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_6;
  }

  v5 = (v4[60] & 1) == 0;
  if (*&self->_has)
  {
    if ((v4[60] & 1) == 0)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    if (self->_autoPlay)
    {
      if ((v4[56] & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v4[56])
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  if (*&self->_has)
  {
    v4[56] = self->_autoPlay;
    v4[60] |= 1u;
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_repeatModes.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      v4 = v7;
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
      v4 = v7;
      ++v6;
    }

    while (v6 < self->_shuffleModes.count);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedInt32NSArray();
  [v3 setObject:v4 forKey:@"repeatMode"];

  v5 = PBRepeatedInt32NSArray();
  [v3 setObject:v5 forKey:@"shuffleMode"];

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_autoPlay];
    [v3 setObject:v6 forKey:@"autoPlay"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLAvailability;
  v4 = [(_ICLLAvailability *)&v8 description];
  v5 = [(_ICLLAvailability *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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