@interface POMMESSchemaPOMMESPegasusKitPegasusRequest
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusKitPegasusRequest)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESPegasusKitPegasusRequest)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCompressedRequestSizeInKB:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESPegasusKitPegasusRequest

- (POMMESSchemaPOMMESPegasusKitPegasusRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESPegasusKitPegasusRequest;
  v5 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rawRequestSizeInKB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusKitPegasusRequest setRawRequestSizeInKB:](v5, "setRawRequestSizeInKB:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"compressedRequestSizeInKB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusKitPegasusRequest setCompressedRequestSizeInKB:](v5, "setCompressedRequestSizeInKB:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"pegasusRequestArguments"];
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

- (POMMESSchemaPOMMESPegasusKitPegasusRequest)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusKitPegasusRequest compressedRequestSizeInKB](self, "compressedRequestSizeInKB")}];
    [v3 setObject:v4 forKeyedSubscript:@"compressedRequestSizeInKB"];
  }

  if (self->_pegasusRequestArguments)
  {
    v5 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"pegasusRequestArguments"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"pegasusRequestArguments"];
    }
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusKitPegasusRequest rawRequestSizeInKB](self, "rawRequestSizeInKB")}];
    [v3 setObject:v8 forKeyedSubscript:@"rawRequestSizeInKB"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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
    rawRequestSizeInKB = self->_rawRequestSizeInKB;
    if (rawRequestSizeInKB != [v4 rawRequestSizeInKB])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (compressedRequestSizeInKB = self->_compressedRequestSizeInKB, compressedRequestSizeInKB == [v4 compressedRequestSizeInKB]))
    {
      v10 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
      v11 = [v4 pegasusRequestArguments];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
        v16 = [v4 pegasusRequestArguments];
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
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];

  v6 = v8;
  if (v5)
  {
    v7 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasCompressedRequestSizeInKB:(BOOL)a3
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
  v9.super_class = POMMESSchemaPOMMESPegasusKitPegasusRequest;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESPegasusKitPegasusRequest *)self pegasusRequestArguments:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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