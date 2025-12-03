@interface SISchemaLogicalTimestamp
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaLogicalTimestamp)initWithDictionary:(id)dictionary;
- (SISchemaLogicalTimestamp)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaLogicalTimestamp

- (SISchemaLogicalTimestamp)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaLogicalTimestamp;
  v5 = [(SISchemaLogicalTimestamp *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"timestampInNanoseconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaLogicalTimestamp setTimestampInNanoseconds:](v5, "setTimestampInNanoseconds:", [v6 longLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(SISchemaLogicalTimestamp *)v5 setClockIdentifier:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaLogicalTimestamp)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaLogicalTimestamp *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaLogicalTimestamp *)self dictionaryRepresentation];
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
    clockIdentifier = [(SISchemaLogicalTimestamp *)self clockIdentifier];
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

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaLogicalTimestamp timestampInNanoseconds](self, "timestampInNanoseconds")}];
    [dictionary setObject:v7 forKeyedSubscript:@"timestampInNanoseconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_timestampInNanoseconds;
  }

  else
  {
    v2 = 0;
  }

  return [(SISchemaUUID *)self->_clockIdentifier hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (timestampInNanoseconds = self->_timestampInNanoseconds, timestampInNanoseconds == [equalCopy timestampInNanoseconds]))
      {
        clockIdentifier = [(SISchemaLogicalTimestamp *)self clockIdentifier];
        clockIdentifier2 = [equalCopy clockIdentifier];
        v8 = clockIdentifier2;
        if ((clockIdentifier != 0) != (clockIdentifier2 == 0))
        {
          clockIdentifier3 = [(SISchemaLogicalTimestamp *)self clockIdentifier];
          if (!clockIdentifier3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = clockIdentifier3;
          clockIdentifier4 = [(SISchemaLogicalTimestamp *)self clockIdentifier];
          clockIdentifier5 = [equalCopy clockIdentifier];
          v13 = [clockIdentifier4 isEqual:clockIdentifier5];

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
    PBDataWriterWriteInt64Field();
  }

  clockIdentifier = [(SISchemaLogicalTimestamp *)self clockIdentifier];

  v5 = toCopy;
  if (clockIdentifier)
  {
    clockIdentifier2 = [(SISchemaLogicalTimestamp *)self clockIdentifier];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaLogicalTimestamp;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaLogicalTimestamp *)self clockIdentifier:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaLogicalTimestamp *)self deleteClockIdentifier];
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