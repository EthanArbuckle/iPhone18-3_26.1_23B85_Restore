@interface SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  type = self->_type;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (type)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)type mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue *)self setType:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue *)self setIdentifier:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((type = self->_type, !(type | equalCopy[2])) || -[SIRINLUEXTERNALNLU_ROUTERTypeIdentifier isEqual:](type, "isEqual:")))
  {
    identifier = self->_identifier;
    if (identifier | equalCopy[1])
    {
      v7 = [(NSString *)identifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)self->_type copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_type)
  {
    [toCopy setType:?];
    toCopy = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_type)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  if (type)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)type dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"type"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue;
  v4 = [(SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end