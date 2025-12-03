@interface ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)initWithDictionary:(id)dictionary;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addOdsampleIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported;
  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userSamplingId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)v5 setUserSamplingId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"odsampleIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
              [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)v5 addOdsampleIds:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"collectionStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported setCollectionStatus:](v5, "setCollectionStatus:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self collectionStatus]- 1;
    if (v4 > 2)
    {
      v5 = @"ODSAMPLECOLLECTIONSTATUS_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DE198[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"collectionStatus"];
  }

  if ([(NSArray *)self->_odsampleIds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_odsampleIds;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"odsampleIds"];
  }

  if (self->_userSamplingId)
  {
    userSamplingId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
    dictionaryRepresentation2 = [userSamplingId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"userSamplingId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"userSamplingId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_userSamplingId hash];
  v4 = [(NSArray *)self->_odsampleIds hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_collectionStatus;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  userSamplingId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
  userSamplingId2 = [equalCopy userSamplingId];
  if ((userSamplingId != 0) == (userSamplingId2 == 0))
  {
    goto LABEL_11;
  }

  userSamplingId3 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
  if (userSamplingId3)
  {
    v8 = userSamplingId3;
    userSamplingId4 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
    userSamplingId5 = [equalCopy userSamplingId];
    v11 = [userSamplingId4 isEqual:userSamplingId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  userSamplingId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self odsampleIds];
  userSamplingId2 = [equalCopy odsampleIds];
  if ((userSamplingId != 0) == (userSamplingId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  odsampleIds = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self odsampleIds];
  if (odsampleIds)
  {
    v13 = odsampleIds;
    odsampleIds2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self odsampleIds];
    odsampleIds3 = [equalCopy odsampleIds];
    v16 = [odsampleIds2 isEqual:odsampleIds3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (collectionStatus = self->_collectionStatus, collectionStatus == [equalCopy collectionStatus]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  userSamplingId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];

  if (userSamplingId)
  {
    userSamplingId2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_odsampleIds;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addOdsampleIds:(id)ids
{
  idsCopy = ids;
  odsampleIds = self->_odsampleIds;
  v8 = idsCopy;
  if (!odsampleIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_odsampleIds;
    self->_odsampleIds = array;

    idsCopy = v8;
    odsampleIds = self->_odsampleIds;
  }

  [(NSArray *)odsampleIds addObject:idsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  userSamplingId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
  v7 = [userSamplingId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self deleteUserSamplingId];
  }

  odsampleIds = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self odsampleIds];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:odsampleIds underConditions:policyCopy];
  [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self setOdsampleIds:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end