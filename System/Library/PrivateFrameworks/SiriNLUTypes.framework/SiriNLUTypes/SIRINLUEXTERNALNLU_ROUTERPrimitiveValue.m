@interface SIRINLUEXTERNALNLU_ROUTERPrimitiveValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERPrimitiveValue

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[20])
  {
    self->_BOOLValue = v4[16];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 16);
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

  if ((*(v4 + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  app = self->_app;
  if (app | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_BOOLValue;
    *(v5 + 20) |= 1u;
  }

  v7 = [(SIRINLUEXTERNALNLU_ROUTERApp *)self->_app copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_BOOLValue;
    v4[20] |= 1u;
  }

  if (self->_app)
  {
    v5 = v4;
    [v4 setApp:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_app)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_BOOLValue];
    [v3 setObject:v4 forKey:@"BOOL_value"];
  }

  app = self->_app;
  if (app)
  {
    v6 = [(SIRINLUEXTERNALNLU_ROUTERApp *)app dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"app"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERPrimitiveValue;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end