@interface PEGASUSSchemaPEGASUSVideoInteraction
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSVideoInteraction)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSVideoInteraction)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasClientInteractionVideoVerb:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSVideoInteraction

- (PEGASUSSchemaPEGASUSVideoInteraction)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSVideoInteraction;
  v5 = [(PEGASUSSchemaPEGASUSVideoInteraction *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"interactionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSVideoInteraction setInteractionType:](v5, "setInteractionType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"clientComponentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(PEGASUSSchemaPEGASUSVideoInteraction *)v5 setClientComponentName:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"dialogId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PEGASUSSchemaPEGASUSVideoInteraction *)v5 setDialogId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"clientInteractionVideoVerb"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSVideoInteraction setClientInteractionVideoVerb:](v5, "setClientInteractionVideoVerb:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSVideoInteraction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSVideoInteraction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dictionaryRepresentation];
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
  if (self->_clientComponentName)
  {
    v4 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"clientComponentName"];
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

    [v3 setObject:v7 forKeyedSubscript:@"clientInteractionVideoVerb"];
  }

  if (self->_dialogId)
  {
    v8 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"dialogId"];
  }

  if (*&self->_has)
  {
    v10 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self interactionType];
    v11 = @"PEGASUSVIDEOINTERACTIONTYPE_UNKNOWN";
    if (v10 == 1)
    {
      v11 = @"PEGASUSVIDEOINTERACTIONTYPE_CLIENT";
    }

    if (v10 == 2)
    {
      v12 = @"PEGASUSVIDEOINTERACTIONTYPE_SERVER";
    }

    else
    {
      v12 = v11;
    }

    [v3 setObject:v12 forKeyedSubscript:@"interactionType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    interactionType = self->_interactionType;
    if (interactionType != [v4 interactionType])
    {
      goto LABEL_15;
    }
  }

  v6 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];
  v7 = [v4 clientComponentName];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];
  if (v8)
  {
    v9 = v8;
    v10 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];
    v11 = [v4 clientComponentName];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];
  v7 = [v4 dialogId];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v13 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];
  if (v13)
  {
    v14 = v13;
    v15 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];
    v16 = [v4 dialogId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((v4[36] >> 1) & 1))
  {
    if (!v20 || (clientInteractionVideoVerb = self->_clientInteractionVideoVerb, clientInteractionVideoVerb == [v4 clientInteractionVideoVerb]))
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

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self clientComponentName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSVideoInteraction *)self dialogId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasClientInteractionVideoVerb:(BOOL)a3
{
  if (a3)
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