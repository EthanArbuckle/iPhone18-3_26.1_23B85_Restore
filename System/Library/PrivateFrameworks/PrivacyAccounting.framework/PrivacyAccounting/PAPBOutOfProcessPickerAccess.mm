@interface PAPBOutOfProcessPickerAccess
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)pickerType;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PAPBOutOfProcessPickerAccess

- (int)pickerType
{
  if (*&self->_has)
  {
    return self->_pickerType;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PAPBOutOfProcessPickerAccess;
  v4 = [(PAPBOutOfProcessPickerAccess *)&v8 description];
  dictionaryRepresentation = [(PAPBOutOfProcessPickerAccess *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  access = self->_access;
  if (access)
  {
    dictionaryRepresentation = [(PAPBAccess *)access dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"access"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_pickerType];
    [dictionary setObject:v6 forKeyedSubscript:@"pickerType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_access)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    pickerType = self->_pickerType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PAPBAccess *)self->_access copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_pickerType;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  access = self->_access;
  if (access | *(equalCopy + 1))
  {
    if (![(PAPBAccess *)access isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_pickerType == *(equalCopy + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(PAPBAccess *)self->_access hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_pickerType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  access = self->_access;
  v6 = *(fromCopy + 1);
  if (access)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(PAPBAccess *)access mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(PAPBOutOfProcessPickerAccess *)self setAccess:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 20))
  {
    self->_pickerType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end