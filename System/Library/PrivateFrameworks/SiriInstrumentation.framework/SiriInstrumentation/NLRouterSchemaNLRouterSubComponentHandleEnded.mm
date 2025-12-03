@interface NLRouterSchemaNLRouterSubComponentHandleEnded
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterSubComponentHandleEnded)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterSubComponentHandleEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterSubComponentHandleEnded

- (NLRouterSchemaNLRouterSubComponentHandleEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NLRouterSchemaNLRouterSubComponentHandleEnded;
  v5 = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterSubComponentHandleEnded setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterSubComponentHandleEndedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[NLRouterSchemaNLRouterSubComponentHandleEndedData alloc] initWithDictionary:v7];
      [(NLRouterSchemaNLRouterSubComponentHandleEnded *)v5 setNlRouterSubComponentHandleEndedData:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterSubComponentHandleEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLRouterSchemaNLRouterSubComponentHandleEnded exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_nlRouterSubComponentHandleEndedData)
  {
    nlRouterSubComponentHandleEndedData = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self nlRouterSubComponentHandleEndedData];
    dictionaryRepresentation = [nlRouterSubComponentHandleEndedData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"nlRouterSubComponentHandleEndedData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"nlRouterSubComponentHandleEndedData"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_exists;
  }

  else
  {
    v2 = 0;
  }

  return [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self->_nlRouterSubComponentHandleEndedData hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [equalCopy exists]))
      {
        nlRouterSubComponentHandleEndedData = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self nlRouterSubComponentHandleEndedData];
        nlRouterSubComponentHandleEndedData2 = [equalCopy nlRouterSubComponentHandleEndedData];
        v8 = nlRouterSubComponentHandleEndedData2;
        if ((nlRouterSubComponentHandleEndedData != 0) != (nlRouterSubComponentHandleEndedData2 == 0))
        {
          nlRouterSubComponentHandleEndedData3 = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self nlRouterSubComponentHandleEndedData];
          if (!nlRouterSubComponentHandleEndedData3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = nlRouterSubComponentHandleEndedData3;
          nlRouterSubComponentHandleEndedData4 = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self nlRouterSubComponentHandleEndedData];
          nlRouterSubComponentHandleEndedData5 = [equalCopy nlRouterSubComponentHandleEndedData];
          v13 = [nlRouterSubComponentHandleEndedData4 isEqual:nlRouterSubComponentHandleEndedData5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  nlRouterSubComponentHandleEndedData = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self nlRouterSubComponentHandleEndedData];

  v5 = toCopy;
  if (nlRouterSubComponentHandleEndedData)
  {
    nlRouterSubComponentHandleEndedData2 = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self nlRouterSubComponentHandleEndedData];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLRouterSchemaNLRouterSubComponentHandleEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self nlRouterSubComponentHandleEndedData:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self deleteNlRouterSubComponentHandleEndedData];
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