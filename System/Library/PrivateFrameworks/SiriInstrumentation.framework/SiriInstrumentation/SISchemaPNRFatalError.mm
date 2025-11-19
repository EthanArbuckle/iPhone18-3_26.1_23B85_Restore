@interface SISchemaPNRFatalError
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaPNRFatalError)initWithDictionary:(id)a3;
- (SISchemaPNRFatalError)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaPNRFatalError

- (SISchemaPNRFatalError)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SISchemaPNRFatalError;
  v5 = [(SISchemaPNRFatalError *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaPNRFatalErrorInfo alloc] initWithDictionary:v6];
      [(SISchemaPNRFatalError *)v5 setError:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"underlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaPNRFatalErrorInfo alloc] initWithDictionary:v8];
      [(SISchemaPNRFatalError *)v5 setUnderlyingError:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"underUnderlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaPNRFatalErrorInfo alloc] initWithDictionary:v10];
      [(SISchemaPNRFatalError *)v5 setUnderUnderlyingError:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SISchemaPNRFatalError)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaPNRFatalError *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaPNRFatalError *)self dictionaryRepresentation];
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
    v4 = [(SISchemaPNRFatalError *)self error];
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

  if (self->_underUnderlyingError)
  {
    v7 = [(SISchemaPNRFatalError *)self underUnderlyingError];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"underUnderlyingError"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"underUnderlyingError"];
    }
  }

  if (self->_underlyingError)
  {
    v10 = [(SISchemaPNRFatalError *)self underlyingError];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaPNRFatalErrorInfo *)self->_error hash];
  v4 = [(SISchemaPNRFatalErrorInfo *)self->_underlyingError hash]^ v3;
  return v4 ^ [(SISchemaPNRFatalErrorInfo *)self->_underUnderlyingError hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(SISchemaPNRFatalError *)self error];
  v6 = [v4 error];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(SISchemaPNRFatalError *)self error];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaPNRFatalError *)self error];
    v10 = [v4 error];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaPNRFatalError *)self underlyingError];
  v6 = [v4 underlyingError];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(SISchemaPNRFatalError *)self underlyingError];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaPNRFatalError *)self underlyingError];
    v15 = [v4 underlyingError];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaPNRFatalError *)self underUnderlyingError];
  v6 = [v4 underUnderlyingError];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(SISchemaPNRFatalError *)self underUnderlyingError];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(SISchemaPNRFatalError *)self underUnderlyingError];
    v20 = [v4 underUnderlyingError];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(SISchemaPNRFatalError *)self error];

  if (v4)
  {
    v5 = [(SISchemaPNRFatalError *)self error];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaPNRFatalError *)self underlyingError];

  if (v6)
  {
    v7 = [(SISchemaPNRFatalError *)self underlyingError];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SISchemaPNRFatalError *)self underUnderlyingError];

  v9 = v11;
  if (v8)
  {
    v10 = [(SISchemaPNRFatalError *)self underUnderlyingError];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SISchemaPNRFatalError;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaPNRFatalError *)self error];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaPNRFatalError *)self deleteError];
  }

  v9 = [(SISchemaPNRFatalError *)self underlyingError];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaPNRFatalError *)self deleteUnderlyingError];
  }

  v12 = [(SISchemaPNRFatalError *)self underUnderlyingError];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SISchemaPNRFatalError *)self deleteUnderUnderlyingError];
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