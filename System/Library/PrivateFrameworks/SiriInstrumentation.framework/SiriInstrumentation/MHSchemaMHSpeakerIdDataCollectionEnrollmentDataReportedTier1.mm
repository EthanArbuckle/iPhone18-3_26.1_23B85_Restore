@interface MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)initWithDictionary:(id)dictionary;
- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEnrollmentUtterances:(id)utterances;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1

- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)initWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1;
  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)v5 setSiriInputLocale:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)v5 setDeviceType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"productVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)v5 setProductVersion:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentUtterances"];
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

    v20 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentDataDedupeHashBytes"];
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

- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_deviceType)
  {
    deviceType = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];
    v5 = [deviceType copy];
    [dictionary setObject:v5 forKeyedSubscript:@"deviceType"];
  }

  if (self->_enrollmentDataDedupeHashBytes)
  {
    enrollmentDataDedupeHashBytes = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];
    v7 = [enrollmentDataDedupeHashBytes base64EncodedStringWithOptions:0];
    if (v7)
    {
      [dictionary setObject:v7 forKeyedSubscript:@"enrollmentDataDedupeHashBytes"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"enrollmentDataDedupeHashBytes"];
    }
  }

  if ([(NSArray *)self->_enrollmentUtterances count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"enrollmentUtterances"];
  }

  if (self->_productVersion)
  {
    productVersion = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];
    v18 = [productVersion copy];
    [dictionary setObject:v18 forKeyedSubscript:@"productVersion"];
  }

  if (self->_siriInputLocale)
  {
    siriInputLocale = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
    dictionaryRepresentation2 = [siriInputLocale dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v23];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  v4 = [(NSString *)self->_deviceType hash]^ v3;
  v5 = [(NSString *)self->_productVersion hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_enrollmentUtterances hash];
  return v6 ^ [(NSData *)self->_enrollmentDataDedupeHashBytes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  siriInputLocale = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
  siriInputLocale2 = [equalCopy siriInputLocale];
  if ((siriInputLocale != 0) == (siriInputLocale2 == 0))
  {
    goto LABEL_26;
  }

  siriInputLocale3 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
  if (siriInputLocale3)
  {
    v8 = siriInputLocale3;
    siriInputLocale4 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
    siriInputLocale5 = [equalCopy siriInputLocale];
    v11 = [siriInputLocale4 isEqual:siriInputLocale5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  siriInputLocale = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];
  siriInputLocale2 = [equalCopy deviceType];
  if ((siriInputLocale != 0) == (siriInputLocale2 == 0))
  {
    goto LABEL_26;
  }

  deviceType = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];
  if (deviceType)
  {
    v13 = deviceType;
    deviceType2 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];
    deviceType3 = [equalCopy deviceType];
    v16 = [deviceType2 isEqual:deviceType3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  siriInputLocale = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];
  siriInputLocale2 = [equalCopy productVersion];
  if ((siriInputLocale != 0) == (siriInputLocale2 == 0))
  {
    goto LABEL_26;
  }

  productVersion = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];
  if (productVersion)
  {
    v18 = productVersion;
    productVersion2 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];
    productVersion3 = [equalCopy productVersion];
    v21 = [productVersion2 isEqual:productVersion3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  siriInputLocale = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentUtterances];
  siriInputLocale2 = [equalCopy enrollmentUtterances];
  if ((siriInputLocale != 0) == (siriInputLocale2 == 0))
  {
    goto LABEL_26;
  }

  enrollmentUtterances = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentUtterances];
  if (enrollmentUtterances)
  {
    v23 = enrollmentUtterances;
    enrollmentUtterances2 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentUtterances];
    enrollmentUtterances3 = [equalCopy enrollmentUtterances];
    v26 = [enrollmentUtterances2 isEqual:enrollmentUtterances3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  siriInputLocale = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];
  siriInputLocale2 = [equalCopy enrollmentDataDedupeHashBytes];
  if ((siriInputLocale != 0) != (siriInputLocale2 == 0))
  {
    enrollmentDataDedupeHashBytes = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];
    if (!enrollmentDataDedupeHashBytes)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = enrollmentDataDedupeHashBytes;
    enrollmentDataDedupeHashBytes2 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];
    enrollmentDataDedupeHashBytes3 = [equalCopy enrollmentDataDedupeHashBytes];
    v31 = [enrollmentDataDedupeHashBytes2 isEqual:enrollmentDataDedupeHashBytes3];

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

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  siriInputLocale = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];

  if (siriInputLocale)
  {
    siriInputLocale2 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  deviceType = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deviceType];

  if (deviceType)
  {
    PBDataWriterWriteStringField();
  }

  productVersion = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self productVersion];

  if (productVersion)
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

  enrollmentDataDedupeHashBytes = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentDataDedupeHashBytes];

  if (enrollmentDataDedupeHashBytes)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)addEnrollmentUtterances:(id)utterances
{
  utterancesCopy = utterances;
  enrollmentUtterances = self->_enrollmentUtterances;
  v8 = utterancesCopy;
  if (!enrollmentUtterances)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_enrollmentUtterances;
    self->_enrollmentUtterances = array;

    utterancesCopy = v8;
    enrollmentUtterances = self->_enrollmentUtterances;
  }

  [(NSArray *)enrollmentUtterances addObject:utterancesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  siriInputLocale = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self siriInputLocale];
  v7 = [siriInputLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self deleteSiriInputLocale];
  }

  enrollmentUtterances = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self enrollmentUtterances];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:enrollmentUtterances underConditions:policyCopy];
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