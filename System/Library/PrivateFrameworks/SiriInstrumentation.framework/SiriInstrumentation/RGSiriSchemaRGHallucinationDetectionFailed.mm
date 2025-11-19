@interface RGSiriSchemaRGHallucinationDetectionFailed
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RGSiriSchemaRGHallucinationDetectionFailed)initWithDictionary:(id)a3;
- (RGSiriSchemaRGHallucinationDetectionFailed)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RGSiriSchemaRGHallucinationDetectionFailed

- (RGSiriSchemaRGHallucinationDetectionFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RGSiriSchemaRGHallucinationDetectionFailed;
  v5 = [(RGSiriSchemaRGHallucinationDetectionFailed *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"fatalError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGHallucinationDetectionFailed setFatalError:](v5, "setFatalError:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[RGSiriSchemaRGError alloc] initWithDictionary:v7];
      [(RGSiriSchemaRGHallucinationDetectionFailed *)v5 setError:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGHallucinationDetectionFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGHallucinationDetectionFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RGSiriSchemaRGHallucinationDetectionFailed *)self dictionaryRepresentation];
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
    v4 = [(RGSiriSchemaRGHallucinationDetectionFailed *)self error];
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

  if (*&self->_has)
  {
    [(RGSiriSchemaRGHallucinationDetectionFailed *)self fatalError];
    [v3 setObject:@"RGFATALERROR_UNKNOWN" forKeyedSubscript:@"fatalError"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_fatalError;
  }

  else
  {
    v2 = 0;
  }

  return [(RGSiriSchemaRGError *)self->_error hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (fatalError = self->_fatalError, fatalError == [v4 fatalError]))
      {
        v6 = [(RGSiriSchemaRGHallucinationDetectionFailed *)self error];
        v7 = [v4 error];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(RGSiriSchemaRGHallucinationDetectionFailed *)self error];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(RGSiriSchemaRGHallucinationDetectionFailed *)self error];
          v12 = [v4 error];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(RGSiriSchemaRGHallucinationDetectionFailed *)self error];

  v5 = v7;
  if (v4)
  {
    v6 = [(RGSiriSchemaRGHallucinationDetectionFailed *)self error];
    PBDataWriterWriteSubmessage();

    v5 = v7;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = RGSiriSchemaRGHallucinationDetectionFailed;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(RGSiriSchemaRGHallucinationDetectionFailed *)self error:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(RGSiriSchemaRGHallucinationDetectionFailed *)self deleteError];
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