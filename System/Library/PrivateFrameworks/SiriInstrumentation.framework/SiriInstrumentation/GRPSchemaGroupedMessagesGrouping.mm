@interface GRPSchemaGroupedMessagesGrouping
- (BOOL)isEqual:(id)equal;
- (GRPSchemaGroupedMessagesGrouping)initWithDictionary:(id)dictionary;
- (GRPSchemaGroupedMessagesGrouping)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation GRPSchemaGroupedMessagesGrouping

- (GRPSchemaGroupedMessagesGrouping)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = GRPSchemaGroupedMessagesGrouping;
  v5 = [(GRPSchemaGroupedMessagesGrouping *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GRPSchemaGroupedMessagesGrouping *)v5 setClockIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (GRPSchemaGroupedMessagesGrouping)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRPSchemaGroupedMessagesGrouping *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRPSchemaGroupedMessagesGrouping *)self dictionaryRepresentation];
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
  if (self->_clockIdentifier)
  {
    clockIdentifier = [(GRPSchemaGroupedMessagesGrouping *)self clockIdentifier];
    dictionaryRepresentation = [clockIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clockIdentifier"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clockIdentifier"];
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
    clockIdentifier = [(GRPSchemaGroupedMessagesGrouping *)self clockIdentifier];
    clockIdentifier2 = [equalCopy clockIdentifier];
    v7 = clockIdentifier2;
    if ((clockIdentifier != 0) != (clockIdentifier2 == 0))
    {
      clockIdentifier3 = [(GRPSchemaGroupedMessagesGrouping *)self clockIdentifier];
      if (!clockIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = clockIdentifier3;
      clockIdentifier4 = [(GRPSchemaGroupedMessagesGrouping *)self clockIdentifier];
      clockIdentifier5 = [equalCopy clockIdentifier];
      v12 = [clockIdentifier4 isEqual:clockIdentifier5];

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
  clockIdentifier = [(GRPSchemaGroupedMessagesGrouping *)self clockIdentifier];

  if (clockIdentifier)
  {
    clockIdentifier2 = [(GRPSchemaGroupedMessagesGrouping *)self clockIdentifier];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GRPSchemaGroupedMessagesGrouping;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GRPSchemaGroupedMessagesGrouping *)self clockIdentifier:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GRPSchemaGroupedMessagesGrouping *)self deleteClockIdentifier];
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