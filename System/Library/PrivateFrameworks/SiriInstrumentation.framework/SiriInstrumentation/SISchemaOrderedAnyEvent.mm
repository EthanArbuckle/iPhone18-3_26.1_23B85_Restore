@interface SISchemaOrderedAnyEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaOrderedAnyEvent)initWithDictionary:(id)a3;
- (SISchemaOrderedAnyEvent)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)unwrapMessageWithCompletion:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaOrderedAnyEvent

- (SISchemaOrderedAnyEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SISchemaOrderedAnyEvent;
  v5 = [(SISchemaOrderedAnyEvent *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaCommonEventMetadata alloc] initWithDictionary:v6];
      [(SISchemaOrderedAnyEvent *)v5 setMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"event"];
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

- (SISchemaOrderedAnyEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaOrderedAnyEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaOrderedAnyEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_event)
  {
    v4 = [(SISchemaOrderedAnyEvent *)self event];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"event"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"event"];
    }
  }

  if (self->_metadata)
  {
    v7 = [(SISchemaOrderedAnyEvent *)self metadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"metadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"metadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SISchemaOrderedAnyEvent *)self metadata];
  v6 = [v4 metadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SISchemaOrderedAnyEvent *)self metadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaOrderedAnyEvent *)self metadata];
    v10 = [v4 metadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SISchemaOrderedAnyEvent *)self event];
  v6 = [v4 event];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(SISchemaOrderedAnyEvent *)self event];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(SISchemaOrderedAnyEvent *)self event];
    v15 = [v4 event];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaOrderedAnyEvent *)self metadata];

  if (v4)
  {
    v5 = [(SISchemaOrderedAnyEvent *)self metadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaOrderedAnyEvent *)self event];

  if (v6)
  {
    v7 = [(SISchemaOrderedAnyEvent *)self event];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaOrderedAnyEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaOrderedAnyEvent *)self metadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaOrderedAnyEvent *)self deleteMetadata];
  }

  v9 = [(SISchemaOrderedAnyEvent *)self event];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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

- (void)unwrapMessageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SISchemaOrderedAnyEvent *)self event];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SISchemaOrderedAnyEvent_Introspection__unwrapMessageWithCompletion___block_invoke;
  v7[3] = &unk_1E78EB450;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 unwrapMessageWithCompletion:v7];
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