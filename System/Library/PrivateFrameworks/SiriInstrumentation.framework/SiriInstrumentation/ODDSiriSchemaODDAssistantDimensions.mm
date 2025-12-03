@interface ODDSiriSchemaODDAssistantDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssistantDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)routingAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addRouting:(int)routing;
- (void)setHasAsrLocation:(BOOL)location;
- (void)setHasInvocationSource:(BOOL)source;
- (void)setHasIsIntelligenceEngineRequest:(BOOL)request;
- (void)setHasNlLocation:(BOOL)location;
- (void)setHasResponseCategory:(BOOL)category;
- (void)setHasViewInterface:(BOOL)interface;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssistantDimensions

- (ODDSiriSchemaODDAssistantDimensions)initWithDictionary:(id)dictionary
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v55.receiver = self;
  v55.super_class = ODDSiriSchemaODDAssistantDimensions;
  v5 = [(ODDSiriSchemaODDAssistantDimensions *)&v55 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDAssistantDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setDataSharingOptInStatus:](v5, "setDataSharingOptInStatus:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"viewInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setViewInterface:](v5, "setViewInterface:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDAssistantDimensions *)v5 setAudioInterfaceVendorId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDAssistantDimensions *)v5 setAudioInterfaceProductId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"asrLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setAsrLocation:](v5, "setAsrLocation:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"nlLocation"];
    objc_opt_class();
    v50 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setNlLocation:](v5, "setNlLocation:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    v49 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = v14;
      v18 = [[SISchemaISOLocale alloc] initWithDictionary:v49];
      [(ODDSiriSchemaODDAssistantDimensions *)v5 setSiriInputLocale:v18];

      v14 = v17;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"subDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = dictionaryCopy;
      v20 = v14;
      v21 = v12;
      v22 = v10;
      v23 = v9;
      v24 = v8;
      v25 = v6;
      v26 = v19;
      v27 = [v19 copy];
      [(ODDSiriSchemaODDAssistantDimensions *)v5 setSubDomain:v27];

      v19 = v26;
      v6 = v25;
      v8 = v24;
      v9 = v23;
      v10 = v22;
      v12 = v21;
      v14 = v20;
      dictionaryCopy = v47;
    }

    v48 = v9;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"responseCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setResponseCategory:](v5, "setResponseCategory:", [v28 intValue]);
    }

    v44 = v28;
    v45 = v12;
    v46 = v10;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"isIntelligenceEngineRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setIsIntelligenceEngineRequest:](v5, "setIsIntelligenceEngineRequest:", [v29 BOOLValue]);
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"routing"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v19;
      v41 = v14;
      v42 = v8;
      v43 = v6;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v52;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v52 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v51 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ODDSiriSchemaODDAssistantDimensions addRouting:](v5, "addRouting:", [v36 intValue]);
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v33);
      }

      v8 = v42;
      v6 = v43;
      v19 = v40;
      v14 = v41;
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:{@"invocationSource", v40, v41, v42, v43}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setInvocationSource:](v5, "setInvocationSource:", [v37 intValue]);
    }

    v38 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssistantDimensions *)self dictionaryRepresentation];
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
    asrLocation = [(ODDSiriSchemaODDAssistantDimensions *)self asrLocation];
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
    audioInterfaceProductId = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];
    v8 = [audioInterfaceProductId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"audioInterfaceProductId"];
  }

  if (self->_audioInterfaceVendorId)
  {
    audioInterfaceVendorId = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];
    v10 = [audioInterfaceVendorId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"audioInterfaceVendorId"];
  }

  has = self->_has;
  if (has)
  {
    v12 = [(ODDSiriSchemaODDAssistantDimensions *)self dataSharingOptInStatus]- 1;
    if (v12 > 2)
    {
      v13 = @"UNKNOWN";
    }

    else
    {
      v13 = off_1E78DC9F0[v12];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"dataSharingOptInStatus"];
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_14:
      if ((has & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_14;
  }

  v14 = [(ODDSiriSchemaODDAssistantDimensions *)self invocationSource]- 1;
  if (v14 > 0x66)
  {
    v15 = @"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE";
  }

  else
  {
    v15 = off_1E78DCA08[v14];
  }

  [dictionary setObject:v15 forKeyedSubscript:@"invocationSource"];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAssistantDimensions isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  [dictionary setObject:v16 forKeyedSubscript:@"isIntelligenceEngineRequest"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_27:
  nlLocation = [(ODDSiriSchemaODDAssistantDimensions *)self nlLocation];
  v18 = @"ORCHSIRINLMODE_UNKNOWN";
  if (nlLocation == 1)
  {
    v18 = @"ORCHSIRINLMODE_NLV3_SERVER";
  }

  if (nlLocation == 2)
  {
    v19 = @"ORCHSIRINLMODE_NLX_DEVICE";
  }

  else
  {
    v19 = v18;
  }

  [dictionary setObject:v19 forKeyedSubscript:@"nlLocation"];
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_33:
    v20 = [(ODDSiriSchemaODDAssistantDimensions *)self responseCategory]- 1;
    if (v20 > 0xD)
    {
      v21 = @"RESPONSECATEGORY_UNKNOWN";
    }

    else
    {
      v21 = off_1E78DCD40[v20];
    }

    [dictionary setObject:v21 forKeyedSubscript:@"responseCategory"];
  }

LABEL_37:
  if ([(NSArray *)self->_routings count])
  {
    routings = [(ODDSiriSchemaODDAssistantDimensions *)self routings];
    v23 = [routings copy];
    [dictionary setObject:v23 forKeyedSubscript:@"routing"];
  }

  if (self->_siriInputLocale)
  {
    siriInputLocale = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
    dictionaryRepresentation = [siriInputLocale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriInputLocale"];
    }
  }

  if (self->_subDomain)
  {
    subDomain = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];
    v28 = [subDomain copy];
    [dictionary setObject:v28 forKeyedSubscript:@"subDomain"];
  }

  if (self->_systemBuild)
  {
    systemBuild = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];
    v30 = [systemBuild copy];
    [dictionary setObject:v30 forKeyedSubscript:@"systemBuild"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v31 = [(ODDSiriSchemaODDAssistantDimensions *)self viewInterface]- 1;
    if (v31 > 7)
    {
      v32 = @"ASSISTANTVIEWMODE_UNKNOWN";
    }

    else
    {
      v32 = off_1E78DCDB0[v31];
    }

    [dictionary setObject:v32 forKeyedSubscript:@"viewInterface"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v16 = [(NSString *)self->_systemBuild hash];
  if (*&self->_has)
  {
    v15 = 2654435761 * self->_dataSharingOptInStatus;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v14 = 2654435761 * self->_viewInterface;
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  v13 = [(NSString *)self->_audioInterfaceVendorId hash];
  v3 = [(NSString *)self->_audioInterfaceProductId hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_asrLocation;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_8:
      v5 = 2654435761 * self->_nlLocation;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  v6 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  v7 = [(NSString *)self->_subDomain hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_responseCategory;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_13:
      v9 = 2654435761 * self->_isIntelligenceEngineRequest;
      goto LABEL_16;
    }
  }

  v9 = 0;
LABEL_16:
  v10 = [(NSArray *)self->_routings hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v11 = 2654435761 * self->_invocationSource;
  }

  else
  {
    v11 = 0;
  }

  return v15 ^ v16 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  systemBuild = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];
  systemBuild2 = [equalCopy systemBuild];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_52;
  }

  systemBuild3 = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];
  if (systemBuild3)
  {
    v8 = systemBuild3;
    systemBuild4 = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];
    systemBuild5 = [equalCopy systemBuild];
    v11 = [systemBuild4 isEqual:systemBuild5];

    if (!v11)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[84];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_53;
  }

  if (*&has)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    if (dataSharingOptInStatus != [equalCopy dataSharingOptInStatus])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v13 = equalCopy[84];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_53;
  }

  if (v15)
  {
    viewInterface = self->_viewInterface;
    if (viewInterface != [equalCopy viewInterface])
    {
      goto LABEL_53;
    }
  }

  systemBuild = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];
  systemBuild2 = [equalCopy audioInterfaceVendorId];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_52;
  }

  audioInterfaceVendorId = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];
  if (audioInterfaceVendorId)
  {
    v18 = audioInterfaceVendorId;
    audioInterfaceVendorId2 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];
    audioInterfaceVendorId3 = [equalCopy audioInterfaceVendorId];
    v21 = [audioInterfaceVendorId2 isEqual:audioInterfaceVendorId3];

    if (!v21)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  systemBuild = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];
  systemBuild2 = [equalCopy audioInterfaceProductId];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_52;
  }

  audioInterfaceProductId = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];
  if (audioInterfaceProductId)
  {
    v23 = audioInterfaceProductId;
    audioInterfaceProductId2 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];
    audioInterfaceProductId3 = [equalCopy audioInterfaceProductId];
    v26 = [audioInterfaceProductId2 isEqual:audioInterfaceProductId3];

    if (!v26)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v27 = self->_has;
  v28 = (*&v27 >> 2) & 1;
  v29 = equalCopy[84];
  if (v28 != ((v29 >> 2) & 1))
  {
    goto LABEL_53;
  }

  if (v28)
  {
    asrLocation = self->_asrLocation;
    if (asrLocation != [equalCopy asrLocation])
    {
      goto LABEL_53;
    }

    v27 = self->_has;
    v29 = equalCopy[84];
  }

  v31 = (*&v27 >> 3) & 1;
  if (v31 != ((v29 >> 3) & 1))
  {
    goto LABEL_53;
  }

  if (v31)
  {
    nlLocation = self->_nlLocation;
    if (nlLocation != [equalCopy nlLocation])
    {
      goto LABEL_53;
    }
  }

  systemBuild = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
  systemBuild2 = [equalCopy siriInputLocale];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_52;
  }

  siriInputLocale = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
  if (siriInputLocale)
  {
    v34 = siriInputLocale;
    siriInputLocale2 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
    siriInputLocale3 = [equalCopy siriInputLocale];
    v37 = [siriInputLocale2 isEqual:siriInputLocale3];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  systemBuild = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];
  systemBuild2 = [equalCopy subDomain];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_52;
  }

  subDomain = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];
  if (subDomain)
  {
    v39 = subDomain;
    subDomain2 = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];
    subDomain3 = [equalCopy subDomain];
    v42 = [subDomain2 isEqual:subDomain3];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v43 = self->_has;
  v44 = (*&v43 >> 4) & 1;
  v45 = equalCopy[84];
  if (v44 != ((v45 >> 4) & 1))
  {
    goto LABEL_53;
  }

  if (v44)
  {
    responseCategory = self->_responseCategory;
    if (responseCategory != [equalCopy responseCategory])
    {
      goto LABEL_53;
    }

    v43 = self->_has;
    v45 = equalCopy[84];
  }

  v47 = (*&v43 >> 5) & 1;
  if (v47 != ((v45 >> 5) & 1))
  {
    goto LABEL_53;
  }

  if (v47)
  {
    isIntelligenceEngineRequest = self->_isIntelligenceEngineRequest;
    if (isIntelligenceEngineRequest != [equalCopy isIntelligenceEngineRequest])
    {
      goto LABEL_53;
    }
  }

  systemBuild = [(ODDSiriSchemaODDAssistantDimensions *)self routings];
  systemBuild2 = [equalCopy routings];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
LABEL_52:

    goto LABEL_53;
  }

  routings = [(ODDSiriSchemaODDAssistantDimensions *)self routings];
  if (routings)
  {
    v50 = routings;
    routings2 = [(ODDSiriSchemaODDAssistantDimensions *)self routings];
    routings3 = [equalCopy routings];
    v53 = [routings2 isEqual:routings3];

    if (!v53)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v56 = (*&self->_has >> 6) & 1;
  if (v56 == ((equalCopy[84] >> 6) & 1))
  {
    if (!v56 || (invocationSource = self->_invocationSource, invocationSource == [equalCopy invocationSource]))
    {
      v54 = 1;
      goto LABEL_54;
    }
  }

LABEL_53:
  v54 = 0;
LABEL_54:

  return v54;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  toCopy = to;
  systemBuild = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];

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

  audioInterfaceVendorId = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];

  if (audioInterfaceVendorId)
  {
    PBDataWriterWriteStringField();
  }

  audioInterfaceProductId = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];

  if (audioInterfaceProductId)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((v9 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = self->_has;
  }

  if ((v9 & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  siriInputLocale = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];

  if (siriInputLocale)
  {
    siriInputLocale2 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  subDomain = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];

  if (subDomain)
  {
    PBDataWriterWriteStringField();
  }

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v13 = self->_has;
  }

  if ((v13 & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = self->_routings;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasInvocationSource:(BOOL)source
{
  if (source)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)routingAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_routings objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addRouting:(int)routing
{
  v3 = *&routing;
  routings = self->_routings;
  if (!routings)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_routings;
    self->_routings = array;

    routings = self->_routings;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)routings addObject:v8];
}

- (void)setHasIsIntelligenceEngineRequest:(BOOL)request
{
  if (request)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasResponseCategory:(BOOL)category
{
  if (category)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNlLocation:(BOOL)location
{
  if (location)
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
  v9.super_class = ODDSiriSchemaODDAssistantDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDAssistantDimensions *)self deleteSiriInputLocale];
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