@interface PETRawMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PETRawMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    self->_typeId = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(PETRawMessage *)self setRawBytes:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(PETRawMessage *)self setName:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_typeId != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  rawBytes = self->_rawBytes;
  if (rawBytes | *(v4 + 2) && ![(NSData *)rawBytes isEqual:?])
  {
    goto LABEL_11;
  }

  name = self->_name;
  if (name | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_typeId;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_rawBytes copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_name copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_typeId;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_rawBytes)
  {
    [v4 setRawBytes:?];
    v4 = v5;
  }

  if (self->_name)
  {
    [v5 setName:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    typeId = self->_typeId;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_rawBytes)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_typeId];
    [v3 setObject:v4 forKey:@"type_id"];
  }

  rawBytes = self->_rawBytes;
  if (rawBytes)
  {
    [v3 setObject:rawBytes forKey:@"raw_bytes"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PETRawMessage;
  v4 = [(PETRawMessage *)&v8 description];
  v5 = [(PETRawMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end