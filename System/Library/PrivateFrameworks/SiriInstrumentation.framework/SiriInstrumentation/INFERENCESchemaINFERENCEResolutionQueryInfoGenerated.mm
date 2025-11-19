@interface INFERENCESchemaINFERENCEResolutionQueryInfoGenerated
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAnonymizedRecommendedEntityIdentifier:(id)a3;
- (void)setHasForcePromptType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEResolutionQueryInfoGenerated

- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)initWithDictionary:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = INFERENCESchemaINFERENCEResolutionQueryInfoGenerated;
  v5 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalResolutionContextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)v5 setOriginalResolutionContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"queryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)v5 setQueryId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"resolutionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEResolutionQueryInfoGenerated setResolutionState:](v5, "setResolutionState:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"forcePromptType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEResolutionQueryInfoGenerated setForcePromptType:](v5, "setForcePromptType:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"recommenderModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)v5 setRecommenderModelVersion:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"anonymizedRecommendedEntityIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v11;
      v25 = v10;
      v26 = v8;
      v27 = v6;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          v19 = 0;
          do
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v28 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)v5 addAnonymizedRecommendedEntityIdentifier:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v17);
      }

      v8 = v26;
      v6 = v27;
      v11 = v24;
      v10 = v25;
    }

    v22 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self dictionaryRepresentation];
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
  if (self->_anonymizedRecommendedEntityIdentifiers)
  {
    v4 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self anonymizedRecommendedEntityIdentifiers];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"anonymizedRecommendedEntityIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self forcePromptType]- 1;
    if (v6 > 7)
    {
      v7 = @"INFERENCEFORCEPROMPTTYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78D8AD0[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"forcePromptType"];
  }

  if (self->_originalResolutionContextId)
  {
    v8 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"originalResolutionContextId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"originalResolutionContextId"];
    }
  }

  if (self->_queryId)
  {
    v11 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"queryId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"queryId"];
    }
  }

  if (self->_recommenderModelVersion)
  {
    v14 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"recommenderModelVersion"];
  }

  if (*&self->_has)
  {
    v16 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self resolutionState]- 1;
    if (v16 > 3)
    {
      v17 = @"INFERENCERESOLUTIONSTATE_UNKNOWN";
    }

    else
    {
      v17 = off_1E78D8B10[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"resolutionState"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalResolutionContextId hash];
  v4 = [(SISchemaUUID *)self->_queryId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_resolutionState;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_forcePromptType;
LABEL_6:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_recommenderModelVersion hash];
  return v7 ^ [(NSArray *)self->_anonymizedRecommendedEntityIdentifiers hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
  v6 = [v4 originalResolutionContextId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v7 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
    v10 = [v4 originalResolutionContextId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
  v6 = [v4 queryId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v12 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
  if (v12)
  {
    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
    v15 = [v4 queryId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[48];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    resolutionState = self->_resolutionState;
    if (resolutionState != [v4 resolutionState])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v18 = v4[48];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v20)
  {
    forcePromptType = self->_forcePromptType;
    if (forcePromptType != [v4 forcePromptType])
    {
      goto LABEL_29;
    }
  }

  v5 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];
  v6 = [v4 recommenderModelVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v22 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];
  if (v22)
  {
    v23 = v22;
    v24 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];
    v25 = [v4 recommenderModelVersion];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self anonymizedRecommendedEntityIdentifiers];
  v6 = [v4 anonymizedRecommendedEntityIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  v27 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self anonymizedRecommendedEntityIdentifiers];
  if (!v27)
  {

LABEL_32:
    v32 = 1;
    goto LABEL_30;
  }

  v28 = v27;
  v29 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self anonymizedRecommendedEntityIdentifiers];
  v30 = [v4 anonymizedRecommendedEntityIdentifiers];
  v31 = [v29 isEqual:v30];

  if (v31)
  {
    goto LABEL_32;
  }

LABEL_29:
  v32 = 0;
LABEL_30:

  return v32;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];

  if (v5)
  {
    v6 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];

  if (v7)
  {
    v8 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v10 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_anonymizedRecommendedEntityIdentifiers;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addAnonymizedRecommendedEntityIdentifier:(id)a3
{
  v4 = a3;
  anonymizedRecommendedEntityIdentifiers = self->_anonymizedRecommendedEntityIdentifiers;
  v8 = v4;
  if (!anonymizedRecommendedEntityIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_anonymizedRecommendedEntityIdentifiers;
    self->_anonymizedRecommendedEntityIdentifiers = v6;

    v4 = v8;
    anonymizedRecommendedEntityIdentifiers = self->_anonymizedRecommendedEntityIdentifiers;
  }

  [(NSArray *)anonymizedRecommendedEntityIdentifiers addObject:v4];
}

- (void)setHasForcePromptType:(BOOL)a3
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
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEResolutionQueryInfoGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self deleteOriginalResolutionContextId];
  }

  v9 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self deleteQueryId];
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