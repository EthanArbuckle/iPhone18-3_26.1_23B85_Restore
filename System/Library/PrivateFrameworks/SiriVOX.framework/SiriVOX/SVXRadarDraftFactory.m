@interface SVXRadarDraftFactory
- (SVXRadarDraftFactory)init;
- (id)createWithRequiredContent:(id)a3 extraContent:(id)a4;
@end

@implementation SVXRadarDraftFactory

- (id)createWithRequiredContent:(id)a3 extraContent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v8 = getRadarDraftClass_softClass;
  v44 = getRadarDraftClass_softClass;
  if (!getRadarDraftClass_softClass)
  {
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getRadarDraftClass_block_invoke;
    v39 = &unk_279C677C0;
    v40 = &v41;
    __getRadarDraftClass_block_invoke(&v36);
    v8 = v42[3];
  }

  v9 = v8;
  _Block_object_dispose(&v41, 8);
  v10 = objc_alloc_init(v8);
  v11 = [v6 title];
  [v10 setTitle:v11];

  v12 = MEMORY[0x277CCACA8];
  v13 = [v6 radarDescription];
  ttrTimeFormatter = self->_ttrTimeFormatter;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = [(NSISO8601DateFormatter *)ttrTimeFormatter stringFromDate:v15];
  v17 = [v12 stringWithFormat:@"Please add sysdiagnose for relevant iPhones and AppleTVs to the radar\n\n%@ - Timestamp (when radar draft was created on HomePod): %@ (%@ time)", v13, v16, self->_timeZone];
  [v10 setProblemDescription:v17];

  [v10 setIsUserInitiated:0];
  v18 = [v6 componentName];
  if (v18)
  {
    v19 = v18;
    v20 = [v6 componentVersion];
    if (v20)
    {
      v21 = v20;
      v22 = [v6 componentID];

      if (!v22)
      {
        goto LABEL_10;
      }

      v41 = 0;
      v42 = &v41;
      v43 = 0x2050000000;
      v23 = getRadarComponentClass_softClass;
      v44 = getRadarComponentClass_softClass;
      if (!getRadarComponentClass_softClass)
      {
        v36 = MEMORY[0x277D85DD0];
        v37 = 3221225472;
        v38 = __getRadarComponentClass_block_invoke;
        v39 = &unk_279C677C0;
        v40 = &v41;
        __getRadarComponentClass_block_invoke(&v36);
        v23 = v42[3];
      }

      v24 = v23;
      _Block_object_dispose(&v41, 8);
      v25 = [v23 alloc];
      v19 = [v6 componentName];
      v26 = [v6 componentVersion];
      v27 = [v6 componentID];
      v28 = [v25 initWithName:v19 version:v26 identifier:{objc_msgSend(v27, "integerValue")}];
      [v10 setComponent:v28];
    }
  }

LABEL_10:
  if (v7)
  {
    v29 = [v7 deviceIDs];

    if (v29)
    {
      v30 = [v7 deviceIDs];
      [v10 setDeviceIDs:v30];
    }

    v31 = [v7 extensionIDs];

    if (v31)
    {
      v32 = [v7 extensionIDs];
      [v10 setDiagnosticExtensionIDs:v32];
    }

    v33 = [v7 attachmentURLs];

    if (v33)
    {
      v34 = [v7 attachmentURLs];
      [v10 setAttachments:v34];
    }
  }

  [v10 setBundleID:@"com.apple.siri"];
  [v10 setReproducibility:5];
  [v10 setClassification:6];
  [v10 setRemoteDeviceClasses:9];
  [v10 setRemoteDeviceSelections:16];

  return v10;
}

- (SVXRadarDraftFactory)init
{
  v10.receiver = self;
  v10.super_class = SVXRadarDraftFactory;
  v2 = [(SVXRadarDraftFactory *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBB0] localTimeZone];
    v4 = [v3 name];
    timeZone = v2->_timeZone;
    v2->_timeZone = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
    ttrTimeFormatter = v2->_ttrTimeFormatter;
    v2->_ttrTimeFormatter = v6;

    v8 = [MEMORY[0x277CBEBB0] localTimeZone];
    [(NSISO8601DateFormatter *)v2->_ttrTimeFormatter setTimeZone:v8];

    [(NSISO8601DateFormatter *)v2->_ttrTimeFormatter setFormatOptions:4083];
  }

  return v2;
}

@end