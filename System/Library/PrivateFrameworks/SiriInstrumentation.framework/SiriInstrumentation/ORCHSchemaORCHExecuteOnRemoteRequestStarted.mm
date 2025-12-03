@interface ORCHSchemaORCHExecuteOnRemoteRequestStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHExecuteOnRemoteRequestStarted)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHExecuteOnRemoteRequestStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHExecuteOnRemoteRequestStarted

- (ORCHSchemaORCHExecuteOnRemoteRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ORCHSchemaORCHExecuteOnRemoteRequestStarted;
  v5 = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"aceCommandName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)v5 setAceCommandName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"aceCommandType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHExecuteOnRemoteRequestStarted setAceCommandType:](v5, "setAceCommandType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHExecuteOnRemoteRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)self dictionaryRepresentation];
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
  if (self->_aceCommandName)
  {
    aceCommandName = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)self aceCommandName];
    v5 = [aceCommandName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aceCommandName"];
  }

  if (*&self->_has)
  {
    v6 = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)self aceCommandType]- 1;
    if (v6 > 4)
    {
      v7 = @"ORCHACECOMMANDTYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78DEAC8[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"aceCommandType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_aceCommandName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_aceCommandType;
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

  aceCommandName = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)self aceCommandName];
  aceCommandName2 = [equalCopy aceCommandName];
  v7 = aceCommandName2;
  if ((aceCommandName != 0) == (aceCommandName2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  aceCommandName3 = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)self aceCommandName];
  if (aceCommandName3)
  {
    v9 = aceCommandName3;
    aceCommandName4 = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)self aceCommandName];
    aceCommandName5 = [equalCopy aceCommandName];
    v12 = [aceCommandName4 isEqual:aceCommandName5];

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
    aceCommandType = self->_aceCommandType;
    if (aceCommandType != [equalCopy aceCommandType])
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
  aceCommandName = [(ORCHSchemaORCHExecuteOnRemoteRequestStarted *)self aceCommandName];

  if (aceCommandName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end