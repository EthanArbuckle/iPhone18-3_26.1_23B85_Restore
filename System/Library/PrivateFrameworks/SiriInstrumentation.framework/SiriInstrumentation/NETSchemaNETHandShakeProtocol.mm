@interface NETSchemaNETHandShakeProtocol
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETHandShakeProtocol)initWithDictionary:(id)a3;
- (NETSchemaNETHandShakeProtocol)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHandShakeDuration:(BOOL)a3;
- (void)setHasHandShakeRTT:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETHandShakeProtocol

- (NETSchemaNETHandShakeProtocol)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NETSchemaNETHandShakeProtocol;
  v5 = [(NETSchemaNETHandShakeProtocol *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"protocol"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETHandShakeProtocol setProtocol:](v5, "setProtocol:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"handShakeRTT"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETHandShakeProtocol setHandShakeRTT:](v5, "setHandShakeRTT:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"handShakeDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETHandShakeProtocol setHandShakeDuration:](v5, "setHandShakeDuration:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (NETSchemaNETHandShakeProtocol)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETHandShakeProtocol *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETHandShakeProtocol *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETHandShakeProtocol handShakeRTT](self, "handShakeRTT")}];
    [v3 setObject:v6 forKeyedSubscript:@"handShakeRTT"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v7 = [(NETSchemaNETHandShakeProtocol *)self protocol]- 1;
    if (v7 > 2)
    {
      v8 = @"NETPROTOCOL_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DB178[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"protocol"];
    goto LABEL_11;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETHandShakeProtocol handShakeDuration](self, "handShakeDuration")}];
  [v3 setObject:v5 forKeyedSubscript:@"handShakeDuration"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (has)
  {
    goto LABEL_7;
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_protocol;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_handShakeRTT;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761u * self->_handShakeDuration;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    protocol = self->_protocol;
    if (protocol != [v4 protocol])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    handShakeRTT = self->_handShakeRTT;
    if (handShakeRTT == [v4 handShakeRTT])
    {
      has = self->_has;
      v6 = v4[24];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    handShakeDuration = self->_handShakeDuration;
    if (handShakeDuration != [v4 handShakeDuration])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasHandShakeDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHandShakeRTT:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end