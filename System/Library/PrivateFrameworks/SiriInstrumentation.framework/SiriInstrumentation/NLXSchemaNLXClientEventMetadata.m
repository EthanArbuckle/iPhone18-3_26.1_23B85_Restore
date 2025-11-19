@interface NLXSchemaNLXClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NLXSchemaNLXClientEventMetadata)initWithDictionary:(id)a3;
- (NLXSchemaNLXClientEventMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaNLXClientEventMetadata

- (NLXSchemaNLXClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NLXSchemaNLXClientEventMetadata;
  v5 = [(NLXSchemaNLXClientEventMetadata *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"nlId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaNLXClientEventMetadata *)v5 setNlId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NLXSchemaNLXClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"componentInvocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXClientEventMetadata setComponentInvocationSource:](v5, "setComponentInvocationSource:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(NLXSchemaNLXClientEventMetadata *)v5 setRequestId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(NLXSchemaNLXClientEventMetadata *)v5 setTrpId:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(NLXSchemaNLXClientEventMetadata *)v5 setSubRequestId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (NLXSchemaNLXClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaNLXClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaNLXClientEventMetadata *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(NLXSchemaNLXClientEventMetadata *)self componentInvocationSource]- 1;
    if (v4 > 0xC)
    {
      v5 = @"COMPONENTINVOCATIONSOURCE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DC800[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"componentInvocationSource"];
  }

  if (self->_nlId)
  {
    v6 = [(NLXSchemaNLXClientEventMetadata *)self nlId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"nlId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"nlId"];
    }
  }

  if (self->_requestId)
  {
    v9 = [(NLXSchemaNLXClientEventMetadata *)self requestId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_resultCandidateId)
  {
    v12 = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_subRequestId)
  {
    v14 = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_trpId)
  {
    v17 = [(NLXSchemaNLXClientEventMetadata *)self trpId];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_nlId hash];
  v4 = [(NSString *)self->_resultCandidateId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_componentInvocationSource;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_requestId hash];
  v7 = [(SISchemaUUID *)self->_trpId hash];
  return v6 ^ v7 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(NLXSchemaNLXClientEventMetadata *)self nlId];
  v6 = [v4 nlId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(NLXSchemaNLXClientEventMetadata *)self nlId];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaNLXClientEventMetadata *)self nlId];
    v10 = [v4 nlId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v12 = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];
    v15 = [v4 resultCandidateId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    componentInvocationSource = self->_componentInvocationSource;
    if (componentInvocationSource != [v4 componentInvocationSource])
    {
      goto LABEL_30;
    }
  }

  v5 = [(NLXSchemaNLXClientEventMetadata *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v18 = [(NLXSchemaNLXClientEventMetadata *)self requestId];
  if (v18)
  {
    v19 = v18;
    v20 = [(NLXSchemaNLXClientEventMetadata *)self requestId];
    v21 = [v4 requestId];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaNLXClientEventMetadata *)self trpId];
  v6 = [v4 trpId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v23 = [(NLXSchemaNLXClientEventMetadata *)self trpId];
  if (v23)
  {
    v24 = v23;
    v25 = [(NLXSchemaNLXClientEventMetadata *)self trpId];
    v26 = [v4 trpId];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
  v6 = [v4 subRequestId];
  if ((v5 != 0) != (v6 == 0))
  {
    v28 = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
    if (!v28)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = v28;
    v30 = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
    v31 = [v4 subRequestId];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_29:
  }

LABEL_30:
  v33 = 0;
LABEL_31:

  return v33;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(NLXSchemaNLXClientEventMetadata *)self nlId];

  if (v4)
  {
    v5 = [(NLXSchemaNLXClientEventMetadata *)self nlId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(NLXSchemaNLXClientEventMetadata *)self requestId];

  if (v7)
  {
    v8 = [(NLXSchemaNLXClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(NLXSchemaNLXClientEventMetadata *)self trpId];

  if (v9)
  {
    v10 = [(NLXSchemaNLXClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];

  v12 = v14;
  if (v11)
  {
    v13 = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NLXSchemaNLXClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaNLXClientEventMetadata *)self nlId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaNLXClientEventMetadata *)self deleteNlId];
  }

  v9 = [(NLXSchemaNLXClientEventMetadata *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLXSchemaNLXClientEventMetadata *)self deleteRequestId];
  }

  v12 = [(NLXSchemaNLXClientEventMetadata *)self trpId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLXSchemaNLXClientEventMetadata *)self deleteTrpId];
  }

  v15 = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(NLXSchemaNLXClientEventMetadata *)self deleteSubRequestId];
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