@interface NLRouterSchemaNLRouterSubComponentHandleEndedData
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterSubComponentHandleEndedData)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterSubComponentHandleEndedData)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterSubComponentHandleEndedData

- (NLRouterSchemaNLRouterSubComponentHandleEndedData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLRouterSchemaNLRouterSubComponentHandleEndedData;
  v5 = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"heuristicsHandleEndedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLRouterSchemaHeuristicsHandleEndedData alloc] initWithDictionary:v6];
      [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)v5 setHeuristicsHandleEndedData:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterSubComponentHandleEndedData)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self dictionaryRepresentation];
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
  if (self->_heuristicsHandleEndedData)
  {
    heuristicsHandleEndedData = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self heuristicsHandleEndedData];
    dictionaryRepresentation = [heuristicsHandleEndedData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"heuristicsHandleEndedData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"heuristicsHandleEndedData"];
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
    heuristicsHandleEndedData = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self heuristicsHandleEndedData];
    heuristicsHandleEndedData2 = [equalCopy heuristicsHandleEndedData];
    v7 = heuristicsHandleEndedData2;
    if ((heuristicsHandleEndedData != 0) != (heuristicsHandleEndedData2 == 0))
    {
      heuristicsHandleEndedData3 = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self heuristicsHandleEndedData];
      if (!heuristicsHandleEndedData3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = heuristicsHandleEndedData3;
      heuristicsHandleEndedData4 = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self heuristicsHandleEndedData];
      heuristicsHandleEndedData5 = [equalCopy heuristicsHandleEndedData];
      v12 = [heuristicsHandleEndedData4 isEqual:heuristicsHandleEndedData5];

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
  heuristicsHandleEndedData = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self heuristicsHandleEndedData];

  if (heuristicsHandleEndedData)
  {
    heuristicsHandleEndedData2 = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self heuristicsHandleEndedData];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLRouterSchemaNLRouterSubComponentHandleEndedData;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self heuristicsHandleEndedData:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLRouterSchemaNLRouterSubComponentHandleEndedData *)self deleteHeuristicsHandleEndedData];
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