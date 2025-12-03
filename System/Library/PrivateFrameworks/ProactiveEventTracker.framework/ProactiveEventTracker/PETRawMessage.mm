@interface PETRawMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PETRawMessage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_typeId = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PETRawMessage *)self setRawBytes:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(PETRawMessage *)self setName:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_typeId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_rawBytes hash]^ v3;
  return v4 ^ [(NSString *)self->_name hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_typeId != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  rawBytes = self->_rawBytes;
  if (rawBytes | *(equalCopy + 2) && ![(NSData *)rawBytes isEqual:?])
  {
    goto LABEL_11;
  }

  name = self->_name;
  if (name | *(equalCopy + 1))
  {
    v8 = [(NSString *)name isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_typeId;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_rawBytes copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_name copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_typeId;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_rawBytes)
  {
    [toCopy setRawBytes:?];
    toCopy = v5;
  }

  if (self->_name)
  {
    [v5 setName:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    typeId = self->_typeId;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_rawBytes)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_typeId];
    [dictionary setObject:v4 forKey:@"type_id"];
  }

  rawBytes = self->_rawBytes;
  if (rawBytes)
  {
    [dictionary setObject:rawBytes forKey:@"raw_bytes"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PETRawMessage;
  v4 = [(PETRawMessage *)&v8 description];
  dictionaryRepresentation = [(PETRawMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end