@interface FLOWSchemaFLOWTextMessageLength
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWTextMessageLength)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWTextMessageLength)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMessageWordLength:(BOOL)length;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWTextMessageLength

- (FLOWSchemaFLOWTextMessageLength)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWSchemaFLOWTextMessageLength;
  v5 = [(FLOWSchemaFLOWTextMessageLength *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"messageCharLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWTextMessageLength setMessageCharLength:](v5, "setMessageCharLength:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"messageWordLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWTextMessageLength setMessageWordLength:](v5, "setMessageWordLength:", [v7 unsignedIntValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWTextMessageLength)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWTextMessageLength *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWTextMessageLength *)self dictionaryRepresentation];
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
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWTextMessageLength messageCharLength](self, "messageCharLength")}];
    [dictionary setObject:v5 forKeyedSubscript:@"messageCharLength"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWTextMessageLength messageWordLength](self, "messageWordLength")}];
    [dictionary setObject:v6 forKeyedSubscript:@"messageWordLength"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_messageCharLength;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_messageWordLength;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    messageCharLength = self->_messageCharLength;
    if (messageCharLength != [equalCopy messageCharLength])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    messageWordLength = self->_messageWordLength;
    if (messageWordLength != [equalCopy messageWordLength])
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
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
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

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end