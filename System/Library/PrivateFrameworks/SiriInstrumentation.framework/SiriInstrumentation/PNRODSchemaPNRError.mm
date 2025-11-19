@interface PNRODSchemaPNRError
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRError)initWithDictionary:(id)a3;
- (PNRODSchemaPNRError)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRError

- (PNRODSchemaPNRError)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PNRODSchemaPNRError;
  v5 = [(PNRODSchemaPNRError *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PNRODSchemaPNRError *)v5 setDomain:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"code"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRError setCode:](v5, "setCode:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRError setSource:](v5, "setSource:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRError)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRError *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRError *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRError code](self, "code")}];
    [v3 setObject:v4 forKeyedSubscript:@"code"];
  }

  if (self->_domain)
  {
    v5 = [(PNRODSchemaPNRError *)self domain];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"domain"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[PNRODSchemaPNRError source](self, "source")}];
    [v3 setObject:v7 forKeyedSubscript:@"source"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_code;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_source;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(PNRODSchemaPNRError *)self domain];
  v6 = [v4 domain];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(PNRODSchemaPNRError *)self domain];
  if (v8)
  {
    v9 = v8;
    v10 = [(PNRODSchemaPNRError *)self domain];
    v11 = [v4 domain];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    code = self->_code;
    if (code == [v4 code])
    {
      has = self->_has;
      v14 = v4[28];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    source = self->_source;
    if (source != [v4 source])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(PNRODSchemaPNRError *)self domain];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  v6 = v7;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
  }
}

- (void)setHasSource:(BOOL)a3
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