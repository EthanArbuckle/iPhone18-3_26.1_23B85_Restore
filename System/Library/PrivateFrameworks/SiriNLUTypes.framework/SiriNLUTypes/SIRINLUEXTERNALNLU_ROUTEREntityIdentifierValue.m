@interface SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  type = self->_type;
  v6 = v4[2];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue *)self setIdentifier:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((type = self->_type, !(type | v4[2])) || -[SIRINLUEXTERNALNLU_ROUTERTypeIdentifier isEqual:](type, "isEqual:")))
  {
    identifier = self->_identifier;
    if (identifier | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)self->_type copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type)
  {
    [v4 setType:?];
    v4 = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  if (type)
  {
    v5 = [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)type dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"type"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue;
  v4 = [(SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end