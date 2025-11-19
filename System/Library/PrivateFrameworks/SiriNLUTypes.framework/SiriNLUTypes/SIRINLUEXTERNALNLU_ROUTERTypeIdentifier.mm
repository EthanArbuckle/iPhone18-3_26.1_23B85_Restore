@interface SIRINLUEXTERNALNLU_ROUTERTypeIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERTypeIdentifier

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  custom = self->_custom;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    custom = self->_custom;
    if (custom | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALNLU_ROUTERCustom *)self->_custom copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  custom = self->_custom;
  if (custom)
  {
    [a3 setCustom:custom];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_custom)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  custom = self->_custom;
  if (custom)
  {
    v5 = [(SIRINLUEXTERNALNLU_ROUTERCustom *)custom dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"custom"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERTypeIdentifier;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end