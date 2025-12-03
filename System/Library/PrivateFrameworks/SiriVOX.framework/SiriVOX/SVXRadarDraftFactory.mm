@interface SVXRadarDraftFactory
- (SVXRadarDraftFactory)init;
- (id)createWithRequiredContent:(id)content extraContent:(id)extraContent;
@end

@implementation SVXRadarDraftFactory

- (id)createWithRequiredContent:(id)content extraContent:(id)extraContent
{
  contentCopy = content;
  extraContentCopy = extraContent;
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
  title = [contentCopy title];
  [v10 setTitle:title];

  v12 = MEMORY[0x277CCACA8];
  radarDescription = [contentCopy radarDescription];
  ttrTimeFormatter = self->_ttrTimeFormatter;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = [(NSISO8601DateFormatter *)ttrTimeFormatter stringFromDate:v15];
  v17 = [v12 stringWithFormat:@"Please add sysdiagnose for relevant iPhones and AppleTVs to the radar\n\n%@ - Timestamp (when radar draft was created on HomePod): %@ (%@ time)", radarDescription, v16, self->_timeZone];
  [v10 setProblemDescription:v17];

  [v10 setIsUserInitiated:0];
  componentName = [contentCopy componentName];
  if (componentName)
  {
    componentName2 = componentName;
    componentVersion = [contentCopy componentVersion];
    if (componentVersion)
    {
      v21 = componentVersion;
      componentID = [contentCopy componentID];

      if (!componentID)
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
      componentName2 = [contentCopy componentName];
      componentVersion2 = [contentCopy componentVersion];
      componentID2 = [contentCopy componentID];
      v28 = [v25 initWithName:componentName2 version:componentVersion2 identifier:{objc_msgSend(componentID2, "integerValue")}];
      [v10 setComponent:v28];
    }
  }

LABEL_10:
  if (extraContentCopy)
  {
    deviceIDs = [extraContentCopy deviceIDs];

    if (deviceIDs)
    {
      deviceIDs2 = [extraContentCopy deviceIDs];
      [v10 setDeviceIDs:deviceIDs2];
    }

    extensionIDs = [extraContentCopy extensionIDs];

    if (extensionIDs)
    {
      extensionIDs2 = [extraContentCopy extensionIDs];
      [v10 setDiagnosticExtensionIDs:extensionIDs2];
    }

    attachmentURLs = [extraContentCopy attachmentURLs];

    if (attachmentURLs)
    {
      attachmentURLs2 = [extraContentCopy attachmentURLs];
      [v10 setAttachments:attachmentURLs2];
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
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    name = [localTimeZone name];
    timeZone = v2->_timeZone;
    v2->_timeZone = name;

    v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
    ttrTimeFormatter = v2->_ttrTimeFormatter;
    v2->_ttrTimeFormatter = v6;

    localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
    [(NSISO8601DateFormatter *)v2->_ttrTimeFormatter setTimeZone:localTimeZone2];

    [(NSISO8601DateFormatter *)v2->_ttrTimeFormatter setFormatOptions:4083];
  }

  return v2;
}

@end