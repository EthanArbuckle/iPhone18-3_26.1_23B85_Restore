@interface RFSchemaRFGVisualResponseShownTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RFSchemaRFGVisualResponseShownTier1)initWithDictionary:(id)a3;
- (RFSchemaRFGVisualResponseShownTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RFSchemaRFGVisualResponseShownTier1

- (RFSchemaRFGVisualResponseShownTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RFSchemaRFGVisualResponseShownTier1;
  v5 = [(RFSchemaRFGVisualResponseShownTier1 *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"responseModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RFSchemaRFGVisualResponseShownTier1 *)v5 setResponseModel:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"patternId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(RFSchemaRFGVisualResponseShownTier1 *)v5 setPatternId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(RFSchemaRFGVisualResponseShownTier1 *)v5 setVersion:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"responseViewId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(RFSchemaRFGVisualResponseShownTier1 *)v5 setResponseViewId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (RFSchemaRFGVisualResponseShownTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RFSchemaRFGVisualResponseShownTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RFSchemaRFGVisualResponseShownTier1 *)self dictionaryRepresentation];
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
  if (self->_patternId)
  {
    v4 = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"patternId"];
  }

  if (self->_responseModel)
  {
    v6 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"responseModel"];
  }

  if (self->_responseViewId)
  {
    v8 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"responseViewId"];
  }

  if (self->_version)
  {
    v10 = [(RFSchemaRFGVisualResponseShownTier1 *)self version];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"version"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_responseModel hash];
  v4 = [(NSString *)self->_patternId hash]^ v3;
  v5 = [(NSString *)self->_version hash];
  return v4 ^ v5 ^ [(NSString *)self->_responseViewId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];
  v6 = [v4 responseModel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];
  if (v7)
  {
    v8 = v7;
    v9 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];
    v10 = [v4 responseModel];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];
  v6 = [v4 patternId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];
  if (v12)
  {
    v13 = v12;
    v14 = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];
    v15 = [v4 patternId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(RFSchemaRFGVisualResponseShownTier1 *)self version];
  v6 = [v4 version];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(RFSchemaRFGVisualResponseShownTier1 *)self version];
  if (v17)
  {
    v18 = v17;
    v19 = [(RFSchemaRFGVisualResponseShownTier1 *)self version];
    v20 = [v4 version];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];
  v6 = [v4 responseViewId];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];
    v25 = [v4 responseViewId];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(RFSchemaRFGVisualResponseShownTier1 *)self version];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RFSchemaRFGVisualResponseShownTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(RFSchemaRFGVisualResponseShownTier1 *)self deleteResponseModel];
  }

  if ([v4 isConditionSet:4])
  {
    [(RFSchemaRFGVisualResponseShownTier1 *)self deleteResponseModel];
  }

  if ([v4 isConditionSet:5])
  {
    [(RFSchemaRFGVisualResponseShownTier1 *)self deleteResponseModel];
  }

  if ([v4 isConditionSet:6])
  {
    [(RFSchemaRFGVisualResponseShownTier1 *)self deleteResponseModel];
  }

  if ([v4 isConditionSet:7])
  {
    [(RFSchemaRFGVisualResponseShownTier1 *)self deleteResponseModel];
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