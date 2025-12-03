@interface POMMESSchemaPOMMESPegasusKitPegasusResponse
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusKitPegasusResponse)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESPegasusKitPegasusResponse)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCompressedResponseSizeInKB:(BOOL)b;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESPegasusKitPegasusResponse

- (POMMESSchemaPOMMESPegasusKitPegasusResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESPegasusKitPegasusResponse;
  v5 = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rawResponseSizeInKB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusKitPegasusResponse setRawResponseSizeInKB:](v5, "setRawResponseSizeInKB:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"compressedResponseSizeInKB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusKitPegasusResponse setCompressedResponseSizeInKB:](v5, "setCompressedResponseSizeInKB:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"timingData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[POMMESSchemaPOMMESPegasusKitNetworkTimingData alloc] initWithDictionary:v8];
      [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)v5 setTimingData:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusKitPegasusResponse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusKitPegasusResponse compressedResponseSizeInKB](self, "compressedResponseSizeInKB")}];
    [dictionary setObject:v5 forKeyedSubscript:@"compressedResponseSizeInKB"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusKitPegasusResponse rawResponseSizeInKB](self, "rawResponseSizeInKB")}];
    [dictionary setObject:v6 forKeyedSubscript:@"rawResponseSizeInKB"];
  }

  if (self->_timingData)
  {
    timingData = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self timingData];
    dictionaryRepresentation = [timingData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"timingData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"timingData"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_rawResponseSizeInKB;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(POMMESSchemaPOMMESPegasusKitNetworkTimingData *)self->_timingData hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_compressedResponseSizeInKB;
  return v7 ^ v6 ^ [(POMMESSchemaPOMMESPegasusKitNetworkTimingData *)self->_timingData hash:v3];
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
    rawResponseSizeInKB = self->_rawResponseSizeInKB;
    if (rawResponseSizeInKB != [equalCopy rawResponseSizeInKB])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (compressedResponseSizeInKB = self->_compressedResponseSizeInKB, compressedResponseSizeInKB == [equalCopy compressedResponseSizeInKB]))
    {
      timingData = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self timingData];
      timingData2 = [equalCopy timingData];
      v12 = timingData2;
      if ((timingData != 0) != (timingData2 == 0))
      {
        timingData3 = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self timingData];
        if (!timingData3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = timingData3;
        timingData4 = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self timingData];
        timingData5 = [equalCopy timingData];
        v17 = [timingData4 isEqual:timingData5];

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
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  timingData = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self timingData];

  v6 = toCopy;
  if (timingData)
  {
    timingData2 = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self timingData];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasCompressedResponseSizeInKB:(BOOL)b
{
  if (b)
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
  v9.super_class = POMMESSchemaPOMMESPegasusKitPegasusResponse;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self timingData:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESPegasusKitPegasusResponse *)self deleteTimingData];
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