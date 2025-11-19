@interface ASRSchemaASRFullPayloadCorrectionEnded
- (ASRSchemaASRFullPayloadCorrectionEnded)initWithDictionary:(id)a3;
- (ASRSchemaASRFullPayloadCorrectionEnded)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRFullPayloadCorrectionEnded

- (ASRSchemaASRFullPayloadCorrectionEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASRSchemaASRFullPayloadCorrectionEnded;
  v5 = [(ASRSchemaASRFullPayloadCorrectionEnded *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"responseTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRFullPayloadCorrectionEnded setResponseTimeInNs:](v5, "setResponseTimeInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(ASRSchemaASRFullPayloadCorrectionEnded *)v5 setLinkId:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (ASRSchemaASRFullPayloadCorrectionEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRFullPayloadCorrectionEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRFullPayloadCorrectionEnded *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    v4 = [(ASRSchemaASRFullPayloadCorrectionEnded *)self linkId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"linkId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRFullPayloadCorrectionEnded responseTimeInNs](self, "responseTimeInNs")}];
    [v3 setObject:v7 forKeyedSubscript:@"responseTimeInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_responseTimeInNs;
  }

  else
  {
    v2 = 0;
  }

  return [(SISchemaUUID *)self->_linkId hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (responseTimeInNs = self->_responseTimeInNs, responseTimeInNs == [v4 responseTimeInNs]))
      {
        v6 = [(ASRSchemaASRFullPayloadCorrectionEnded *)self linkId];
        v7 = [v4 linkId];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(ASRSchemaASRFullPayloadCorrectionEnded *)self linkId];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(ASRSchemaASRFullPayloadCorrectionEnded *)self linkId];
          v12 = [v4 linkId];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v4 = [(ASRSchemaASRFullPayloadCorrectionEnded *)self linkId];

  v5 = v7;
  if (v4)
  {
    v6 = [(ASRSchemaASRFullPayloadCorrectionEnded *)self linkId];
    PBDataWriterWriteSubmessage();

    v5 = v7;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRFullPayloadCorrectionEnded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRFullPayloadCorrectionEnded *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ASRSchemaASRFullPayloadCorrectionEnded *)self deleteLinkId];
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