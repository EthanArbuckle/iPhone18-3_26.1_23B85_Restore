@interface MHSchemaMHEndpointLatencyInfoReported
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHEndpointLatencyInfoReported)initWithDictionary:(id)a3;
- (MHSchemaMHEndpointLatencyInfoReported)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHEndpointLatencyInfoReported

- (MHSchemaMHEndpointLatencyInfoReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MHSchemaMHEndpointLatencyInfoReported;
  v5 = [(MHSchemaMHEndpointLatencyInfoReported *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"firstPacketLatencyInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointLatencyInfoReported setFirstPacketLatencyInNs:](v5, "setFirstPacketLatencyInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"trailingPacketLatencyInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[MHSchemaMHTrailingPacketLatencyInfo alloc] initWithDictionary:v7];
      [(MHSchemaMHEndpointLatencyInfoReported *)v5 setTrailingPacketLatencyInfo:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"coreSpeechTrailingPacketLatencyInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[MHSchemaMHTrailingPacketLatencyInfo alloc] initWithDictionary:v9];
      [(MHSchemaMHEndpointLatencyInfoReported *)v5 setCoreSpeechTrailingPacketLatencyInfo:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"trailingPacketLatency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[MHSchemaMHStatisticDistributionInfo alloc] initWithDictionary:v11];
      [(MHSchemaMHEndpointLatencyInfoReported *)v5 setTrailingPacketLatency:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"coreSpeechTrailingPacketLatency"];
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

- (MHSchemaMHEndpointLatencyInfoReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHEndpointLatencyInfoReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHEndpointLatencyInfoReported *)self dictionaryRepresentation];
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
  if (self->_coreSpeechTrailingPacketLatency)
  {
    v4 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"coreSpeechTrailingPacketLatency"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"coreSpeechTrailingPacketLatency"];
    }
  }

  if (self->_coreSpeechTrailingPacketLatencyInfo)
  {
    v7 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"coreSpeechTrailingPacketLatencyInfo"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"coreSpeechTrailingPacketLatencyInfo"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointLatencyInfoReported firstPacketLatencyInNs](self, "firstPacketLatencyInNs")}];
    [v3 setObject:v10 forKeyedSubscript:@"firstPacketLatencyInNs"];
  }

  if (self->_trailingPacketLatency)
  {
    v11 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"trailingPacketLatency"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"trailingPacketLatency"];
    }
  }

  if (self->_trailingPacketLatencyInfo)
  {
    v14 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"trailingPacketLatencyInfo"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"trailingPacketLatencyInfo"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    firstPacketLatencyInNs = self->_firstPacketLatencyInNs;
    if (firstPacketLatencyInNs != [v4 firstPacketLatencyInNs])
    {
      goto LABEL_25;
    }
  }

  v6 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
  v7 = [v4 trailingPacketLatencyInfo];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v8 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
  if (v8)
  {
    v9 = v8;
    v10 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
    v11 = [v4 trailingPacketLatencyInfo];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
  v7 = [v4 coreSpeechTrailingPacketLatencyInfo];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v13 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
  if (v13)
  {
    v14 = v13;
    v15 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
    v16 = [v4 coreSpeechTrailingPacketLatencyInfo];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
  v7 = [v4 trailingPacketLatency];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v18 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
  if (v18)
  {
    v19 = v18;
    v20 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
    v21 = [v4 trailingPacketLatency];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
  v7 = [v4 coreSpeechTrailingPacketLatency];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
    if (!v23)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = v23;
    v25 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
    v26 = [v4 coreSpeechTrailingPacketLatency];
    v27 = [v25 isEqual:v26];

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

- (void)writeTo:(id)a3
{
  v13 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v4 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];

  if (v4)
  {
    v5 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];

  if (v6)
  {
    v7 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];

  if (v8)
  {
    v9 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];

  v11 = v13;
  if (v10)
  {
    v12 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MHSchemaMHEndpointLatencyInfoReported;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatencyInfo];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHEndpointLatencyInfoReported *)self deleteTrailingPacketLatencyInfo];
  }

  v9 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatencyInfo];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MHSchemaMHEndpointLatencyInfoReported *)self deleteCoreSpeechTrailingPacketLatencyInfo];
  }

  v12 = [(MHSchemaMHEndpointLatencyInfoReported *)self trailingPacketLatency];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MHSchemaMHEndpointLatencyInfoReported *)self deleteTrailingPacketLatency];
  }

  v15 = [(MHSchemaMHEndpointLatencyInfoReported *)self coreSpeechTrailingPacketLatency];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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