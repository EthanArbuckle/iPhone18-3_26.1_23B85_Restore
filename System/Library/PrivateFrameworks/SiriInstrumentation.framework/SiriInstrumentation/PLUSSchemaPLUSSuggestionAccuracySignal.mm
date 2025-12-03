@interface PLUSSchemaPLUSSuggestionAccuracySignal
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggestionAccuracySignal)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggestionAccuracySignal)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSignalSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggestionAccuracySignal

- (PLUSSchemaPLUSSuggestionAccuracySignal)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSSuggestionAccuracySignal;
  v5 = [(PLUSSchemaPLUSSuggestionAccuracySignal *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"signalType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggestionAccuracySignal setSignalType:](v5, "setSignalType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"signalSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggestionAccuracySignal setSignalSource:](v5, "setSignalSource:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggestionAccuracySignal)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestionAccuracySignal *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggestionAccuracySignal *)self dictionaryRepresentation];
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
    v5 = [(PLUSSchemaPLUSSuggestionAccuracySignal *)self signalSource]- 1;
    if (v5 > 3)
    {
      v6 = @"PLUSSUGGESTIONACCURACYSIGNALSOURCE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E0AC0[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"signalSource"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [(PLUSSchemaPLUSSuggestionAccuracySignal *)self signalType]- 1;
    if (v7 > 7)
    {
      v8 = @"PLUSSUGGESTIONACCURACYSIGNALTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E0AE0[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"signalType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_signalType;
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
  v3 = 2654435761 * self->_signalSource;
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
    signalType = self->_signalType;
    if (signalType != [equalCopy signalType])
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
    signalSource = self->_signalSource;
    if (signalSource != [equalCopy signalSource])
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
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasSignalSource:(BOOL)source
{
  if (source)
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