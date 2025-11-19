@interface USOSchemaUSOEdgeLabel
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSOEdgeLabel)initWithDictionary:(id)a3;
- (USOSchemaUSOEdgeLabel)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnumeration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSOEdgeLabel

- (USOSchemaUSOEdgeLabel)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = USOSchemaUSOEdgeLabel;
  v5 = [(USOSchemaUSOEdgeLabel *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"usoElementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEdgeLabel setUsoElementId:](v5, "setUsoElementId:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"enumeration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEdgeLabel setEnumeration:](v5, "setEnumeration:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"baseEdgeLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOLabel alloc] initWithDictionary:v8];
      [(USOSchemaUSOEdgeLabel *)v5 setBaseEdgeLabel:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (USOSchemaUSOEdgeLabel)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSOEdgeLabel *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSOEdgeLabel *)self dictionaryRepresentation];
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
  if (self->_baseEdgeLabel)
  {
    v4 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"baseEdgeLabel"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"baseEdgeLabel"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEdgeLabel enumeration](self, "enumeration")}];
    [v3 setObject:v8 forKeyedSubscript:@"enumeration"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEdgeLabel usoElementId](self, "usoElementId")}];
    [v3 setObject:v9 forKeyedSubscript:@"usoElementId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_usoElementId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(USOSchemaUSOLabel *)self->_baseEdgeLabel hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_enumeration;
  return v7 ^ v6 ^ [(USOSchemaUSOLabel *)self->_baseEdgeLabel hash:v3];
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
    usoElementId = self->_usoElementId;
    if (usoElementId != [v4 usoElementId])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (enumeration = self->_enumeration, enumeration == [v4 enumeration]))
    {
      v10 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
      v11 = [v4 baseEdgeLabel];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
        v16 = [v4 baseEdgeLabel];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];

  v6 = v8;
  if (v5)
  {
    v7 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasEnumeration:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = USOSchemaUSOEdgeLabel;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(USOSchemaUSOEdgeLabel *)self deleteBaseEdgeLabel];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end