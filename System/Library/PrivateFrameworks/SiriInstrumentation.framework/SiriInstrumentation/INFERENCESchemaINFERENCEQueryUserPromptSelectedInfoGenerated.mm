@interface INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)confirmationResolution;
- (int)disambiguationResolution;
- (unint64_t)hash;
- (void)deleteConfirmationResolution;
- (void)deleteDisambiguationResolution;
- (void)setConfirmationResolution:(int)resolution;
- (void)setDisambiguationResolution:(int)resolution;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated

- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated;
  v5 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalResolutionContextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)v5 setOriginalResolutionContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"queryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)v5 setQueryId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationResolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated setDisambiguationResolution:](v5, "setDisambiguationResolution:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"confirmationResolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated setConfirmationResolution:](v5, "setConfirmationResolution:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedSelectedEntityIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)v5 setAnonymizedSelectedEntityIdentifier:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self dictionaryRepresentation];
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
  if (self->_anonymizedSelectedEntityIdentifier)
  {
    anonymizedSelectedEntityIdentifier = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];
    v5 = [anonymizedSelectedEntityIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"anonymizedSelectedEntityIdentifier"];
  }

  whichResolutiontype = self->_whichResolutiontype;
  if (whichResolutiontype == 4)
  {
    v7 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self confirmationResolution]- 1;
    if (v7 > 3)
    {
      v8 = @"INFERENCECONFIRMATIONRESOLUTIONTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D8A98[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"confirmationResolution"];
    whichResolutiontype = self->_whichResolutiontype;
  }

  if (whichResolutiontype == 3)
  {
    v9 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self disambiguationResolution]- 1;
    if (v9 > 2)
    {
      v10 = @"INFERENCEDISAMBIGUATIONRESOLUTIONTYPE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D8AB8[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"disambiguationResolution"];
  }

  if (self->_originalResolutionContextId)
  {
    originalResolutionContextId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
    dictionaryRepresentation = [originalResolutionContextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalResolutionContextId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalResolutionContextId"];
    }
  }

  if (self->_queryId)
  {
    queryId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
    dictionaryRepresentation2 = [queryId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"queryId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"queryId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalResolutionContextId hash];
  v4 = [(SISchemaUUID *)self->_queryId hash];
  whichResolutiontype = self->_whichResolutiontype;
  if (whichResolutiontype == 4)
  {
    v7 = 0;
    v6 = 2654435761 * self->_confirmationResolution;
  }

  else if (whichResolutiontype == 3)
  {
    v6 = 0;
    v7 = 2654435761 * self->_disambiguationResolution;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v6 ^ [(NSString *)self->_anonymizedSelectedEntityIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  whichResolutiontype = self->_whichResolutiontype;
  if (whichResolutiontype != [equalCopy whichResolutiontype])
  {
    goto LABEL_20;
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
  originalResolutionContextId2 = [equalCopy originalResolutionContextId];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
    goto LABEL_19;
  }

  originalResolutionContextId3 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
  if (originalResolutionContextId3)
  {
    v9 = originalResolutionContextId3;
    originalResolutionContextId4 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
    originalResolutionContextId5 = [equalCopy originalResolutionContextId];
    v12 = [originalResolutionContextId4 isEqual:originalResolutionContextId5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
  originalResolutionContextId2 = [equalCopy queryId];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
    goto LABEL_19;
  }

  queryId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
  if (queryId)
  {
    v14 = queryId;
    queryId2 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
    queryId3 = [equalCopy queryId];
    v17 = [queryId2 isEqual:queryId3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  disambiguationResolution = self->_disambiguationResolution;
  if (disambiguationResolution != [equalCopy disambiguationResolution])
  {
    goto LABEL_20;
  }

  confirmationResolution = self->_confirmationResolution;
  if (confirmationResolution != [equalCopy confirmationResolution])
  {
    goto LABEL_20;
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];
  originalResolutionContextId2 = [equalCopy anonymizedSelectedEntityIdentifier];
  if ((originalResolutionContextId != 0) != (originalResolutionContextId2 == 0))
  {
    anonymizedSelectedEntityIdentifier = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];
    if (!anonymizedSelectedEntityIdentifier)
    {

LABEL_23:
      v25 = 1;
      goto LABEL_21;
    }

    v21 = anonymizedSelectedEntityIdentifier;
    anonymizedSelectedEntityIdentifier2 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];
    anonymizedSelectedEntityIdentifier3 = [equalCopy anonymizedSelectedEntityIdentifier];
    v24 = [anonymizedSelectedEntityIdentifier2 isEqual:anonymizedSelectedEntityIdentifier3];

    if (v24)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v25 = 0;
LABEL_21:

  return v25;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  originalResolutionContextId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];

  if (originalResolutionContextId)
  {
    originalResolutionContextId2 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
    PBDataWriterWriteSubmessage();
  }

  queryId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];

  if (queryId)
  {
    queryId2 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
    PBDataWriterWriteSubmessage();
  }

  whichResolutiontype = self->_whichResolutiontype;
  if (whichResolutiontype == 3)
  {
    PBDataWriterWriteInt32Field();
    whichResolutiontype = self->_whichResolutiontype;
  }

  if (whichResolutiontype == 4)
  {
    PBDataWriterWriteInt32Field();
  }

  anonymizedSelectedEntityIdentifier = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];

  v10 = toCopy;
  if (anonymizedSelectedEntityIdentifier)
  {
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (void)deleteConfirmationResolution
{
  if (self->_whichResolutiontype == 4)
  {
    self->_whichResolutiontype = 0;
    self->_confirmationResolution = 0;
  }
}

- (int)confirmationResolution
{
  if (self->_whichResolutiontype == 4)
  {
    return self->_confirmationResolution;
  }

  else
  {
    return 0;
  }
}

- (void)setConfirmationResolution:(int)resolution
{
  self->_disambiguationResolution = 0;
  self->_whichResolutiontype = 4;
  self->_confirmationResolution = resolution;
}

- (void)deleteDisambiguationResolution
{
  if (self->_whichResolutiontype == 3)
  {
    self->_whichResolutiontype = 0;
    self->_disambiguationResolution = 0;
  }
}

- (int)disambiguationResolution
{
  if (self->_whichResolutiontype == 3)
  {
    return self->_disambiguationResolution;
  }

  else
  {
    return 0;
  }
}

- (void)setDisambiguationResolution:(int)resolution
{
  self->_confirmationResolution = 0;
  self->_whichResolutiontype = 3;
  self->_disambiguationResolution = resolution;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  originalResolutionContextId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
  v7 = [originalResolutionContextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self deleteOriginalResolutionContextId];
  }

  queryId = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
  v10 = [queryId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self deleteQueryId];
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