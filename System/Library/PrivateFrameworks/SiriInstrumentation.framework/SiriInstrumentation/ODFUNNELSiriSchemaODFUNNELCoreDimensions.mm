@interface ODFUNNELSiriSchemaODFUNNELCoreDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODFUNNELSiriSchemaODFUNNELCoreDimensions)initWithDictionary:(id)a3;
- (ODFUNNELSiriSchemaODFUNNELCoreDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ODFUNNELSiriSchemaODFUNNELCoreDimensions

- (ODFUNNELSiriSchemaODFUNNELCoreDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ODFUNNELSiriSchemaODFUNNELCoreDimensions;
  v5 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"viewInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELCoreDimensions setViewInterface:](v5, "setViewInterface:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaISOLocale alloc] initWithDictionary:v9];
      [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)v5 setSiriInputLocale:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (ODFUNNELSiriSchemaODFUNNELCoreDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self dictionaryRepresentation];
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
  if (self->_siriInputLocale)
  {
    v4 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  if (self->_systemBuild)
  {
    v7 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"systemBuild"];
  }

  if (*&self->_has)
  {
    v9 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self viewInterface]- 1;
    if (v9 > 7)
    {
      v10 = @"ASSISTANTVIEWMODE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78DDE68[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"viewInterface"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_systemBuild hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_viewInterface;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SISchemaISOLocale *)self->_siriInputLocale hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];
    v10 = [v4 systemBuild];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    viewInterface = self->_viewInterface;
    if (viewInterface != [v4 viewInterface])
    {
      goto LABEL_15;
    }
  }

  v5 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
  v6 = [v4 siriInputLocale];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
    v16 = [v4 siriInputLocale];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];

  v6 = v8;
  if (v5)
  {
    v7 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODFUNNELSiriSchemaODFUNNELCoreDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self deleteSiriInputLocale];
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