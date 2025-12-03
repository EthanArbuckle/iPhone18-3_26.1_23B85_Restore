@interface FLOWSchemaFLOWSmsTextContentMetadata
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWSmsTextContentMetadata)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWSmsTextContentMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsPayloadMultilingual:(BOOL)multilingual;
- (void)setHasIsPunctuationUsed:(BOOL)used;
- (void)setHasMessageWordLength:(BOOL)length;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWSmsTextContentMetadata

- (FLOWSchemaFLOWSmsTextContentMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FLOWSchemaFLOWSmsTextContentMetadata;
  v5 = [(FLOWSchemaFLOWSmsTextContentMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"messageCharLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsTextContentMetadata setMessageCharLength:](v5, "setMessageCharLength:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"messageWordLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsTextContentMetadata setMessageWordLength:](v5, "setMessageWordLength:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"flowKeyboardUsageMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWKeyboardUsageMetadata alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWSmsTextContentMetadata *)v5 setFlowKeyboardUsageMetadata:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isPunctuationUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsTextContentMetadata setIsPunctuationUsed:](v5, "setIsPunctuationUsed:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isPayloadMultilingual"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsTextContentMetadata setIsPayloadMultilingual:](v5, "setIsPayloadMultilingual:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWSmsTextContentMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWSmsTextContentMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWSmsTextContentMetadata *)self dictionaryRepresentation];
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
  if (self->_flowKeyboardUsageMetadata)
  {
    flowKeyboardUsageMetadata = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
    dictionaryRepresentation = [flowKeyboardUsageMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"flowKeyboardUsageMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"flowKeyboardUsageMetadata"];
    }
  }

  v7 = *(&self->_isPayloadMultilingual + 1);
  if ((v7 & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsTextContentMetadata isPayloadMultilingual](self, "isPayloadMultilingual")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isPayloadMultilingual"];

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
  [dictionary setObject:v11 forKeyedSubscript:@"isPunctuationUsed"];

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
  [dictionary setObject:v12 forKeyedSubscript:@"messageCharLength"];

  if ((*(&self->_isPayloadMultilingual + 1) & 2) != 0)
  {
LABEL_10:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWSmsTextContentMetadata messageWordLength](self, "messageWordLength")}];
    [dictionary setObject:v8 forKeyedSubscript:@"messageWordLength"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(&self->_isPayloadMultilingual + 1);
  v6 = equalCopy[26];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (v5)
  {
    messageCharLength = self->_messageCharLength;
    if (messageCharLength != [equalCopy messageCharLength])
    {
      goto LABEL_23;
    }

    v5 = *(&self->_isPayloadMultilingual + 1);
    v6 = equalCopy[26];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v8)
  {
    messageWordLength = self->_messageWordLength;
    if (messageWordLength != [equalCopy messageWordLength])
    {
      goto LABEL_23;
    }
  }

  flowKeyboardUsageMetadata = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
  flowKeyboardUsageMetadata2 = [equalCopy flowKeyboardUsageMetadata];
  v12 = flowKeyboardUsageMetadata2;
  if ((flowKeyboardUsageMetadata != 0) == (flowKeyboardUsageMetadata2 == 0))
  {

    goto LABEL_23;
  }

  flowKeyboardUsageMetadata3 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
  if (flowKeyboardUsageMetadata3)
  {
    v14 = flowKeyboardUsageMetadata3;
    flowKeyboardUsageMetadata4 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
    flowKeyboardUsageMetadata5 = [equalCopy flowKeyboardUsageMetadata];
    v17 = [flowKeyboardUsageMetadata4 isEqual:flowKeyboardUsageMetadata5];

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
  v20 = equalCopy[26];
  if (v19 != ((v20 >> 2) & 1))
  {
LABEL_23:
    v24 = 0;
    goto LABEL_24;
  }

  if (v19)
  {
    isPunctuationUsed = self->_isPunctuationUsed;
    if (isPunctuationUsed == [equalCopy isPunctuationUsed])
    {
      v18 = *(&self->_isPayloadMultilingual + 1);
      v20 = equalCopy[26];
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
    if (isPayloadMultilingual != [equalCopy isPayloadMultilingual])
    {
      goto LABEL_23;
    }
  }

  v24 = 1;
LABEL_24:

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  flowKeyboardUsageMetadata = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];

  if (flowKeyboardUsageMetadata)
  {
    flowKeyboardUsageMetadata2 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata];
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

- (void)setHasIsPayloadMultilingual:(BOOL)multilingual
{
  if (multilingual)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPayloadMultilingual + 1) = *(&self->_isPayloadMultilingual + 1) & 0xF7 | v3;
}

- (void)setHasIsPunctuationUsed:(BOOL)used
{
  if (used)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPayloadMultilingual + 1) = *(&self->_isPayloadMultilingual + 1) & 0xFB | v3;
}

- (void)setHasMessageWordLength:(BOOL)length
{
  if (length)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPayloadMultilingual + 1) = *(&self->_isPayloadMultilingual + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWSmsTextContentMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWSchemaFLOWSmsTextContentMetadata *)self flowKeyboardUsageMetadata:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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