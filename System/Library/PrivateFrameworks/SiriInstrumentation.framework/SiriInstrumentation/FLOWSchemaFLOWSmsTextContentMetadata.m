@interface FLOWSchemaFLOWSmsTextContentMetadata
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWSmsTextContentMetadata)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWSmsTextContentMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsPayloadMultilingual:(BOOL)a3;
- (void)setHasIsPunctuationUsed:(BOOL)a3;
- (void)setHasMessageWordLength:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWSmsTextContentMetadata

- (FLOWSchemaFLOWSmsTextContentMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FLOWSchemaFLOWSmsTextContentMetadata;
  v5 = [(FLOWSchemaFLOWSmsTextContentMetadata *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"messageCharLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsTextContentMetadata setMessageCharLength:](v5, "setMessageCharLength:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"messageWordLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsTextContentMetadata setMessageWordLength:](v5, "setMessageWordLength:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"flowKeyboardUsageMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWKeyboardUsageMetadata alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWSmsTextContentMetadata *)v5 setFlowKeyboardUsageMetadata:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isPunctuationUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsTextContentMetadata setIsPunctuationUsed:](v5, "setIsPunctuationUsed:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isPayloadMultilingual"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsTextContentMetadata setIsPayloadMultilingual:](v5, "setIsPayloadMultilingual:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWSmsTextContentMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWSmsTextContentMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self dictionaryRepresentation];
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
  if (self->_flowKeyboardUsageMetadata)
  {
    v4 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"flowKeyboardUsageMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"flowKeyboardUsageMetadata"];
    }
  }

  v7 = *(&self->_isPayloadMultilingual + 1);
  if ((v7 & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsTextContentMetadata isPayloadMultilingual](self, "isPayloadMultilingual")}];
    [v3 setObject:v10 forKeyedSubscript:@"isPayloadMultilingual"];

    v7 = *(&self->_isPayloadMultilingual + 1);
    if ((v7 & 4) == 0)
    {
LABEL_8:
      if ((v7 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((*(&self->_isPayloadMultilingual + 1) & 4) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsTextContentMetadata isPunctuationUsed](self, "isPunctuationUsed")}];
  [v3 setObject:v11 forKeyedSubscript:@"isPunctuationUsed"];

  v7 = *(&self->_isPayloadMultilingual + 1);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_16:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWSmsTextContentMetadata messageCharLength](self, "messageCharLength")}];
  [v3 setObject:v12 forKeyedSubscript:@"messageCharLength"];

  if ((*(&self->_isPayloadMultilingual + 1) & 2) != 0)
  {
LABEL_10:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWSmsTextContentMetadata messageWordLength](self, "messageWordLength")}];
    [v3 setObject:v8 forKeyedSubscript:@"messageWordLength"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isPayloadMultilingual + 1))
  {
    v3 = 2654435761 * self->_messageCharLength;
    if ((*(&self->_isPayloadMultilingual + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*(&self->_isPayloadMultilingual + 1) & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_messageWordLength;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(FLOWSchemaFLOWKeyboardUsageMetadata *)self->_flowKeyboardUsageMetadata hash];
  if ((*(&self->_isPayloadMultilingual + 1) & 4) != 0)
  {
    v6 = 2654435761 * self->_isPunctuationUsed;
    if ((*(&self->_isPayloadMultilingual + 1) & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v5;
  }

  v6 = 0;
  if ((*(&self->_isPayloadMultilingual + 1) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = 2654435761 * self->_isPayloadMultilingual;
  return v4 ^ v3 ^ v6 ^ v7 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(&self->_isPayloadMultilingual + 1);
  v6 = v4[26];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (v5)
  {
    messageCharLength = self->_messageCharLength;
    if (messageCharLength != [v4 messageCharLength])
    {
      goto LABEL_23;
    }

    v5 = *(&self->_isPayloadMultilingual + 1);
    v6 = v4[26];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v8)
  {
    messageWordLength = self->_messageWordLength;
    if (messageWordLength != [v4 messageWordLength])
    {
      goto LABEL_23;
    }
  }

  v10 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
  v11 = [v4 flowKeyboardUsageMetadata];
  v12 = v11;
  if ((v10 != 0) == (v11 == 0))
  {

    goto LABEL_23;
  }

  v13 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
  if (v13)
  {
    v14 = v13;
    v15 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
    v16 = [v4 flowKeyboardUsageMetadata];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = *(&self->_isPayloadMultilingual + 1);
  v19 = (v18 >> 2) & 1;
  v20 = v4[26];
  if (v19 != ((v20 >> 2) & 1))
  {
LABEL_23:
    v24 = 0;
    goto LABEL_24;
  }

  if (v19)
  {
    isPunctuationUsed = self->_isPunctuationUsed;
    if (isPunctuationUsed == [v4 isPunctuationUsed])
    {
      v18 = *(&self->_isPayloadMultilingual + 1);
      v20 = v4[26];
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_19:
  v22 = (v18 >> 3) & 1;
  if (v22 != ((v20 >> 3) & 1))
  {
    goto LABEL_23;
  }

  if (v22)
  {
    isPayloadMultilingual = self->_isPayloadMultilingual;
    if (isPayloadMultilingual != [v4 isPayloadMultilingual])
    {
      goto LABEL_23;
    }
  }

  v24 = 1;
LABEL_24:

  return v24;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = *(&self->_isPayloadMultilingual + 1);
  if (v4)
  {
    PBDataWriterWriteUint32Field();
    v4 = *(&self->_isPayloadMultilingual + 1);
  }

  if ((v4 & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];

  if (v5)
  {
    v6 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = *(&self->_isPayloadMultilingual + 1);
  if ((v7 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = *(&self->_isPayloadMultilingual + 1);
  }

  if ((v7 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsPayloadMultilingual:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPayloadMultilingual + 1) = *(&self->_isPayloadMultilingual + 1) & 0xF7 | v3;
}

- (void)setHasIsPunctuationUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPayloadMultilingual + 1) = *(&self->_isPayloadMultilingual + 1) & 0xFB | v3;
}

- (void)setHasMessageWordLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPayloadMultilingual + 1) = *(&self->_isPayloadMultilingual + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWSmsTextContentMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(FLOWSchemaFLOWSmsTextContentMetadata *)self deleteFlowKeyboardUsageMetadata];
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