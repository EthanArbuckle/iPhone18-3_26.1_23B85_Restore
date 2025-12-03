@interface SUGSchemaSUGSiriHelpSignal
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGSiriHelpSignal)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGSiriHelpSignal)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSignalType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGSiriHelpSignal

- (SUGSchemaSUGSiriHelpSignal)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SUGSchemaSUGSiriHelpSignal;
  v5 = [(SUGSchemaSUGSiriHelpSignal *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"depthFromActiveSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSiriHelpSignal setDepthFromActiveSignal:](v5, "setDepthFromActiveSignal:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"signalValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SUGSchemaSUGSiriHelpSignal *)v5 setSignalValue:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"signalType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSiriHelpSignal setSignalType:](v5, "setSignalType:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (SUGSchemaSUGSiriHelpSignal)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGSiriHelpSignal *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGSiriHelpSignal *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGSiriHelpSignal depthFromActiveSignal](self, "depthFromActiveSignal")}];
    [dictionary setObject:v5 forKeyedSubscript:@"depthFromActiveSignal"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [(SUGSchemaSUGSiriHelpSignal *)self signalType]- 1;
    if (v6 > 5)
    {
      v7 = @"SUGSIGNALTYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E7BB8[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"signalType"];
  }

  if (self->_signalValue)
  {
    signalValue = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];
    v9 = [signalValue copy];
    [dictionary setObject:v9 forKeyedSubscript:@"signalValue"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_depthFromActiveSignal;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_signalValue hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_signalType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    depthFromActiveSignal = self->_depthFromActiveSignal;
    if (depthFromActiveSignal != [equalCopy depthFromActiveSignal])
    {
      goto LABEL_15;
    }
  }

  signalValue = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];
  signalValue2 = [equalCopy signalValue];
  v8 = signalValue2;
  if ((signalValue != 0) == (signalValue2 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  signalValue3 = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];
  if (signalValue3)
  {
    v10 = signalValue3;
    signalValue4 = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];
    signalValue5 = [equalCopy signalValue];
    v13 = [signalValue4 isEqual:signalValue5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((equalCopy[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    signalType = self->_signalType;
    if (signalType != [equalCopy signalType])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  signalValue = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];

  if (signalValue)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasSignalType:(BOOL)type
{
  if (type)
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