@interface MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)initWithDictionary:(id)a3;
- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEnrollmentUtterances:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1

- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)initWithDictionary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1;
  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)v5 setSiriInputLocale:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)v5 setDeviceType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"productVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)v5 setProductVersion:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"enrollmentUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v10;
      v25 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance alloc] initWithDictionary:v18];
              [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)v5 addEnrollmentUtterances:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v15);
      }

      v6 = v25;
      v10 = v24;
    }

    v20 = [v4 objectForKeyedSubscript:@"enrollmentDataDedupeHashBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v20 options:0];
      [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)v5 setEnrollmentDataDedupeHashBytes:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_deviceType)
  {
    v4 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"deviceType"];
  }

  if (self->_enrollmentDataDedupeHashBytes)
  {
    v6 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];
    v7 = [v6 base64EncodedStringWithOptions:0];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"enrollmentDataDedupeHashBytes"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"enrollmentDataDedupeHashBytes"];
    }
  }

  if ([(NSArray *)self->_enrollmentUtterances count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = self->_enrollmentUtterances;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"enrollmentUtterances"];
  }

  if (self->_productVersion)
  {
    v17 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"productVersion"];
  }

  if (self->_siriInputLocale)
  {
    v19 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v23];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  v4 = [(NSString *)self->_deviceType hash]^ v3;
  v5 = [(NSString *)self->_productVersion hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_enrollmentUtterances hash];
  return v6 ^ [(NSData *)self->_enrollmentDataDedupeHashBytes hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
  v6 = [v4 siriInputLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
    v10 = [v4 siriInputLocale];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];
  v6 = [v4 deviceType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];
  if (v12)
  {
    v13 = v12;
    v14 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];
    v15 = [v4 deviceType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];
  v6 = [v4 productVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];
  if (v17)
  {
    v18 = v17;
    v19 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];
    v20 = [v4 productVersion];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentUtterances];
  v6 = [v4 enrollmentUtterances];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentUtterances];
  if (v22)
  {
    v23 = v22;
    v24 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentUtterances];
    v25 = [v4 enrollmentUtterances];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];
  v6 = [v4 enrollmentDataDedupeHashBytes];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];
    v30 = [v4 enrollmentDataDedupeHashBytes];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];

  if (v5)
  {
    v6 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_enrollmentUtterances;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];

  if (v14)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)addEnrollmentUtterances:(id)a3
{
  v4 = a3;
  enrollmentUtterances = self->_enrollmentUtterances;
  v8 = v4;
  if (!enrollmentUtterances)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_enrollmentUtterances;
    self->_enrollmentUtterances = v6;

    v4 = v8;
    enrollmentUtterances = self->_enrollmentUtterances;
  }

  [(NSArray *)enrollmentUtterances addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deleteSiriInputLocale];
  }

  v9 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentUtterances];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self setEnrollmentUtterances:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end