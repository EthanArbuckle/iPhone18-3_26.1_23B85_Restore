@interface INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)confirmationResolution;
- (int)disambiguationResolution;
- (unint64_t)hash;
- (void)deleteConfirmationResolution;
- (void)deleteDisambiguationResolution;
- (void)setConfirmationResolution:(int)a3;
- (void)setDisambiguationResolution:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated

- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated;
  v5 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalResolutionContextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)v5 setOriginalResolutionContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"queryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)v5 setQueryId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"disambiguationResolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated setDisambiguationResolution:](v5, "setDisambiguationResolution:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"confirmationResolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated setConfirmationResolution:](v5, "setConfirmationResolution:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"anonymizedSelectedEntityIdentifier"];
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

- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self dictionaryRepresentation];
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
  if (self->_anonymizedSelectedEntityIdentifier)
  {
    v4 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"anonymizedSelectedEntityIdentifier"];
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

    [v3 setObject:v8 forKeyedSubscript:@"confirmationResolution"];
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

    [v3 setObject:v10 forKeyedSubscript:@"disambiguationResolution"];
  }

  if (self->_originalResolutionContextId)
  {
    v11 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"originalResolutionContextId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"originalResolutionContextId"];
    }
  }

  if (self->_queryId)
  {
    v14 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"queryId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"queryId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  whichResolutiontype = self->_whichResolutiontype;
  if (whichResolutiontype != [v4 whichResolutiontype])
  {
    goto LABEL_20;
  }

  v6 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
  v7 = [v4 originalResolutionContextId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v8 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
  if (v8)
  {
    v9 = v8;
    v10 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
    v11 = [v4 originalResolutionContextId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
  v7 = [v4 queryId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
  if (v13)
  {
    v14 = v13;
    v15 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
    v16 = [v4 queryId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  disambiguationResolution = self->_disambiguationResolution;
  if (disambiguationResolution != [v4 disambiguationResolution])
  {
    goto LABEL_20;
  }

  confirmationResolution = self->_confirmationResolution;
  if (confirmationResolution != [v4 confirmationResolution])
  {
    goto LABEL_20;
  }

  v6 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];
  v7 = [v4 anonymizedSelectedEntityIdentifier];
  if ((v6 != 0) != (v7 == 0))
  {
    v20 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];
    if (!v20)
    {

LABEL_23:
      v25 = 1;
      goto LABEL_21;
    }

    v21 = v20;
    v22 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];
    v23 = [v4 anonymizedSelectedEntityIdentifier];
    v24 = [v22 isEqual:v23];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];

  if (v4)
  {
    v5 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];

  if (v6)
  {
    v7 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
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

  v9 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self anonymizedSelectedEntityIdentifier];

  v10 = v11;
  if (v9)
  {
    PBDataWriterWriteStringField();
    v10 = v11;
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

- (void)setConfirmationResolution:(int)a3
{
  self->_disambiguationResolution = 0;
  self->_whichResolutiontype = 4;
  self->_confirmationResolution = a3;
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

- (void)setDisambiguationResolution:(int)a3
{
  self->_confirmationResolution = 0;
  self->_whichResolutiontype = 3;
  self->_disambiguationResolution = a3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self originalResolutionContextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self deleteOriginalResolutionContextId];
  }

  v9 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self queryId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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