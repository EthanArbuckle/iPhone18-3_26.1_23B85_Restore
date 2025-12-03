@interface _SFPBCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAddToPhotosLibraryCommand)addToPhotosLibraryCommand;
- (_SFPBBeginMapsRoutingCommand)beginMapsRoutingCommand;
- (_SFPBCallCommand)callCommand;
- (_SFPBClearProactiveCategoryCommand)clearProactiveCategoryCommand;
- (_SFPBCommand)initWithDictionary:(id)dictionary;
- (_SFPBCommand)initWithFacade:(id)facade;
- (_SFPBCommand)initWithJSON:(id)n;
- (_SFPBCopyCommand)copyCommand;
- (_SFPBCreateCalendarEventCommand)createCalendarEventCommand;
- (_SFPBCreateContactCommand)createContactCommand;
- (_SFPBCreateReminderCommand)createReminderCommand;
- (_SFPBEmailCommand)emailCommand;
- (_SFPBExecuteMenuItemCommand)executeMenuItemCommand;
- (_SFPBExecuteToolCommand)executeToolCommand;
- (_SFPBExpandInlineCommand)expandInlineCommand;
- (_SFPBFillToolAppEntityParameterCommand)fillToolAppEntityParameterCommand;
- (_SFPBFillToolAppParameterCommand)fillToolAppParameterCommand;
- (_SFPBFillToolFileParameterCommand)fillToolFileParameterCommand;
- (_SFPBFillToolParameterCommand)fillToolParameterCommand;
- (_SFPBFillToolPersonParameterCommand)fillToolPersonParameterCommand;
- (_SFPBFlightCheckinCommand)flightCheckinCommand;
- (_SFPBIndexedUserActivityCommand)indexedUserActivityCommand;
- (_SFPBInvokeSiriCommand)invokeSiriCommand;
- (_SFPBLaunchAppCommand)launchAppCommand;
- (_SFPBManageReservationCommand)manageReservationCommand;
- (_SFPBOpenAppClipCommand)openAppClipCommand;
- (_SFPBOpenCalculationCommand)openCalculationCommand;
- (_SFPBOpenCoreSpotlightItemCommand)openCoreSpotlightItemCommand;
- (_SFPBOpenFileProviderItemCommand)openFileProviderItemCommand;
- (_SFPBOpenMediaCommand)openMediaCommand;
- (_SFPBOpenPunchoutCommand)openPunchoutCommand;
- (_SFPBOpenWebClipCommand)openWebClipCommand;
- (_SFPBPerformContactActionCommand)performContactActionCommand;
- (_SFPBPerformContactQueryCommand)performContactQueryCommand;
- (_SFPBPerformEntityQueryCommand)performEntityQueryCommand;
- (_SFPBPerformIntentCommand)performIntentCommand;
- (_SFPBPerformPersonEntityQueryCommand)performPersonEntityQueryCommand;
- (_SFPBPlayMediaCommand)playMediaCommand;
- (_SFPBPlayVideoCommand)playVideoCommand;
- (_SFPBRejectPeopleInPhotoCommand)rejectPeopleInPhotoCommand;
- (_SFPBRequestAppClipInstallCommand)requestAppClipInstallCommand;
- (_SFPBRequestProductPageCommand)requestProductPageCommand;
- (_SFPBRequestUserReportCommand)requestUserReportCommand;
- (_SFPBRunVoiceShortcutCommand)runVoiceShortcutCommand;
- (_SFPBSearchInAppCommand)searchInAppCommand;
- (_SFPBSearchWebCommand)searchWebCommand;
- (_SFPBShareCommand)shareCommand;
- (_SFPBShowAppStoreSheetCommand)showAppStoreSheetCommand;
- (_SFPBShowContactCardCommand)showContactCardCommand;
- (_SFPBShowPhotosOneUpViewCommand)showPhotosOneUpViewCommand;
- (_SFPBShowPurchaseRequestSheetCommand)showPurchaseRequestSheetCommand;
- (_SFPBShowSFCardCommand)showSFCardCommand;
- (_SFPBShowScreenTimeRequestSheetCommand)showScreenTimeRequestSheetCommand;
- (_SFPBShowWrapperResponseViewCommand)showWrapperResponseViewCommand;
- (_SFPBSubscribeForUpdatesCommand)subscribeForUpdatesCommand;
- (_SFPBToggleAudioCommand)toggleAudioCommand;
- (_SFPBToggleWatchListStatusCommand)toggleWatchListStatusCommand;
- (_SFPBUpdateSearchQueryCommand)updateSearchQueryCommand;
- (_SFPBUpdateSportsFollowingStatusCommand)updateSportsFollowingStatusCommand;
- (_SFPBViewEmailCommand)viewEmailCommand;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAddToPhotosLibraryCommand:(id)command;
- (void)setBackendData:(id)data;
- (void)setBeginMapsRoutingCommand:(id)command;
- (void)setCallCommand:(id)command;
- (void)setClearProactiveCategoryCommand:(id)command;
- (void)setCommandDetail:(id)detail;
- (void)setCopyCommand:(id)command;
- (void)setCreateCalendarEventCommand:(id)command;
- (void)setCreateContactCommand:(id)command;
- (void)setCreateReminderCommand:(id)command;
- (void)setEmailCommand:(id)command;
- (void)setExecuteMenuItemCommand:(id)command;
- (void)setExecuteToolCommand:(id)command;
- (void)setExpandInlineCommand:(id)command;
- (void)setFillToolAppEntityParameterCommand:(id)command;
- (void)setFillToolAppParameterCommand:(id)command;
- (void)setFillToolFileParameterCommand:(id)command;
- (void)setFillToolParameterCommand:(id)command;
- (void)setFillToolPersonParameterCommand:(id)command;
- (void)setFlightCheckinCommand:(id)command;
- (void)setIndexedUserActivityCommand:(id)command;
- (void)setInvokeSiriCommand:(id)command;
- (void)setLaunchAppCommand:(id)command;
- (void)setManageReservationCommand:(id)command;
- (void)setOpenAppClipCommand:(id)command;
- (void)setOpenCalculationCommand:(id)command;
- (void)setOpenCoreSpotlightItemCommand:(id)command;
- (void)setOpenFileProviderItemCommand:(id)command;
- (void)setOpenMediaCommand:(id)command;
- (void)setOpenPunchoutCommand:(id)command;
- (void)setOpenWebClipCommand:(id)command;
- (void)setPerformContactActionCommand:(id)command;
- (void)setPerformContactQueryCommand:(id)command;
- (void)setPerformEntityQueryCommand:(id)command;
- (void)setPerformIntentCommand:(id)command;
- (void)setPerformPersonEntityQueryCommand:(id)command;
- (void)setPlayMediaCommand:(id)command;
- (void)setPlayVideoCommand:(id)command;
- (void)setRejectPeopleInPhotoCommand:(id)command;
- (void)setRequestAppClipInstallCommand:(id)command;
- (void)setRequestProductPageCommand:(id)command;
- (void)setRequestUserReportCommand:(id)command;
- (void)setRunVoiceShortcutCommand:(id)command;
- (void)setSearchInAppCommand:(id)command;
- (void)setSearchWebCommand:(id)command;
- (void)setShareCommand:(id)command;
- (void)setShowAppStoreSheetCommand:(id)command;
- (void)setShowContactCardCommand:(id)command;
- (void)setShowPhotosOneUpViewCommand:(id)command;
- (void)setShowPurchaseRequestSheetCommand:(id)command;
- (void)setShowSFCardCommand:(id)command;
- (void)setShowScreenTimeRequestSheetCommand:(id)command;
- (void)setShowWrapperResponseViewCommand:(id)command;
- (void)setSubscribeForUpdatesCommand:(id)command;
- (void)setToggleAudioCommand:(id)command;
- (void)setToggleWatchListStatusCommand:(id)command;
- (void)setUpdateSearchQueryCommand:(id)command;
- (void)setUpdateSportsFollowingStatusCommand:(id)command;
- (void)setViewEmailCommand:(id)command;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCommand

- (_SFPBCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCommand *)self init];

  if (v5)
  {
    commandDetail = [facadeCopy commandDetail];

    if (commandDetail)
    {
      commandDetail2 = [facadeCopy commandDetail];
      [(_SFPBCommand *)v5 setCommandDetail:commandDetail2];
    }

    normalizedTopic = [facadeCopy normalizedTopic];

    if (normalizedTopic)
    {
      v9 = [_SFPBTopic alloc];
      normalizedTopic2 = [facadeCopy normalizedTopic];
      v11 = [(_SFPBTopic *)v9 initWithSFTopic:normalizedTopic2];
      [(_SFPBCommand *)v5 setNormalizedTopic:v11];
    }

    backendData = [facadeCopy backendData];

    if (backendData)
    {
      backendData2 = [facadeCopy backendData];
      [(_SFPBCommand *)v5 setBackendData:backendData2];
    }

    commandReference = [facadeCopy commandReference];

    if (commandReference)
    {
      v15 = [_SFPBCommandReference alloc];
      commandReference2 = [facadeCopy commandReference];
      v17 = [(_SFPBCommandReference *)v15 initWithFacade:commandReference2];
      [(_SFPBCommand *)v5 setCommandReference:v17];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBShowContactCardCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setShowContactCardCommand:v18];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBShowSFCardCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setShowSFCardCommand:v19];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBShowAppStoreSheetCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setShowAppStoreSheetCommand:v20];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBOpenPunchoutCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setOpenPunchoutCommand:v21];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBOpenFileProviderItemCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setOpenFileProviderItemCommand:v22];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBOpenAppClipCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setOpenAppClipCommand:v23];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[_SFPBOpenWebClipCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setOpenWebClipCommand:v24];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRequestAppClipInstallCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setRequestAppClipInstallCommand:v25];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBRequestUserReportCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setRequestUserReportCommand:v26];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBLaunchAppCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setLaunchAppCommand:v27];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBRunVoiceShortcutCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setRunVoiceShortcutCommand:v28];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBIndexedUserActivityCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setIndexedUserActivityCommand:v29];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBOpenCoreSpotlightItemCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setOpenCoreSpotlightItemCommand:v30];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBPerformIntentCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setPerformIntentCommand:v31];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBSearchInAppCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setSearchInAppCommand:v32];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBUpdateSearchQueryCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setUpdateSearchQueryCommand:v33];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBSearchWebCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setSearchWebCommand:v34];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBInvokeSiriCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setInvokeSiriCommand:v35];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBPerformContactQueryCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setPerformContactQueryCommand:v36];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBOpenCalculationCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setOpenCalculationCommand:v37];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBPlayVideoCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setPlayVideoCommand:v38];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBCallCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setCallCommand:v39];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[_SFPBEmailCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setEmailCommand:v40];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBBeginMapsRoutingCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setBeginMapsRoutingCommand:v41];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[_SFPBToggleAudioCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setToggleAudioCommand:v42];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBPerformPersonEntityQueryCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setPerformPersonEntityQueryCommand:v43];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [[_SFPBShowPurchaseRequestSheetCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setShowPurchaseRequestSheetCommand:v44];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBShowScreenTimeRequestSheetCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setShowScreenTimeRequestSheetCommand:v45];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [[_SFPBPerformEntityQueryCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setPerformEntityQueryCommand:v46];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBShareCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setShareCommand:v47];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [[_SFPBCopyCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setCopyCommand:v48];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBToggleWatchListStatusCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setToggleWatchListStatusCommand:v49];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[_SFPBShowPhotosOneUpViewCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setShowPhotosOneUpViewCommand:v50];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBPlayMediaCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setPlayMediaCommand:v51];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = [[_SFPBOpenMediaCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setOpenMediaCommand:v52];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBAddToPhotosLibraryCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setAddToPhotosLibraryCommand:v53];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [[_SFPBPerformContactActionCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setPerformContactActionCommand:v54];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[_SFPBExpandInlineCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setExpandInlineCommand:v55];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [[_SFPBSubscribeForUpdatesCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setSubscribeForUpdatesCommand:v56];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [[_SFPBViewEmailCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setViewEmailCommand:v57];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [[_SFPBRejectPeopleInPhotoCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setRejectPeopleInPhotoCommand:v58];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [[_SFPBShowWrapperResponseViewCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setShowWrapperResponseViewCommand:v59];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = [[_SFPBClearProactiveCategoryCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setClearProactiveCategoryCommand:v60];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [[_SFPBCreateContactCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setCreateContactCommand:v61];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = [[_SFPBCreateCalendarEventCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setCreateCalendarEventCommand:v62];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [[_SFPBCreateReminderCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setCreateReminderCommand:v63];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = [[_SFPBManageReservationCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setManageReservationCommand:v64];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [[_SFPBUpdateSportsFollowingStatusCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setUpdateSportsFollowingStatusCommand:v65];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = [[_SFPBRequestProductPageCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setRequestProductPageCommand:v66];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = [[_SFPBFlightCheckinCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setFlightCheckinCommand:v67];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = [[_SFPBExecuteToolCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setExecuteToolCommand:v68];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBExecuteMenuItemCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setExecuteMenuItemCommand:v69];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = [[_SFPBFillToolParameterCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setFillToolParameterCommand:v70];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = [[_SFPBFillToolAppParameterCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setFillToolAppParameterCommand:v71];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v72 = [[_SFPBFillToolFileParameterCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setFillToolFileParameterCommand:v72];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = [[_SFPBFillToolAppEntityParameterCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setFillToolAppEntityParameterCommand:v73];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = [[_SFPBFillToolPersonParameterCommand alloc] initWithFacade:facadeCopy];
      [(_SFPBCommand *)v5 setFillToolPersonParameterCommand:v74];
    }

    v75 = v5;
  }

  return v5;
}

- (_SFPBCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v184.receiver = self;
  v184.super_class = _SFPBCommand;
  v5 = [(_SFPBCommand *)&v184 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"showContactCardCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBShowContactCardCommand alloc] initWithDictionary:v6];
      [(_SFPBCommand *)v5 setShowContactCardCommand:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"showSFCardCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBShowSFCardCommand alloc] initWithDictionary:v8];
      [(_SFPBCommand *)v5 setShowSFCardCommand:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"showAppStoreSheetCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBShowAppStoreSheetCommand alloc] initWithDictionary:v10];
      [(_SFPBCommand *)v5 setShowAppStoreSheetCommand:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"openPunchoutCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBOpenPunchoutCommand alloc] initWithDictionary:v12];
      [(_SFPBCommand *)v5 setOpenPunchoutCommand:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"openFileProviderItemCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBOpenFileProviderItemCommand alloc] initWithDictionary:v14];
      [(_SFPBCommand *)v5 setOpenFileProviderItemCommand:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"openAppClipCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBOpenAppClipCommand alloc] initWithDictionary:v16];
      [(_SFPBCommand *)v5 setOpenAppClipCommand:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"openWebClipCommand"];
    objc_opt_class();
    v183 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBOpenWebClipCommand alloc] initWithDictionary:v18];
      [(_SFPBCommand *)v5 setOpenWebClipCommand:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"requestAppClipInstallCommand"];
    objc_opt_class();
    v182 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRequestAppClipInstallCommand alloc] initWithDictionary:v20];
      [(_SFPBCommand *)v5 setRequestAppClipInstallCommand:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"requestUserReportCommand"];
    objc_opt_class();
    v181 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBRequestUserReportCommand alloc] initWithDictionary:v22];
      [(_SFPBCommand *)v5 setRequestUserReportCommand:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"launchAppCommand"];
    objc_opt_class();
    v180 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBLaunchAppCommand alloc] initWithDictionary:v24];
      [(_SFPBCommand *)v5 setLaunchAppCommand:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"runVoiceShortcutCommand"];
    objc_opt_class();
    v179 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRunVoiceShortcutCommand alloc] initWithDictionary:v26];
      [(_SFPBCommand *)v5 setRunVoiceShortcutCommand:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"indexedUserActivityCommand"];
    objc_opt_class();
    v178 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBIndexedUserActivityCommand alloc] initWithDictionary:v28];
      [(_SFPBCommand *)v5 setIndexedUserActivityCommand:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"openCoreSpotlightItemCommand"];
    objc_opt_class();
    v177 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBOpenCoreSpotlightItemCommand alloc] initWithDictionary:v30];
      [(_SFPBCommand *)v5 setOpenCoreSpotlightItemCommand:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"performIntentCommand"];
    objc_opt_class();
    v176 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBPerformIntentCommand alloc] initWithDictionary:v32];
      [(_SFPBCommand *)v5 setPerformIntentCommand:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"searchInAppCommand"];
    objc_opt_class();
    v175 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBSearchInAppCommand alloc] initWithDictionary:v34];
      [(_SFPBCommand *)v5 setSearchInAppCommand:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"updateSearchQueryCommand"];
    objc_opt_class();
    v174 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBUpdateSearchQueryCommand alloc] initWithDictionary:v36];
      [(_SFPBCommand *)v5 setUpdateSearchQueryCommand:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"searchWebCommand"];
    objc_opt_class();
    v173 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBSearchWebCommand alloc] initWithDictionary:v38];
      [(_SFPBCommand *)v5 setSearchWebCommand:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"invokeSiriCommand"];
    objc_opt_class();
    v172 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBInvokeSiriCommand alloc] initWithDictionary:v40];
      [(_SFPBCommand *)v5 setInvokeSiriCommand:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"performContactQueryCommand"];
    objc_opt_class();
    v171 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBPerformContactQueryCommand alloc] initWithDictionary:v42];
      [(_SFPBCommand *)v5 setPerformContactQueryCommand:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"openCalculationCommand"];
    objc_opt_class();
    v170 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBOpenCalculationCommand alloc] initWithDictionary:v44];
      [(_SFPBCommand *)v5 setOpenCalculationCommand:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"playVideoCommand"];
    objc_opt_class();
    v169 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBPlayVideoCommand alloc] initWithDictionary:v46];
      [(_SFPBCommand *)v5 setPlayVideoCommand:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"callCommand"];
    objc_opt_class();
    v168 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBCallCommand alloc] initWithDictionary:v48];
      [(_SFPBCommand *)v5 setCallCommand:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"emailCommand"];
    objc_opt_class();
    v167 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBEmailCommand alloc] initWithDictionary:v50];
      [(_SFPBCommand *)v5 setEmailCommand:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"beginMapsRoutingCommand"];
    objc_opt_class();
    v166 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBBeginMapsRoutingCommand alloc] initWithDictionary:v52];
      [(_SFPBCommand *)v5 setBeginMapsRoutingCommand:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"toggleAudioCommand"];
    objc_opt_class();
    v165 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[_SFPBToggleAudioCommand alloc] initWithDictionary:v54];
      [(_SFPBCommand *)v5 setToggleAudioCommand:v55];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"performPersonEntityQueryCommand"];
    objc_opt_class();
    v164 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[_SFPBPerformPersonEntityQueryCommand alloc] initWithDictionary:v56];
      [(_SFPBCommand *)v5 setPerformPersonEntityQueryCommand:v57];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"showPurchaseRequestSheetCommand"];
    objc_opt_class();
    v163 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[_SFPBShowPurchaseRequestSheetCommand alloc] initWithDictionary:v58];
      [(_SFPBCommand *)v5 setShowPurchaseRequestSheetCommand:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"showScreenTimeRequestSheetCommand"];
    objc_opt_class();
    v162 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[_SFPBShowScreenTimeRequestSheetCommand alloc] initWithDictionary:v60];
      [(_SFPBCommand *)v5 setShowScreenTimeRequestSheetCommand:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"performEntityQueryCommand"];
    objc_opt_class();
    v161 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[_SFPBPerformEntityQueryCommand alloc] initWithDictionary:v62];
      [(_SFPBCommand *)v5 setPerformEntityQueryCommand:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"shareCommand"];
    objc_opt_class();
    v160 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[_SFPBShareCommand alloc] initWithDictionary:v64];
      [(_SFPBCommand *)v5 setShareCommand:v65];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"copyCommand"];
    objc_opt_class();
    v159 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[_SFPBCopyCommand alloc] initWithDictionary:v66];
      [(_SFPBCommand *)v5 setCopyCommand:v67];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"toggleWatchListStatusCommand"];
    objc_opt_class();
    v158 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBToggleWatchListStatusCommand alloc] initWithDictionary:v68];
      [(_SFPBCommand *)v5 setToggleWatchListStatusCommand:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"showPhotosOneUpViewCommand"];
    objc_opt_class();
    v157 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[_SFPBShowPhotosOneUpViewCommand alloc] initWithDictionary:v70];
      [(_SFPBCommand *)v5 setShowPhotosOneUpViewCommand:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"playMediaCommand"];
    objc_opt_class();
    v156 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[_SFPBPlayMediaCommand alloc] initWithDictionary:v72];
      [(_SFPBCommand *)v5 setPlayMediaCommand:v73];
    }

    v74 = [dictionaryCopy objectForKeyedSubscript:@"openMediaCommand"];
    objc_opt_class();
    v155 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[_SFPBOpenMediaCommand alloc] initWithDictionary:v74];
      [(_SFPBCommand *)v5 setOpenMediaCommand:v75];
    }

    v76 = [dictionaryCopy objectForKeyedSubscript:@"addToPhotosLibraryCommand"];
    objc_opt_class();
    v154 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[_SFPBAddToPhotosLibraryCommand alloc] initWithDictionary:v76];
      [(_SFPBCommand *)v5 setAddToPhotosLibraryCommand:v77];
    }

    v78 = [dictionaryCopy objectForKeyedSubscript:@"performContactActionCommand"];
    objc_opt_class();
    v153 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[_SFPBPerformContactActionCommand alloc] initWithDictionary:v78];
      [(_SFPBCommand *)v5 setPerformContactActionCommand:v79];
    }

    v80 = [dictionaryCopy objectForKeyedSubscript:@"expandInlineCommand"];
    objc_opt_class();
    v152 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[_SFPBExpandInlineCommand alloc] initWithDictionary:v80];
      [(_SFPBCommand *)v5 setExpandInlineCommand:v81];
    }

    v82 = [dictionaryCopy objectForKeyedSubscript:@"subscribeForUpdatesCommand"];
    objc_opt_class();
    v151 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [[_SFPBSubscribeForUpdatesCommand alloc] initWithDictionary:v82];
      [(_SFPBCommand *)v5 setSubscribeForUpdatesCommand:v83];
    }

    v84 = [dictionaryCopy objectForKeyedSubscript:@"viewEmailCommand"];
    objc_opt_class();
    v150 = v84;
    if (objc_opt_isKindOfClass())
    {
      v85 = [[_SFPBViewEmailCommand alloc] initWithDictionary:v84];
      [(_SFPBCommand *)v5 setViewEmailCommand:v85];
    }

    v86 = [dictionaryCopy objectForKeyedSubscript:@"rejectPeopleInPhotoCommand"];
    objc_opt_class();
    v149 = v86;
    if (objc_opt_isKindOfClass())
    {
      v87 = [[_SFPBRejectPeopleInPhotoCommand alloc] initWithDictionary:v86];
      [(_SFPBCommand *)v5 setRejectPeopleInPhotoCommand:v87];
    }

    v88 = [dictionaryCopy objectForKeyedSubscript:@"showWrapperResponseViewCommand"];
    objc_opt_class();
    v148 = v88;
    if (objc_opt_isKindOfClass())
    {
      v89 = [[_SFPBShowWrapperResponseViewCommand alloc] initWithDictionary:v88];
      [(_SFPBCommand *)v5 setShowWrapperResponseViewCommand:v89];
    }

    v90 = [dictionaryCopy objectForKeyedSubscript:@"clearProactiveCategoryCommand"];
    objc_opt_class();
    v147 = v90;
    if (objc_opt_isKindOfClass())
    {
      v91 = [[_SFPBClearProactiveCategoryCommand alloc] initWithDictionary:v90];
      [(_SFPBCommand *)v5 setClearProactiveCategoryCommand:v91];
    }

    v92 = [dictionaryCopy objectForKeyedSubscript:@"createContactCommand"];
    objc_opt_class();
    v146 = v92;
    if (objc_opt_isKindOfClass())
    {
      v93 = [[_SFPBCreateContactCommand alloc] initWithDictionary:v92];
      [(_SFPBCommand *)v5 setCreateContactCommand:v93];
    }

    v94 = [dictionaryCopy objectForKeyedSubscript:@"createCalendarEventCommand"];
    objc_opt_class();
    v145 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = [[_SFPBCreateCalendarEventCommand alloc] initWithDictionary:v94];
      [(_SFPBCommand *)v5 setCreateCalendarEventCommand:v95];
    }

    v96 = [dictionaryCopy objectForKeyedSubscript:@"createReminderCommand"];
    objc_opt_class();
    v144 = v96;
    if (objc_opt_isKindOfClass())
    {
      v97 = [[_SFPBCreateReminderCommand alloc] initWithDictionary:v96];
      [(_SFPBCommand *)v5 setCreateReminderCommand:v97];
    }

    v98 = [dictionaryCopy objectForKeyedSubscript:@"manageReservationCommand"];
    objc_opt_class();
    v143 = v98;
    if (objc_opt_isKindOfClass())
    {
      v99 = [[_SFPBManageReservationCommand alloc] initWithDictionary:v98];
      [(_SFPBCommand *)v5 setManageReservationCommand:v99];
    }

    v100 = [dictionaryCopy objectForKeyedSubscript:@"updateSportsFollowingStatusCommand"];
    objc_opt_class();
    v142 = v100;
    if (objc_opt_isKindOfClass())
    {
      v101 = [[_SFPBUpdateSportsFollowingStatusCommand alloc] initWithDictionary:v100];
      [(_SFPBCommand *)v5 setUpdateSportsFollowingStatusCommand:v101];
    }

    v102 = [dictionaryCopy objectForKeyedSubscript:@"requestProductPageCommand"];
    objc_opt_class();
    v141 = v102;
    if (objc_opt_isKindOfClass())
    {
      v103 = [[_SFPBRequestProductPageCommand alloc] initWithDictionary:v102];
      [(_SFPBCommand *)v5 setRequestProductPageCommand:v103];
    }

    v104 = [dictionaryCopy objectForKeyedSubscript:@"flightCheckinCommand"];
    objc_opt_class();
    v140 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[_SFPBFlightCheckinCommand alloc] initWithDictionary:v104];
      [(_SFPBCommand *)v5 setFlightCheckinCommand:v105];
    }

    v106 = [dictionaryCopy objectForKeyedSubscript:@"executeToolCommand"];
    objc_opt_class();
    v139 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [[_SFPBExecuteToolCommand alloc] initWithDictionary:v106];
      [(_SFPBCommand *)v5 setExecuteToolCommand:v107];
    }

    v108 = [dictionaryCopy objectForKeyedSubscript:@"executeMenuItemCommand"];
    objc_opt_class();
    v138 = v108;
    if (objc_opt_isKindOfClass())
    {
      v109 = [[_SFPBExecuteMenuItemCommand alloc] initWithDictionary:v108];
      [(_SFPBCommand *)v5 setExecuteMenuItemCommand:v109];
    }

    v110 = [dictionaryCopy objectForKeyedSubscript:@"fillToolParameterCommand"];
    objc_opt_class();
    v137 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[_SFPBFillToolParameterCommand alloc] initWithDictionary:v110];
      [(_SFPBCommand *)v5 setFillToolParameterCommand:v111];
    }

    v132 = v14;
    v112 = [dictionaryCopy objectForKeyedSubscript:@"fillToolAppParameterCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v113 = [[_SFPBFillToolAppParameterCommand alloc] initWithDictionary:v112];
      [(_SFPBCommand *)v5 setFillToolAppParameterCommand:v113];
    }

    v130 = v112;
    v131 = v16;
    v114 = [dictionaryCopy objectForKeyedSubscript:@"fillToolFileParameterCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v115 = [[_SFPBFillToolFileParameterCommand alloc] initWithDictionary:v114];
      [(_SFPBCommand *)v5 setFillToolFileParameterCommand:v115];
    }

    v136 = v6;
    v116 = [dictionaryCopy objectForKeyedSubscript:@"fillToolAppEntityParameterCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v117 = [[_SFPBFillToolAppEntityParameterCommand alloc] initWithDictionary:v116];
      [(_SFPBCommand *)v5 setFillToolAppEntityParameterCommand:v117];
    }

    v133 = v12;
    v135 = v8;
    v118 = [dictionaryCopy objectForKeyedSubscript:@"fillToolPersonParameterCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v119 = [[_SFPBFillToolPersonParameterCommand alloc] initWithDictionary:v118];
      [(_SFPBCommand *)v5 setFillToolPersonParameterCommand:v119];
    }

    v134 = v10;
    v120 = [dictionaryCopy objectForKeyedSubscript:@"commandDetail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v121 = [v120 copy];
      [(_SFPBCommand *)v5 setCommandDetail:v121];
    }

    v122 = [dictionaryCopy objectForKeyedSubscript:@"normalizedTopic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v123 = [[_SFPBTopic alloc] initWithDictionary:v122];
      [(_SFPBCommand *)v5 setNormalizedTopic:v123];
    }

    v124 = [dictionaryCopy objectForKeyedSubscript:@"backendData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v125 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v124 options:0];
      [(_SFPBCommand *)v5 setBackendData:v125];
    }

    v126 = [dictionaryCopy objectForKeyedSubscript:@"commandReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v127 = [[_SFPBCommandReference alloc] initWithDictionary:v126];
      [(_SFPBCommand *)v5 setCommandReference:v127];
    }

    v128 = v5;
  }

  return v5;
}

- (_SFPBCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCommand *)self dictionaryRepresentation];
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
  if (self->_addToPhotosLibraryCommand)
  {
    addToPhotosLibraryCommand = [(_SFPBCommand *)self addToPhotosLibraryCommand];
    dictionaryRepresentation = [addToPhotosLibraryCommand dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"addToPhotosLibraryCommand"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"addToPhotosLibraryCommand"];
    }
  }

  if (self->_backendData)
  {
    backendData = [(_SFPBCommand *)self backendData];
    v8 = [backendData base64EncodedStringWithOptions:0];
    if (v8)
    {
      [dictionary setObject:v8 forKeyedSubscript:@"backendData"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backendData"];
    }
  }

  if (self->_beginMapsRoutingCommand)
  {
    beginMapsRoutingCommand = [(_SFPBCommand *)self beginMapsRoutingCommand];
    dictionaryRepresentation2 = [beginMapsRoutingCommand dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"beginMapsRoutingCommand"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"beginMapsRoutingCommand"];
    }
  }

  if (self->_callCommand)
  {
    callCommand = [(_SFPBCommand *)self callCommand];
    dictionaryRepresentation3 = [callCommand dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"callCommand"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"callCommand"];
    }
  }

  if (self->_clearProactiveCategoryCommand)
  {
    clearProactiveCategoryCommand = [(_SFPBCommand *)self clearProactiveCategoryCommand];
    dictionaryRepresentation4 = [clearProactiveCategoryCommand dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"clearProactiveCategoryCommand"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"clearProactiveCategoryCommand"];
    }
  }

  if (self->_commandDetail)
  {
    commandDetail = [(_SFPBCommand *)self commandDetail];
    v20 = [commandDetail copy];
    [dictionary setObject:v20 forKeyedSubscript:@"commandDetail"];
  }

  if (self->_commandReference)
  {
    commandReference = [(_SFPBCommand *)self commandReference];
    dictionaryRepresentation5 = [commandReference dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"commandReference"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"commandReference"];
    }
  }

  if (self->_copyCommand)
  {
    copyCommand = [(_SFPBCommand *)self copyCommand];
    dictionaryRepresentation6 = [(_SFPBCopyCommand *)copyCommand dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"copyCommand"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"copyCommand"];
    }
  }

  if (self->_createCalendarEventCommand)
  {
    createCalendarEventCommand = [(_SFPBCommand *)self createCalendarEventCommand];
    dictionaryRepresentation7 = [createCalendarEventCommand dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"createCalendarEventCommand"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"createCalendarEventCommand"];
    }
  }

  if (self->_createContactCommand)
  {
    createContactCommand = [(_SFPBCommand *)self createContactCommand];
    dictionaryRepresentation8 = [createContactCommand dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"createContactCommand"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"createContactCommand"];
    }
  }

  if (self->_createReminderCommand)
  {
    createReminderCommand = [(_SFPBCommand *)self createReminderCommand];
    dictionaryRepresentation9 = [createReminderCommand dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"createReminderCommand"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"createReminderCommand"];
    }
  }

  if (self->_emailCommand)
  {
    emailCommand = [(_SFPBCommand *)self emailCommand];
    dictionaryRepresentation10 = [emailCommand dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"emailCommand"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"emailCommand"];
    }
  }

  if (self->_executeMenuItemCommand)
  {
    executeMenuItemCommand = [(_SFPBCommand *)self executeMenuItemCommand];
    dictionaryRepresentation11 = [executeMenuItemCommand dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"executeMenuItemCommand"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"executeMenuItemCommand"];
    }
  }

  if (self->_executeToolCommand)
  {
    executeToolCommand = [(_SFPBCommand *)self executeToolCommand];
    dictionaryRepresentation12 = [executeToolCommand dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"executeToolCommand"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"executeToolCommand"];
    }
  }

  if (self->_expandInlineCommand)
  {
    expandInlineCommand = [(_SFPBCommand *)self expandInlineCommand];
    dictionaryRepresentation13 = [expandInlineCommand dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"expandInlineCommand"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"expandInlineCommand"];
    }
  }

  if (self->_fillToolAppEntityParameterCommand)
  {
    fillToolAppEntityParameterCommand = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
    dictionaryRepresentation14 = [fillToolAppEntityParameterCommand dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"fillToolAppEntityParameterCommand"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"fillToolAppEntityParameterCommand"];
    }
  }

  if (self->_fillToolAppParameterCommand)
  {
    fillToolAppParameterCommand = [(_SFPBCommand *)self fillToolAppParameterCommand];
    dictionaryRepresentation15 = [fillToolAppParameterCommand dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"fillToolAppParameterCommand"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"fillToolAppParameterCommand"];
    }
  }

  if (self->_fillToolFileParameterCommand)
  {
    fillToolFileParameterCommand = [(_SFPBCommand *)self fillToolFileParameterCommand];
    dictionaryRepresentation16 = [fillToolFileParameterCommand dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"fillToolFileParameterCommand"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"fillToolFileParameterCommand"];
    }
  }

  if (self->_fillToolParameterCommand)
  {
    fillToolParameterCommand = [(_SFPBCommand *)self fillToolParameterCommand];
    dictionaryRepresentation17 = [fillToolParameterCommand dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"fillToolParameterCommand"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"fillToolParameterCommand"];
    }
  }

  if (self->_fillToolPersonParameterCommand)
  {
    fillToolPersonParameterCommand = [(_SFPBCommand *)self fillToolPersonParameterCommand];
    dictionaryRepresentation18 = [fillToolPersonParameterCommand dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"fillToolPersonParameterCommand"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"fillToolPersonParameterCommand"];
    }
  }

  if (self->_flightCheckinCommand)
  {
    flightCheckinCommand = [(_SFPBCommand *)self flightCheckinCommand];
    dictionaryRepresentation19 = [flightCheckinCommand dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"flightCheckinCommand"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"flightCheckinCommand"];
    }
  }

  if (self->_indexedUserActivityCommand)
  {
    indexedUserActivityCommand = [(_SFPBCommand *)self indexedUserActivityCommand];
    dictionaryRepresentation20 = [indexedUserActivityCommand dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"indexedUserActivityCommand"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"indexedUserActivityCommand"];
    }
  }

  if (self->_invokeSiriCommand)
  {
    invokeSiriCommand = [(_SFPBCommand *)self invokeSiriCommand];
    dictionaryRepresentation21 = [invokeSiriCommand dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"invokeSiriCommand"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"invokeSiriCommand"];
    }
  }

  if (self->_launchAppCommand)
  {
    launchAppCommand = [(_SFPBCommand *)self launchAppCommand];
    dictionaryRepresentation22 = [launchAppCommand dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"launchAppCommand"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"launchAppCommand"];
    }
  }

  if (self->_manageReservationCommand)
  {
    manageReservationCommand = [(_SFPBCommand *)self manageReservationCommand];
    dictionaryRepresentation23 = [manageReservationCommand dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"manageReservationCommand"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"manageReservationCommand"];
    }
  }

  if (self->_normalizedTopic)
  {
    normalizedTopic = [(_SFPBCommand *)self normalizedTopic];
    dictionaryRepresentation24 = [normalizedTopic dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"normalizedTopic"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"normalizedTopic"];
    }
  }

  if (self->_openAppClipCommand)
  {
    openAppClipCommand = [(_SFPBCommand *)self openAppClipCommand];
    dictionaryRepresentation25 = [openAppClipCommand dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"openAppClipCommand"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"openAppClipCommand"];
    }
  }

  if (self->_openCalculationCommand)
  {
    openCalculationCommand = [(_SFPBCommand *)self openCalculationCommand];
    dictionaryRepresentation26 = [openCalculationCommand dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"openCalculationCommand"];
    }

    else
    {
      null27 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null27 forKeyedSubscript:@"openCalculationCommand"];
    }
  }

  if (self->_openCoreSpotlightItemCommand)
  {
    openCoreSpotlightItemCommand = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
    dictionaryRepresentation27 = [openCoreSpotlightItemCommand dictionaryRepresentation];
    if (dictionaryRepresentation27)
    {
      [dictionary setObject:dictionaryRepresentation27 forKeyedSubscript:@"openCoreSpotlightItemCommand"];
    }

    else
    {
      null28 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null28 forKeyedSubscript:@"openCoreSpotlightItemCommand"];
    }
  }

  if (self->_openFileProviderItemCommand)
  {
    openFileProviderItemCommand = [(_SFPBCommand *)self openFileProviderItemCommand];
    dictionaryRepresentation28 = [openFileProviderItemCommand dictionaryRepresentation];
    if (dictionaryRepresentation28)
    {
      [dictionary setObject:dictionaryRepresentation28 forKeyedSubscript:@"openFileProviderItemCommand"];
    }

    else
    {
      null29 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null29 forKeyedSubscript:@"openFileProviderItemCommand"];
    }
  }

  if (self->_openMediaCommand)
  {
    openMediaCommand = [(_SFPBCommand *)self openMediaCommand];
    dictionaryRepresentation29 = [openMediaCommand dictionaryRepresentation];
    if (dictionaryRepresentation29)
    {
      [dictionary setObject:dictionaryRepresentation29 forKeyedSubscript:@"openMediaCommand"];
    }

    else
    {
      null30 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null30 forKeyedSubscript:@"openMediaCommand"];
    }
  }

  if (self->_openPunchoutCommand)
  {
    openPunchoutCommand = [(_SFPBCommand *)self openPunchoutCommand];
    dictionaryRepresentation30 = [openPunchoutCommand dictionaryRepresentation];
    if (dictionaryRepresentation30)
    {
      [dictionary setObject:dictionaryRepresentation30 forKeyedSubscript:@"openPunchoutCommand"];
    }

    else
    {
      null31 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null31 forKeyedSubscript:@"openPunchoutCommand"];
    }
  }

  if (self->_openWebClipCommand)
  {
    openWebClipCommand = [(_SFPBCommand *)self openWebClipCommand];
    dictionaryRepresentation31 = [openWebClipCommand dictionaryRepresentation];
    if (dictionaryRepresentation31)
    {
      [dictionary setObject:dictionaryRepresentation31 forKeyedSubscript:@"openWebClipCommand"];
    }

    else
    {
      null32 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null32 forKeyedSubscript:@"openWebClipCommand"];
    }
  }

  if (self->_performContactActionCommand)
  {
    performContactActionCommand = [(_SFPBCommand *)self performContactActionCommand];
    dictionaryRepresentation32 = [performContactActionCommand dictionaryRepresentation];
    if (dictionaryRepresentation32)
    {
      [dictionary setObject:dictionaryRepresentation32 forKeyedSubscript:@"performContactActionCommand"];
    }

    else
    {
      null33 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null33 forKeyedSubscript:@"performContactActionCommand"];
    }
  }

  if (self->_performContactQueryCommand)
  {
    performContactQueryCommand = [(_SFPBCommand *)self performContactQueryCommand];
    dictionaryRepresentation33 = [performContactQueryCommand dictionaryRepresentation];
    if (dictionaryRepresentation33)
    {
      [dictionary setObject:dictionaryRepresentation33 forKeyedSubscript:@"performContactQueryCommand"];
    }

    else
    {
      null34 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null34 forKeyedSubscript:@"performContactQueryCommand"];
    }
  }

  if (self->_performEntityQueryCommand)
  {
    performEntityQueryCommand = [(_SFPBCommand *)self performEntityQueryCommand];
    dictionaryRepresentation34 = [performEntityQueryCommand dictionaryRepresentation];
    if (dictionaryRepresentation34)
    {
      [dictionary setObject:dictionaryRepresentation34 forKeyedSubscript:@"performEntityQueryCommand"];
    }

    else
    {
      null35 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null35 forKeyedSubscript:@"performEntityQueryCommand"];
    }
  }

  if (self->_performIntentCommand)
  {
    performIntentCommand = [(_SFPBCommand *)self performIntentCommand];
    dictionaryRepresentation35 = [performIntentCommand dictionaryRepresentation];
    if (dictionaryRepresentation35)
    {
      [dictionary setObject:dictionaryRepresentation35 forKeyedSubscript:@"performIntentCommand"];
    }

    else
    {
      null36 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null36 forKeyedSubscript:@"performIntentCommand"];
    }
  }

  if (self->_performPersonEntityQueryCommand)
  {
    performPersonEntityQueryCommand = [(_SFPBCommand *)self performPersonEntityQueryCommand];
    dictionaryRepresentation36 = [performPersonEntityQueryCommand dictionaryRepresentation];
    if (dictionaryRepresentation36)
    {
      [dictionary setObject:dictionaryRepresentation36 forKeyedSubscript:@"performPersonEntityQueryCommand"];
    }

    else
    {
      null37 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null37 forKeyedSubscript:@"performPersonEntityQueryCommand"];
    }
  }

  if (self->_playMediaCommand)
  {
    playMediaCommand = [(_SFPBCommand *)self playMediaCommand];
    dictionaryRepresentation37 = [playMediaCommand dictionaryRepresentation];
    if (dictionaryRepresentation37)
    {
      [dictionary setObject:dictionaryRepresentation37 forKeyedSubscript:@"playMediaCommand"];
    }

    else
    {
      null38 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null38 forKeyedSubscript:@"playMediaCommand"];
    }
  }

  if (self->_playVideoCommand)
  {
    playVideoCommand = [(_SFPBCommand *)self playVideoCommand];
    dictionaryRepresentation38 = [playVideoCommand dictionaryRepresentation];
    if (dictionaryRepresentation38)
    {
      [dictionary setObject:dictionaryRepresentation38 forKeyedSubscript:@"playVideoCommand"];
    }

    else
    {
      null39 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null39 forKeyedSubscript:@"playVideoCommand"];
    }
  }

  if (self->_rejectPeopleInPhotoCommand)
  {
    rejectPeopleInPhotoCommand = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
    dictionaryRepresentation39 = [rejectPeopleInPhotoCommand dictionaryRepresentation];
    if (dictionaryRepresentation39)
    {
      [dictionary setObject:dictionaryRepresentation39 forKeyedSubscript:@"rejectPeopleInPhotoCommand"];
    }

    else
    {
      null40 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null40 forKeyedSubscript:@"rejectPeopleInPhotoCommand"];
    }
  }

  if (self->_requestAppClipInstallCommand)
  {
    requestAppClipInstallCommand = [(_SFPBCommand *)self requestAppClipInstallCommand];
    dictionaryRepresentation40 = [requestAppClipInstallCommand dictionaryRepresentation];
    if (dictionaryRepresentation40)
    {
      [dictionary setObject:dictionaryRepresentation40 forKeyedSubscript:@"requestAppClipInstallCommand"];
    }

    else
    {
      null41 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null41 forKeyedSubscript:@"requestAppClipInstallCommand"];
    }
  }

  if (self->_requestProductPageCommand)
  {
    requestProductPageCommand = [(_SFPBCommand *)self requestProductPageCommand];
    dictionaryRepresentation41 = [requestProductPageCommand dictionaryRepresentation];
    if (dictionaryRepresentation41)
    {
      [dictionary setObject:dictionaryRepresentation41 forKeyedSubscript:@"requestProductPageCommand"];
    }

    else
    {
      null42 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null42 forKeyedSubscript:@"requestProductPageCommand"];
    }
  }

  if (self->_requestUserReportCommand)
  {
    requestUserReportCommand = [(_SFPBCommand *)self requestUserReportCommand];
    dictionaryRepresentation42 = [requestUserReportCommand dictionaryRepresentation];
    if (dictionaryRepresentation42)
    {
      [dictionary setObject:dictionaryRepresentation42 forKeyedSubscript:@"requestUserReportCommand"];
    }

    else
    {
      null43 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null43 forKeyedSubscript:@"requestUserReportCommand"];
    }
  }

  if (self->_runVoiceShortcutCommand)
  {
    runVoiceShortcutCommand = [(_SFPBCommand *)self runVoiceShortcutCommand];
    dictionaryRepresentation43 = [runVoiceShortcutCommand dictionaryRepresentation];
    if (dictionaryRepresentation43)
    {
      [dictionary setObject:dictionaryRepresentation43 forKeyedSubscript:@"runVoiceShortcutCommand"];
    }

    else
    {
      null44 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null44 forKeyedSubscript:@"runVoiceShortcutCommand"];
    }
  }

  if (self->_searchInAppCommand)
  {
    searchInAppCommand = [(_SFPBCommand *)self searchInAppCommand];
    dictionaryRepresentation44 = [searchInAppCommand dictionaryRepresentation];
    if (dictionaryRepresentation44)
    {
      [dictionary setObject:dictionaryRepresentation44 forKeyedSubscript:@"searchInAppCommand"];
    }

    else
    {
      null45 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null45 forKeyedSubscript:@"searchInAppCommand"];
    }
  }

  if (self->_searchWebCommand)
  {
    searchWebCommand = [(_SFPBCommand *)self searchWebCommand];
    dictionaryRepresentation45 = [searchWebCommand dictionaryRepresentation];
    if (dictionaryRepresentation45)
    {
      [dictionary setObject:dictionaryRepresentation45 forKeyedSubscript:@"searchWebCommand"];
    }

    else
    {
      null46 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null46 forKeyedSubscript:@"searchWebCommand"];
    }
  }

  if (self->_shareCommand)
  {
    shareCommand = [(_SFPBCommand *)self shareCommand];
    dictionaryRepresentation46 = [shareCommand dictionaryRepresentation];
    if (dictionaryRepresentation46)
    {
      [dictionary setObject:dictionaryRepresentation46 forKeyedSubscript:@"shareCommand"];
    }

    else
    {
      null47 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null47 forKeyedSubscript:@"shareCommand"];
    }
  }

  if (self->_showAppStoreSheetCommand)
  {
    showAppStoreSheetCommand = [(_SFPBCommand *)self showAppStoreSheetCommand];
    dictionaryRepresentation47 = [showAppStoreSheetCommand dictionaryRepresentation];
    if (dictionaryRepresentation47)
    {
      [dictionary setObject:dictionaryRepresentation47 forKeyedSubscript:@"showAppStoreSheetCommand"];
    }

    else
    {
      null48 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null48 forKeyedSubscript:@"showAppStoreSheetCommand"];
    }
  }

  if (self->_showContactCardCommand)
  {
    showContactCardCommand = [(_SFPBCommand *)self showContactCardCommand];
    dictionaryRepresentation48 = [showContactCardCommand dictionaryRepresentation];
    if (dictionaryRepresentation48)
    {
      [dictionary setObject:dictionaryRepresentation48 forKeyedSubscript:@"showContactCardCommand"];
    }

    else
    {
      null49 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null49 forKeyedSubscript:@"showContactCardCommand"];
    }
  }

  if (self->_showPhotosOneUpViewCommand)
  {
    showPhotosOneUpViewCommand = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
    dictionaryRepresentation49 = [showPhotosOneUpViewCommand dictionaryRepresentation];
    if (dictionaryRepresentation49)
    {
      [dictionary setObject:dictionaryRepresentation49 forKeyedSubscript:@"showPhotosOneUpViewCommand"];
    }

    else
    {
      null50 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null50 forKeyedSubscript:@"showPhotosOneUpViewCommand"];
    }
  }

  if (self->_showPurchaseRequestSheetCommand)
  {
    showPurchaseRequestSheetCommand = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
    dictionaryRepresentation50 = [showPurchaseRequestSheetCommand dictionaryRepresentation];
    if (dictionaryRepresentation50)
    {
      [dictionary setObject:dictionaryRepresentation50 forKeyedSubscript:@"showPurchaseRequestSheetCommand"];
    }

    else
    {
      null51 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null51 forKeyedSubscript:@"showPurchaseRequestSheetCommand"];
    }
  }

  if (self->_showSFCardCommand)
  {
    showSFCardCommand = [(_SFPBCommand *)self showSFCardCommand];
    dictionaryRepresentation51 = [showSFCardCommand dictionaryRepresentation];
    if (dictionaryRepresentation51)
    {
      [dictionary setObject:dictionaryRepresentation51 forKeyedSubscript:@"showSFCardCommand"];
    }

    else
    {
      null52 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null52 forKeyedSubscript:@"showSFCardCommand"];
    }
  }

  if (self->_showScreenTimeRequestSheetCommand)
  {
    showScreenTimeRequestSheetCommand = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
    dictionaryRepresentation52 = [showScreenTimeRequestSheetCommand dictionaryRepresentation];
    if (dictionaryRepresentation52)
    {
      [dictionary setObject:dictionaryRepresentation52 forKeyedSubscript:@"showScreenTimeRequestSheetCommand"];
    }

    else
    {
      null53 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null53 forKeyedSubscript:@"showScreenTimeRequestSheetCommand"];
    }
  }

  if (self->_showWrapperResponseViewCommand)
  {
    showWrapperResponseViewCommand = [(_SFPBCommand *)self showWrapperResponseViewCommand];
    dictionaryRepresentation53 = [showWrapperResponseViewCommand dictionaryRepresentation];
    if (dictionaryRepresentation53)
    {
      [dictionary setObject:dictionaryRepresentation53 forKeyedSubscript:@"showWrapperResponseViewCommand"];
    }

    else
    {
      null54 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null54 forKeyedSubscript:@"showWrapperResponseViewCommand"];
    }
  }

  if (self->_subscribeForUpdatesCommand)
  {
    subscribeForUpdatesCommand = [(_SFPBCommand *)self subscribeForUpdatesCommand];
    dictionaryRepresentation54 = [subscribeForUpdatesCommand dictionaryRepresentation];
    if (dictionaryRepresentation54)
    {
      [dictionary setObject:dictionaryRepresentation54 forKeyedSubscript:@"subscribeForUpdatesCommand"];
    }

    else
    {
      null55 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null55 forKeyedSubscript:@"subscribeForUpdatesCommand"];
    }
  }

  if (self->_toggleAudioCommand)
  {
    toggleAudioCommand = [(_SFPBCommand *)self toggleAudioCommand];
    dictionaryRepresentation55 = [toggleAudioCommand dictionaryRepresentation];
    if (dictionaryRepresentation55)
    {
      [dictionary setObject:dictionaryRepresentation55 forKeyedSubscript:@"toggleAudioCommand"];
    }

    else
    {
      null56 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null56 forKeyedSubscript:@"toggleAudioCommand"];
    }
  }

  if (self->_toggleWatchListStatusCommand)
  {
    toggleWatchListStatusCommand = [(_SFPBCommand *)self toggleWatchListStatusCommand];
    dictionaryRepresentation56 = [toggleWatchListStatusCommand dictionaryRepresentation];
    if (dictionaryRepresentation56)
    {
      [dictionary setObject:dictionaryRepresentation56 forKeyedSubscript:@"toggleWatchListStatusCommand"];
    }

    else
    {
      null57 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null57 forKeyedSubscript:@"toggleWatchListStatusCommand"];
    }
  }

  if (self->_updateSearchQueryCommand)
  {
    updateSearchQueryCommand = [(_SFPBCommand *)self updateSearchQueryCommand];
    dictionaryRepresentation57 = [updateSearchQueryCommand dictionaryRepresentation];
    if (dictionaryRepresentation57)
    {
      [dictionary setObject:dictionaryRepresentation57 forKeyedSubscript:@"updateSearchQueryCommand"];
    }

    else
    {
      null58 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null58 forKeyedSubscript:@"updateSearchQueryCommand"];
    }
  }

  if (self->_updateSportsFollowingStatusCommand)
  {
    updateSportsFollowingStatusCommand = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
    dictionaryRepresentation58 = [updateSportsFollowingStatusCommand dictionaryRepresentation];
    if (dictionaryRepresentation58)
    {
      [dictionary setObject:dictionaryRepresentation58 forKeyedSubscript:@"updateSportsFollowingStatusCommand"];
    }

    else
    {
      null59 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null59 forKeyedSubscript:@"updateSportsFollowingStatusCommand"];
    }
  }

  if (self->_viewEmailCommand)
  {
    viewEmailCommand = [(_SFPBCommand *)self viewEmailCommand];
    dictionaryRepresentation59 = [viewEmailCommand dictionaryRepresentation];
    if (dictionaryRepresentation59)
    {
      [dictionary setObject:dictionaryRepresentation59 forKeyedSubscript:@"viewEmailCommand"];
    }

    else
    {
      null60 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null60 forKeyedSubscript:@"viewEmailCommand"];
    }
  }

  v186 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBShowContactCardCommand *)self->_showContactCardCommand hash];
  v4 = [(_SFPBShowSFCardCommand *)self->_showSFCardCommand hash]^ v3;
  v5 = [(_SFPBShowAppStoreSheetCommand *)self->_showAppStoreSheetCommand hash];
  v6 = v4 ^ v5 ^ [(_SFPBOpenPunchoutCommand *)self->_openPunchoutCommand hash];
  v7 = [(_SFPBOpenFileProviderItemCommand *)self->_openFileProviderItemCommand hash];
  v8 = v7 ^ [(_SFPBOpenAppClipCommand *)self->_openAppClipCommand hash];
  v9 = v6 ^ v8 ^ [(_SFPBOpenWebClipCommand *)self->_openWebClipCommand hash];
  v10 = [(_SFPBRequestAppClipInstallCommand *)self->_requestAppClipInstallCommand hash];
  v11 = v10 ^ [(_SFPBRequestUserReportCommand *)self->_requestUserReportCommand hash];
  v12 = v11 ^ [(_SFPBLaunchAppCommand *)self->_launchAppCommand hash];
  v13 = v9 ^ v12 ^ [(_SFPBRunVoiceShortcutCommand *)self->_runVoiceShortcutCommand hash];
  v14 = [(_SFPBIndexedUserActivityCommand *)self->_indexedUserActivityCommand hash];
  v15 = v14 ^ [(_SFPBOpenCoreSpotlightItemCommand *)self->_openCoreSpotlightItemCommand hash];
  v16 = v15 ^ [(_SFPBPerformIntentCommand *)self->_performIntentCommand hash];
  v17 = v16 ^ [(_SFPBSearchInAppCommand *)self->_searchInAppCommand hash];
  v18 = v13 ^ v17 ^ [(_SFPBUpdateSearchQueryCommand *)self->_updateSearchQueryCommand hash];
  v19 = [(_SFPBSearchWebCommand *)self->_searchWebCommand hash];
  v20 = v19 ^ [(_SFPBInvokeSiriCommand *)self->_invokeSiriCommand hash];
  v21 = v20 ^ [(_SFPBPerformContactQueryCommand *)self->_performContactQueryCommand hash];
  v22 = v21 ^ [(_SFPBOpenCalculationCommand *)self->_openCalculationCommand hash];
  v23 = v22 ^ [(_SFPBPlayVideoCommand *)self->_playVideoCommand hash];
  v24 = v18 ^ v23 ^ [(_SFPBCallCommand *)self->_callCommand hash];
  v25 = [(_SFPBEmailCommand *)self->_emailCommand hash];
  v26 = v25 ^ [(_SFPBBeginMapsRoutingCommand *)self->_beginMapsRoutingCommand hash];
  v27 = v26 ^ [(_SFPBToggleAudioCommand *)self->_toggleAudioCommand hash];
  v28 = v27 ^ [(_SFPBPerformPersonEntityQueryCommand *)self->_performPersonEntityQueryCommand hash];
  v29 = v28 ^ [(_SFPBShowPurchaseRequestSheetCommand *)self->_showPurchaseRequestSheetCommand hash];
  v30 = v29 ^ [(_SFPBShowScreenTimeRequestSheetCommand *)self->_showScreenTimeRequestSheetCommand hash];
  v31 = v24 ^ v30 ^ [(_SFPBPerformEntityQueryCommand *)self->_performEntityQueryCommand hash];
  v32 = [(_SFPBShareCommand *)self->_shareCommand hash];
  v33 = v32 ^ [(_SFPBCopyCommand *)self->_copyCommand hash];
  v34 = v33 ^ [(_SFPBToggleWatchListStatusCommand *)self->_toggleWatchListStatusCommand hash];
  v35 = v34 ^ [(_SFPBShowPhotosOneUpViewCommand *)self->_showPhotosOneUpViewCommand hash];
  v36 = v35 ^ [(_SFPBPlayMediaCommand *)self->_playMediaCommand hash];
  v37 = v36 ^ [(_SFPBOpenMediaCommand *)self->_openMediaCommand hash];
  v38 = v37 ^ [(_SFPBAddToPhotosLibraryCommand *)self->_addToPhotosLibraryCommand hash];
  v39 = v31 ^ v38 ^ [(_SFPBPerformContactActionCommand *)self->_performContactActionCommand hash];
  v40 = [(_SFPBExpandInlineCommand *)self->_expandInlineCommand hash];
  v41 = v40 ^ [(_SFPBSubscribeForUpdatesCommand *)self->_subscribeForUpdatesCommand hash];
  v42 = v41 ^ [(_SFPBViewEmailCommand *)self->_viewEmailCommand hash];
  v43 = v42 ^ [(_SFPBRejectPeopleInPhotoCommand *)self->_rejectPeopleInPhotoCommand hash];
  v44 = v43 ^ [(_SFPBShowWrapperResponseViewCommand *)self->_showWrapperResponseViewCommand hash];
  v45 = v44 ^ [(_SFPBClearProactiveCategoryCommand *)self->_clearProactiveCategoryCommand hash];
  v46 = v45 ^ [(_SFPBCreateContactCommand *)self->_createContactCommand hash];
  v47 = v46 ^ [(_SFPBCreateCalendarEventCommand *)self->_createCalendarEventCommand hash];
  v48 = v39 ^ v47 ^ [(_SFPBCreateReminderCommand *)self->_createReminderCommand hash];
  v49 = [(_SFPBManageReservationCommand *)self->_manageReservationCommand hash];
  v50 = v49 ^ [(_SFPBUpdateSportsFollowingStatusCommand *)self->_updateSportsFollowingStatusCommand hash];
  v51 = v50 ^ [(_SFPBRequestProductPageCommand *)self->_requestProductPageCommand hash];
  v52 = v51 ^ [(_SFPBFlightCheckinCommand *)self->_flightCheckinCommand hash];
  v53 = v52 ^ [(_SFPBExecuteToolCommand *)self->_executeToolCommand hash];
  v54 = v53 ^ [(_SFPBExecuteMenuItemCommand *)self->_executeMenuItemCommand hash];
  v55 = v54 ^ [(_SFPBFillToolParameterCommand *)self->_fillToolParameterCommand hash];
  v56 = v55 ^ [(_SFPBFillToolAppParameterCommand *)self->_fillToolAppParameterCommand hash];
  v57 = v56 ^ [(_SFPBFillToolFileParameterCommand *)self->_fillToolFileParameterCommand hash];
  v58 = v48 ^ v57 ^ [(_SFPBFillToolAppEntityParameterCommand *)self->_fillToolAppEntityParameterCommand hash];
  v59 = [(_SFPBFillToolPersonParameterCommand *)self->_fillToolPersonParameterCommand hash];
  v60 = v59 ^ [(NSString *)self->_commandDetail hash];
  v61 = v60 ^ [(_SFPBTopic *)self->_normalizedTopic hash];
  v62 = v61 ^ [(NSData *)self->_backendData hash];
  return v58 ^ v62 ^ [(_SFPBCommandReference *)self->_commandReference hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_307;
  }

  showContactCardCommand = [(_SFPBCommand *)self showContactCardCommand];
  showContactCardCommand2 = [equalCopy showContactCardCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  showContactCardCommand3 = [(_SFPBCommand *)self showContactCardCommand];
  if (showContactCardCommand3)
  {
    v8 = showContactCardCommand3;
    showContactCardCommand4 = [(_SFPBCommand *)self showContactCardCommand];
    showContactCardCommand5 = [equalCopy showContactCardCommand];
    v11 = [showContactCardCommand4 isEqual:showContactCardCommand5];

    if (!v11)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self showSFCardCommand];
  showContactCardCommand2 = [equalCopy showSFCardCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  showSFCardCommand = [(_SFPBCommand *)self showSFCardCommand];
  if (showSFCardCommand)
  {
    v13 = showSFCardCommand;
    showSFCardCommand2 = [(_SFPBCommand *)self showSFCardCommand];
    showSFCardCommand3 = [equalCopy showSFCardCommand];
    v16 = [showSFCardCommand2 isEqual:showSFCardCommand3];

    if (!v16)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self showAppStoreSheetCommand];
  showContactCardCommand2 = [equalCopy showAppStoreSheetCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  showAppStoreSheetCommand = [(_SFPBCommand *)self showAppStoreSheetCommand];
  if (showAppStoreSheetCommand)
  {
    v18 = showAppStoreSheetCommand;
    showAppStoreSheetCommand2 = [(_SFPBCommand *)self showAppStoreSheetCommand];
    showAppStoreSheetCommand3 = [equalCopy showAppStoreSheetCommand];
    v21 = [showAppStoreSheetCommand2 isEqual:showAppStoreSheetCommand3];

    if (!v21)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self openPunchoutCommand];
  showContactCardCommand2 = [equalCopy openPunchoutCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  openPunchoutCommand = [(_SFPBCommand *)self openPunchoutCommand];
  if (openPunchoutCommand)
  {
    v23 = openPunchoutCommand;
    openPunchoutCommand2 = [(_SFPBCommand *)self openPunchoutCommand];
    openPunchoutCommand3 = [equalCopy openPunchoutCommand];
    v26 = [openPunchoutCommand2 isEqual:openPunchoutCommand3];

    if (!v26)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self openFileProviderItemCommand];
  showContactCardCommand2 = [equalCopy openFileProviderItemCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  openFileProviderItemCommand = [(_SFPBCommand *)self openFileProviderItemCommand];
  if (openFileProviderItemCommand)
  {
    v28 = openFileProviderItemCommand;
    openFileProviderItemCommand2 = [(_SFPBCommand *)self openFileProviderItemCommand];
    openFileProviderItemCommand3 = [equalCopy openFileProviderItemCommand];
    v31 = [openFileProviderItemCommand2 isEqual:openFileProviderItemCommand3];

    if (!v31)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self openAppClipCommand];
  showContactCardCommand2 = [equalCopy openAppClipCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  openAppClipCommand = [(_SFPBCommand *)self openAppClipCommand];
  if (openAppClipCommand)
  {
    v33 = openAppClipCommand;
    openAppClipCommand2 = [(_SFPBCommand *)self openAppClipCommand];
    openAppClipCommand3 = [equalCopy openAppClipCommand];
    v36 = [openAppClipCommand2 isEqual:openAppClipCommand3];

    if (!v36)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self openWebClipCommand];
  showContactCardCommand2 = [equalCopy openWebClipCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  openWebClipCommand = [(_SFPBCommand *)self openWebClipCommand];
  if (openWebClipCommand)
  {
    v38 = openWebClipCommand;
    openWebClipCommand2 = [(_SFPBCommand *)self openWebClipCommand];
    openWebClipCommand3 = [equalCopy openWebClipCommand];
    v41 = [openWebClipCommand2 isEqual:openWebClipCommand3];

    if (!v41)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self requestAppClipInstallCommand];
  showContactCardCommand2 = [equalCopy requestAppClipInstallCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  requestAppClipInstallCommand = [(_SFPBCommand *)self requestAppClipInstallCommand];
  if (requestAppClipInstallCommand)
  {
    v43 = requestAppClipInstallCommand;
    requestAppClipInstallCommand2 = [(_SFPBCommand *)self requestAppClipInstallCommand];
    requestAppClipInstallCommand3 = [equalCopy requestAppClipInstallCommand];
    v46 = [requestAppClipInstallCommand2 isEqual:requestAppClipInstallCommand3];

    if (!v46)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self requestUserReportCommand];
  showContactCardCommand2 = [equalCopy requestUserReportCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  requestUserReportCommand = [(_SFPBCommand *)self requestUserReportCommand];
  if (requestUserReportCommand)
  {
    v48 = requestUserReportCommand;
    requestUserReportCommand2 = [(_SFPBCommand *)self requestUserReportCommand];
    requestUserReportCommand3 = [equalCopy requestUserReportCommand];
    v51 = [requestUserReportCommand2 isEqual:requestUserReportCommand3];

    if (!v51)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self launchAppCommand];
  showContactCardCommand2 = [equalCopy launchAppCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  launchAppCommand = [(_SFPBCommand *)self launchAppCommand];
  if (launchAppCommand)
  {
    v53 = launchAppCommand;
    launchAppCommand2 = [(_SFPBCommand *)self launchAppCommand];
    launchAppCommand3 = [equalCopy launchAppCommand];
    v56 = [launchAppCommand2 isEqual:launchAppCommand3];

    if (!v56)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self runVoiceShortcutCommand];
  showContactCardCommand2 = [equalCopy runVoiceShortcutCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  runVoiceShortcutCommand = [(_SFPBCommand *)self runVoiceShortcutCommand];
  if (runVoiceShortcutCommand)
  {
    v58 = runVoiceShortcutCommand;
    runVoiceShortcutCommand2 = [(_SFPBCommand *)self runVoiceShortcutCommand];
    runVoiceShortcutCommand3 = [equalCopy runVoiceShortcutCommand];
    v61 = [runVoiceShortcutCommand2 isEqual:runVoiceShortcutCommand3];

    if (!v61)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self indexedUserActivityCommand];
  showContactCardCommand2 = [equalCopy indexedUserActivityCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  indexedUserActivityCommand = [(_SFPBCommand *)self indexedUserActivityCommand];
  if (indexedUserActivityCommand)
  {
    v63 = indexedUserActivityCommand;
    indexedUserActivityCommand2 = [(_SFPBCommand *)self indexedUserActivityCommand];
    indexedUserActivityCommand3 = [equalCopy indexedUserActivityCommand];
    v66 = [indexedUserActivityCommand2 isEqual:indexedUserActivityCommand3];

    if (!v66)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
  showContactCardCommand2 = [equalCopy openCoreSpotlightItemCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  openCoreSpotlightItemCommand = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
  if (openCoreSpotlightItemCommand)
  {
    v68 = openCoreSpotlightItemCommand;
    openCoreSpotlightItemCommand2 = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
    openCoreSpotlightItemCommand3 = [equalCopy openCoreSpotlightItemCommand];
    v71 = [openCoreSpotlightItemCommand2 isEqual:openCoreSpotlightItemCommand3];

    if (!v71)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self performIntentCommand];
  showContactCardCommand2 = [equalCopy performIntentCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  performIntentCommand = [(_SFPBCommand *)self performIntentCommand];
  if (performIntentCommand)
  {
    v73 = performIntentCommand;
    performIntentCommand2 = [(_SFPBCommand *)self performIntentCommand];
    performIntentCommand3 = [equalCopy performIntentCommand];
    v76 = [performIntentCommand2 isEqual:performIntentCommand3];

    if (!v76)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self searchInAppCommand];
  showContactCardCommand2 = [equalCopy searchInAppCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  searchInAppCommand = [(_SFPBCommand *)self searchInAppCommand];
  if (searchInAppCommand)
  {
    v78 = searchInAppCommand;
    searchInAppCommand2 = [(_SFPBCommand *)self searchInAppCommand];
    searchInAppCommand3 = [equalCopy searchInAppCommand];
    v81 = [searchInAppCommand2 isEqual:searchInAppCommand3];

    if (!v81)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self updateSearchQueryCommand];
  showContactCardCommand2 = [equalCopy updateSearchQueryCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  updateSearchQueryCommand = [(_SFPBCommand *)self updateSearchQueryCommand];
  if (updateSearchQueryCommand)
  {
    v83 = updateSearchQueryCommand;
    updateSearchQueryCommand2 = [(_SFPBCommand *)self updateSearchQueryCommand];
    updateSearchQueryCommand3 = [equalCopy updateSearchQueryCommand];
    v86 = [updateSearchQueryCommand2 isEqual:updateSearchQueryCommand3];

    if (!v86)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self searchWebCommand];
  showContactCardCommand2 = [equalCopy searchWebCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  searchWebCommand = [(_SFPBCommand *)self searchWebCommand];
  if (searchWebCommand)
  {
    v88 = searchWebCommand;
    searchWebCommand2 = [(_SFPBCommand *)self searchWebCommand];
    searchWebCommand3 = [equalCopy searchWebCommand];
    v91 = [searchWebCommand2 isEqual:searchWebCommand3];

    if (!v91)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self invokeSiriCommand];
  showContactCardCommand2 = [equalCopy invokeSiriCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  invokeSiriCommand = [(_SFPBCommand *)self invokeSiriCommand];
  if (invokeSiriCommand)
  {
    v93 = invokeSiriCommand;
    invokeSiriCommand2 = [(_SFPBCommand *)self invokeSiriCommand];
    invokeSiriCommand3 = [equalCopy invokeSiriCommand];
    v96 = [invokeSiriCommand2 isEqual:invokeSiriCommand3];

    if (!v96)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self performContactQueryCommand];
  showContactCardCommand2 = [equalCopy performContactQueryCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  performContactQueryCommand = [(_SFPBCommand *)self performContactQueryCommand];
  if (performContactQueryCommand)
  {
    v98 = performContactQueryCommand;
    performContactQueryCommand2 = [(_SFPBCommand *)self performContactQueryCommand];
    performContactQueryCommand3 = [equalCopy performContactQueryCommand];
    v101 = [performContactQueryCommand2 isEqual:performContactQueryCommand3];

    if (!v101)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self openCalculationCommand];
  showContactCardCommand2 = [equalCopy openCalculationCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  openCalculationCommand = [(_SFPBCommand *)self openCalculationCommand];
  if (openCalculationCommand)
  {
    v103 = openCalculationCommand;
    openCalculationCommand2 = [(_SFPBCommand *)self openCalculationCommand];
    openCalculationCommand3 = [equalCopy openCalculationCommand];
    v106 = [openCalculationCommand2 isEqual:openCalculationCommand3];

    if (!v106)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self playVideoCommand];
  showContactCardCommand2 = [equalCopy playVideoCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  playVideoCommand = [(_SFPBCommand *)self playVideoCommand];
  if (playVideoCommand)
  {
    v108 = playVideoCommand;
    playVideoCommand2 = [(_SFPBCommand *)self playVideoCommand];
    playVideoCommand3 = [equalCopy playVideoCommand];
    v111 = [playVideoCommand2 isEqual:playVideoCommand3];

    if (!v111)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self callCommand];
  showContactCardCommand2 = [equalCopy callCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  callCommand = [(_SFPBCommand *)self callCommand];
  if (callCommand)
  {
    v113 = callCommand;
    callCommand2 = [(_SFPBCommand *)self callCommand];
    callCommand3 = [equalCopy callCommand];
    v116 = [callCommand2 isEqual:callCommand3];

    if (!v116)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self emailCommand];
  showContactCardCommand2 = [equalCopy emailCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  emailCommand = [(_SFPBCommand *)self emailCommand];
  if (emailCommand)
  {
    v118 = emailCommand;
    emailCommand2 = [(_SFPBCommand *)self emailCommand];
    emailCommand3 = [equalCopy emailCommand];
    v121 = [emailCommand2 isEqual:emailCommand3];

    if (!v121)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self beginMapsRoutingCommand];
  showContactCardCommand2 = [equalCopy beginMapsRoutingCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  beginMapsRoutingCommand = [(_SFPBCommand *)self beginMapsRoutingCommand];
  if (beginMapsRoutingCommand)
  {
    v123 = beginMapsRoutingCommand;
    beginMapsRoutingCommand2 = [(_SFPBCommand *)self beginMapsRoutingCommand];
    beginMapsRoutingCommand3 = [equalCopy beginMapsRoutingCommand];
    v126 = [beginMapsRoutingCommand2 isEqual:beginMapsRoutingCommand3];

    if (!v126)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self toggleAudioCommand];
  showContactCardCommand2 = [equalCopy toggleAudioCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  toggleAudioCommand = [(_SFPBCommand *)self toggleAudioCommand];
  if (toggleAudioCommand)
  {
    v128 = toggleAudioCommand;
    toggleAudioCommand2 = [(_SFPBCommand *)self toggleAudioCommand];
    toggleAudioCommand3 = [equalCopy toggleAudioCommand];
    v131 = [toggleAudioCommand2 isEqual:toggleAudioCommand3];

    if (!v131)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self performPersonEntityQueryCommand];
  showContactCardCommand2 = [equalCopy performPersonEntityQueryCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  performPersonEntityQueryCommand = [(_SFPBCommand *)self performPersonEntityQueryCommand];
  if (performPersonEntityQueryCommand)
  {
    v133 = performPersonEntityQueryCommand;
    performPersonEntityQueryCommand2 = [(_SFPBCommand *)self performPersonEntityQueryCommand];
    performPersonEntityQueryCommand3 = [equalCopy performPersonEntityQueryCommand];
    v136 = [performPersonEntityQueryCommand2 isEqual:performPersonEntityQueryCommand3];

    if (!v136)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
  showContactCardCommand2 = [equalCopy showPurchaseRequestSheetCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  showPurchaseRequestSheetCommand = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
  if (showPurchaseRequestSheetCommand)
  {
    v138 = showPurchaseRequestSheetCommand;
    showPurchaseRequestSheetCommand2 = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
    showPurchaseRequestSheetCommand3 = [equalCopy showPurchaseRequestSheetCommand];
    v141 = [showPurchaseRequestSheetCommand2 isEqual:showPurchaseRequestSheetCommand3];

    if (!v141)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
  showContactCardCommand2 = [equalCopy showScreenTimeRequestSheetCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  showScreenTimeRequestSheetCommand = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
  if (showScreenTimeRequestSheetCommand)
  {
    v143 = showScreenTimeRequestSheetCommand;
    showScreenTimeRequestSheetCommand2 = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
    showScreenTimeRequestSheetCommand3 = [equalCopy showScreenTimeRequestSheetCommand];
    v146 = [showScreenTimeRequestSheetCommand2 isEqual:showScreenTimeRequestSheetCommand3];

    if (!v146)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self performEntityQueryCommand];
  showContactCardCommand2 = [equalCopy performEntityQueryCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  performEntityQueryCommand = [(_SFPBCommand *)self performEntityQueryCommand];
  if (performEntityQueryCommand)
  {
    v148 = performEntityQueryCommand;
    performEntityQueryCommand2 = [(_SFPBCommand *)self performEntityQueryCommand];
    performEntityQueryCommand3 = [equalCopy performEntityQueryCommand];
    v151 = [performEntityQueryCommand2 isEqual:performEntityQueryCommand3];

    if (!v151)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self shareCommand];
  showContactCardCommand2 = [equalCopy shareCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  shareCommand = [(_SFPBCommand *)self shareCommand];
  if (shareCommand)
  {
    v153 = shareCommand;
    shareCommand2 = [(_SFPBCommand *)self shareCommand];
    shareCommand3 = [equalCopy shareCommand];
    v156 = [shareCommand2 isEqual:shareCommand3];

    if (!v156)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self copyCommand];
  showContactCardCommand2 = [equalCopy copyCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  copyCommand = [(_SFPBCommand *)self copyCommand];
  if (copyCommand)
  {
    v158 = copyCommand;
    copyCommand2 = [(_SFPBCommand *)self copyCommand];
    copyCommand3 = [equalCopy copyCommand];
    v161 = [(_SFPBCopyCommand *)copyCommand2 isEqual:copyCommand3];

    if (!v161)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self toggleWatchListStatusCommand];
  showContactCardCommand2 = [equalCopy toggleWatchListStatusCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  toggleWatchListStatusCommand = [(_SFPBCommand *)self toggleWatchListStatusCommand];
  if (toggleWatchListStatusCommand)
  {
    v163 = toggleWatchListStatusCommand;
    toggleWatchListStatusCommand2 = [(_SFPBCommand *)self toggleWatchListStatusCommand];
    toggleWatchListStatusCommand3 = [equalCopy toggleWatchListStatusCommand];
    v166 = [toggleWatchListStatusCommand2 isEqual:toggleWatchListStatusCommand3];

    if (!v166)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
  showContactCardCommand2 = [equalCopy showPhotosOneUpViewCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  showPhotosOneUpViewCommand = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
  if (showPhotosOneUpViewCommand)
  {
    v168 = showPhotosOneUpViewCommand;
    showPhotosOneUpViewCommand2 = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
    showPhotosOneUpViewCommand3 = [equalCopy showPhotosOneUpViewCommand];
    v171 = [showPhotosOneUpViewCommand2 isEqual:showPhotosOneUpViewCommand3];

    if (!v171)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self playMediaCommand];
  showContactCardCommand2 = [equalCopy playMediaCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  playMediaCommand = [(_SFPBCommand *)self playMediaCommand];
  if (playMediaCommand)
  {
    v173 = playMediaCommand;
    playMediaCommand2 = [(_SFPBCommand *)self playMediaCommand];
    playMediaCommand3 = [equalCopy playMediaCommand];
    v176 = [playMediaCommand2 isEqual:playMediaCommand3];

    if (!v176)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self openMediaCommand];
  showContactCardCommand2 = [equalCopy openMediaCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  openMediaCommand = [(_SFPBCommand *)self openMediaCommand];
  if (openMediaCommand)
  {
    v178 = openMediaCommand;
    openMediaCommand2 = [(_SFPBCommand *)self openMediaCommand];
    openMediaCommand3 = [equalCopy openMediaCommand];
    v181 = [openMediaCommand2 isEqual:openMediaCommand3];

    if (!v181)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self addToPhotosLibraryCommand];
  showContactCardCommand2 = [equalCopy addToPhotosLibraryCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  addToPhotosLibraryCommand = [(_SFPBCommand *)self addToPhotosLibraryCommand];
  if (addToPhotosLibraryCommand)
  {
    v183 = addToPhotosLibraryCommand;
    addToPhotosLibraryCommand2 = [(_SFPBCommand *)self addToPhotosLibraryCommand];
    addToPhotosLibraryCommand3 = [equalCopy addToPhotosLibraryCommand];
    v186 = [addToPhotosLibraryCommand2 isEqual:addToPhotosLibraryCommand3];

    if (!v186)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self performContactActionCommand];
  showContactCardCommand2 = [equalCopy performContactActionCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  performContactActionCommand = [(_SFPBCommand *)self performContactActionCommand];
  if (performContactActionCommand)
  {
    v188 = performContactActionCommand;
    performContactActionCommand2 = [(_SFPBCommand *)self performContactActionCommand];
    performContactActionCommand3 = [equalCopy performContactActionCommand];
    v191 = [performContactActionCommand2 isEqual:performContactActionCommand3];

    if (!v191)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self expandInlineCommand];
  showContactCardCommand2 = [equalCopy expandInlineCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  expandInlineCommand = [(_SFPBCommand *)self expandInlineCommand];
  if (expandInlineCommand)
  {
    v193 = expandInlineCommand;
    expandInlineCommand2 = [(_SFPBCommand *)self expandInlineCommand];
    expandInlineCommand3 = [equalCopy expandInlineCommand];
    v196 = [expandInlineCommand2 isEqual:expandInlineCommand3];

    if (!v196)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self subscribeForUpdatesCommand];
  showContactCardCommand2 = [equalCopy subscribeForUpdatesCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  subscribeForUpdatesCommand = [(_SFPBCommand *)self subscribeForUpdatesCommand];
  if (subscribeForUpdatesCommand)
  {
    v198 = subscribeForUpdatesCommand;
    subscribeForUpdatesCommand2 = [(_SFPBCommand *)self subscribeForUpdatesCommand];
    subscribeForUpdatesCommand3 = [equalCopy subscribeForUpdatesCommand];
    v201 = [subscribeForUpdatesCommand2 isEqual:subscribeForUpdatesCommand3];

    if (!v201)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self viewEmailCommand];
  showContactCardCommand2 = [equalCopy viewEmailCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  viewEmailCommand = [(_SFPBCommand *)self viewEmailCommand];
  if (viewEmailCommand)
  {
    v203 = viewEmailCommand;
    viewEmailCommand2 = [(_SFPBCommand *)self viewEmailCommand];
    viewEmailCommand3 = [equalCopy viewEmailCommand];
    v206 = [viewEmailCommand2 isEqual:viewEmailCommand3];

    if (!v206)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
  showContactCardCommand2 = [equalCopy rejectPeopleInPhotoCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  rejectPeopleInPhotoCommand = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
  if (rejectPeopleInPhotoCommand)
  {
    v208 = rejectPeopleInPhotoCommand;
    rejectPeopleInPhotoCommand2 = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
    rejectPeopleInPhotoCommand3 = [equalCopy rejectPeopleInPhotoCommand];
    v211 = [rejectPeopleInPhotoCommand2 isEqual:rejectPeopleInPhotoCommand3];

    if (!v211)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self showWrapperResponseViewCommand];
  showContactCardCommand2 = [equalCopy showWrapperResponseViewCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  showWrapperResponseViewCommand = [(_SFPBCommand *)self showWrapperResponseViewCommand];
  if (showWrapperResponseViewCommand)
  {
    v213 = showWrapperResponseViewCommand;
    showWrapperResponseViewCommand2 = [(_SFPBCommand *)self showWrapperResponseViewCommand];
    showWrapperResponseViewCommand3 = [equalCopy showWrapperResponseViewCommand];
    v216 = [showWrapperResponseViewCommand2 isEqual:showWrapperResponseViewCommand3];

    if (!v216)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self clearProactiveCategoryCommand];
  showContactCardCommand2 = [equalCopy clearProactiveCategoryCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  clearProactiveCategoryCommand = [(_SFPBCommand *)self clearProactiveCategoryCommand];
  if (clearProactiveCategoryCommand)
  {
    v218 = clearProactiveCategoryCommand;
    clearProactiveCategoryCommand2 = [(_SFPBCommand *)self clearProactiveCategoryCommand];
    clearProactiveCategoryCommand3 = [equalCopy clearProactiveCategoryCommand];
    v221 = [clearProactiveCategoryCommand2 isEqual:clearProactiveCategoryCommand3];

    if (!v221)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self createContactCommand];
  showContactCardCommand2 = [equalCopy createContactCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  createContactCommand = [(_SFPBCommand *)self createContactCommand];
  if (createContactCommand)
  {
    v223 = createContactCommand;
    createContactCommand2 = [(_SFPBCommand *)self createContactCommand];
    createContactCommand3 = [equalCopy createContactCommand];
    v226 = [createContactCommand2 isEqual:createContactCommand3];

    if (!v226)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self createCalendarEventCommand];
  showContactCardCommand2 = [equalCopy createCalendarEventCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  createCalendarEventCommand = [(_SFPBCommand *)self createCalendarEventCommand];
  if (createCalendarEventCommand)
  {
    v228 = createCalendarEventCommand;
    createCalendarEventCommand2 = [(_SFPBCommand *)self createCalendarEventCommand];
    createCalendarEventCommand3 = [equalCopy createCalendarEventCommand];
    v231 = [createCalendarEventCommand2 isEqual:createCalendarEventCommand3];

    if (!v231)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self createReminderCommand];
  showContactCardCommand2 = [equalCopy createReminderCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  createReminderCommand = [(_SFPBCommand *)self createReminderCommand];
  if (createReminderCommand)
  {
    v233 = createReminderCommand;
    createReminderCommand2 = [(_SFPBCommand *)self createReminderCommand];
    createReminderCommand3 = [equalCopy createReminderCommand];
    v236 = [createReminderCommand2 isEqual:createReminderCommand3];

    if (!v236)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self manageReservationCommand];
  showContactCardCommand2 = [equalCopy manageReservationCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  manageReservationCommand = [(_SFPBCommand *)self manageReservationCommand];
  if (manageReservationCommand)
  {
    v238 = manageReservationCommand;
    manageReservationCommand2 = [(_SFPBCommand *)self manageReservationCommand];
    manageReservationCommand3 = [equalCopy manageReservationCommand];
    v241 = [manageReservationCommand2 isEqual:manageReservationCommand3];

    if (!v241)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
  showContactCardCommand2 = [equalCopy updateSportsFollowingStatusCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  updateSportsFollowingStatusCommand = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
  if (updateSportsFollowingStatusCommand)
  {
    v243 = updateSportsFollowingStatusCommand;
    updateSportsFollowingStatusCommand2 = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
    updateSportsFollowingStatusCommand3 = [equalCopy updateSportsFollowingStatusCommand];
    v246 = [updateSportsFollowingStatusCommand2 isEqual:updateSportsFollowingStatusCommand3];

    if (!v246)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self requestProductPageCommand];
  showContactCardCommand2 = [equalCopy requestProductPageCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  requestProductPageCommand = [(_SFPBCommand *)self requestProductPageCommand];
  if (requestProductPageCommand)
  {
    v248 = requestProductPageCommand;
    requestProductPageCommand2 = [(_SFPBCommand *)self requestProductPageCommand];
    requestProductPageCommand3 = [equalCopy requestProductPageCommand];
    v251 = [requestProductPageCommand2 isEqual:requestProductPageCommand3];

    if (!v251)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self flightCheckinCommand];
  showContactCardCommand2 = [equalCopy flightCheckinCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  flightCheckinCommand = [(_SFPBCommand *)self flightCheckinCommand];
  if (flightCheckinCommand)
  {
    v253 = flightCheckinCommand;
    flightCheckinCommand2 = [(_SFPBCommand *)self flightCheckinCommand];
    flightCheckinCommand3 = [equalCopy flightCheckinCommand];
    v256 = [flightCheckinCommand2 isEqual:flightCheckinCommand3];

    if (!v256)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self executeToolCommand];
  showContactCardCommand2 = [equalCopy executeToolCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  executeToolCommand = [(_SFPBCommand *)self executeToolCommand];
  if (executeToolCommand)
  {
    v258 = executeToolCommand;
    executeToolCommand2 = [(_SFPBCommand *)self executeToolCommand];
    executeToolCommand3 = [equalCopy executeToolCommand];
    v261 = [executeToolCommand2 isEqual:executeToolCommand3];

    if (!v261)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self executeMenuItemCommand];
  showContactCardCommand2 = [equalCopy executeMenuItemCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  executeMenuItemCommand = [(_SFPBCommand *)self executeMenuItemCommand];
  if (executeMenuItemCommand)
  {
    v263 = executeMenuItemCommand;
    executeMenuItemCommand2 = [(_SFPBCommand *)self executeMenuItemCommand];
    executeMenuItemCommand3 = [equalCopy executeMenuItemCommand];
    v266 = [executeMenuItemCommand2 isEqual:executeMenuItemCommand3];

    if (!v266)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self fillToolParameterCommand];
  showContactCardCommand2 = [equalCopy fillToolParameterCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  fillToolParameterCommand = [(_SFPBCommand *)self fillToolParameterCommand];
  if (fillToolParameterCommand)
  {
    v268 = fillToolParameterCommand;
    fillToolParameterCommand2 = [(_SFPBCommand *)self fillToolParameterCommand];
    fillToolParameterCommand3 = [equalCopy fillToolParameterCommand];
    v271 = [fillToolParameterCommand2 isEqual:fillToolParameterCommand3];

    if (!v271)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self fillToolAppParameterCommand];
  showContactCardCommand2 = [equalCopy fillToolAppParameterCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  fillToolAppParameterCommand = [(_SFPBCommand *)self fillToolAppParameterCommand];
  if (fillToolAppParameterCommand)
  {
    v273 = fillToolAppParameterCommand;
    fillToolAppParameterCommand2 = [(_SFPBCommand *)self fillToolAppParameterCommand];
    fillToolAppParameterCommand3 = [equalCopy fillToolAppParameterCommand];
    v276 = [fillToolAppParameterCommand2 isEqual:fillToolAppParameterCommand3];

    if (!v276)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self fillToolFileParameterCommand];
  showContactCardCommand2 = [equalCopy fillToolFileParameterCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  fillToolFileParameterCommand = [(_SFPBCommand *)self fillToolFileParameterCommand];
  if (fillToolFileParameterCommand)
  {
    v278 = fillToolFileParameterCommand;
    fillToolFileParameterCommand2 = [(_SFPBCommand *)self fillToolFileParameterCommand];
    fillToolFileParameterCommand3 = [equalCopy fillToolFileParameterCommand];
    v281 = [fillToolFileParameterCommand2 isEqual:fillToolFileParameterCommand3];

    if (!v281)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
  showContactCardCommand2 = [equalCopy fillToolAppEntityParameterCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  fillToolAppEntityParameterCommand = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
  if (fillToolAppEntityParameterCommand)
  {
    v283 = fillToolAppEntityParameterCommand;
    fillToolAppEntityParameterCommand2 = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
    fillToolAppEntityParameterCommand3 = [equalCopy fillToolAppEntityParameterCommand];
    v286 = [fillToolAppEntityParameterCommand2 isEqual:fillToolAppEntityParameterCommand3];

    if (!v286)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self fillToolPersonParameterCommand];
  showContactCardCommand2 = [equalCopy fillToolPersonParameterCommand];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  fillToolPersonParameterCommand = [(_SFPBCommand *)self fillToolPersonParameterCommand];
  if (fillToolPersonParameterCommand)
  {
    v288 = fillToolPersonParameterCommand;
    fillToolPersonParameterCommand2 = [(_SFPBCommand *)self fillToolPersonParameterCommand];
    fillToolPersonParameterCommand3 = [equalCopy fillToolPersonParameterCommand];
    v291 = [fillToolPersonParameterCommand2 isEqual:fillToolPersonParameterCommand3];

    if (!v291)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self commandDetail];
  showContactCardCommand2 = [equalCopy commandDetail];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  commandDetail = [(_SFPBCommand *)self commandDetail];
  if (commandDetail)
  {
    v293 = commandDetail;
    commandDetail2 = [(_SFPBCommand *)self commandDetail];
    commandDetail3 = [equalCopy commandDetail];
    v296 = [commandDetail2 isEqual:commandDetail3];

    if (!v296)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self normalizedTopic];
  showContactCardCommand2 = [equalCopy normalizedTopic];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  normalizedTopic = [(_SFPBCommand *)self normalizedTopic];
  if (normalizedTopic)
  {
    v298 = normalizedTopic;
    normalizedTopic2 = [(_SFPBCommand *)self normalizedTopic];
    normalizedTopic3 = [equalCopy normalizedTopic];
    v301 = [normalizedTopic2 isEqual:normalizedTopic3];

    if (!v301)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self backendData];
  showContactCardCommand2 = [equalCopy backendData];
  if ((showContactCardCommand != 0) == (showContactCardCommand2 == 0))
  {
    goto LABEL_306;
  }

  backendData = [(_SFPBCommand *)self backendData];
  if (backendData)
  {
    v303 = backendData;
    backendData2 = [(_SFPBCommand *)self backendData];
    backendData3 = [equalCopy backendData];
    v306 = [backendData2 isEqual:backendData3];

    if (!v306)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  showContactCardCommand = [(_SFPBCommand *)self commandReference];
  showContactCardCommand2 = [equalCopy commandReference];
  if ((showContactCardCommand != 0) != (showContactCardCommand2 == 0))
  {
    commandReference = [(_SFPBCommand *)self commandReference];
    if (!commandReference)
    {

LABEL_310:
      v312 = 1;
      goto LABEL_308;
    }

    v308 = commandReference;
    commandReference2 = [(_SFPBCommand *)self commandReference];
    commandReference3 = [equalCopy commandReference];
    v311 = [commandReference2 isEqual:commandReference3];

    if (v311)
    {
      goto LABEL_310;
    }
  }

  else
  {
LABEL_306:
  }

LABEL_307:
  v312 = 0;
LABEL_308:

  return v312;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  showContactCardCommand = [(_SFPBCommand *)self showContactCardCommand];
  if (showContactCardCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  showSFCardCommand = [(_SFPBCommand *)self showSFCardCommand];
  if (showSFCardCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  showAppStoreSheetCommand = [(_SFPBCommand *)self showAppStoreSheetCommand];
  if (showAppStoreSheetCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  openPunchoutCommand = [(_SFPBCommand *)self openPunchoutCommand];
  if (openPunchoutCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  openFileProviderItemCommand = [(_SFPBCommand *)self openFileProviderItemCommand];
  if (openFileProviderItemCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  openAppClipCommand = [(_SFPBCommand *)self openAppClipCommand];
  if (openAppClipCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  openWebClipCommand = [(_SFPBCommand *)self openWebClipCommand];
  if (openWebClipCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  requestAppClipInstallCommand = [(_SFPBCommand *)self requestAppClipInstallCommand];
  if (requestAppClipInstallCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  requestUserReportCommand = [(_SFPBCommand *)self requestUserReportCommand];
  if (requestUserReportCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  launchAppCommand = [(_SFPBCommand *)self launchAppCommand];
  if (launchAppCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  runVoiceShortcutCommand = [(_SFPBCommand *)self runVoiceShortcutCommand];
  if (runVoiceShortcutCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  indexedUserActivityCommand = [(_SFPBCommand *)self indexedUserActivityCommand];
  if (indexedUserActivityCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  openCoreSpotlightItemCommand = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
  if (openCoreSpotlightItemCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  performIntentCommand = [(_SFPBCommand *)self performIntentCommand];
  if (performIntentCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  searchInAppCommand = [(_SFPBCommand *)self searchInAppCommand];
  if (searchInAppCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  updateSearchQueryCommand = [(_SFPBCommand *)self updateSearchQueryCommand];
  if (updateSearchQueryCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  searchWebCommand = [(_SFPBCommand *)self searchWebCommand];
  if (searchWebCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  invokeSiriCommand = [(_SFPBCommand *)self invokeSiriCommand];
  if (invokeSiriCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  performContactQueryCommand = [(_SFPBCommand *)self performContactQueryCommand];
  if (performContactQueryCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  openCalculationCommand = [(_SFPBCommand *)self openCalculationCommand];
  if (openCalculationCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  playVideoCommand = [(_SFPBCommand *)self playVideoCommand];
  if (playVideoCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  callCommand = [(_SFPBCommand *)self callCommand];
  if (callCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  emailCommand = [(_SFPBCommand *)self emailCommand];
  if (emailCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  beginMapsRoutingCommand = [(_SFPBCommand *)self beginMapsRoutingCommand];
  if (beginMapsRoutingCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  toggleAudioCommand = [(_SFPBCommand *)self toggleAudioCommand];
  if (toggleAudioCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  performPersonEntityQueryCommand = [(_SFPBCommand *)self performPersonEntityQueryCommand];
  if (performPersonEntityQueryCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  showPurchaseRequestSheetCommand = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
  if (showPurchaseRequestSheetCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  showScreenTimeRequestSheetCommand = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
  if (showScreenTimeRequestSheetCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  performEntityQueryCommand = [(_SFPBCommand *)self performEntityQueryCommand];
  if (performEntityQueryCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  shareCommand = [(_SFPBCommand *)self shareCommand];
  if (shareCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  copyCommand = [(_SFPBCommand *)self copyCommand];
  if (copyCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  toggleWatchListStatusCommand = [(_SFPBCommand *)self toggleWatchListStatusCommand];
  if (toggleWatchListStatusCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  showPhotosOneUpViewCommand = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
  if (showPhotosOneUpViewCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  playMediaCommand = [(_SFPBCommand *)self playMediaCommand];
  if (playMediaCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  openMediaCommand = [(_SFPBCommand *)self openMediaCommand];
  if (openMediaCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  addToPhotosLibraryCommand = [(_SFPBCommand *)self addToPhotosLibraryCommand];
  if (addToPhotosLibraryCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  performContactActionCommand = [(_SFPBCommand *)self performContactActionCommand];
  if (performContactActionCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  expandInlineCommand = [(_SFPBCommand *)self expandInlineCommand];
  if (expandInlineCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  subscribeForUpdatesCommand = [(_SFPBCommand *)self subscribeForUpdatesCommand];
  if (subscribeForUpdatesCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  viewEmailCommand = [(_SFPBCommand *)self viewEmailCommand];
  if (viewEmailCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  rejectPeopleInPhotoCommand = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
  if (rejectPeopleInPhotoCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  showWrapperResponseViewCommand = [(_SFPBCommand *)self showWrapperResponseViewCommand];
  if (showWrapperResponseViewCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  clearProactiveCategoryCommand = [(_SFPBCommand *)self clearProactiveCategoryCommand];
  if (clearProactiveCategoryCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  createContactCommand = [(_SFPBCommand *)self createContactCommand];
  if (createContactCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  createCalendarEventCommand = [(_SFPBCommand *)self createCalendarEventCommand];
  if (createCalendarEventCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  createReminderCommand = [(_SFPBCommand *)self createReminderCommand];
  if (createReminderCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  manageReservationCommand = [(_SFPBCommand *)self manageReservationCommand];
  if (manageReservationCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  updateSportsFollowingStatusCommand = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
  if (updateSportsFollowingStatusCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  requestProductPageCommand = [(_SFPBCommand *)self requestProductPageCommand];
  if (requestProductPageCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  flightCheckinCommand = [(_SFPBCommand *)self flightCheckinCommand];
  if (flightCheckinCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  executeToolCommand = [(_SFPBCommand *)self executeToolCommand];
  if (executeToolCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  executeMenuItemCommand = [(_SFPBCommand *)self executeMenuItemCommand];
  if (executeMenuItemCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  fillToolParameterCommand = [(_SFPBCommand *)self fillToolParameterCommand];
  if (fillToolParameterCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  fillToolAppParameterCommand = [(_SFPBCommand *)self fillToolAppParameterCommand];
  if (fillToolAppParameterCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  fillToolFileParameterCommand = [(_SFPBCommand *)self fillToolFileParameterCommand];
  if (fillToolFileParameterCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  fillToolAppEntityParameterCommand = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
  if (fillToolAppEntityParameterCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  fillToolPersonParameterCommand = [(_SFPBCommand *)self fillToolPersonParameterCommand];
  if (fillToolPersonParameterCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  commandDetail = [(_SFPBCommand *)self commandDetail];
  if (commandDetail)
  {
    PBDataWriterWriteStringField();
  }

  normalizedTopic = [(_SFPBCommand *)self normalizedTopic];
  if (normalizedTopic)
  {
    PBDataWriterWriteSubmessage();
  }

  backendData = [(_SFPBCommand *)self backendData];
  if (backendData)
  {
    PBDataWriterWriteDataField();
  }

  commandReference = [(_SFPBCommand *)self commandReference];
  if (commandReference)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setBackendData:(id)data
{
  v4 = [data copy];
  backendData = self->_backendData;
  self->_backendData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCommandDetail:(id)detail
{
  v4 = [detail copy];
  commandDetail = self->_commandDetail;
  self->_commandDetail = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_SFPBFillToolPersonParameterCommand)fillToolPersonParameterCommand
{
  if (self->_whichValue == 57)
  {
    v3 = self->_fillToolPersonParameterCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFillToolPersonParameterCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  v61 = 57;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = commandCopy;
}

- (_SFPBFillToolAppEntityParameterCommand)fillToolAppEntityParameterCommand
{
  if (self->_whichValue == 56)
  {
    v3 = self->_fillToolAppEntityParameterCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFillToolAppEntityParameterCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 56;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = commandCopy;
}

- (_SFPBFillToolFileParameterCommand)fillToolFileParameterCommand
{
  if (self->_whichValue == 55)
  {
    v3 = self->_fillToolFileParameterCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFillToolFileParameterCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 55;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = commandCopy;
}

- (_SFPBFillToolAppParameterCommand)fillToolAppParameterCommand
{
  if (self->_whichValue == 54)
  {
    v3 = self->_fillToolAppParameterCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFillToolAppParameterCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 54;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = commandCopy;
}

- (_SFPBFillToolParameterCommand)fillToolParameterCommand
{
  if (self->_whichValue == 53)
  {
    v3 = self->_fillToolParameterCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFillToolParameterCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 53;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = commandCopy;
}

- (_SFPBExecuteMenuItemCommand)executeMenuItemCommand
{
  if (self->_whichValue == 52)
  {
    v3 = self->_executeMenuItemCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecuteMenuItemCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 52;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = commandCopy;
}

- (_SFPBExecuteToolCommand)executeToolCommand
{
  if (self->_whichValue == 51)
  {
    v3 = self->_executeToolCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecuteToolCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 51;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = commandCopy;
}

- (_SFPBFlightCheckinCommand)flightCheckinCommand
{
  if (self->_whichValue == 50)
  {
    v3 = self->_flightCheckinCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFlightCheckinCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 50;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = commandCopy;
}

- (_SFPBRequestProductPageCommand)requestProductPageCommand
{
  if (self->_whichValue == 49)
  {
    v3 = self->_requestProductPageCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestProductPageCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 49;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = commandCopy;
}

- (_SFPBUpdateSportsFollowingStatusCommand)updateSportsFollowingStatusCommand
{
  if (self->_whichValue == 48)
  {
    v3 = self->_updateSportsFollowingStatusCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUpdateSportsFollowingStatusCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 48;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = commandCopy;
}

- (_SFPBManageReservationCommand)manageReservationCommand
{
  if (self->_whichValue == 47)
  {
    v3 = self->_manageReservationCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setManageReservationCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 47;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = commandCopy;
}

- (_SFPBCreateReminderCommand)createReminderCommand
{
  if (self->_whichValue == 46)
  {
    v3 = self->_createReminderCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCreateReminderCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 46;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = commandCopy;
}

- (_SFPBCreateCalendarEventCommand)createCalendarEventCommand
{
  if (self->_whichValue == 45)
  {
    v3 = self->_createCalendarEventCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCreateCalendarEventCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 45;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = commandCopy;
}

- (_SFPBCreateContactCommand)createContactCommand
{
  if (self->_whichValue == 44)
  {
    v3 = self->_createContactCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCreateContactCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 44;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = commandCopy;
}

- (_SFPBClearProactiveCategoryCommand)clearProactiveCategoryCommand
{
  if (self->_whichValue == 43)
  {
    v3 = self->_clearProactiveCategoryCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setClearProactiveCategoryCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 43;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = commandCopy;
}

- (_SFPBShowWrapperResponseViewCommand)showWrapperResponseViewCommand
{
  if (self->_whichValue == 42)
  {
    v3 = self->_showWrapperResponseViewCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowWrapperResponseViewCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 42;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = commandCopy;
}

- (_SFPBRejectPeopleInPhotoCommand)rejectPeopleInPhotoCommand
{
  if (self->_whichValue == 41)
  {
    v3 = self->_rejectPeopleInPhotoCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRejectPeopleInPhotoCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 41;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = commandCopy;
}

- (_SFPBViewEmailCommand)viewEmailCommand
{
  if (self->_whichValue == 40)
  {
    v3 = self->_viewEmailCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setViewEmailCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 40;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = commandCopy;
}

- (_SFPBSubscribeForUpdatesCommand)subscribeForUpdatesCommand
{
  if (self->_whichValue == 39)
  {
    v3 = self->_subscribeForUpdatesCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSubscribeForUpdatesCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 39;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = commandCopy;
}

- (_SFPBExpandInlineCommand)expandInlineCommand
{
  if (self->_whichValue == 38)
  {
    v3 = self->_expandInlineCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExpandInlineCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 38;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = commandCopy;
}

- (_SFPBPerformContactActionCommand)performContactActionCommand
{
  if (self->_whichValue == 37)
  {
    v3 = self->_performContactActionCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPerformContactActionCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 37;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = commandCopy;
}

- (_SFPBAddToPhotosLibraryCommand)addToPhotosLibraryCommand
{
  if (self->_whichValue == 36)
  {
    v3 = self->_addToPhotosLibraryCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAddToPhotosLibraryCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 36;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = commandCopy;
}

- (_SFPBOpenMediaCommand)openMediaCommand
{
  if (self->_whichValue == 35)
  {
    v3 = self->_openMediaCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpenMediaCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 35;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = commandCopy;
}

- (_SFPBPlayMediaCommand)playMediaCommand
{
  if (self->_whichValue == 34)
  {
    v3 = self->_playMediaCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlayMediaCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 34;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = commandCopy;
}

- (_SFPBShowPhotosOneUpViewCommand)showPhotosOneUpViewCommand
{
  if (self->_whichValue == 33)
  {
    v3 = self->_showPhotosOneUpViewCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowPhotosOneUpViewCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 33;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = commandCopy;
}

- (_SFPBToggleWatchListStatusCommand)toggleWatchListStatusCommand
{
  if (self->_whichValue == 32)
  {
    v3 = self->_toggleWatchListStatusCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setToggleWatchListStatusCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  self->_whichValue = 32 * (commandCopy != 0);
  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = commandCopy;
}

- (_SFPBCopyCommand)copyCommand
{
  if (self->_whichValue == 31)
  {
    return self->_copyCommand;
  }

  else
  {
    return 0;
  }
}

- (void)setCopyCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 31;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  copyCommand = self->_copyCommand;
  self->_copyCommand = commandCopy;
}

- (_SFPBShareCommand)shareCommand
{
  if (self->_whichValue == 30)
  {
    v3 = self->_shareCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShareCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 30;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  shareCommand = self->_shareCommand;
  self->_shareCommand = commandCopy;
}

- (_SFPBPerformEntityQueryCommand)performEntityQueryCommand
{
  if (self->_whichValue == 29)
  {
    v3 = self->_performEntityQueryCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPerformEntityQueryCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 29;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = commandCopy;
}

- (_SFPBShowScreenTimeRequestSheetCommand)showScreenTimeRequestSheetCommand
{
  if (self->_whichValue == 28)
  {
    v3 = self->_showScreenTimeRequestSheetCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowScreenTimeRequestSheetCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 28;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = commandCopy;
}

- (_SFPBShowPurchaseRequestSheetCommand)showPurchaseRequestSheetCommand
{
  if (self->_whichValue == 27)
  {
    v3 = self->_showPurchaseRequestSheetCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowPurchaseRequestSheetCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 27;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = commandCopy;
}

- (_SFPBPerformPersonEntityQueryCommand)performPersonEntityQueryCommand
{
  if (self->_whichValue == 26)
  {
    v3 = self->_performPersonEntityQueryCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPerformPersonEntityQueryCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 26;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = commandCopy;
}

- (_SFPBToggleAudioCommand)toggleAudioCommand
{
  if (self->_whichValue == 25)
  {
    v3 = self->_toggleAudioCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setToggleAudioCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 25;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = commandCopy;
}

- (_SFPBBeginMapsRoutingCommand)beginMapsRoutingCommand
{
  if (self->_whichValue == 24)
  {
    v3 = self->_beginMapsRoutingCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBeginMapsRoutingCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 24;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = commandCopy;
}

- (_SFPBEmailCommand)emailCommand
{
  if (self->_whichValue == 23)
  {
    v3 = self->_emailCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEmailCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 23;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  emailCommand = self->_emailCommand;
  self->_emailCommand = commandCopy;
}

- (_SFPBCallCommand)callCommand
{
  if (self->_whichValue == 22)
  {
    v3 = self->_callCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCallCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 22;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  callCommand = self->_callCommand;
  self->_callCommand = commandCopy;
}

- (_SFPBPlayVideoCommand)playVideoCommand
{
  if (self->_whichValue == 21)
  {
    v3 = self->_playVideoCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlayVideoCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 21;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = commandCopy;
}

- (_SFPBOpenCalculationCommand)openCalculationCommand
{
  if (self->_whichValue == 20)
  {
    v3 = self->_openCalculationCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpenCalculationCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 20;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = commandCopy;
}

- (_SFPBPerformContactQueryCommand)performContactQueryCommand
{
  if (self->_whichValue == 19)
  {
    v3 = self->_performContactQueryCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPerformContactQueryCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 19;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = commandCopy;
}

- (_SFPBInvokeSiriCommand)invokeSiriCommand
{
  if (self->_whichValue == 18)
  {
    v3 = self->_invokeSiriCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInvokeSiriCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 18;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = commandCopy;
}

- (_SFPBSearchWebCommand)searchWebCommand
{
  if (self->_whichValue == 17)
  {
    v3 = self->_searchWebCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchWebCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 17;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = commandCopy;
}

- (_SFPBUpdateSearchQueryCommand)updateSearchQueryCommand
{
  if (self->_whichValue == 16)
  {
    v3 = self->_updateSearchQueryCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUpdateSearchQueryCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  self->_whichValue = 16 * (commandCopy != 0);
  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = commandCopy;
}

- (_SFPBSearchInAppCommand)searchInAppCommand
{
  if (self->_whichValue == 15)
  {
    v3 = self->_searchInAppCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchInAppCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 15;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = commandCopy;
}

- (_SFPBPerformIntentCommand)performIntentCommand
{
  if (self->_whichValue == 14)
  {
    v3 = self->_performIntentCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPerformIntentCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 14;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = commandCopy;
}

- (_SFPBOpenCoreSpotlightItemCommand)openCoreSpotlightItemCommand
{
  if (self->_whichValue == 13)
  {
    v3 = self->_openCoreSpotlightItemCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpenCoreSpotlightItemCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 13;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = commandCopy;
}

- (_SFPBIndexedUserActivityCommand)indexedUserActivityCommand
{
  if (self->_whichValue == 12)
  {
    v3 = self->_indexedUserActivityCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIndexedUserActivityCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 12;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = commandCopy;
}

- (_SFPBRunVoiceShortcutCommand)runVoiceShortcutCommand
{
  if (self->_whichValue == 11)
  {
    v3 = self->_runVoiceShortcutCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRunVoiceShortcutCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 11;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = commandCopy;
}

- (_SFPBLaunchAppCommand)launchAppCommand
{
  if (self->_whichValue == 10)
  {
    v3 = self->_launchAppCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLaunchAppCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 10;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = commandCopy;
}

- (_SFPBRequestUserReportCommand)requestUserReportCommand
{
  if (self->_whichValue == 9)
  {
    v3 = self->_requestUserReportCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestUserReportCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 9;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = commandCopy;
}

- (_SFPBRequestAppClipInstallCommand)requestAppClipInstallCommand
{
  if (self->_whichValue == 8)
  {
    v3 = self->_requestAppClipInstallCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestAppClipInstallCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  self->_whichValue = 8 * (commandCopy != 0);
  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = commandCopy;
}

- (_SFPBOpenWebClipCommand)openWebClipCommand
{
  if (self->_whichValue == 7)
  {
    v3 = self->_openWebClipCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpenWebClipCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 7;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = commandCopy;
}

- (_SFPBOpenAppClipCommand)openAppClipCommand
{
  if (self->_whichValue == 6)
  {
    v3 = self->_openAppClipCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpenAppClipCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 6;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = commandCopy;
}

- (_SFPBOpenFileProviderItemCommand)openFileProviderItemCommand
{
  if (self->_whichValue == 5)
  {
    v3 = self->_openFileProviderItemCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpenFileProviderItemCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 5;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = commandCopy;
}

- (_SFPBOpenPunchoutCommand)openPunchoutCommand
{
  if (self->_whichValue == 4)
  {
    v3 = self->_openPunchoutCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpenPunchoutCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  self->_whichValue = 4 * (commandCopy != 0);
  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = commandCopy;
}

- (_SFPBShowAppStoreSheetCommand)showAppStoreSheetCommand
{
  if (self->_whichValue == 3)
  {
    v3 = self->_showAppStoreSheetCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowAppStoreSheetCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  v61 = 3;
  if (!commandCopy)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = commandCopy;
}

- (_SFPBShowSFCardCommand)showSFCardCommand
{
  if (self->_whichValue == 2)
  {
    v3 = self->_showSFCardCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowSFCardCommand:(id)command
{
  commandCopy = command;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  self->_whichValue = 2 * (commandCopy != 0);
  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = commandCopy;
}

- (_SFPBShowContactCardCommand)showContactCardCommand
{
  if (self->_whichValue == 1)
  {
    v3 = self->_showContactCardCommand;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowContactCardCommand:(id)command
{
  commandCopy = command;
  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = 0;

  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = 0;

  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = 0;

  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = 0;

  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = 0;

  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = 0;

  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = 0;

  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = 0;

  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = 0;

  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = 0;

  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = 0;

  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = 0;

  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = 0;

  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = 0;

  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = 0;

  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = 0;

  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = 0;

  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = 0;

  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = 0;

  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = 0;

  callCommand = self->_callCommand;
  self->_callCommand = 0;

  emailCommand = self->_emailCommand;
  self->_emailCommand = 0;

  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = 0;

  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = 0;

  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = 0;

  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = 0;

  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = 0;

  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = 0;

  shareCommand = self->_shareCommand;
  self->_shareCommand = 0;

  copyCommand = self->_copyCommand;
  self->_copyCommand = 0;

  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = 0;

  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = 0;

  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = 0;

  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = 0;

  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = 0;

  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = 0;

  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = 0;

  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = 0;

  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = 0;

  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = 0;

  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = 0;

  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = 0;

  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = 0;

  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = 0;

  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = 0;

  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = 0;

  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = 0;

  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = 0;

  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = 0;

  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = 0;

  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = 0;

  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = 0;

  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = 0;

  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = 0;

  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = 0;

  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = 0;

  self->_whichValue = commandCopy != 0;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = commandCopy;
}

@end