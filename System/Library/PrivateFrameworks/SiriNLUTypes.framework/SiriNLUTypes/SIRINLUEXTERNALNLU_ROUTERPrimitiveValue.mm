@interface SIRINLUEXTERNALNLU_ROUTERPrimitiveValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERPrimitiveValue

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[20])
  {
    self->_BOOLValue = fromCopy[16];
    *&self->_has |= 1u;
  }

  app = self->_app;
  v7 = *(v5 + 1);
  if (app)
  {
    if (v7)
    {
      [(SIRINLUEXTERNALNLU_ROUTERApp *)app mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)self setApp:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_BOOLValue;
  }

  else
  {
    v2 = 0;
  }

  return [(SIRINLUEXTERNALNLU_ROUTERApp *)self->_app hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 16);
  if (!self->_BOOLValue)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ((*(equalCopy + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  app = self->_app;
  if (app | *(equalCopy + 1))
  {
    v7 = [(SIRINLUEXTERNALNLU_ROUTERApp *)app isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_8:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_BOOLValue;
    *(v5 + 20) |= 1u;
  }

  v7 = [(SIRINLUEXTERNALNLU_ROUTERApp *)self->_app copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[16] = self->_BOOLValue;
    toCopy[20] |= 1u;
  }

  if (self->_app)
  {
    v5 = toCopy;
    [toCopy setApp:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_app)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_BOOLValue];
    [dictionary setObject:v4 forKey:@"BOOL_value"];
  }

  app = self->_app;
  if (app)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERApp *)app dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"app"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERPrimitiveValue;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end