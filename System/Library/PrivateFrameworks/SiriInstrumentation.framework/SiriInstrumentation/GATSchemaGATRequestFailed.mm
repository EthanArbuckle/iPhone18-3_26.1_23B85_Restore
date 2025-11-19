@interface GATSchemaGATRequestFailed
- (BOOL)isEqual:(id)a3;
- (GATSchemaGATRequestFailed)initWithDictionary:(id)a3;
- (GATSchemaGATRequestFailed)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GATSchemaGATRequestFailed

- (GATSchemaGATRequestFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GATSchemaGATRequestFailed;
  v5 = [(GATSchemaGATRequestFailed *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATRequestFailed setErrorDomain:](v5, "setErrorDomain:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATRequestFailed setErrorCode:](v5, "setErrorCode:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GATSchemaGATError alloc] initWithDictionary:v8];
      [(GATSchemaGATRequestFailed *)v5 setError:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"underlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GATSchemaGATError alloc] initWithDictionary:v10];
      [(GATSchemaGATRequestFailed *)v5 setUnderlyingError:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (GATSchemaGATRequestFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GATSchemaGATRequestFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GATSchemaGATRequestFailed *)self dictionaryRepresentation];
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
  if (self->_error)
  {
    v4 = [(GATSchemaGATRequestFailed *)self error];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"error"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"error"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[GATSchemaGATRequestFailed errorCode](self, "errorCode")}];
    [v3 setObject:v8 forKeyedSubscript:@"errorCode"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [(GATSchemaGATRequestFailed *)self errorDomain]- 1;
    if (v9 > 8)
    {
      v10 = @"GATERRORDOMAIN_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D72E8[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_underlyingError)
  {
    v11 = [(GATSchemaGATRequestFailed *)self underlyingError];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_errorDomain;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_errorCode;
LABEL_6:
  v5 = v4 ^ v3 ^ [(GATSchemaGATError *)self->_error hash];
  return v5 ^ [(GATSchemaGATError *)self->_underlyingError hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    errorDomain = self->_errorDomain;
    if (errorDomain != [v4 errorDomain])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_19;
    }
  }

  v10 = [(GATSchemaGATRequestFailed *)self error];
  v11 = [v4 error];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_18;
  }

  v12 = [(GATSchemaGATRequestFailed *)self error];
  if (v12)
  {
    v13 = v12;
    v14 = [(GATSchemaGATRequestFailed *)self error];
    v15 = [v4 error];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = [(GATSchemaGATRequestFailed *)self underlyingError];
  v11 = [v4 underlyingError];
  if ((v10 != 0) != (v11 == 0))
  {
    v17 = [(GATSchemaGATRequestFailed *)self underlyingError];
    if (!v17)
    {

LABEL_22:
      v22 = 1;
      goto LABEL_20;
    }

    v18 = v17;
    v19 = [(GATSchemaGATRequestFailed *)self underlyingError];
    v20 = [v4 underlyingError];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_18:
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(GATSchemaGATRequestFailed *)self error];

  if (v5)
  {
    v6 = [(GATSchemaGATRequestFailed *)self error];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(GATSchemaGATRequestFailed *)self underlyingError];

  v8 = v10;
  if (v7)
  {
    v9 = [(GATSchemaGATRequestFailed *)self underlyingError];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasErrorCode:(BOOL)a3
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
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GATSchemaGATRequestFailed;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(GATSchemaGATRequestFailed *)self error];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GATSchemaGATRequestFailed *)self deleteError];
  }

  v9 = [(GATSchemaGATRequestFailed *)self underlyingError];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(GATSchemaGATRequestFailed *)self deleteUnderlyingError];
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