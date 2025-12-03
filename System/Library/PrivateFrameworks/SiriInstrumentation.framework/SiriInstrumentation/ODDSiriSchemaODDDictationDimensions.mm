@interface ODDSiriSchemaODDDictationDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDDictationDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAsrLocation:(BOOL)location;
- (void)setHasInvocationSource:(BOOL)source;
- (void)setHasViewInterface:(BOOL)interface;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDDictationDimensions

- (ODDSiriSchemaODDDictationDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = ODDSiriSchemaODDDictationDimensions;
  v5 = [(ODDSiriSchemaODDDictationDimensions *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDDictationDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationDimensions setDataSharingOptInStatus:](v5, "setDataSharingOptInStatus:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"viewInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationDimensions setViewInterface:](v5, "setViewInterface:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDDictationDimensions *)v5 setAudioInterfaceVendorId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDDictationDimensions *)v5 setAudioInterfaceProductId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"asrLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationDimensions setAsrLocation:](v5, "setAsrLocation:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"dictationLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaISOLocale alloc] initWithDictionary:v15];
      [(ODDSiriSchemaODDDictationDimensions *)v5 setDictationLocale:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"invocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationDimensions setInvocationSource:](v5, "setInvocationSource:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDictationDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDDictationDimensions *)self dictionaryRepresentation];
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
  if ((*&self->_has & 4) != 0)
  {
    asrLocation = [(ODDSiriSchemaODDDictationDimensions *)self asrLocation];
    v5 = @"ORCHSIRIASRMODE_UNKNOWN";
    if (asrLocation == 1)
    {
      v5 = @"ORCHSIRIASRMODE_SERVER";
    }

    if (asrLocation == 2)
    {
      v6 = @"ORCHSIRIASRMODE_DEVICE";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"asrLocation"];
  }

  if (self->_audioInterfaceProductId)
  {
    audioInterfaceProductId = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];
    v8 = [audioInterfaceProductId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"audioInterfaceProductId"];
  }

  if (self->_audioInterfaceVendorId)
  {
    audioInterfaceVendorId = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];
    v10 = [audioInterfaceVendorId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"audioInterfaceVendorId"];
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

    [dictionary setObject:v12 forKeyedSubscript:@"dataSharingOptInStatus"];
  }

  if (self->_dictationLocale)
  {
    dictationLocale = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
    dictionaryRepresentation = [dictationLocale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dictationLocale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dictationLocale"];
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

    [dictionary setObject:v17 forKeyedSubscript:@"invocationSource"];
  }

  if (self->_systemBuild)
  {
    systemBuild = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];
    v19 = [systemBuild copy];
    [dictionary setObject:v19 forKeyedSubscript:@"systemBuild"];
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

    [dictionary setObject:v21 forKeyedSubscript:@"viewInterface"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  systemBuild = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];
  systemBuild2 = [equalCopy systemBuild];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_31;
  }

  systemBuild3 = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];
  if (systemBuild3)
  {
    v8 = systemBuild3;
    systemBuild4 = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];
    systemBuild5 = [equalCopy systemBuild];
    v11 = [systemBuild4 isEqual:systemBuild5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[60];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_32;
  }

  if (*&has)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    if (dataSharingOptInStatus != [equalCopy dataSharingOptInStatus])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v13 = equalCopy[60];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_32;
  }

  if (v15)
  {
    viewInterface = self->_viewInterface;
    if (viewInterface != [equalCopy viewInterface])
    {
      goto LABEL_32;
    }
  }

  systemBuild = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];
  systemBuild2 = [equalCopy audioInterfaceVendorId];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_31;
  }

  audioInterfaceVendorId = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];
  if (audioInterfaceVendorId)
  {
    v18 = audioInterfaceVendorId;
    audioInterfaceVendorId2 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];
    audioInterfaceVendorId3 = [equalCopy audioInterfaceVendorId];
    v21 = [audioInterfaceVendorId2 isEqual:audioInterfaceVendorId3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  systemBuild = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];
  systemBuild2 = [equalCopy audioInterfaceProductId];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_31;
  }

  audioInterfaceProductId = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];
  if (audioInterfaceProductId)
  {
    v23 = audioInterfaceProductId;
    audioInterfaceProductId2 = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];
    audioInterfaceProductId3 = [equalCopy audioInterfaceProductId];
    v26 = [audioInterfaceProductId2 isEqual:audioInterfaceProductId3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v27 = (*&self->_has >> 2) & 1;
  if (v27 != ((equalCopy[60] >> 2) & 1))
  {
    goto LABEL_32;
  }

  if (v27)
  {
    asrLocation = self->_asrLocation;
    if (asrLocation != [equalCopy asrLocation])
    {
      goto LABEL_32;
    }
  }

  systemBuild = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
  systemBuild2 = [equalCopy dictationLocale];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  dictationLocale = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
  if (dictationLocale)
  {
    v30 = dictationLocale;
    dictationLocale2 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
    dictationLocale3 = [equalCopy dictationLocale];
    v33 = [dictationLocale2 isEqual:dictationLocale3];

    if (!v33)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v36 = (*&self->_has >> 3) & 1;
  if (v36 == ((equalCopy[60] >> 3) & 1))
  {
    if (!v36 || (invocationSource = self->_invocationSource, invocationSource == [equalCopy invocationSource]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  systemBuild = [(ODDSiriSchemaODDDictationDimensions *)self systemBuild];

  if (systemBuild)
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

  audioInterfaceVendorId = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceVendorId];

  if (audioInterfaceVendorId)
  {
    PBDataWriterWriteStringField();
  }

  audioInterfaceProductId = [(ODDSiriSchemaODDDictationDimensions *)self audioInterfaceProductId];

  if (audioInterfaceProductId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  dictationLocale = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];

  if (dictationLocale)
  {
    dictationLocale2 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasInvocationSource:(BOOL)source
{
  if (source)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAsrLocation:(BOOL)location
{
  if (location)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasViewInterface:(BOOL)interface
{
  if (interface)
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
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDDictationDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDDictationDimensions *)self dictationLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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