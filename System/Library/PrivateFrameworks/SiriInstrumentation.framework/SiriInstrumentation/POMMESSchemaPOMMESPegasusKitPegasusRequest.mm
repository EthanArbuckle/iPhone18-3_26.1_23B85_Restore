@interface POMMESSchemaPOMMESPegasusKitPegasusRequest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusKitPegasusRequest)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESPegasusKitPegasusRequest)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCompressedRequestSizeInKB:(BOOL)b;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESPegasusKitPegasusRequest

- (POMMESSchemaPOMMESPegasusKitPegasusRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESPegasusKitPegasusRequest;
  v5 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rawRequestSizeInKB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusKitPegasusRequest setRawRequestSizeInKB:](v5, "setRawRequestSizeInKB:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"compressedRequestSizeInKB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusKitPegasusRequest setCompressedRequestSizeInKB:](v5, "setCompressedRequestSizeInKB:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pegasusRequestArguments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[POMMESSchemaPOMMESPegasusRequestArguments alloc] initWithDictionary:v8];
      [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)v5 setPegasusRequestArguments:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusKitPegasusRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusKitPegasusRequest compressedRequestSizeInKB](self, "compressedRequestSizeInKB")}];
    [dictionary setObject:v4 forKeyedSubscript:@"compressedRequestSizeInKB"];
  }

  if (self->_pegasusRequestArguments)
  {
    pegasusRequestArguments = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
    dictionaryRepresentation = [pegasusRequestArguments dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"pegasusRequestArguments"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"pegasusRequestArguments"];
    }
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusKitPegasusRequest rawRequestSizeInKB](self, "rawRequestSizeInKB")}];
    [dictionary setObject:v8 forKeyedSubscript:@"rawRequestSizeInKB"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_rawRequestSizeInKB;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(POMMESSchemaPOMMESPegasusRequestArguments *)self->_pegasusRequestArguments hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_compressedRequestSizeInKB;
  return v7 ^ v6 ^ [(POMMESSchemaPOMMESPegasusRequestArguments *)self->_pegasusRequestArguments hash:v3];
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
    rawRequestSizeInKB = self->_rawRequestSizeInKB;
    if (rawRequestSizeInKB != [equalCopy rawRequestSizeInKB])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (compressedRequestSizeInKB = self->_compressedRequestSizeInKB, compressedRequestSizeInKB == [equalCopy compressedRequestSizeInKB]))
    {
      pegasusRequestArguments = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
      pegasusRequestArguments2 = [equalCopy pegasusRequestArguments];
      v12 = pegasusRequestArguments2;
      if ((pegasusRequestArguments != 0) != (pegasusRequestArguments2 == 0))
      {
        pegasusRequestArguments3 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
        if (!pegasusRequestArguments3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = pegasusRequestArguments3;
        pegasusRequestArguments4 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
        pegasusRequestArguments5 = [equalCopy pegasusRequestArguments];
        v17 = [pegasusRequestArguments4 isEqual:pegasusRequestArguments5];

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

  pegasusRequestArguments = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];

  v6 = toCopy;
  if (pegasusRequestArguments)
  {
    pegasusRequestArguments2 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasCompressedRequestSizeInKB:(BOOL)b
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
  v9.super_class = POMMESSchemaPOMMESPegasusKitPegasusRequest;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self deletePegasusRequestArguments];
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