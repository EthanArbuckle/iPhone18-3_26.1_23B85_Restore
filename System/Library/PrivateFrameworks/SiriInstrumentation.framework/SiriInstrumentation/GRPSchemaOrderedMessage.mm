@interface GRPSchemaOrderedMessage
- (BOOL)isEqual:(id)equal;
- (GRPSchemaOrderedMessage)initWithDictionary:(id)dictionary;
- (GRPSchemaOrderedMessage)initWithJSON:(id)n;
- (GRPSchemaSiriEventTypeUnion)siriEventTypeUnion;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteSiriEventTypeUnion;
- (void)setSiriEventTypeUnion:(id)union;
- (void)writeTo:(id)to;
@end

@implementation GRPSchemaOrderedMessage

- (GRPSchemaOrderedMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = GRPSchemaOrderedMessage;
  v5 = [(GRPSchemaOrderedMessage *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"logicalEventTimestampInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRPSchemaOrderedMessage setLogicalEventTimestampInNs:](v5, "setLogicalEventTimestampInNs:", [v6 longLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"siriEventTypeUnion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[GRPSchemaSiriEventTypeUnion alloc] initWithDictionary:v7];
      [(GRPSchemaOrderedMessage *)v5 setSiriEventTypeUnion:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (GRPSchemaOrderedMessage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRPSchemaOrderedMessage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRPSchemaOrderedMessage *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[GRPSchemaOrderedMessage logicalEventTimestampInNs](self, "logicalEventTimestampInNs")}];
    [dictionary setObject:v4 forKeyedSubscript:@"logicalEventTimestampInNs"];
  }

  if (self->_siriEventTypeUnion)
  {
    siriEventTypeUnion = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
    dictionaryRepresentation = [siriEventTypeUnion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriEventTypeUnion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriEventTypeUnion"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_logicalEventTimestampInNs;
  }

  else
  {
    v2 = 0;
  }

  return [(GRPSchemaSiriEventTypeUnion *)self->_siriEventTypeUnion hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    whichEvent_Type = self->_whichEvent_Type;
    if (whichEvent_Type == [equalCopy whichEvent_Type] && (*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (logicalEventTimestampInNs = self->_logicalEventTimestampInNs, logicalEventTimestampInNs == [equalCopy logicalEventTimestampInNs]))
      {
        siriEventTypeUnion = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
        siriEventTypeUnion2 = [equalCopy siriEventTypeUnion];
        v9 = siriEventTypeUnion2;
        if ((siriEventTypeUnion != 0) != (siriEventTypeUnion2 == 0))
        {
          siriEventTypeUnion3 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
          if (!siriEventTypeUnion3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = siriEventTypeUnion3;
          siriEventTypeUnion4 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
          siriEventTypeUnion5 = [equalCopy siriEventTypeUnion];
          v14 = [siriEventTypeUnion4 isEqual:siriEventTypeUnion5];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  siriEventTypeUnion = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];

  v5 = toCopy;
  if (siriEventTypeUnion)
  {
    siriEventTypeUnion2 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (void)deleteSiriEventTypeUnion
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    self->_siriEventTypeUnion = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRPSchemaSiriEventTypeUnion)siriEventTypeUnion
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_siriEventTypeUnion;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSiriEventTypeUnion:(id)union
{
  v3 = 100;
  if (!union)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_siriEventTypeUnion, union);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GRPSchemaOrderedMessage;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GRPSchemaOrderedMessage *)self deleteSiriEventTypeUnion];
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