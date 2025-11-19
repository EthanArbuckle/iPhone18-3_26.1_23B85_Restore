@interface ODDSiriSchemaODDDictationDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDDictationDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAsrLocation:(BOOL)a3;
- (void)setHasInvocationSource:(BOOL)a3;
- (void)setHasViewInterface:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDDictationDimensions

- (ODDSiriSchemaODDDictationDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ODDSiriSchemaODDDictationDimensions;
  v5 = [(ODDSiriSchemaODDDictationDimensions *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDDictationDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"dataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationDimensions setDataSharingOptInStatus:](v5, "setDataSharingOptInStatus:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"viewInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationDimensions setViewInterface:](v5, "setViewInterface:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDDictationDimensions *)v5 setAudioInterfaceVendorId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"audioInterfaceProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDDictationDimensions *)v5 setAudioInterfaceProductId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"asrLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationDimensions setAsrLocation:](v5, "setAsrLocation:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"dictationLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaISOLocale alloc] initWithDictionary:v15];
      [(ODDSiriSchemaODDDictationDimensions *)v5 setDictationLocale:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"invocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationDimensions setInvocationSource:](v5, "setInvocationSource:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDictationDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDDictationDimensions *)self dictionaryRepresentation];
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
  if ((*&self->_has & 4) != 0)
  {
    v4 = [(ODDSiriSchemaODDDictationDimensions *)self asrLocation];
    v5 = @"ORCHSIRIASRMODE_UNKNOWN";
    if (v4 == 1)
    {
      v5 = @"ORCHSIRIASRMODE_SERVER";
    }

    if (v4 == 2)
    {
      v6 = @"ORCHSIRIASRMODE_DEVICE";
    }

    else
    {
      v6 = v5;
    }

    [v3 setObject:v6 forKeyedSubscript:@"asrLocation"];
  }

  if (self->_audioInterfaceProductId)
  {
    v7 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"audioInterfaceProductId"];
  }

  if (self->_audioInterfaceVendorId)
  {
    v9 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"audioInterfaceVendorId"];
  }

  if (*&self->_has)
  {
    v11 = [(ODDSiriSchemaODDDictationDimensions *)self dataSharingOptInStatus]- 1;
    if (v11 > 2)
    {
      v12 = @"UNKNOWN";
    }

    else
    {
      v12 = off_1E78DD2E8[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"dataSharingOptInStatus"];
  }

  if (self->_dictationLocale)
  {
    v13 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"dictationLocale"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"dictationLocale"];
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    v16 = [(ODDSiriSchemaODDDictationDimensions *)self invocationSource]- 1;
    if (v16 > 0x66)
    {
      v17 = @"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE";
    }

    else
    {
      v17 = off_1E78DD300[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"invocationSource"];
  }

  if (self->_systemBuild)
  {
    v18 = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"systemBuild"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v20 = [(ODDSiriSchemaODDDictationDimensions *)self viewInterface]- 1;
    if (v20 > 7)
    {
      v21 = @"ASSISTANTVIEWMODE_UNKNOWN";
    }

    else
    {
      v21 = off_1E78DD638[v20];
    }

    [v3 setObject:v21 forKeyedSubscript:@"viewInterface"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_systemBuild hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_dataSharingOptInStatus;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_viewInterface;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_audioInterfaceVendorId hash];
  v7 = [(NSString *)self->_audioInterfaceProductId hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_asrLocation;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SISchemaISOLocale *)self->_dictationLocale hash];
  if ((*&self->_has & 8) != 0)
  {
    v10 = 2654435761 * self->_invocationSource;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];
    v10 = [v4 systemBuild];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[60];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_32;
  }

  if (*&has)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    if (dataSharingOptInStatus != [v4 dataSharingOptInStatus])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v13 = v4[60];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_32;
  }

  if (v15)
  {
    viewInterface = self->_viewInterface;
    if (viewInterface != [v4 viewInterface])
    {
      goto LABEL_32;
    }
  }

  v5 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];
  v6 = [v4 audioInterfaceVendorId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];
    v20 = [v4 audioInterfaceVendorId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];
  v6 = [v4 audioInterfaceProductId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];
    v25 = [v4 audioInterfaceProductId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v27 = (*&self->_has >> 2) & 1;
  if (v27 != ((v4[60] >> 2) & 1))
  {
    goto LABEL_32;
  }

  if (v27)
  {
    asrLocation = self->_asrLocation;
    if (asrLocation != [v4 asrLocation])
    {
      goto LABEL_32;
    }
  }

  v5 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
  v6 = [v4 dictationLocale];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v29 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
  if (v29)
  {
    v30 = v29;
    v31 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
    v32 = [v4 dictationLocale];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v36 = (*&self->_has >> 3) & 1;
  if (v36 == ((v4[60] >> 3) & 1))
  {
    if (!v36 || (invocationSource = self->_invocationSource, invocationSource == [v4 invocationSource]))
    {
      v34 = 1;
      goto LABEL_33;
    }
  }

LABEL_32:
  v34 = 0;
LABEL_33:

  return v34;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];

  if (v4)
  {
    PBDataWriterWriteStringField();
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

  v6 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v8 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];

  if (v8)
  {
    v9 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasInvocationSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAsrLocation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasViewInterface:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDDictationDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ODDSiriSchemaODDDictationDimensions *)self deleteDictationLocale];
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