@interface MHSchemaMHEndpointLatencyInfoReported
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHEndpointLatencyInfoReported)initWithDictionary:(id)dictionary;
- (MHSchemaMHEndpointLatencyInfoReported)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHEndpointLatencyInfoReported

- (MHSchemaMHEndpointLatencyInfoReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = MHSchemaMHEndpointLatencyInfoReported;
  v5 = [(MHSchemaMHEndpointLatencyInfoReported *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"firstPacketLatencyInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointLatencyInfoReported setFirstPacketLatencyInNs:](v5, "setFirstPacketLatencyInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"trailingPacketLatencyInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[MHSchemaMHTrailingPacketLatencyInfo alloc] initWithDictionary:v7];
      [(MHSchemaMHEndpointLatencyInfoReported *)v5 setTrailingPacketLatencyInfo:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"coreSpeechTrailingPacketLatencyInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[MHSchemaMHTrailingPacketLatencyInfo alloc] initWithDictionary:v9];
      [(MHSchemaMHEndpointLatencyInfoReported *)v5 setCoreSpeechTrailingPacketLatencyInfo:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"trailingPacketLatency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[MHSchemaMHStatisticDistributionInfo alloc] initWithDictionary:v11];
      [(MHSchemaMHEndpointLatencyInfoReported *)v5 setTrailingPacketLatency:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"coreSpeechTrailingPacketLatency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[MHSchemaMHStatisticDistributionInfo alloc] initWithDictionary:v13];
      [(MHSchemaMHEndpointLatencyInfoReported *)v5 setCoreSpeechTrailingPacketLatency:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (MHSchemaMHEndpointLatencyInfoReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHEndpointLatencyInfoReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHEndpointLatencyInfoReported *)self dictionaryRepresentation];
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
  if (self->_coreSpeechTrailingPacketLatency)
  {
    coreSpeechTrailingPacketLatency = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
    dictionaryRepresentation = [coreSpeechTrailingPacketLatency dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"coreSpeechTrailingPacketLatency"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"coreSpeechTrailingPacketLatency"];
    }
  }

  if (self->_coreSpeechTrailingPacketLatencyInfo)
  {
    coreSpeechTrailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
    dictionaryRepresentation2 = [coreSpeechTrailingPacketLatencyInfo dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"coreSpeechTrailingPacketLatencyInfo"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"coreSpeechTrailingPacketLatencyInfo"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointLatencyInfoReported firstPacketLatencyInNs](self, "firstPacketLatencyInNs")}];
    [dictionary setObject:v10 forKeyedSubscript:@"firstPacketLatencyInNs"];
  }

  if (self->_trailingPacketLatency)
  {
    trailingPacketLatency = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
    dictionaryRepresentation3 = [trailingPacketLatency dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"trailingPacketLatency"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"trailingPacketLatency"];
    }
  }

  if (self->_trailingPacketLatencyInfo)
  {
    trailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
    dictionaryRepresentation4 = [trailingPacketLatencyInfo dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"trailingPacketLatencyInfo"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"trailingPacketLatencyInfo"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_firstPacketLatencyInNs;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(MHSchemaMHTrailingPacketLatencyInfo *)self->_trailingPacketLatencyInfo hash]^ v3;
  v5 = [(MHSchemaMHTrailingPacketLatencyInfo *)self->_coreSpeechTrailingPacketLatencyInfo hash];
  v6 = v4 ^ v5 ^ [(MHSchemaMHStatisticDistributionInfo *)self->_trailingPacketLatency hash];
  return v6 ^ [(MHSchemaMHStatisticDistributionInfo *)self->_coreSpeechTrailingPacketLatency hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    firstPacketLatencyInNs = self->_firstPacketLatencyInNs;
    if (firstPacketLatencyInNs != [equalCopy firstPacketLatencyInNs])
    {
      goto LABEL_25;
    }
  }

  trailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
  trailingPacketLatencyInfo2 = [equalCopy trailingPacketLatencyInfo];
  if ((trailingPacketLatencyInfo != 0) == (trailingPacketLatencyInfo2 == 0))
  {
    goto LABEL_24;
  }

  trailingPacketLatencyInfo3 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
  if (trailingPacketLatencyInfo3)
  {
    v9 = trailingPacketLatencyInfo3;
    trailingPacketLatencyInfo4 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
    trailingPacketLatencyInfo5 = [equalCopy trailingPacketLatencyInfo];
    v12 = [trailingPacketLatencyInfo4 isEqual:trailingPacketLatencyInfo5];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  trailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
  trailingPacketLatencyInfo2 = [equalCopy coreSpeechTrailingPacketLatencyInfo];
  if ((trailingPacketLatencyInfo != 0) == (trailingPacketLatencyInfo2 == 0))
  {
    goto LABEL_24;
  }

  coreSpeechTrailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
  if (coreSpeechTrailingPacketLatencyInfo)
  {
    v14 = coreSpeechTrailingPacketLatencyInfo;
    coreSpeechTrailingPacketLatencyInfo2 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
    coreSpeechTrailingPacketLatencyInfo3 = [equalCopy coreSpeechTrailingPacketLatencyInfo];
    v17 = [coreSpeechTrailingPacketLatencyInfo2 isEqual:coreSpeechTrailingPacketLatencyInfo3];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  trailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
  trailingPacketLatencyInfo2 = [equalCopy trailingPacketLatency];
  if ((trailingPacketLatencyInfo != 0) == (trailingPacketLatencyInfo2 == 0))
  {
    goto LABEL_24;
  }

  trailingPacketLatency = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
  if (trailingPacketLatency)
  {
    v19 = trailingPacketLatency;
    trailingPacketLatency2 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
    trailingPacketLatency3 = [equalCopy trailingPacketLatency];
    v22 = [trailingPacketLatency2 isEqual:trailingPacketLatency3];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  trailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
  trailingPacketLatencyInfo2 = [equalCopy coreSpeechTrailingPacketLatency];
  if ((trailingPacketLatencyInfo != 0) != (trailingPacketLatencyInfo2 == 0))
  {
    coreSpeechTrailingPacketLatency = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
    if (!coreSpeechTrailingPacketLatency)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = coreSpeechTrailingPacketLatency;
    coreSpeechTrailingPacketLatency2 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
    coreSpeechTrailingPacketLatency3 = [equalCopy coreSpeechTrailingPacketLatency];
    v27 = [coreSpeechTrailingPacketLatency2 isEqual:coreSpeechTrailingPacketLatency3];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  trailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];

  if (trailingPacketLatencyInfo)
  {
    trailingPacketLatencyInfo2 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
    PBDataWriterWriteSubmessage();
  }

  coreSpeechTrailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];

  if (coreSpeechTrailingPacketLatencyInfo)
  {
    coreSpeechTrailingPacketLatencyInfo2 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
    PBDataWriterWriteSubmessage();
  }

  trailingPacketLatency = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];

  if (trailingPacketLatency)
  {
    trailingPacketLatency2 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
    PBDataWriterWriteSubmessage();
  }

  coreSpeechTrailingPacketLatency = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];

  v11 = toCopy;
  if (coreSpeechTrailingPacketLatency)
  {
    coreSpeechTrailingPacketLatency2 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = MHSchemaMHEndpointLatencyInfoReported;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  trailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
  v7 = [trailingPacketLatencyInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHEndpointLatencyInfoReported *)self deleteTrailingPacketLatencyInfo];
  }

  coreSpeechTrailingPacketLatencyInfo = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
  v10 = [coreSpeechTrailingPacketLatencyInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MHSchemaMHEndpointLatencyInfoReported *)self deleteCoreSpeechTrailingPacketLatencyInfo];
  }

  trailingPacketLatency = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
  v13 = [trailingPacketLatency applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(MHSchemaMHEndpointLatencyInfoReported *)self deleteTrailingPacketLatency];
  }

  coreSpeechTrailingPacketLatency = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
  v16 = [coreSpeechTrailingPacketLatency applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(MHSchemaMHEndpointLatencyInfoReported *)self deleteCoreSpeechTrailingPacketLatency];
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