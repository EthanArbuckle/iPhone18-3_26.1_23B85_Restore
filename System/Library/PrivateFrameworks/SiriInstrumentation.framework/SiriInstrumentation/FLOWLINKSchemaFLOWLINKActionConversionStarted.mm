@interface FLOWLINKSchemaFLOWLINKActionConversionStarted
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKActionConversionStarted)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKActionConversionStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKActionConversionStarted

- (FLOWLINKSchemaFLOWLINKActionConversionStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWLINKSchemaFLOWLINKActionConversionStarted;
  v5 = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"parseHypothesisId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)v5 setParseHypothesisId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKActionConversionStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self dictionaryRepresentation];
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
  if (self->_parseHypothesisId)
  {
    parseHypothesisId = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self parseHypothesisId];
    dictionaryRepresentation = [parseHypothesisId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"parseHypothesisId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"parseHypothesisId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    parseHypothesisId = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self parseHypothesisId];
    parseHypothesisId2 = [equalCopy parseHypothesisId];
    v7 = parseHypothesisId2;
    if ((parseHypothesisId != 0) != (parseHypothesisId2 == 0))
    {
      parseHypothesisId3 = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self parseHypothesisId];
      if (!parseHypothesisId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = parseHypothesisId3;
      parseHypothesisId4 = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self parseHypothesisId];
      parseHypothesisId5 = [equalCopy parseHypothesisId];
      v12 = [parseHypothesisId4 isEqual:parseHypothesisId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  parseHypothesisId = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self parseHypothesisId];

  if (parseHypothesisId)
  {
    parseHypothesisId2 = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self parseHypothesisId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWLINKSchemaFLOWLINKActionConversionStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self parseHypothesisId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self deleteParseHypothesisId];
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