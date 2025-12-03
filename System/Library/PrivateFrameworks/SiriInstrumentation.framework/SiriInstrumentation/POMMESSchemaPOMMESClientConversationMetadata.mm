@interface POMMESSchemaPOMMESClientConversationMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESClientConversationMetadata)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESClientConversationMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHasDisplayHints:(BOOL)hints;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESClientConversationMetadata

- (POMMESSchemaPOMMESClientConversationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESClientConversationMetadata;
  v5 = [(POMMESSchemaPOMMESClientConversationMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hasPromptContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESClientConversationMetadata setHasPromptContext:](v5, "setHasPromptContext:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"hasDisplayHints"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESClientConversationMetadata setHasDisplayHints:](v5, "setHasDisplayHints:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"onDeviceMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[POMMESSchemaPOMMESOnDeviceMetadata alloc] initWithDictionary:v8];
      [(POMMESSchemaPOMMESClientConversationMetadata *)v5 setOnDeviceMetadata:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESClientConversationMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESClientConversationMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESClientConversationMetadata *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESClientConversationMetadata hasDisplayHints](self, "hasDisplayHints")}];
    [dictionary setObject:v5 forKeyedSubscript:@"hasDisplayHints"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESClientConversationMetadata hasPromptContext](self, "hasPromptContext")}];
    [dictionary setObject:v6 forKeyedSubscript:@"hasPromptContext"];
  }

  if (self->_onDeviceMetadata)
  {
    onDeviceMetadata = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
    dictionaryRepresentation = [onDeviceMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"onDeviceMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"onDeviceMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_hasPromptContext;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(POMMESSchemaPOMMESOnDeviceMetadata *)self->_onDeviceMetadata hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_hasDisplayHints;
  return v7 ^ v6 ^ [(POMMESSchemaPOMMESOnDeviceMetadata *)self->_onDeviceMetadata hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    hasPromptContext = self->_hasPromptContext;
    if (hasPromptContext != [equalCopy hasPromptContext])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (hasDisplayHints = self->_hasDisplayHints, hasDisplayHints == [equalCopy hasDisplayHints]))
    {
      onDeviceMetadata = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
      onDeviceMetadata2 = [equalCopy onDeviceMetadata];
      v12 = onDeviceMetadata2;
      if ((onDeviceMetadata != 0) != (onDeviceMetadata2 == 0))
      {
        onDeviceMetadata3 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
        if (!onDeviceMetadata3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = onDeviceMetadata3;
        onDeviceMetadata4 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
        onDeviceMetadata5 = [equalCopy onDeviceMetadata];
        v17 = [onDeviceMetadata4 isEqual:onDeviceMetadata5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  onDeviceMetadata = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];

  v6 = toCopy;
  if (onDeviceMetadata)
  {
    onDeviceMetadata2 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasHasDisplayHints:(BOOL)hints
{
  if (hints)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESClientConversationMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESClientConversationMetadata *)self deleteOnDeviceMetadata];
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