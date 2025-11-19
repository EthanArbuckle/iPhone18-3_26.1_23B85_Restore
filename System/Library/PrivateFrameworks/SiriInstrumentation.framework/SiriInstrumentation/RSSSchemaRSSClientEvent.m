@interface RSSSchemaRSSClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RSSSchemaRSSClientEvent)initWithDictionary:(id)a3;
- (RSSSchemaRSSClientEvent)initWithJSON:(id)a3;
- (RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncObjectAcquisitionStarted)companionSyncPluginSyncObjectAcquisitionStarted;
- (RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncRequested)companionSyncPluginSyncRequested;
- (RSSSchemaRSSSiriVocabSyncCompanionSyncUploadStarted)companionSyncUploadStarted;
- (RSSSchemaRSSSiriVocabSyncDataDonationFailed)syncDataDonationFailed;
- (RSSSchemaRSSSiriVocabSyncDataDownloadContext)syncDataDownloadContext;
- (RSSSchemaRSSSiriVocabSyncDataUpdatedNotificationReceived)syncDataUpdatedNotificationReceived;
- (RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived)syncTokenFetchRequestReceived;
- (RSSSchemaRSSSiriVocabSyncTokenReceived)syncTokenReceived;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCompanionSyncPluginSyncObjectAcquisitionStarted;
- (void)deleteCompanionSyncPluginSyncRequested;
- (void)deleteCompanionSyncUploadStarted;
- (void)deleteSyncDataDonationFailed;
- (void)deleteSyncDataDownloadContext;
- (void)deleteSyncDataUpdatedNotificationReceived;
- (void)deleteSyncTokenFetchRequestReceived;
- (void)deleteSyncTokenReceived;
- (void)setCompanionSyncPluginSyncObjectAcquisitionStarted:(id)a3;
- (void)setCompanionSyncPluginSyncRequested:(id)a3;
- (void)setCompanionSyncUploadStarted:(id)a3;
- (void)setSyncDataDonationFailed:(id)a3;
- (void)setSyncDataDownloadContext:(id)a3;
- (void)setSyncDataUpdatedNotificationReceived:(id)a3;
- (void)setSyncTokenFetchRequestReceived:(id)a3;
- (void)setSyncTokenReceived:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RSSSchemaRSSClientEvent

- (RSSSchemaRSSClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = RSSSchemaRSSClientEvent;
  v5 = [(RSSSchemaRSSClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RSSSchemaRSSClientEventMetadata alloc] initWithDictionary:v6];
      [(RSSSchemaRSSClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [v4 objectForKeyedSubscript:@"syncDataDownloadContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RSSSchemaRSSSiriVocabSyncDataDownloadContext alloc] initWithDictionary:v8];
      [(RSSSchemaRSSClientEvent *)v5 setSyncDataDownloadContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"syncTokenReceived", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RSSSchemaRSSSiriVocabSyncTokenReceived alloc] initWithDictionary:v10];
      [(RSSSchemaRSSClientEvent *)v5 setSyncTokenReceived:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"syncTokenFetchRequestReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived alloc] initWithDictionary:v12];
      [(RSSSchemaRSSClientEvent *)v5 setSyncTokenFetchRequestReceived:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"syncDataUpdatedNotificationReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RSSSchemaRSSSiriVocabSyncDataUpdatedNotificationReceived alloc] initWithDictionary:v14];
      [(RSSSchemaRSSClientEvent *)v5 setSyncDataUpdatedNotificationReceived:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"syncDataDonationFailed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[RSSSchemaRSSSiriVocabSyncDataDonationFailed alloc] initWithDictionary:v16];
      [(RSSSchemaRSSClientEvent *)v5 setSyncDataDonationFailed:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"companionSyncPluginSyncRequested"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncRequested alloc] initWithDictionary:v18];
      [(RSSSchemaRSSClientEvent *)v5 setCompanionSyncPluginSyncRequested:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"companionSyncPluginSyncObjectAcquisitionStarted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncObjectAcquisitionStarted alloc] initWithDictionary:v20];
      [(RSSSchemaRSSClientEvent *)v5 setCompanionSyncPluginSyncObjectAcquisitionStarted:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"companionSyncUploadStarted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[RSSSchemaRSSSiriVocabSyncCompanionSyncUploadStarted alloc] initWithDictionary:v22];
      [(RSSSchemaRSSClientEvent *)v5 setCompanionSyncUploadStarted:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (RSSSchemaRSSClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RSSSchemaRSSClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RSSSchemaRSSClientEvent *)self dictionaryRepresentation];
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
  if (self->_companionSyncPluginSyncObjectAcquisitionStarted)
  {
    v4 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"companionSyncPluginSyncObjectAcquisitionStarted"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"companionSyncPluginSyncObjectAcquisitionStarted"];
    }
  }

  if (self->_companionSyncPluginSyncRequested)
  {
    v7 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"companionSyncPluginSyncRequested"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"companionSyncPluginSyncRequested"];
    }
  }

  if (self->_companionSyncUploadStarted)
  {
    v10 = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"companionSyncUploadStarted"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"companionSyncUploadStarted"];
    }
  }

  if (self->_eventMetadata)
  {
    v13 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_syncDataDonationFailed)
  {
    v16 = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"syncDataDonationFailed"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"syncDataDonationFailed"];
    }
  }

  if (self->_syncDataDownloadContext)
  {
    v19 = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"syncDataDownloadContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"syncDataDownloadContext"];
    }
  }

  if (self->_syncDataUpdatedNotificationReceived)
  {
    v22 = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"syncDataUpdatedNotificationReceived"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"syncDataUpdatedNotificationReceived"];
    }
  }

  if (self->_syncTokenFetchRequestReceived)
  {
    v25 = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"syncTokenFetchRequestReceived"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"syncTokenFetchRequestReceived"];
    }
  }

  if (self->_syncTokenReceived)
  {
    v28 = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"syncTokenReceived"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"syncTokenReceived"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(RSSSchemaRSSClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(RSSSchemaRSSSiriVocabSyncDataDownloadContext *)self->_syncDataDownloadContext hash]^ v3;
  v5 = [(RSSSchemaRSSSiriVocabSyncTokenReceived *)self->_syncTokenReceived hash];
  v6 = v4 ^ v5 ^ [(RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived *)self->_syncTokenFetchRequestReceived hash];
  v7 = [(RSSSchemaRSSSiriVocabSyncDataUpdatedNotificationReceived *)self->_syncDataUpdatedNotificationReceived hash];
  v8 = v7 ^ [(RSSSchemaRSSSiriVocabSyncDataDonationFailed *)self->_syncDataDonationFailed hash];
  v9 = v6 ^ v8 ^ [(RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncRequested *)self->_companionSyncPluginSyncRequested hash];
  v10 = [(RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncObjectAcquisitionStarted *)self->_companionSyncPluginSyncObjectAcquisitionStarted hash];
  return v9 ^ v10 ^ [(RSSSchemaRSSSiriVocabSyncCompanionSyncUploadStarted *)self->_companionSyncUploadStarted hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_48;
  }

  v6 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v8 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
  v7 = [v4 syncDataDownloadContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v13 = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
    v16 = [v4 syncDataDownloadContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
  v7 = [v4 syncTokenReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v18 = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
  if (v18)
  {
    v19 = v18;
    v20 = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
    v21 = [v4 syncTokenReceived];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
  v7 = [v4 syncTokenFetchRequestReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v23 = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
  if (v23)
  {
    v24 = v23;
    v25 = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
    v26 = [v4 syncTokenFetchRequestReceived];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
  v7 = [v4 syncDataUpdatedNotificationReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v28 = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
  if (v28)
  {
    v29 = v28;
    v30 = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
    v31 = [v4 syncDataUpdatedNotificationReceived];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
  v7 = [v4 syncDataDonationFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v33 = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
  if (v33)
  {
    v34 = v33;
    v35 = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
    v36 = [v4 syncDataDonationFailed];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
  v7 = [v4 companionSyncPluginSyncRequested];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v38 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
  if (v38)
  {
    v39 = v38;
    v40 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
    v41 = [v4 companionSyncPluginSyncRequested];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
  v7 = [v4 companionSyncPluginSyncObjectAcquisitionStarted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v43 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
  if (v43)
  {
    v44 = v43;
    v45 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
    v46 = [v4 companionSyncPluginSyncObjectAcquisitionStarted];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
  v7 = [v4 companionSyncUploadStarted];
  if ((v6 != 0) != (v7 == 0))
  {
    v48 = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
    if (!v48)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = v48;
    v50 = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
    v51 = [v4 companionSyncUploadStarted];
    v52 = [v50 isEqual:v51];

    if (v52)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_47:
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(RSSSchemaRSSClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];

  if (v6)
  {
    v7 = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];

  if (v8)
  {
    v9 = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];

  if (v10)
  {
    v11 = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];

  if (v12)
  {
    v13 = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];

  if (v14)
  {
    v15 = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];

  if (v16)
  {
    v17 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];

  if (v18)
  {
    v19 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];

  v21 = v23;
  if (v20)
  {
    v22 = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
    PBDataWriterWriteSubmessage();

    v21 = v23;
  }
}

- (void)deleteCompanionSyncUploadStarted
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_companionSyncUploadStarted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RSSSchemaRSSSiriVocabSyncCompanionSyncUploadStarted)companionSyncUploadStarted
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_companionSyncUploadStarted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCompanionSyncUploadStarted:(id)a3
{
  v4 = a3;
  syncDataDownloadContext = self->_syncDataDownloadContext;
  self->_syncDataDownloadContext = 0;

  syncTokenReceived = self->_syncTokenReceived;
  self->_syncTokenReceived = 0;

  syncTokenFetchRequestReceived = self->_syncTokenFetchRequestReceived;
  self->_syncTokenFetchRequestReceived = 0;

  syncDataUpdatedNotificationReceived = self->_syncDataUpdatedNotificationReceived;
  self->_syncDataUpdatedNotificationReceived = 0;

  syncDataDonationFailed = self->_syncDataDonationFailed;
  self->_syncDataDonationFailed = 0;

  companionSyncPluginSyncRequested = self->_companionSyncPluginSyncRequested;
  self->_companionSyncPluginSyncRequested = 0;

  companionSyncPluginSyncObjectAcquisitionStarted = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  self->_companionSyncPluginSyncObjectAcquisitionStarted = 0;

  v12 = 108;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  companionSyncUploadStarted = self->_companionSyncUploadStarted;
  self->_companionSyncUploadStarted = v4;
}

- (void)deleteCompanionSyncPluginSyncObjectAcquisitionStarted
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_companionSyncPluginSyncObjectAcquisitionStarted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncObjectAcquisitionStarted)companionSyncPluginSyncObjectAcquisitionStarted
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCompanionSyncPluginSyncObjectAcquisitionStarted:(id)a3
{
  v4 = a3;
  syncDataDownloadContext = self->_syncDataDownloadContext;
  self->_syncDataDownloadContext = 0;

  syncTokenReceived = self->_syncTokenReceived;
  self->_syncTokenReceived = 0;

  syncTokenFetchRequestReceived = self->_syncTokenFetchRequestReceived;
  self->_syncTokenFetchRequestReceived = 0;

  syncDataUpdatedNotificationReceived = self->_syncDataUpdatedNotificationReceived;
  self->_syncDataUpdatedNotificationReceived = 0;

  syncDataDonationFailed = self->_syncDataDonationFailed;
  self->_syncDataDonationFailed = 0;

  companionSyncPluginSyncRequested = self->_companionSyncPluginSyncRequested;
  self->_companionSyncPluginSyncRequested = 0;

  companionSyncUploadStarted = self->_companionSyncUploadStarted;
  self->_companionSyncUploadStarted = 0;

  v12 = 107;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  companionSyncPluginSyncObjectAcquisitionStarted = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  self->_companionSyncPluginSyncObjectAcquisitionStarted = v4;
}

- (void)deleteCompanionSyncPluginSyncRequested
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_companionSyncPluginSyncRequested = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncRequested)companionSyncPluginSyncRequested
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_companionSyncPluginSyncRequested;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCompanionSyncPluginSyncRequested:(id)a3
{
  v4 = a3;
  syncDataDownloadContext = self->_syncDataDownloadContext;
  self->_syncDataDownloadContext = 0;

  syncTokenReceived = self->_syncTokenReceived;
  self->_syncTokenReceived = 0;

  syncTokenFetchRequestReceived = self->_syncTokenFetchRequestReceived;
  self->_syncTokenFetchRequestReceived = 0;

  syncDataUpdatedNotificationReceived = self->_syncDataUpdatedNotificationReceived;
  self->_syncDataUpdatedNotificationReceived = 0;

  syncDataDonationFailed = self->_syncDataDonationFailed;
  self->_syncDataDonationFailed = 0;

  companionSyncPluginSyncObjectAcquisitionStarted = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  self->_companionSyncPluginSyncObjectAcquisitionStarted = 0;

  companionSyncUploadStarted = self->_companionSyncUploadStarted;
  self->_companionSyncUploadStarted = 0;

  v12 = 106;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  companionSyncPluginSyncRequested = self->_companionSyncPluginSyncRequested;
  self->_companionSyncPluginSyncRequested = v4;
}

- (void)deleteSyncDataDonationFailed
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_syncDataDonationFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RSSSchemaRSSSiriVocabSyncDataDonationFailed)syncDataDonationFailed
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_syncDataDonationFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSyncDataDonationFailed:(id)a3
{
  v4 = a3;
  syncDataDownloadContext = self->_syncDataDownloadContext;
  self->_syncDataDownloadContext = 0;

  syncTokenReceived = self->_syncTokenReceived;
  self->_syncTokenReceived = 0;

  syncTokenFetchRequestReceived = self->_syncTokenFetchRequestReceived;
  self->_syncTokenFetchRequestReceived = 0;

  syncDataUpdatedNotificationReceived = self->_syncDataUpdatedNotificationReceived;
  self->_syncDataUpdatedNotificationReceived = 0;

  companionSyncPluginSyncRequested = self->_companionSyncPluginSyncRequested;
  self->_companionSyncPluginSyncRequested = 0;

  companionSyncPluginSyncObjectAcquisitionStarted = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  self->_companionSyncPluginSyncObjectAcquisitionStarted = 0;

  companionSyncUploadStarted = self->_companionSyncUploadStarted;
  self->_companionSyncUploadStarted = 0;

  v12 = 105;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncDataDonationFailed = self->_syncDataDonationFailed;
  self->_syncDataDonationFailed = v4;
}

- (void)deleteSyncDataUpdatedNotificationReceived
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_syncDataUpdatedNotificationReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RSSSchemaRSSSiriVocabSyncDataUpdatedNotificationReceived)syncDataUpdatedNotificationReceived
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_syncDataUpdatedNotificationReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSyncDataUpdatedNotificationReceived:(id)a3
{
  v4 = a3;
  syncDataDownloadContext = self->_syncDataDownloadContext;
  self->_syncDataDownloadContext = 0;

  syncTokenReceived = self->_syncTokenReceived;
  self->_syncTokenReceived = 0;

  syncTokenFetchRequestReceived = self->_syncTokenFetchRequestReceived;
  self->_syncTokenFetchRequestReceived = 0;

  syncDataDonationFailed = self->_syncDataDonationFailed;
  self->_syncDataDonationFailed = 0;

  companionSyncPluginSyncRequested = self->_companionSyncPluginSyncRequested;
  self->_companionSyncPluginSyncRequested = 0;

  companionSyncPluginSyncObjectAcquisitionStarted = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  self->_companionSyncPluginSyncObjectAcquisitionStarted = 0;

  companionSyncUploadStarted = self->_companionSyncUploadStarted;
  self->_companionSyncUploadStarted = 0;

  v12 = 104;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncDataUpdatedNotificationReceived = self->_syncDataUpdatedNotificationReceived;
  self->_syncDataUpdatedNotificationReceived = v4;
}

- (void)deleteSyncTokenFetchRequestReceived
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_syncTokenFetchRequestReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived)syncTokenFetchRequestReceived
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_syncTokenFetchRequestReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSyncTokenFetchRequestReceived:(id)a3
{
  v4 = a3;
  syncDataDownloadContext = self->_syncDataDownloadContext;
  self->_syncDataDownloadContext = 0;

  syncTokenReceived = self->_syncTokenReceived;
  self->_syncTokenReceived = 0;

  syncDataUpdatedNotificationReceived = self->_syncDataUpdatedNotificationReceived;
  self->_syncDataUpdatedNotificationReceived = 0;

  syncDataDonationFailed = self->_syncDataDonationFailed;
  self->_syncDataDonationFailed = 0;

  companionSyncPluginSyncRequested = self->_companionSyncPluginSyncRequested;
  self->_companionSyncPluginSyncRequested = 0;

  companionSyncPluginSyncObjectAcquisitionStarted = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  self->_companionSyncPluginSyncObjectAcquisitionStarted = 0;

  companionSyncUploadStarted = self->_companionSyncUploadStarted;
  self->_companionSyncUploadStarted = 0;

  v12 = 103;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncTokenFetchRequestReceived = self->_syncTokenFetchRequestReceived;
  self->_syncTokenFetchRequestReceived = v4;
}

- (void)deleteSyncTokenReceived
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_syncTokenReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RSSSchemaRSSSiriVocabSyncTokenReceived)syncTokenReceived
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_syncTokenReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSyncTokenReceived:(id)a3
{
  v4 = a3;
  syncDataDownloadContext = self->_syncDataDownloadContext;
  self->_syncDataDownloadContext = 0;

  syncTokenFetchRequestReceived = self->_syncTokenFetchRequestReceived;
  self->_syncTokenFetchRequestReceived = 0;

  syncDataUpdatedNotificationReceived = self->_syncDataUpdatedNotificationReceived;
  self->_syncDataUpdatedNotificationReceived = 0;

  syncDataDonationFailed = self->_syncDataDonationFailed;
  self->_syncDataDonationFailed = 0;

  companionSyncPluginSyncRequested = self->_companionSyncPluginSyncRequested;
  self->_companionSyncPluginSyncRequested = 0;

  companionSyncPluginSyncObjectAcquisitionStarted = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  self->_companionSyncPluginSyncObjectAcquisitionStarted = 0;

  companionSyncUploadStarted = self->_companionSyncUploadStarted;
  self->_companionSyncUploadStarted = 0;

  v12 = 102;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncTokenReceived = self->_syncTokenReceived;
  self->_syncTokenReceived = v4;
}

- (void)deleteSyncDataDownloadContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_syncDataDownloadContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RSSSchemaRSSSiriVocabSyncDataDownloadContext)syncDataDownloadContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_syncDataDownloadContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSyncDataDownloadContext:(id)a3
{
  v4 = a3;
  syncTokenReceived = self->_syncTokenReceived;
  self->_syncTokenReceived = 0;

  syncTokenFetchRequestReceived = self->_syncTokenFetchRequestReceived;
  self->_syncTokenFetchRequestReceived = 0;

  syncDataUpdatedNotificationReceived = self->_syncDataUpdatedNotificationReceived;
  self->_syncDataUpdatedNotificationReceived = 0;

  syncDataDonationFailed = self->_syncDataDonationFailed;
  self->_syncDataDonationFailed = 0;

  companionSyncPluginSyncRequested = self->_companionSyncPluginSyncRequested;
  self->_companionSyncPluginSyncRequested = 0;

  companionSyncPluginSyncObjectAcquisitionStarted = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  self->_companionSyncPluginSyncObjectAcquisitionStarted = 0;

  companionSyncUploadStarted = self->_companionSyncUploadStarted;
  self->_companionSyncUploadStarted = 0;

  v12 = 101;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncDataDownloadContext = self->_syncDataDownloadContext;
  self->_syncDataDownloadContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(RSSSchemaRSSClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 7)
  {
    return @"com.apple.aiml.siri.rss.RSSClientEvent";
  }

  else
  {
    return off_1E78E21B8[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = RSSSchemaRSSClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:v4];
  v6 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RSSSchemaRSSClientEvent *)self deleteEventMetadata];
  }

  v9 = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncDataDownloadContext];
  }

  v12 = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncTokenReceived];
  }

  v15 = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncTokenFetchRequestReceived];
  }

  v18 = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncDataUpdatedNotificationReceived];
  }

  v21 = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncDataDonationFailed];
  }

  v24 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(RSSSchemaRSSClientEvent *)self deleteCompanionSyncPluginSyncRequested];
  }

  v27 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(RSSSchemaRSSClientEvent *)self deleteCompanionSyncPluginSyncObjectAcquisitionStarted];
  }

  v30 = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(RSSSchemaRSSClientEvent *)self deleteCompanionSyncUploadStarted];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (id)getComponentId
{
  v2 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
  v3 = [v2 rssId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(RSSSchemaRSSClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAF88[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78EAFC8[a3 - 101];
  }
}

@end