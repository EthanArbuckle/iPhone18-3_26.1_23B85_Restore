@interface POMMESSchemaPOMMESClientConversationMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESClientConversationMetadata)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESClientConversationMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHasDisplayHints:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESClientConversationMetadata

- (POMMESSchemaPOMMESClientConversationMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESClientConversationMetadata;
  v5 = [(POMMESSchemaPOMMESClientConversationMetadata *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"hasPromptContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESClientConversationMetadata setHasPromptContext:](v5, "setHasPromptContext:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"hasDisplayHints"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESClientConversationMetadata setHasDisplayHints:](v5, "setHasDisplayHints:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"onDeviceMetadata"];
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

- (POMMESSchemaPOMMESClientConversationMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESClientConversationMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESClientConversationMetadata *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESClientConversationMetadata hasDisplayHints](self, "hasDisplayHints")}];
    [v3 setObject:v5 forKeyedSubscript:@"hasDisplayHints"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESClientConversationMetadata hasPromptContext](self, "hasPromptContext")}];
    [v3 setObject:v6 forKeyedSubscript:@"hasPromptContext"];
  }

  if (self->_onDeviceMetadata)
  {
    v7 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"onDeviceMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"onDeviceMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    hasPromptContext = self->_hasPromptContext;
    if (hasPromptContext != [v4 hasPromptContext])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (hasDisplayHints = self->_hasDisplayHints, hasDisplayHints == [v4 hasDisplayHints]))
    {
      v10 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
      v11 = [v4 onDeviceMetadata];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
        v16 = [v4 onDeviceMetadata];
        v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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

  v5 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];

  v6 = v8;
  if (v5)
  {
    v7 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasHasDisplayHints:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESClientConversationMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESClientConversationMetadata *)self onDeviceMetadata:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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