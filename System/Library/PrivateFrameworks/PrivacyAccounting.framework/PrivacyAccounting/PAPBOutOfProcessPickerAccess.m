@interface PAPBOutOfProcessPickerAccess
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)pickerType;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v5 = [(PAPBOutOfProcessPickerAccess *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  access = self->_access;
  if (access)
  {
    v5 = [(PAPBAccess *)access dictionaryRepresentation];
    [v3 setObject:v5 forKeyedSubscript:@"access"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_pickerType];
    [v3 setObject:v6 forKeyedSubscript:@"pickerType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_access)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    pickerType = self->_pickerType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PAPBAccess *)self->_access copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_pickerType;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  access = self->_access;
  if (access | *(v4 + 1))
  {
    if (![(PAPBAccess *)access isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_pickerType == *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  access = self->_access;
  v6 = *(v4 + 1);
  if (access)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PAPBAccess *)access mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PAPBOutOfProcessPickerAccess *)self setAccess:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 20))
  {
    self->_pickerType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end