@interface RFSchemaRFGVisualResponseShownTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFGVisualResponseShownTier1)initWithDictionary:(id)dictionary;
- (RFSchemaRFGVisualResponseShownTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RFSchemaRFGVisualResponseShownTier1

- (RFSchemaRFGVisualResponseShownTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = RFSchemaRFGVisualResponseShownTier1;
  v5 = [(RFSchemaRFGVisualResponseShownTier1 *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"responseModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RFSchemaRFGVisualResponseShownTier1 *)v5 setResponseModel:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"patternId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(RFSchemaRFGVisualResponseShownTier1 *)v5 setPatternId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(RFSchemaRFGVisualResponseShownTier1 *)v5 setVersion:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"responseViewId"];
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

- (RFSchemaRFGVisualResponseShownTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFGVisualResponseShownTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFGVisualResponseShownTier1 *)self dictionaryRepresentation];
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
  if (self->_patternId)
  {
    patternId = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];
    v5 = [patternId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"patternId"];
  }

  if (self->_responseModel)
  {
    responseModel = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];
    v7 = [responseModel copy];
    [dictionary setObject:v7 forKeyedSubscript:@"responseModel"];
  }

  if (self->_responseViewId)
  {
    responseViewId = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];
    v9 = [responseViewId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"responseViewId"];
  }

  if (self->_version)
  {
    version = [(RFSchemaRFGVisualResponseShownTier1 *)self version];
    v11 = [version copy];
    [dictionary setObject:v11 forKeyedSubscript:@"version"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_responseModel hash];
  v4 = [(NSString *)self->_patternId hash]^ v3;
  v5 = [(NSString *)self->_version hash];
  return v4 ^ v5 ^ [(NSString *)self->_responseViewId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  responseModel = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];
  responseModel2 = [equalCopy responseModel];
  if ((responseModel != 0) == (responseModel2 == 0))
  {
    goto LABEL_21;
  }

  responseModel3 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];
  if (responseModel3)
  {
    v8 = responseModel3;
    responseModel4 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];
    responseModel5 = [equalCopy responseModel];
    v11 = [responseModel4 isEqual:responseModel5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  responseModel = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];
  responseModel2 = [equalCopy patternId];
  if ((responseModel != 0) == (responseModel2 == 0))
  {
    goto LABEL_21;
  }

  patternId = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];
  if (patternId)
  {
    v13 = patternId;
    patternId2 = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];
    patternId3 = [equalCopy patternId];
    v16 = [patternId2 isEqual:patternId3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  responseModel = [(RFSchemaRFGVisualResponseShownTier1 *)self version];
  responseModel2 = [equalCopy version];
  if ((responseModel != 0) == (responseModel2 == 0))
  {
    goto LABEL_21;
  }

  version = [(RFSchemaRFGVisualResponseShownTier1 *)self version];
  if (version)
  {
    v18 = version;
    version2 = [(RFSchemaRFGVisualResponseShownTier1 *)self version];
    version3 = [equalCopy version];
    v21 = [version2 isEqual:version3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  responseModel = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];
  responseModel2 = [equalCopy responseViewId];
  if ((responseModel != 0) != (responseModel2 == 0))
  {
    responseViewId = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];
    if (!responseViewId)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = responseViewId;
    responseViewId2 = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];
    responseViewId3 = [equalCopy responseViewId];
    v26 = [responseViewId2 isEqual:responseViewId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  responseModel = [(RFSchemaRFGVisualResponseShownTier1 *)self responseModel];

  if (responseModel)
  {
    PBDataWriterWriteStringField();
  }

  patternId = [(RFSchemaRFGVisualResponseShownTier1 *)self patternId];

  if (patternId)
  {
    PBDataWriterWriteStringField();
  }

  version = [(RFSchemaRFGVisualResponseShownTier1 *)self version];

  if (version)
  {
    PBDataWriterWriteStringField();
  }

  responseViewId = [(RFSchemaRFGVisualResponseShownTier1 *)self responseViewId];

  v8 = toCopy;
  if (responseViewId)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = RFSchemaRFGVisualResponseShownTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(RFSchemaRFGVisualResponseShownTier1 *)self deleteResponseModel];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(RFSchemaRFGVisualResponseShownTier1 *)self deleteResponseModel];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(RFSchemaRFGVisualResponseShownTier1 *)self deleteResponseModel];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(RFSchemaRFGVisualResponseShownTier1 *)self deleteResponseModel];
  }

  if ([policyCopy isConditionSet:7])
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