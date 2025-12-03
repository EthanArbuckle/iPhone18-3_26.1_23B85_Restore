@interface SIRINLUEXTERNALNLU_ROUTERTypeIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERTypeIdentifier

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  custom = self->_custom;
  v6 = fromCopy[1];
  if (custom)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALNLU_ROUTERCustom *)custom mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)self setCustom:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    custom = self->_custom;
    if (custom | equalCopy[1])
    {
      v6 = [(SIRINLUEXTERNALNLU_ROUTERCustom *)custom isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALNLU_ROUTERCustom *)self->_custom copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  custom = self->_custom;
  if (custom)
  {
    [to setCustom:custom];
  }
}

- (void)writeTo:(id)to
{
  if (self->_custom)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  custom = self->_custom;
  if (custom)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERCustom *)custom dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"custom"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERTypeIdentifier;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end