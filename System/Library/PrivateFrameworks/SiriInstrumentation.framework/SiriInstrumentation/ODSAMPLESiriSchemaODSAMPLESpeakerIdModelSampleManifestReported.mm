@interface ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)initWithDictionary:(id)a3;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addOdsampleIds:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported;
  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"userSamplingId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)v5 setUserSamplingId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"odsampleIds"];
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

    v16 = [v4 objectForKeyedSubscript:@"collectionStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported setCollectionStatus:](v5, "setCollectionStatus:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKeyedSubscript:@"collectionStatus"];
  }

  if ([(NSArray *)self->_odsampleIds count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"odsampleIds"];
  }

  if (self->_userSamplingId)
  {
    v14 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"userSamplingId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"userSamplingId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
  v6 = [v4 userSamplingId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
    v10 = [v4 userSamplingId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self odsampleIds];
  v6 = [v4 odsampleIds];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self odsampleIds];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self odsampleIds];
    v15 = [v4 odsampleIds];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (collectionStatus = self->_collectionStatus, collectionStatus == [v4 collectionStatus]))
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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];

  if (v5)
  {
    v6 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
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

- (void)addOdsampleIds:(id)a3
{
  v4 = a3;
  odsampleIds = self->_odsampleIds;
  v8 = v4;
  if (!odsampleIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_odsampleIds;
    self->_odsampleIds = v6;

    v4 = v8;
    odsampleIds = self->_odsampleIds;
  }

  [(NSArray *)odsampleIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self userSamplingId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self deleteUserSamplingId];
  }

  v9 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self odsampleIds];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
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