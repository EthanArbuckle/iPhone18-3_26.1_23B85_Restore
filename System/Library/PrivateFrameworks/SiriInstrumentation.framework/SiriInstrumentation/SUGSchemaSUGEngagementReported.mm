@interface SUGSchemaSUGEngagementReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGEngagementReported)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGEngagementReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGEngagementReported

- (SUGSchemaSUGEngagementReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SUGSchemaSUGEngagementReported;
  v5 = [(SUGSchemaSUGEngagementReported *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"performedTimeSince1970InMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementReported setPerformedTimeSince1970InMs:](v5, "setPerformedTimeSince1970InMs:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"userStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SUGSchemaSUGUserStatistics alloc] initWithDictionary:v7];
      [(SUGSchemaSUGEngagementReported *)v5 setUserStatistics:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"interaction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SUGSchemaSUGInteraction alloc] initWithDictionary:v9];
      [(SUGSchemaSUGEngagementReported *)v5 setInteraction:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SUGSchemaSUGEngagementReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGEngagementReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGEngagementReported *)self dictionaryRepresentation];
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
  if (self->_interaction)
  {
    interaction = [(SUGSchemaSUGEngagementReported *)self interaction];
    dictionaryRepresentation = [interaction dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"interaction"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"interaction"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SUGSchemaSUGEngagementReported performedTimeSince1970InMs](self, "performedTimeSince1970InMs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"performedTimeSince1970InMs"];
  }

  if (self->_userStatistics)
  {
    userStatistics = [(SUGSchemaSUGEngagementReported *)self userStatistics];
    dictionaryRepresentation2 = [userStatistics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"userStatistics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"userStatistics"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_performedTimeSince1970InMs;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SUGSchemaSUGUserStatistics *)self->_userStatistics hash]^ v3;
  return v4 ^ [(SUGSchemaSUGInteraction *)self->_interaction hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    performedTimeSince1970InMs = self->_performedTimeSince1970InMs;
    if (performedTimeSince1970InMs != [equalCopy performedTimeSince1970InMs])
    {
      goto LABEL_15;
    }
  }

  userStatistics = [(SUGSchemaSUGEngagementReported *)self userStatistics];
  userStatistics2 = [equalCopy userStatistics];
  if ((userStatistics != 0) == (userStatistics2 == 0))
  {
    goto LABEL_14;
  }

  userStatistics3 = [(SUGSchemaSUGEngagementReported *)self userStatistics];
  if (userStatistics3)
  {
    v9 = userStatistics3;
    userStatistics4 = [(SUGSchemaSUGEngagementReported *)self userStatistics];
    userStatistics5 = [equalCopy userStatistics];
    v12 = [userStatistics4 isEqual:userStatistics5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  userStatistics = [(SUGSchemaSUGEngagementReported *)self interaction];
  userStatistics2 = [equalCopy interaction];
  if ((userStatistics != 0) != (userStatistics2 == 0))
  {
    interaction = [(SUGSchemaSUGEngagementReported *)self interaction];
    if (!interaction)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = interaction;
    interaction2 = [(SUGSchemaSUGEngagementReported *)self interaction];
    interaction3 = [equalCopy interaction];
    v17 = [interaction2 isEqual:interaction3];

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
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  userStatistics = [(SUGSchemaSUGEngagementReported *)self userStatistics];

  if (userStatistics)
  {
    userStatistics2 = [(SUGSchemaSUGEngagementReported *)self userStatistics];
    PBDataWriterWriteSubmessage();
  }

  interaction = [(SUGSchemaSUGEngagementReported *)self interaction];

  v7 = toCopy;
  if (interaction)
  {
    interaction2 = [(SUGSchemaSUGEngagementReported *)self interaction];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SUGSchemaSUGEngagementReported;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  userStatistics = [(SUGSchemaSUGEngagementReported *)self userStatistics];
  v7 = [userStatistics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SUGSchemaSUGEngagementReported *)self deleteUserStatistics];
  }

  interaction = [(SUGSchemaSUGEngagementReported *)self interaction];
  v10 = [interaction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SUGSchemaSUGEngagementReported *)self deleteInteraction];
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