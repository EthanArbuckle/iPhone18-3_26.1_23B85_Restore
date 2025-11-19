@interface ODDSiriSchemaODDAssistantDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAssistantDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)routingAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addRouting:(int)a3;
- (void)setHasAsrLocation:(BOOL)a3;
- (void)setHasInvocationSource:(BOOL)a3;
- (void)setHasIsIntelligenceEngineRequest:(BOOL)a3;
- (void)setHasNlLocation:(BOOL)a3;
- (void)setHasResponseCategory:(BOOL)a3;
- (void)setHasViewInterface:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAssistantDimensions

- (ODDSiriSchemaODDAssistantDimensions)initWithDictionary:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v55.receiver = self;
  v55.super_class = ODDSiriSchemaODDAssistantDimensions;
  v5 = [(ODDSiriSchemaODDAssistantDimensions *)&v55 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDAssistantDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"dataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setDataSharingOptInStatus:](v5, "setDataSharingOptInStatus:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"viewInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setViewInterface:](v5, "setViewInterface:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDAssistantDimensions *)v5 setAudioInterfaceVendorId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"audioInterfaceProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDAssistantDimensions *)v5 setAudioInterfaceProductId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"asrLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setAsrLocation:](v5, "setAsrLocation:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"nlLocation"];
    objc_opt_class();
    v50 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setNlLocation:](v5, "setNlLocation:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    v49 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = v14;
      v18 = [[SISchemaISOLocale alloc] initWithDictionary:v49];
      [(ODDSiriSchemaODDAssistantDimensions *)v5 setSiriInputLocale:v18];

      v14 = v17;
    }

    v19 = [v4 objectForKeyedSubscript:@"subDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v4;
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
      v4 = v47;
    }

    v48 = v9;
    v28 = [v4 objectForKeyedSubscript:@"responseCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setResponseCategory:](v5, "setResponseCategory:", [v28 intValue]);
    }

    v44 = v28;
    v45 = v12;
    v46 = v10;
    v29 = [v4 objectForKeyedSubscript:@"isIntelligenceEngineRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setIsIntelligenceEngineRequest:](v5, "setIsIntelligenceEngineRequest:", [v29 BOOLValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"routing"];
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

    v37 = [v4 objectForKeyedSubscript:{@"invocationSource", v40, v41, v42, v43}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantDimensions setInvocationSource:](v5, "setInvocationSource:", [v37 intValue]);
    }

    v38 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAssistantDimensions *)self dictionaryRepresentation];
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
    v4 = [(ODDSiriSchemaODDAssistantDimensions *)self asrLocation];
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
    v7 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"audioInterfaceProductId"];
  }

  if (self->_audioInterfaceVendorId)
  {
    v9 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"audioInterfaceVendorId"];
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

    [v3 setObject:v13 forKeyedSubscript:@"dataSharingOptInStatus"];
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

  [v3 setObject:v15 forKeyedSubscript:@"invocationSource"];
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
  [v3 setObject:v16 forKeyedSubscript:@"isIntelligenceEngineRequest"];

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
  v17 = [(ODDSiriSchemaODDAssistantDimensions *)self nlLocation];
  v18 = @"ORCHSIRINLMODE_UNKNOWN";
  if (v17 == 1)
  {
    v18 = @"ORCHSIRINLMODE_NLV3_SERVER";
  }

  if (v17 == 2)
  {
    v19 = @"ORCHSIRINLMODE_NLX_DEVICE";
  }

  else
  {
    v19 = v18;
  }

  [v3 setObject:v19 forKeyedSubscript:@"nlLocation"];
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

    [v3 setObject:v21 forKeyedSubscript:@"responseCategory"];
  }

LABEL_37:
  if ([(NSArray *)self->_routings count])
  {
    v22 = [(ODDSiriSchemaODDAssistantDimensions *)self routings];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"routing"];
  }

  if (self->_siriInputLocale)
  {
    v24 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  if (self->_subDomain)
  {
    v27 = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"subDomain"];
  }

  if (self->_systemBuild)
  {
    v29 = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"systemBuild"];
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

    [v3 setObject:v32 forKeyedSubscript:@"viewInterface"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  v5 = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v7 = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];
    v10 = [v4 systemBuild];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[84];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_53;
  }

  if (*&has)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    if (dataSharingOptInStatus != [v4 dataSharingOptInStatus])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v13 = v4[84];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_53;
  }

  if (v15)
  {
    viewInterface = self->_viewInterface;
    if (viewInterface != [v4 viewInterface])
    {
      goto LABEL_53;
    }
  }

  v5 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];
  v6 = [v4 audioInterfaceVendorId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v17 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];
    v20 = [v4 audioInterfaceVendorId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];
  v6 = [v4 audioInterfaceProductId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v22 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];
    v25 = [v4 audioInterfaceProductId];
    v26 = [v24 isEqual:v25];

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
  v29 = v4[84];
  if (v28 != ((v29 >> 2) & 1))
  {
    goto LABEL_53;
  }

  if (v28)
  {
    asrLocation = self->_asrLocation;
    if (asrLocation != [v4 asrLocation])
    {
      goto LABEL_53;
    }

    v27 = self->_has;
    v29 = v4[84];
  }

  v31 = (*&v27 >> 3) & 1;
  if (v31 != ((v29 >> 3) & 1))
  {
    goto LABEL_53;
  }

  if (v31)
  {
    nlLocation = self->_nlLocation;
    if (nlLocation != [v4 nlLocation])
    {
      goto LABEL_53;
    }
  }

  v5 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
  v6 = [v4 siriInputLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v33 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
  if (v33)
  {
    v34 = v33;
    v35 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
    v36 = [v4 siriInputLocale];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];
  v6 = [v4 subDomain];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v38 = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];
  if (v38)
  {
    v39 = v38;
    v40 = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];
    v41 = [v4 subDomain];
    v42 = [v40 isEqual:v41];

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
  v45 = v4[84];
  if (v44 != ((v45 >> 4) & 1))
  {
    goto LABEL_53;
  }

  if (v44)
  {
    responseCategory = self->_responseCategory;
    if (responseCategory != [v4 responseCategory])
    {
      goto LABEL_53;
    }

    v43 = self->_has;
    v45 = v4[84];
  }

  v47 = (*&v43 >> 5) & 1;
  if (v47 != ((v45 >> 5) & 1))
  {
    goto LABEL_53;
  }

  if (v47)
  {
    isIntelligenceEngineRequest = self->_isIntelligenceEngineRequest;
    if (isIntelligenceEngineRequest != [v4 isIntelligenceEngineRequest])
    {
      goto LABEL_53;
    }
  }

  v5 = [(ODDSiriSchemaODDAssistantDimensions *)self routings];
  v6 = [v4 routings];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_52:

    goto LABEL_53;
  }

  v49 = [(ODDSiriSchemaODDAssistantDimensions *)self routings];
  if (v49)
  {
    v50 = v49;
    v51 = [(ODDSiriSchemaODDAssistantDimensions *)self routings];
    v52 = [v4 routings];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v56 = (*&self->_has >> 6) & 1;
  if (v56 == ((v4[84] >> 6) & 1))
  {
    if (!v56 || (invocationSource = self->_invocationSource, invocationSource == [v4 invocationSource]))
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

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODDSiriSchemaODDAssistantDimensions *)self systemBuild];

  if (v5)
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

  v7 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceVendorId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ODDSiriSchemaODDAssistantDimensions *)self audioInterfaceProductId];

  if (v8)
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

  v10 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];

  if (v10)
  {
    v11 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ODDSiriSchemaODDAssistantDimensions *)self subDomain];

  if (v12)
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

- (void)setHasInvocationSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)routingAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_routings objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addRouting:(int)a3
{
  v3 = *&a3;
  routings = self->_routings;
  if (!routings)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_routings;
    self->_routings = v6;

    routings = self->_routings;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)routings addObject:v8];
}

- (void)setHasIsIntelligenceEngineRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasResponseCategory:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNlLocation:(BOOL)a3
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
  v9.super_class = ODDSiriSchemaODDAssistantDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAssistantDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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