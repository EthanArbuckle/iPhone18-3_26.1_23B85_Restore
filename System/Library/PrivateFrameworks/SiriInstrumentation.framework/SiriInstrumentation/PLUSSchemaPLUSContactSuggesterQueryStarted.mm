@interface PLUSSchemaPLUSContactSuggesterQueryStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggesterQueryStarted)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSContactSuggesterQueryStarted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSContactSuggesterQueryStarted

- (PLUSSchemaPLUSContactSuggesterQueryStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PLUSSchemaPLUSContactSuggesterQueryStarted;
  v5 = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoPersonQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USOSchemaUSOGraph alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggesterQueryStarted *)v5 setUsoPersonQuery:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggesterQueryStarted setDomain:](v5, "setDomain:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggesterQueryStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self domain]- 1;
    if (v4 > 3)
    {
      v5 = @"PLUSINFERENCECONTACTDOMAIN_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E0600[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"domain"];
  }

  if (self->_usoPersonQuery)
  {
    usoPersonQuery = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self usoPersonQuery];
    dictionaryRepresentation = [usoPersonQuery dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"usoPersonQuery"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"usoPersonQuery"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(USOSchemaUSOGraph *)self->_usoPersonQuery hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_domain;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  usoPersonQuery = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self usoPersonQuery];
  usoPersonQuery2 = [equalCopy usoPersonQuery];
  v7 = usoPersonQuery2;
  if ((usoPersonQuery != 0) == (usoPersonQuery2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  usoPersonQuery3 = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self usoPersonQuery];
  if (usoPersonQuery3)
  {
    v9 = usoPersonQuery3;
    usoPersonQuery4 = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self usoPersonQuery];
    usoPersonQuery5 = [equalCopy usoPersonQuery];
    v12 = [usoPersonQuery4 isEqual:usoPersonQuery5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    domain = self->_domain;
    if (domain != [equalCopy domain])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  usoPersonQuery = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self usoPersonQuery];

  if (usoPersonQuery)
  {
    usoPersonQuery2 = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self usoPersonQuery];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSContactSuggesterQueryStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self usoPersonQuery:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PLUSSchemaPLUSContactSuggesterQueryStarted *)self deleteUsoPersonQuery];
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