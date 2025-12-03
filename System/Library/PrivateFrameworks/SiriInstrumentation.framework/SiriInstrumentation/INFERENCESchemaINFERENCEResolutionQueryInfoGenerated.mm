@interface INFERENCESchemaINFERENCEResolutionQueryInfoGenerated
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAnonymizedRecommendedEntityIdentifier:(id)identifier;
- (void)setHasForcePromptType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEResolutionQueryInfoGenerated

- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)initWithDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = INFERENCESchemaINFERENCEResolutionQueryInfoGenerated;
  v5 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalResolutionContextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)v5 setOriginalResolutionContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"queryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)v5 setQueryId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"resolutionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEResolutionQueryInfoGenerated setResolutionState:](v5, "setResolutionState:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"forcePromptType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEResolutionQueryInfoGenerated setForcePromptType:](v5, "setForcePromptType:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"recommenderModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)v5 setRecommenderModelVersion:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedRecommendedEntityIdentifier"];
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

- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self dictionaryRepresentation];
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
  if (self->_anonymizedRecommendedEntityIdentifiers)
  {
    anonymizedRecommendedEntityIdentifiers = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self anonymizedRecommendedEntityIdentifiers];
    v5 = [anonymizedRecommendedEntityIdentifiers copy];
    [dictionary setObject:v5 forKeyedSubscript:@"anonymizedRecommendedEntityIdentifier"];
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

    [dictionary setObject:v7 forKeyedSubscript:@"forcePromptType"];
  }

  if (self->_originalResolutionContextId)
  {
    originalResolutionContextId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
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
    queryId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
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

  if (self->_recommenderModelVersion)
  {
    recommenderModelVersion = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];
    v15 = [recommenderModelVersion copy];
    [dictionary setObject:v15 forKeyedSubscript:@"recommenderModelVersion"];
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

    [dictionary setObject:v17 forKeyedSubscript:@"resolutionState"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
  originalResolutionContextId2 = [equalCopy originalResolutionContextId];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
    goto LABEL_28;
  }

  originalResolutionContextId3 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
  if (originalResolutionContextId3)
  {
    v8 = originalResolutionContextId3;
    originalResolutionContextId4 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
    originalResolutionContextId5 = [equalCopy originalResolutionContextId];
    v11 = [originalResolutionContextId4 isEqual:originalResolutionContextId5];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
  originalResolutionContextId2 = [equalCopy queryId];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
    goto LABEL_28;
  }

  queryId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
  if (queryId)
  {
    v13 = queryId;
    queryId2 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
    queryId3 = [equalCopy queryId];
    v16 = [queryId2 isEqual:queryId3];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[48];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    resolutionState = self->_resolutionState;
    if (resolutionState != [equalCopy resolutionState])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v18 = equalCopy[48];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v20)
  {
    forcePromptType = self->_forcePromptType;
    if (forcePromptType != [equalCopy forcePromptType])
    {
      goto LABEL_29;
    }
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];
  originalResolutionContextId2 = [equalCopy recommenderModelVersion];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
    goto LABEL_28;
  }

  recommenderModelVersion = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];
  if (recommenderModelVersion)
  {
    v23 = recommenderModelVersion;
    recommenderModelVersion2 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];
    recommenderModelVersion3 = [equalCopy recommenderModelVersion];
    v26 = [recommenderModelVersion2 isEqual:recommenderModelVersion3];

    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self anonymizedRecommendedEntityIdentifiers];
  originalResolutionContextId2 = [equalCopy anonymizedRecommendedEntityIdentifiers];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  anonymizedRecommendedEntityIdentifiers = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self anonymizedRecommendedEntityIdentifiers];
  if (!anonymizedRecommendedEntityIdentifiers)
  {

LABEL_32:
    v32 = 1;
    goto LABEL_30;
  }

  v28 = anonymizedRecommendedEntityIdentifiers;
  anonymizedRecommendedEntityIdentifiers2 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self anonymizedRecommendedEntityIdentifiers];
  anonymizedRecommendedEntityIdentifiers3 = [equalCopy anonymizedRecommendedEntityIdentifiers];
  v31 = [anonymizedRecommendedEntityIdentifiers2 isEqual:anonymizedRecommendedEntityIdentifiers3];

  if (v31)
  {
    goto LABEL_32;
  }

LABEL_29:
  v32 = 0;
LABEL_30:

  return v32;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  originalResolutionContextId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];

  if (originalResolutionContextId)
  {
    originalResolutionContextId2 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
    PBDataWriterWriteSubmessage();
  }

  queryId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];

  if (queryId)
  {
    queryId2 = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
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

  recommenderModelVersion = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self recommenderModelVersion];

  if (recommenderModelVersion)
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

- (void)addAnonymizedRecommendedEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  anonymizedRecommendedEntityIdentifiers = self->_anonymizedRecommendedEntityIdentifiers;
  v8 = identifierCopy;
  if (!anonymizedRecommendedEntityIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_anonymizedRecommendedEntityIdentifiers;
    self->_anonymizedRecommendedEntityIdentifiers = array;

    identifierCopy = v8;
    anonymizedRecommendedEntityIdentifiers = self->_anonymizedRecommendedEntityIdentifiers;
  }

  [(NSArray *)anonymizedRecommendedEntityIdentifiers addObject:identifierCopy];
}

- (void)setHasForcePromptType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEResolutionQueryInfoGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  originalResolutionContextId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self originalResolutionContextId];
  v7 = [originalResolutionContextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self deleteOriginalResolutionContextId];
  }

  queryId = [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self queryId];
  v10 = [queryId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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