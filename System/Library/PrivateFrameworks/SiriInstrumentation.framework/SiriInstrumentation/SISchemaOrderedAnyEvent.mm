@interface SISchemaOrderedAnyEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaOrderedAnyEvent)initWithDictionary:(id)dictionary;
- (SISchemaOrderedAnyEvent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)unwrapMessageWithCompletion:(id)completion;
- (void)writeTo:(id)to;
@end

@implementation SISchemaOrderedAnyEvent

- (SISchemaOrderedAnyEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaOrderedAnyEvent;
  v5 = [(SISchemaOrderedAnyEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaCommonEventMetadata alloc] initWithDictionary:v6];
      [(SISchemaOrderedAnyEvent *)v5 setMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"event"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaAnyEvent alloc] initWithDictionary:v8];
      [(SISchemaOrderedAnyEvent *)v5 setEvent:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaOrderedAnyEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaOrderedAnyEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaOrderedAnyEvent *)self dictionaryRepresentation];
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
  if (self->_event)
  {
    event = [(SISchemaOrderedAnyEvent *)self event];
    dictionaryRepresentation = [event dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"event"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"event"];
    }
  }

  if (self->_metadata)
  {
    metadata = [(SISchemaOrderedAnyEvent *)self metadata];
    dictionaryRepresentation2 = [metadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"metadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"metadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  metadata = [(SISchemaOrderedAnyEvent *)self metadata];
  metadata2 = [equalCopy metadata];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_11;
  }

  metadata3 = [(SISchemaOrderedAnyEvent *)self metadata];
  if (metadata3)
  {
    v8 = metadata3;
    metadata4 = [(SISchemaOrderedAnyEvent *)self metadata];
    metadata5 = [equalCopy metadata];
    v11 = [metadata4 isEqual:metadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  metadata = [(SISchemaOrderedAnyEvent *)self event];
  metadata2 = [equalCopy event];
  if ((metadata != 0) != (metadata2 == 0))
  {
    event = [(SISchemaOrderedAnyEvent *)self event];
    if (!event)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = event;
    event2 = [(SISchemaOrderedAnyEvent *)self event];
    event3 = [equalCopy event];
    v16 = [event2 isEqual:event3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  metadata = [(SISchemaOrderedAnyEvent *)self metadata];

  if (metadata)
  {
    metadata2 = [(SISchemaOrderedAnyEvent *)self metadata];
    PBDataWriterWriteSubmessage();
  }

  event = [(SISchemaOrderedAnyEvent *)self event];

  if (event)
  {
    event2 = [(SISchemaOrderedAnyEvent *)self event];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaOrderedAnyEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  metadata = [(SISchemaOrderedAnyEvent *)self metadata];
  v7 = [metadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaOrderedAnyEvent *)self deleteMetadata];
  }

  event = [(SISchemaOrderedAnyEvent *)self event];
  v10 = [event applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaOrderedAnyEvent *)self deleteEvent];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (void)unwrapMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  event = [(SISchemaOrderedAnyEvent *)self event];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SISchemaOrderedAnyEvent_Introspection__unwrapMessageWithCompletion___block_invoke;
  v7[3] = &unk_1E78EB450;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [event unwrapMessageWithCompletion:v7];
}

void __70__SISchemaOrderedAnyEvent_Introspection__unwrapMessageWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [v6 metadata];
  v9 = [v8 timestamp];
  v14 = [v5 numberWithLongLong:{objc_msgSend(v9, "timestampInNanoseconds")}];

  v10 = [*(a1 + 32) metadata];
  v11 = [v10 timestamp];
  v12 = [v11 clockIdentifier];
  v13 = [v12 toSafeNSUUID];

  (*(*(a1 + 40) + 16))();
}

@end