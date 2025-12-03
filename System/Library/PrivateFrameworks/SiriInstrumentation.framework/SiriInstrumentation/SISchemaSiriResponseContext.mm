@interface SISchemaSiriResponseContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaSiriResponseContext)initWithDictionary:(id)dictionary;
- (SISchemaSiriResponseContext)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSiriResponseMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation SISchemaSiriResponseContext

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_dialogPhase)
  {
    dialogPhase = [(SISchemaSiriResponseContext *)self dialogPhase];
    v5 = [dialogPhase copy];
    [dictionary setObject:v5 forKeyedSubscript:@"dialogPhase"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [(SISchemaSiriResponseContext *)self presentationType]- 1;
    if (v7 > 6)
    {
      v8 = @"SIRIPRESENTATIONTYPE_UNKNOWN_SIRI_PRESENTATION_TYPE";
    }

    else
    {
      v8 = off_1E78E64D0[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"presentationType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [(SISchemaSiriResponseContext *)self siriResponseMode]- 1;
    if (v9 > 6)
    {
      v10 = @"SIRIRESPONSEMODE_UNKNOWN_SIRI_RESPONSE_MODE";
    }

    else
    {
      v10 = off_1E78E6508[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"siriResponseMode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (SISchemaSiriResponseContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaSiriResponseContext;
  v5 = [(SISchemaSiriResponseContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dialogPhase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaSiriResponseContext *)v5 setDialogPhase:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"presentationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaSiriResponseContext setPresentationType:](v5, "setPresentationType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"siriResponseMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaSiriResponseContext setSiriResponseMode:](v5, "setSiriResponseMode:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaSiriResponseContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaSiriResponseContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaSiriResponseContext *)self dictionaryRepresentation];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_dialogPhase hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_presentationType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_siriResponseMode;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  dialogPhase = [(SISchemaSiriResponseContext *)self dialogPhase];
  dialogPhase2 = [equalCopy dialogPhase];
  v7 = dialogPhase2;
  if ((dialogPhase != 0) == (dialogPhase2 == 0))
  {

    goto LABEL_16;
  }

  dialogPhase3 = [(SISchemaSiriResponseContext *)self dialogPhase];
  if (dialogPhase3)
  {
    v9 = dialogPhase3;
    dialogPhase4 = [(SISchemaSiriResponseContext *)self dialogPhase];
    dialogPhase5 = [equalCopy dialogPhase];
    v12 = [dialogPhase4 isEqual:dialogPhase5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    presentationType = self->_presentationType;
    if (presentationType == [equalCopy presentationType])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    siriResponseMode = self->_siriResponseMode;
    if (siriResponseMode != [equalCopy siriResponseMode])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dialogPhase = [(SISchemaSiriResponseContext *)self dialogPhase];

  if (dialogPhase)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

- (void)setHasSiriResponseMode:(BOOL)mode
{
  if (mode)
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