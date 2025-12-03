@interface PAPBApplication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)identifierType;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PAPBApplication

- (int)identifierType
{
  if (*&self->_has)
  {
    return self->_identifierType;
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
  v8.super_class = PAPBApplication;
  v4 = [(PAPBApplication *)&v8 description];
  dictionaryRepresentation = [(PAPBApplication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_identifierType];
    [dictionary setObject:v4 forKeyedSubscript:@"identifierType"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKeyedSubscript:@"identifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    identifierType = self->_identifierType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_identifierType;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_identifierType != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 1))
  {
    v7 = [(NSString *)identifier isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_identifierType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_identifier hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_identifierType = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(PAPBApplication *)self setIdentifier:?];
    fromCopy = v5;
  }
}

@end