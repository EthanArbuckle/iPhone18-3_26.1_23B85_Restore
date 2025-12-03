@interface ORCHSchemaORCHConversationContextSubmitted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHConversationContextSubmitted)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHConversationContextSubmitted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasContextUpdateError:(BOOL)error;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHConversationContextSubmitted

- (ORCHSchemaORCHConversationContextSubmitted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHConversationContextSubmitted;
  v5 = [(ORCHSchemaORCHConversationContextSubmitted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextUpdateReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHConversationContextSubmitted setContextUpdateReceived:](v5, "setContextUpdateReceived:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"contextUpdateError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHConversationContextSubmitted setContextUpdateError:](v5, "setContextUpdateError:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHConversationContextSubmitted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHConversationContextSubmitted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHConversationContextSubmitted *)self dictionaryRepresentation];
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
  v4 = *(&self->_contextUpdateError + 1);
  if ((v4 & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHConversationContextSubmitted contextUpdateError](self, "contextUpdateError")}];
    [dictionary setObject:v5 forKeyedSubscript:@"contextUpdateError"];

    v4 = *(&self->_contextUpdateError + 1);
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHConversationContextSubmitted contextUpdateReceived](self, "contextUpdateReceived")}];
    [dictionary setObject:v6 forKeyedSubscript:@"contextUpdateReceived"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_contextUpdateError + 1))
  {
    v2 = 2654435761 * self->_contextUpdateReceived;
    if ((*(&self->_contextUpdateError + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_contextUpdateError + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_contextUpdateError;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_contextUpdateError + 1);
  v6 = equalCopy[10];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    contextUpdateReceived = self->_contextUpdateReceived;
    if (contextUpdateReceived != [equalCopy contextUpdateReceived])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_contextUpdateError + 1);
    v6 = equalCopy[10];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    contextUpdateError = self->_contextUpdateError;
    if (contextUpdateError != [equalCopy contextUpdateError])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = *(&self->_contextUpdateError + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    v5 = *(&self->_contextUpdateError + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)setHasContextUpdateError:(BOOL)error
{
  if (error)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_contextUpdateError + 1) = *(&self->_contextUpdateError + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end