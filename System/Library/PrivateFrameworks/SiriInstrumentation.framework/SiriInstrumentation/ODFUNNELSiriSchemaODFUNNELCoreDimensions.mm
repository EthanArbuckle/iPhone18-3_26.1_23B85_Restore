@interface ODFUNNELSiriSchemaODFUNNELCoreDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODFUNNELSiriSchemaODFUNNELCoreDimensions)initWithDictionary:(id)dictionary;
- (ODFUNNELSiriSchemaODFUNNELCoreDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODFUNNELSiriSchemaODFUNNELCoreDimensions

- (ODFUNNELSiriSchemaODFUNNELCoreDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ODFUNNELSiriSchemaODFUNNELCoreDimensions;
  v5 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"viewInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELCoreDimensions setViewInterface:](v5, "setViewInterface:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
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

- (ODFUNNELSiriSchemaODFUNNELCoreDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_siriInputLocale)
  {
    siriInputLocale = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
    dictionaryRepresentation = [siriInputLocale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriInputLocale"];
    }
  }

  if (self->_systemBuild)
  {
    systemBuild = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];
    v8 = [systemBuild copy];
    [dictionary setObject:v8 forKeyedSubscript:@"systemBuild"];
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

    [dictionary setObject:v10 forKeyedSubscript:@"viewInterface"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  systemBuild = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];
  systemBuild2 = [equalCopy systemBuild];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_14;
  }

  systemBuild3 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];
  if (systemBuild3)
  {
    v8 = systemBuild3;
    systemBuild4 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];
    systemBuild5 = [equalCopy systemBuild];
    v11 = [systemBuild4 isEqual:systemBuild5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    viewInterface = self->_viewInterface;
    if (viewInterface != [equalCopy viewInterface])
    {
      goto LABEL_15;
    }
  }

  systemBuild = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
  systemBuild2 = [equalCopy siriInputLocale];
  if ((systemBuild != 0) != (systemBuild2 == 0))
  {
    siriInputLocale = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
    if (!siriInputLocale)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = siriInputLocale;
    siriInputLocale2 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
    siriInputLocale3 = [equalCopy siriInputLocale];
    v17 = [siriInputLocale2 isEqual:siriInputLocale3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  systemBuild = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self systemBuild];

  if (systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  siriInputLocale = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];

  v6 = toCopy;
  if (siriInputLocale)
  {
    siriInputLocale2 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODFUNNELSiriSchemaODFUNNELCoreDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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