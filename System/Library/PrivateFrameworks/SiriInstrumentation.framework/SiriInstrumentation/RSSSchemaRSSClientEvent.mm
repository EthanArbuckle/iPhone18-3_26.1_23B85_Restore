@interface RSSSchemaRSSClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RSSSchemaRSSClientEvent)initWithDictionary:(id)dictionary;
- (RSSSchemaRSSClientEvent)initWithJSON:(id)n;
- (RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncObjectAcquisitionStarted)companionSyncPluginSyncObjectAcquisitionStarted;
- (RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncRequested)companionSyncPluginSyncRequested;
- (RSSSchemaRSSSiriVocabSyncCompanionSyncUploadStarted)companionSyncUploadStarted;
- (RSSSchemaRSSSiriVocabSyncDataDonationFailed)syncDataDonationFailed;
- (RSSSchemaRSSSiriVocabSyncDataDownloadContext)syncDataDownloadContext;
- (RSSSchemaRSSSiriVocabSyncDataUpdatedNotificationReceived)syncDataUpdatedNotificationReceived;
- (RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived)syncTokenFetchRequestReceived;
- (RSSSchemaRSSSiriVocabSyncTokenReceived)syncTokenReceived;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setCompanionSyncPluginSyncObjectAcquisitionStarted:(id)started;
- (void)setCompanionSyncPluginSyncRequested:(id)requested;
- (void)setCompanionSyncUploadStarted:(id)started;
- (void)setSyncDataDonationFailed:(id)failed;
- (void)setSyncDataDownloadContext:(id)context;
- (void)setSyncDataUpdatedNotificationReceived:(id)received;
- (void)setSyncTokenFetchRequestReceived:(id)received;
- (void)setSyncTokenReceived:(id)received;
- (void)writeTo:(id)to;
@end

@implementation RSSSchemaRSSClientEvent

- (RSSSchemaRSSClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = RSSSchemaRSSClientEvent;
  v5 = [(RSSSchemaRSSClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RSSSchemaRSSClientEventMetadata alloc] initWithDictionary:v6];
      [(RSSSchemaRSSClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"syncDataDownloadContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RSSSchemaRSSSiriVocabSyncDataDownloadContext alloc] initWithDictionary:v8];
      [(RSSSchemaRSSClientEvent *)v5 setSyncDataDownloadContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"syncTokenReceived", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RSSSchemaRSSSiriVocabSyncTokenReceived alloc] initWithDictionary:v10];
      [(RSSSchemaRSSClientEvent *)v5 setSyncTokenReceived:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"syncTokenFetchRequestReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived alloc] initWithDictionary:v12];
      [(RSSSchemaRSSClientEvent *)v5 setSyncTokenFetchRequestReceived:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"syncDataUpdatedNotificationReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RSSSchemaRSSSiriVocabSyncDataUpdatedNotificationReceived alloc] initWithDictionary:v14];
      [(RSSSchemaRSSClientEvent *)v5 setSyncDataUpdatedNotificationReceived:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"syncDataDonationFailed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[RSSSchemaRSSSiriVocabSyncDataDonationFailed alloc] initWithDictionary:v16];
      [(RSSSchemaRSSClientEvent *)v5 setSyncDataDonationFailed:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"companionSyncPluginSyncRequested"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncRequested alloc] initWithDictionary:v18];
      [(RSSSchemaRSSClientEvent *)v5 setCompanionSyncPluginSyncRequested:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"companionSyncPluginSyncObjectAcquisitionStarted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncObjectAcquisitionStarted alloc] initWithDictionary:v20];
      [(RSSSchemaRSSClientEvent *)v5 setCompanionSyncPluginSyncObjectAcquisitionStarted:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"companionSyncUploadStarted"];
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

- (RSSSchemaRSSClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RSSSchemaRSSClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RSSSchemaRSSClientEvent *)self dictionaryRepresentation];
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
  if (self->_companionSyncPluginSyncObjectAcquisitionStarted)
  {
    companionSyncPluginSyncObjectAcquisitionStarted = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
    dictionaryRepresentation = [companionSyncPluginSyncObjectAcquisitionStarted dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"companionSyncPluginSyncObjectAcquisitionStarted"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"companionSyncPluginSyncObjectAcquisitionStarted"];
    }
  }

  if (self->_companionSyncPluginSyncRequested)
  {
    companionSyncPluginSyncRequested = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
    dictionaryRepresentation2 = [companionSyncPluginSyncRequested dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"companionSyncPluginSyncRequested"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"companionSyncPluginSyncRequested"];
    }
  }

  if (self->_companionSyncUploadStarted)
  {
    companionSyncUploadStarted = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
    dictionaryRepresentation3 = [companionSyncUploadStarted dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"companionSyncUploadStarted"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"companionSyncUploadStarted"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(RSSSchemaRSSClientEvent *)self eventMetadata];
    dictionaryRepresentation4 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_syncDataDonationFailed)
  {
    syncDataDonationFailed = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
    dictionaryRepresentation5 = [syncDataDonationFailed dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"syncDataDonationFailed"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"syncDataDonationFailed"];
    }
  }

  if (self->_syncDataDownloadContext)
  {
    syncDataDownloadContext = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
    dictionaryRepresentation6 = [syncDataDownloadContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"syncDataDownloadContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"syncDataDownloadContext"];
    }
  }

  if (self->_syncDataUpdatedNotificationReceived)
  {
    syncDataUpdatedNotificationReceived = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
    dictionaryRepresentation7 = [syncDataUpdatedNotificationReceived dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"syncDataUpdatedNotificationReceived"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"syncDataUpdatedNotificationReceived"];
    }
  }

  if (self->_syncTokenFetchRequestReceived)
  {
    syncTokenFetchRequestReceived = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
    dictionaryRepresentation8 = [syncTokenFetchRequestReceived dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"syncTokenFetchRequestReceived"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"syncTokenFetchRequestReceived"];
    }
  }

  if (self->_syncTokenReceived)
  {
    syncTokenReceived = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
    dictionaryRepresentation9 = [syncTokenReceived dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"syncTokenReceived"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"syncTokenReceived"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_48;
  }

  eventMetadata = [(RSSSchemaRSSClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  eventMetadata3 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
  eventMetadata2 = [equalCopy syncDataDownloadContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  syncDataDownloadContext = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
  if (syncDataDownloadContext)
  {
    v14 = syncDataDownloadContext;
    syncDataDownloadContext2 = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
    syncDataDownloadContext3 = [equalCopy syncDataDownloadContext];
    v17 = [syncDataDownloadContext2 isEqual:syncDataDownloadContext3];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
  eventMetadata2 = [equalCopy syncTokenReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  syncTokenReceived = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
  if (syncTokenReceived)
  {
    v19 = syncTokenReceived;
    syncTokenReceived2 = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
    syncTokenReceived3 = [equalCopy syncTokenReceived];
    v22 = [syncTokenReceived2 isEqual:syncTokenReceived3];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
  eventMetadata2 = [equalCopy syncTokenFetchRequestReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  syncTokenFetchRequestReceived = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
  if (syncTokenFetchRequestReceived)
  {
    v24 = syncTokenFetchRequestReceived;
    syncTokenFetchRequestReceived2 = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
    syncTokenFetchRequestReceived3 = [equalCopy syncTokenFetchRequestReceived];
    v27 = [syncTokenFetchRequestReceived2 isEqual:syncTokenFetchRequestReceived3];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
  eventMetadata2 = [equalCopy syncDataUpdatedNotificationReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  syncDataUpdatedNotificationReceived = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
  if (syncDataUpdatedNotificationReceived)
  {
    v29 = syncDataUpdatedNotificationReceived;
    syncDataUpdatedNotificationReceived2 = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
    syncDataUpdatedNotificationReceived3 = [equalCopy syncDataUpdatedNotificationReceived];
    v32 = [syncDataUpdatedNotificationReceived2 isEqual:syncDataUpdatedNotificationReceived3];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
  eventMetadata2 = [equalCopy syncDataDonationFailed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  syncDataDonationFailed = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
  if (syncDataDonationFailed)
  {
    v34 = syncDataDonationFailed;
    syncDataDonationFailed2 = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
    syncDataDonationFailed3 = [equalCopy syncDataDonationFailed];
    v37 = [syncDataDonationFailed2 isEqual:syncDataDonationFailed3];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
  eventMetadata2 = [equalCopy companionSyncPluginSyncRequested];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  companionSyncPluginSyncRequested = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
  if (companionSyncPluginSyncRequested)
  {
    v39 = companionSyncPluginSyncRequested;
    companionSyncPluginSyncRequested2 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
    companionSyncPluginSyncRequested3 = [equalCopy companionSyncPluginSyncRequested];
    v42 = [companionSyncPluginSyncRequested2 isEqual:companionSyncPluginSyncRequested3];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
  eventMetadata2 = [equalCopy companionSyncPluginSyncObjectAcquisitionStarted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  companionSyncPluginSyncObjectAcquisitionStarted = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
  if (companionSyncPluginSyncObjectAcquisitionStarted)
  {
    v44 = companionSyncPluginSyncObjectAcquisitionStarted;
    companionSyncPluginSyncObjectAcquisitionStarted2 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
    companionSyncPluginSyncObjectAcquisitionStarted3 = [equalCopy companionSyncPluginSyncObjectAcquisitionStarted];
    v47 = [companionSyncPluginSyncObjectAcquisitionStarted2 isEqual:companionSyncPluginSyncObjectAcquisitionStarted3];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
  eventMetadata2 = [equalCopy companionSyncUploadStarted];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    companionSyncUploadStarted = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
    if (!companionSyncUploadStarted)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = companionSyncUploadStarted;
    companionSyncUploadStarted2 = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
    companionSyncUploadStarted3 = [equalCopy companionSyncUploadStarted];
    v52 = [companionSyncUploadStarted2 isEqual:companionSyncUploadStarted3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(RSSSchemaRSSClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(RSSSchemaRSSClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  syncDataDownloadContext = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];

  if (syncDataDownloadContext)
  {
    syncDataDownloadContext2 = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
    PBDataWriterWriteSubmessage();
  }

  syncTokenReceived = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];

  if (syncTokenReceived)
  {
    syncTokenReceived2 = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
    PBDataWriterWriteSubmessage();
  }

  syncTokenFetchRequestReceived = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];

  if (syncTokenFetchRequestReceived)
  {
    syncTokenFetchRequestReceived2 = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
    PBDataWriterWriteSubmessage();
  }

  syncDataUpdatedNotificationReceived = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];

  if (syncDataUpdatedNotificationReceived)
  {
    syncDataUpdatedNotificationReceived2 = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
    PBDataWriterWriteSubmessage();
  }

  syncDataDonationFailed = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];

  if (syncDataDonationFailed)
  {
    syncDataDonationFailed2 = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
    PBDataWriterWriteSubmessage();
  }

  companionSyncPluginSyncRequested = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];

  if (companionSyncPluginSyncRequested)
  {
    companionSyncPluginSyncRequested2 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
    PBDataWriterWriteSubmessage();
  }

  companionSyncPluginSyncObjectAcquisitionStarted = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];

  if (companionSyncPluginSyncObjectAcquisitionStarted)
  {
    companionSyncPluginSyncObjectAcquisitionStarted2 = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
    PBDataWriterWriteSubmessage();
  }

  companionSyncUploadStarted = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];

  v21 = toCopy;
  if (companionSyncUploadStarted)
  {
    companionSyncUploadStarted2 = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
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

- (void)setCompanionSyncUploadStarted:(id)started
{
  startedCopy = started;
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
  if (!startedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  companionSyncUploadStarted = self->_companionSyncUploadStarted;
  self->_companionSyncUploadStarted = startedCopy;
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

- (void)setCompanionSyncPluginSyncObjectAcquisitionStarted:(id)started
{
  startedCopy = started;
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
  if (!startedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  companionSyncPluginSyncObjectAcquisitionStarted = self->_companionSyncPluginSyncObjectAcquisitionStarted;
  self->_companionSyncPluginSyncObjectAcquisitionStarted = startedCopy;
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

- (void)setCompanionSyncPluginSyncRequested:(id)requested
{
  requestedCopy = requested;
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
  if (!requestedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  companionSyncPluginSyncRequested = self->_companionSyncPluginSyncRequested;
  self->_companionSyncPluginSyncRequested = requestedCopy;
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

- (void)setSyncDataDonationFailed:(id)failed
{
  failedCopy = failed;
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
  if (!failedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncDataDonationFailed = self->_syncDataDonationFailed;
  self->_syncDataDonationFailed = failedCopy;
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

- (void)setSyncDataUpdatedNotificationReceived:(id)received
{
  receivedCopy = received;
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
  if (!receivedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncDataUpdatedNotificationReceived = self->_syncDataUpdatedNotificationReceived;
  self->_syncDataUpdatedNotificationReceived = receivedCopy;
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

- (void)setSyncTokenFetchRequestReceived:(id)received
{
  receivedCopy = received;
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
  if (!receivedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncTokenFetchRequestReceived = self->_syncTokenFetchRequestReceived;
  self->_syncTokenFetchRequestReceived = receivedCopy;
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

- (void)setSyncTokenReceived:(id)received
{
  receivedCopy = received;
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
  if (!receivedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncTokenReceived = self->_syncTokenReceived;
  self->_syncTokenReceived = receivedCopy;
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

- (void)setSyncDataDownloadContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  syncDataDownloadContext = self->_syncDataDownloadContext;
  self->_syncDataDownloadContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(RSSSchemaRSSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    return @"com.apple.aiml.siri.rss.RSSClientEvent";
  }

  else
  {
    return off_1E78E21B8[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v34.receiver = self;
  v34.super_class = RSSSchemaRSSClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(RSSSchemaRSSClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RSSSchemaRSSClientEvent *)self deleteEventMetadata];
  }

  syncDataDownloadContext = [(RSSSchemaRSSClientEvent *)self syncDataDownloadContext];
  v10 = [syncDataDownloadContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncDataDownloadContext];
  }

  syncTokenReceived = [(RSSSchemaRSSClientEvent *)self syncTokenReceived];
  v13 = [syncTokenReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncTokenReceived];
  }

  syncTokenFetchRequestReceived = [(RSSSchemaRSSClientEvent *)self syncTokenFetchRequestReceived];
  v16 = [syncTokenFetchRequestReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncTokenFetchRequestReceived];
  }

  syncDataUpdatedNotificationReceived = [(RSSSchemaRSSClientEvent *)self syncDataUpdatedNotificationReceived];
  v19 = [syncDataUpdatedNotificationReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncDataUpdatedNotificationReceived];
  }

  syncDataDonationFailed = [(RSSSchemaRSSClientEvent *)self syncDataDonationFailed];
  v22 = [syncDataDonationFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(RSSSchemaRSSClientEvent *)self deleteSyncDataDonationFailed];
  }

  companionSyncPluginSyncRequested = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncRequested];
  v25 = [companionSyncPluginSyncRequested applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(RSSSchemaRSSClientEvent *)self deleteCompanionSyncPluginSyncRequested];
  }

  companionSyncPluginSyncObjectAcquisitionStarted = [(RSSSchemaRSSClientEvent *)self companionSyncPluginSyncObjectAcquisitionStarted];
  v28 = [companionSyncPluginSyncObjectAcquisitionStarted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(RSSSchemaRSSClientEvent *)self deleteCompanionSyncPluginSyncObjectAcquisitionStarted];
  }

  companionSyncUploadStarted = [(RSSSchemaRSSClientEvent *)self companionSyncUploadStarted];
  v31 = [companionSyncUploadStarted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
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
  eventMetadata = [(RSSSchemaRSSClientEvent *)self eventMetadata];
  rssId = [eventMetadata rssId];

  if (!rssId)
  {
    goto LABEL_5;
  }

  value = [rssId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [rssId value];
  v6 = [value2 length];

  if (v6)
  {
    value = rssId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(RSSSchemaRSSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAF88[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78EAFC8[tag - 101];
  }
}

@end