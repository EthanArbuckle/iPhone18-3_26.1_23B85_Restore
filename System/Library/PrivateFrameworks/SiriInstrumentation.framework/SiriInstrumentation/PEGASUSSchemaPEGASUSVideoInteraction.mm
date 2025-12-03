@interface PEGASUSSchemaPEGASUSVideoInteraction
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSVideoInteraction)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSVideoInteraction)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasClientInteractionVideoVerb:(BOOL)verb;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSVideoInteraction

- (PEGASUSSchemaPEGASUSVideoInteraction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSVideoInteraction;
  v5 = [(PEGASUSSchemaPEGASUSVideoInteraction *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"interactionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSVideoInteraction setInteractionType:](v5, "setInteractionType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"clientComponentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(PEGASUSSchemaPEGASUSVideoInteraction *)v5 setClientComponentName:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"dialogId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PEGASUSSchemaPEGASUSVideoInteraction *)v5 setDialogId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"clientInteractionVideoVerb"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSVideoInteraction setClientInteractionVideoVerb:](v5, "setClientInteractionVideoVerb:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSVideoInteraction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSVideoInteraction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dictionaryRepresentation];
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
  if (self->_clientComponentName)
  {
    clientComponentName = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];
    v5 = [clientComponentName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"clientComponentName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientInteractionVideoVerb]- 1;
    if (v6 > 8)
    {
      v7 = @"PEGASUSVIDEOVERB_UNKNOWN";
    }

    else
    {
      v7 = off_1E78DFE08[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"clientInteractionVideoVerb"];
  }

  if (self->_dialogId)
  {
    dialogId = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];
    v9 = [dialogId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"dialogId"];
  }

  if (*&self->_has)
  {
    interactionType = [(PEGASUSSchemaPEGASUSVideoInteraction *)self interactionType];
    v11 = @"PEGASUSVIDEOINTERACTIONTYPE_UNKNOWN";
    if (interactionType == 1)
    {
      v11 = @"PEGASUSVIDEOINTERACTIONTYPE_CLIENT";
    }

    if (interactionType == 2)
    {
      v12 = @"PEGASUSVIDEOINTERACTIONTYPE_SERVER";
    }

    else
    {
      v12 = v11;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"interactionType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_interactionType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_clientComponentName hash];
  v5 = [(NSString *)self->_dialogId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_clientInteractionVideoVerb;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    interactionType = self->_interactionType;
    if (interactionType != [equalCopy interactionType])
    {
      goto LABEL_15;
    }
  }

  clientComponentName = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];
  clientComponentName2 = [equalCopy clientComponentName];
  if ((clientComponentName != 0) == (clientComponentName2 == 0))
  {
    goto LABEL_14;
  }

  clientComponentName3 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];
  if (clientComponentName3)
  {
    v9 = clientComponentName3;
    clientComponentName4 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];
    clientComponentName5 = [equalCopy clientComponentName];
    v12 = [clientComponentName4 isEqual:clientComponentName5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  clientComponentName = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];
  clientComponentName2 = [equalCopy dialogId];
  if ((clientComponentName != 0) == (clientComponentName2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  dialogId = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];
  if (dialogId)
  {
    v14 = dialogId;
    dialogId2 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];
    dialogId3 = [equalCopy dialogId];
    v17 = [dialogId2 isEqual:dialogId3];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((equalCopy[36] >> 1) & 1))
  {
    if (!v20 || (clientInteractionVideoVerb = self->_clientInteractionVideoVerb, clientInteractionVideoVerb == [equalCopy clientInteractionVideoVerb]))
    {
      v18 = 1;
      goto LABEL_16;
    }
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
    PBDataWriterWriteInt32Field();
  }

  clientComponentName = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];

  if (clientComponentName)
  {
    PBDataWriterWriteStringField();
  }

  dialogId = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];

  if (dialogId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasClientInteractionVideoVerb:(BOOL)verb
{
  if (verb)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end