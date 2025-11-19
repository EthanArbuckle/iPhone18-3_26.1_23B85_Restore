@interface _SFPBCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAddToPhotosLibraryCommand)addToPhotosLibraryCommand;
- (_SFPBBeginMapsRoutingCommand)beginMapsRoutingCommand;
- (_SFPBCallCommand)callCommand;
- (_SFPBClearProactiveCategoryCommand)clearProactiveCategoryCommand;
- (_SFPBCommand)initWithDictionary:(id)a3;
- (_SFPBCommand)initWithFacade:(id)a3;
- (_SFPBCommand)initWithJSON:(id)a3;
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
- (void)setAddToPhotosLibraryCommand:(id)a3;
- (void)setBackendData:(id)a3;
- (void)setBeginMapsRoutingCommand:(id)a3;
- (void)setCallCommand:(id)a3;
- (void)setClearProactiveCategoryCommand:(id)a3;
- (void)setCommandDetail:(id)a3;
- (void)setCopyCommand:(id)a3;
- (void)setCreateCalendarEventCommand:(id)a3;
- (void)setCreateContactCommand:(id)a3;
- (void)setCreateReminderCommand:(id)a3;
- (void)setEmailCommand:(id)a3;
- (void)setExecuteMenuItemCommand:(id)a3;
- (void)setExecuteToolCommand:(id)a3;
- (void)setExpandInlineCommand:(id)a3;
- (void)setFillToolAppEntityParameterCommand:(id)a3;
- (void)setFillToolAppParameterCommand:(id)a3;
- (void)setFillToolFileParameterCommand:(id)a3;
- (void)setFillToolParameterCommand:(id)a3;
- (void)setFillToolPersonParameterCommand:(id)a3;
- (void)setFlightCheckinCommand:(id)a3;
- (void)setIndexedUserActivityCommand:(id)a3;
- (void)setInvokeSiriCommand:(id)a3;
- (void)setLaunchAppCommand:(id)a3;
- (void)setManageReservationCommand:(id)a3;
- (void)setOpenAppClipCommand:(id)a3;
- (void)setOpenCalculationCommand:(id)a3;
- (void)setOpenCoreSpotlightItemCommand:(id)a3;
- (void)setOpenFileProviderItemCommand:(id)a3;
- (void)setOpenMediaCommand:(id)a3;
- (void)setOpenPunchoutCommand:(id)a3;
- (void)setOpenWebClipCommand:(id)a3;
- (void)setPerformContactActionCommand:(id)a3;
- (void)setPerformContactQueryCommand:(id)a3;
- (void)setPerformEntityQueryCommand:(id)a3;
- (void)setPerformIntentCommand:(id)a3;
- (void)setPerformPersonEntityQueryCommand:(id)a3;
- (void)setPlayMediaCommand:(id)a3;
- (void)setPlayVideoCommand:(id)a3;
- (void)setRejectPeopleInPhotoCommand:(id)a3;
- (void)setRequestAppClipInstallCommand:(id)a3;
- (void)setRequestProductPageCommand:(id)a3;
- (void)setRequestUserReportCommand:(id)a3;
- (void)setRunVoiceShortcutCommand:(id)a3;
- (void)setSearchInAppCommand:(id)a3;
- (void)setSearchWebCommand:(id)a3;
- (void)setShareCommand:(id)a3;
- (void)setShowAppStoreSheetCommand:(id)a3;
- (void)setShowContactCardCommand:(id)a3;
- (void)setShowPhotosOneUpViewCommand:(id)a3;
- (void)setShowPurchaseRequestSheetCommand:(id)a3;
- (void)setShowSFCardCommand:(id)a3;
- (void)setShowScreenTimeRequestSheetCommand:(id)a3;
- (void)setShowWrapperResponseViewCommand:(id)a3;
- (void)setSubscribeForUpdatesCommand:(id)a3;
- (void)setToggleAudioCommand:(id)a3;
- (void)setToggleWatchListStatusCommand:(id)a3;
- (void)setUpdateSearchQueryCommand:(id)a3;
- (void)setUpdateSportsFollowingStatusCommand:(id)a3;
- (void)setViewEmailCommand:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCommand

- (_SFPBCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCommand *)self init];

  if (v5)
  {
    v6 = [v4 commandDetail];

    if (v6)
    {
      v7 = [v4 commandDetail];
      [(_SFPBCommand *)v5 setCommandDetail:v7];
    }

    v8 = [v4 normalizedTopic];

    if (v8)
    {
      v9 = [_SFPBTopic alloc];
      v10 = [v4 normalizedTopic];
      v11 = [(_SFPBTopic *)v9 initWithSFTopic:v10];
      [(_SFPBCommand *)v5 setNormalizedTopic:v11];
    }

    v12 = [v4 backendData];

    if (v12)
    {
      v13 = [v4 backendData];
      [(_SFPBCommand *)v5 setBackendData:v13];
    }

    v14 = [v4 commandReference];

    if (v14)
    {
      v15 = [_SFPBCommandReference alloc];
      v16 = [v4 commandReference];
      v17 = [(_SFPBCommandReference *)v15 initWithFacade:v16];
      [(_SFPBCommand *)v5 setCommandReference:v17];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBShowContactCardCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setShowContactCardCommand:v18];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBShowSFCardCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setShowSFCardCommand:v19];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBShowAppStoreSheetCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setShowAppStoreSheetCommand:v20];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBOpenPunchoutCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setOpenPunchoutCommand:v21];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBOpenFileProviderItemCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setOpenFileProviderItemCommand:v22];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBOpenAppClipCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setOpenAppClipCommand:v23];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[_SFPBOpenWebClipCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setOpenWebClipCommand:v24];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRequestAppClipInstallCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setRequestAppClipInstallCommand:v25];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBRequestUserReportCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setRequestUserReportCommand:v26];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBLaunchAppCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setLaunchAppCommand:v27];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBRunVoiceShortcutCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setRunVoiceShortcutCommand:v28];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBIndexedUserActivityCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setIndexedUserActivityCommand:v29];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBOpenCoreSpotlightItemCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setOpenCoreSpotlightItemCommand:v30];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBPerformIntentCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setPerformIntentCommand:v31];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBSearchInAppCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setSearchInAppCommand:v32];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBUpdateSearchQueryCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setUpdateSearchQueryCommand:v33];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBSearchWebCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setSearchWebCommand:v34];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBInvokeSiriCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setInvokeSiriCommand:v35];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBPerformContactQueryCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setPerformContactQueryCommand:v36];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBOpenCalculationCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setOpenCalculationCommand:v37];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBPlayVideoCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setPlayVideoCommand:v38];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBCallCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setCallCommand:v39];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[_SFPBEmailCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setEmailCommand:v40];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBBeginMapsRoutingCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setBeginMapsRoutingCommand:v41];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[_SFPBToggleAudioCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setToggleAudioCommand:v42];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBPerformPersonEntityQueryCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setPerformPersonEntityQueryCommand:v43];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [[_SFPBShowPurchaseRequestSheetCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setShowPurchaseRequestSheetCommand:v44];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBShowScreenTimeRequestSheetCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setShowScreenTimeRequestSheetCommand:v45];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [[_SFPBPerformEntityQueryCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setPerformEntityQueryCommand:v46];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBShareCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setShareCommand:v47];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [[_SFPBCopyCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setCopyCommand:v48];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBToggleWatchListStatusCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setToggleWatchListStatusCommand:v49];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[_SFPBShowPhotosOneUpViewCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setShowPhotosOneUpViewCommand:v50];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBPlayMediaCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setPlayMediaCommand:v51];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = [[_SFPBOpenMediaCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setOpenMediaCommand:v52];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBAddToPhotosLibraryCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setAddToPhotosLibraryCommand:v53];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [[_SFPBPerformContactActionCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setPerformContactActionCommand:v54];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[_SFPBExpandInlineCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setExpandInlineCommand:v55];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [[_SFPBSubscribeForUpdatesCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setSubscribeForUpdatesCommand:v56];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [[_SFPBViewEmailCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setViewEmailCommand:v57];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [[_SFPBRejectPeopleInPhotoCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setRejectPeopleInPhotoCommand:v58];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [[_SFPBShowWrapperResponseViewCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setShowWrapperResponseViewCommand:v59];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = [[_SFPBClearProactiveCategoryCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setClearProactiveCategoryCommand:v60];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [[_SFPBCreateContactCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setCreateContactCommand:v61];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = [[_SFPBCreateCalendarEventCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setCreateCalendarEventCommand:v62];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [[_SFPBCreateReminderCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setCreateReminderCommand:v63];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = [[_SFPBManageReservationCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setManageReservationCommand:v64];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [[_SFPBUpdateSportsFollowingStatusCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setUpdateSportsFollowingStatusCommand:v65];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = [[_SFPBRequestProductPageCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setRequestProductPageCommand:v66];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = [[_SFPBFlightCheckinCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setFlightCheckinCommand:v67];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = [[_SFPBExecuteToolCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setExecuteToolCommand:v68];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBExecuteMenuItemCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setExecuteMenuItemCommand:v69];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = [[_SFPBFillToolParameterCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setFillToolParameterCommand:v70];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = [[_SFPBFillToolAppParameterCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setFillToolAppParameterCommand:v71];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v72 = [[_SFPBFillToolFileParameterCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setFillToolFileParameterCommand:v72];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = [[_SFPBFillToolAppEntityParameterCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setFillToolAppEntityParameterCommand:v73];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = [[_SFPBFillToolPersonParameterCommand alloc] initWithFacade:v4];
      [(_SFPBCommand *)v5 setFillToolPersonParameterCommand:v74];
    }

    v75 = v5;
  }

  return v5;
}

- (_SFPBCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v184.receiver = self;
  v184.super_class = _SFPBCommand;
  v5 = [(_SFPBCommand *)&v184 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"showContactCardCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBShowContactCardCommand alloc] initWithDictionary:v6];
      [(_SFPBCommand *)v5 setShowContactCardCommand:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"showSFCardCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBShowSFCardCommand alloc] initWithDictionary:v8];
      [(_SFPBCommand *)v5 setShowSFCardCommand:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"showAppStoreSheetCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBShowAppStoreSheetCommand alloc] initWithDictionary:v10];
      [(_SFPBCommand *)v5 setShowAppStoreSheetCommand:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"openPunchoutCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBOpenPunchoutCommand alloc] initWithDictionary:v12];
      [(_SFPBCommand *)v5 setOpenPunchoutCommand:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"openFileProviderItemCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBOpenFileProviderItemCommand alloc] initWithDictionary:v14];
      [(_SFPBCommand *)v5 setOpenFileProviderItemCommand:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"openAppClipCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBOpenAppClipCommand alloc] initWithDictionary:v16];
      [(_SFPBCommand *)v5 setOpenAppClipCommand:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"openWebClipCommand"];
    objc_opt_class();
    v183 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBOpenWebClipCommand alloc] initWithDictionary:v18];
      [(_SFPBCommand *)v5 setOpenWebClipCommand:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"requestAppClipInstallCommand"];
    objc_opt_class();
    v182 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRequestAppClipInstallCommand alloc] initWithDictionary:v20];
      [(_SFPBCommand *)v5 setRequestAppClipInstallCommand:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"requestUserReportCommand"];
    objc_opt_class();
    v181 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBRequestUserReportCommand alloc] initWithDictionary:v22];
      [(_SFPBCommand *)v5 setRequestUserReportCommand:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"launchAppCommand"];
    objc_opt_class();
    v180 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBLaunchAppCommand alloc] initWithDictionary:v24];
      [(_SFPBCommand *)v5 setLaunchAppCommand:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"runVoiceShortcutCommand"];
    objc_opt_class();
    v179 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRunVoiceShortcutCommand alloc] initWithDictionary:v26];
      [(_SFPBCommand *)v5 setRunVoiceShortcutCommand:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"indexedUserActivityCommand"];
    objc_opt_class();
    v178 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBIndexedUserActivityCommand alloc] initWithDictionary:v28];
      [(_SFPBCommand *)v5 setIndexedUserActivityCommand:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"openCoreSpotlightItemCommand"];
    objc_opt_class();
    v177 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBOpenCoreSpotlightItemCommand alloc] initWithDictionary:v30];
      [(_SFPBCommand *)v5 setOpenCoreSpotlightItemCommand:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"performIntentCommand"];
    objc_opt_class();
    v176 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBPerformIntentCommand alloc] initWithDictionary:v32];
      [(_SFPBCommand *)v5 setPerformIntentCommand:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"searchInAppCommand"];
    objc_opt_class();
    v175 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBSearchInAppCommand alloc] initWithDictionary:v34];
      [(_SFPBCommand *)v5 setSearchInAppCommand:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"updateSearchQueryCommand"];
    objc_opt_class();
    v174 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBUpdateSearchQueryCommand alloc] initWithDictionary:v36];
      [(_SFPBCommand *)v5 setUpdateSearchQueryCommand:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"searchWebCommand"];
    objc_opt_class();
    v173 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBSearchWebCommand alloc] initWithDictionary:v38];
      [(_SFPBCommand *)v5 setSearchWebCommand:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"invokeSiriCommand"];
    objc_opt_class();
    v172 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBInvokeSiriCommand alloc] initWithDictionary:v40];
      [(_SFPBCommand *)v5 setInvokeSiriCommand:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"performContactQueryCommand"];
    objc_opt_class();
    v171 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBPerformContactQueryCommand alloc] initWithDictionary:v42];
      [(_SFPBCommand *)v5 setPerformContactQueryCommand:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"openCalculationCommand"];
    objc_opt_class();
    v170 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBOpenCalculationCommand alloc] initWithDictionary:v44];
      [(_SFPBCommand *)v5 setOpenCalculationCommand:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"playVideoCommand"];
    objc_opt_class();
    v169 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBPlayVideoCommand alloc] initWithDictionary:v46];
      [(_SFPBCommand *)v5 setPlayVideoCommand:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"callCommand"];
    objc_opt_class();
    v168 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBCallCommand alloc] initWithDictionary:v48];
      [(_SFPBCommand *)v5 setCallCommand:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"emailCommand"];
    objc_opt_class();
    v167 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBEmailCommand alloc] initWithDictionary:v50];
      [(_SFPBCommand *)v5 setEmailCommand:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"beginMapsRoutingCommand"];
    objc_opt_class();
    v166 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBBeginMapsRoutingCommand alloc] initWithDictionary:v52];
      [(_SFPBCommand *)v5 setBeginMapsRoutingCommand:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"toggleAudioCommand"];
    objc_opt_class();
    v165 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[_SFPBToggleAudioCommand alloc] initWithDictionary:v54];
      [(_SFPBCommand *)v5 setToggleAudioCommand:v55];
    }

    v56 = [v4 objectForKeyedSubscript:@"performPersonEntityQueryCommand"];
    objc_opt_class();
    v164 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[_SFPBPerformPersonEntityQueryCommand alloc] initWithDictionary:v56];
      [(_SFPBCommand *)v5 setPerformPersonEntityQueryCommand:v57];
    }

    v58 = [v4 objectForKeyedSubscript:@"showPurchaseRequestSheetCommand"];
    objc_opt_class();
    v163 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[_SFPBShowPurchaseRequestSheetCommand alloc] initWithDictionary:v58];
      [(_SFPBCommand *)v5 setShowPurchaseRequestSheetCommand:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"showScreenTimeRequestSheetCommand"];
    objc_opt_class();
    v162 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[_SFPBShowScreenTimeRequestSheetCommand alloc] initWithDictionary:v60];
      [(_SFPBCommand *)v5 setShowScreenTimeRequestSheetCommand:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"performEntityQueryCommand"];
    objc_opt_class();
    v161 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[_SFPBPerformEntityQueryCommand alloc] initWithDictionary:v62];
      [(_SFPBCommand *)v5 setPerformEntityQueryCommand:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"shareCommand"];
    objc_opt_class();
    v160 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[_SFPBShareCommand alloc] initWithDictionary:v64];
      [(_SFPBCommand *)v5 setShareCommand:v65];
    }

    v66 = [v4 objectForKeyedSubscript:@"copyCommand"];
    objc_opt_class();
    v159 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[_SFPBCopyCommand alloc] initWithDictionary:v66];
      [(_SFPBCommand *)v5 setCopyCommand:v67];
    }

    v68 = [v4 objectForKeyedSubscript:@"toggleWatchListStatusCommand"];
    objc_opt_class();
    v158 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBToggleWatchListStatusCommand alloc] initWithDictionary:v68];
      [(_SFPBCommand *)v5 setToggleWatchListStatusCommand:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"showPhotosOneUpViewCommand"];
    objc_opt_class();
    v157 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[_SFPBShowPhotosOneUpViewCommand alloc] initWithDictionary:v70];
      [(_SFPBCommand *)v5 setShowPhotosOneUpViewCommand:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"playMediaCommand"];
    objc_opt_class();
    v156 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[_SFPBPlayMediaCommand alloc] initWithDictionary:v72];
      [(_SFPBCommand *)v5 setPlayMediaCommand:v73];
    }

    v74 = [v4 objectForKeyedSubscript:@"openMediaCommand"];
    objc_opt_class();
    v155 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[_SFPBOpenMediaCommand alloc] initWithDictionary:v74];
      [(_SFPBCommand *)v5 setOpenMediaCommand:v75];
    }

    v76 = [v4 objectForKeyedSubscript:@"addToPhotosLibraryCommand"];
    objc_opt_class();
    v154 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[_SFPBAddToPhotosLibraryCommand alloc] initWithDictionary:v76];
      [(_SFPBCommand *)v5 setAddToPhotosLibraryCommand:v77];
    }

    v78 = [v4 objectForKeyedSubscript:@"performContactActionCommand"];
    objc_opt_class();
    v153 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[_SFPBPerformContactActionCommand alloc] initWithDictionary:v78];
      [(_SFPBCommand *)v5 setPerformContactActionCommand:v79];
    }

    v80 = [v4 objectForKeyedSubscript:@"expandInlineCommand"];
    objc_opt_class();
    v152 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[_SFPBExpandInlineCommand alloc] initWithDictionary:v80];
      [(_SFPBCommand *)v5 setExpandInlineCommand:v81];
    }

    v82 = [v4 objectForKeyedSubscript:@"subscribeForUpdatesCommand"];
    objc_opt_class();
    v151 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [[_SFPBSubscribeForUpdatesCommand alloc] initWithDictionary:v82];
      [(_SFPBCommand *)v5 setSubscribeForUpdatesCommand:v83];
    }

    v84 = [v4 objectForKeyedSubscript:@"viewEmailCommand"];
    objc_opt_class();
    v150 = v84;
    if (objc_opt_isKindOfClass())
    {
      v85 = [[_SFPBViewEmailCommand alloc] initWithDictionary:v84];
      [(_SFPBCommand *)v5 setViewEmailCommand:v85];
    }

    v86 = [v4 objectForKeyedSubscript:@"rejectPeopleInPhotoCommand"];
    objc_opt_class();
    v149 = v86;
    if (objc_opt_isKindOfClass())
    {
      v87 = [[_SFPBRejectPeopleInPhotoCommand alloc] initWithDictionary:v86];
      [(_SFPBCommand *)v5 setRejectPeopleInPhotoCommand:v87];
    }

    v88 = [v4 objectForKeyedSubscript:@"showWrapperResponseViewCommand"];
    objc_opt_class();
    v148 = v88;
    if (objc_opt_isKindOfClass())
    {
      v89 = [[_SFPBShowWrapperResponseViewCommand alloc] initWithDictionary:v88];
      [(_SFPBCommand *)v5 setShowWrapperResponseViewCommand:v89];
    }

    v90 = [v4 objectForKeyedSubscript:@"clearProactiveCategoryCommand"];
    objc_opt_class();
    v147 = v90;
    if (objc_opt_isKindOfClass())
    {
      v91 = [[_SFPBClearProactiveCategoryCommand alloc] initWithDictionary:v90];
      [(_SFPBCommand *)v5 setClearProactiveCategoryCommand:v91];
    }

    v92 = [v4 objectForKeyedSubscript:@"createContactCommand"];
    objc_opt_class();
    v146 = v92;
    if (objc_opt_isKindOfClass())
    {
      v93 = [[_SFPBCreateContactCommand alloc] initWithDictionary:v92];
      [(_SFPBCommand *)v5 setCreateContactCommand:v93];
    }

    v94 = [v4 objectForKeyedSubscript:@"createCalendarEventCommand"];
    objc_opt_class();
    v145 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = [[_SFPBCreateCalendarEventCommand alloc] initWithDictionary:v94];
      [(_SFPBCommand *)v5 setCreateCalendarEventCommand:v95];
    }

    v96 = [v4 objectForKeyedSubscript:@"createReminderCommand"];
    objc_opt_class();
    v144 = v96;
    if (objc_opt_isKindOfClass())
    {
      v97 = [[_SFPBCreateReminderCommand alloc] initWithDictionary:v96];
      [(_SFPBCommand *)v5 setCreateReminderCommand:v97];
    }

    v98 = [v4 objectForKeyedSubscript:@"manageReservationCommand"];
    objc_opt_class();
    v143 = v98;
    if (objc_opt_isKindOfClass())
    {
      v99 = [[_SFPBManageReservationCommand alloc] initWithDictionary:v98];
      [(_SFPBCommand *)v5 setManageReservationCommand:v99];
    }

    v100 = [v4 objectForKeyedSubscript:@"updateSportsFollowingStatusCommand"];
    objc_opt_class();
    v142 = v100;
    if (objc_opt_isKindOfClass())
    {
      v101 = [[_SFPBUpdateSportsFollowingStatusCommand alloc] initWithDictionary:v100];
      [(_SFPBCommand *)v5 setUpdateSportsFollowingStatusCommand:v101];
    }

    v102 = [v4 objectForKeyedSubscript:@"requestProductPageCommand"];
    objc_opt_class();
    v141 = v102;
    if (objc_opt_isKindOfClass())
    {
      v103 = [[_SFPBRequestProductPageCommand alloc] initWithDictionary:v102];
      [(_SFPBCommand *)v5 setRequestProductPageCommand:v103];
    }

    v104 = [v4 objectForKeyedSubscript:@"flightCheckinCommand"];
    objc_opt_class();
    v140 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[_SFPBFlightCheckinCommand alloc] initWithDictionary:v104];
      [(_SFPBCommand *)v5 setFlightCheckinCommand:v105];
    }

    v106 = [v4 objectForKeyedSubscript:@"executeToolCommand"];
    objc_opt_class();
    v139 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [[_SFPBExecuteToolCommand alloc] initWithDictionary:v106];
      [(_SFPBCommand *)v5 setExecuteToolCommand:v107];
    }

    v108 = [v4 objectForKeyedSubscript:@"executeMenuItemCommand"];
    objc_opt_class();
    v138 = v108;
    if (objc_opt_isKindOfClass())
    {
      v109 = [[_SFPBExecuteMenuItemCommand alloc] initWithDictionary:v108];
      [(_SFPBCommand *)v5 setExecuteMenuItemCommand:v109];
    }

    v110 = [v4 objectForKeyedSubscript:@"fillToolParameterCommand"];
    objc_opt_class();
    v137 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[_SFPBFillToolParameterCommand alloc] initWithDictionary:v110];
      [(_SFPBCommand *)v5 setFillToolParameterCommand:v111];
    }

    v132 = v14;
    v112 = [v4 objectForKeyedSubscript:@"fillToolAppParameterCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v113 = [[_SFPBFillToolAppParameterCommand alloc] initWithDictionary:v112];
      [(_SFPBCommand *)v5 setFillToolAppParameterCommand:v113];
    }

    v130 = v112;
    v131 = v16;
    v114 = [v4 objectForKeyedSubscript:@"fillToolFileParameterCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v115 = [[_SFPBFillToolFileParameterCommand alloc] initWithDictionary:v114];
      [(_SFPBCommand *)v5 setFillToolFileParameterCommand:v115];
    }

    v136 = v6;
    v116 = [v4 objectForKeyedSubscript:@"fillToolAppEntityParameterCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v117 = [[_SFPBFillToolAppEntityParameterCommand alloc] initWithDictionary:v116];
      [(_SFPBCommand *)v5 setFillToolAppEntityParameterCommand:v117];
    }

    v133 = v12;
    v135 = v8;
    v118 = [v4 objectForKeyedSubscript:@"fillToolPersonParameterCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v119 = [[_SFPBFillToolPersonParameterCommand alloc] initWithDictionary:v118];
      [(_SFPBCommand *)v5 setFillToolPersonParameterCommand:v119];
    }

    v134 = v10;
    v120 = [v4 objectForKeyedSubscript:@"commandDetail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v121 = [v120 copy];
      [(_SFPBCommand *)v5 setCommandDetail:v121];
    }

    v122 = [v4 objectForKeyedSubscript:@"normalizedTopic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v123 = [[_SFPBTopic alloc] initWithDictionary:v122];
      [(_SFPBCommand *)v5 setNormalizedTopic:v123];
    }

    v124 = [v4 objectForKeyedSubscript:@"backendData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v125 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v124 options:0];
      [(_SFPBCommand *)v5 setBackendData:v125];
    }

    v126 = [v4 objectForKeyedSubscript:@"commandReference"];
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

- (_SFPBCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCommand *)self dictionaryRepresentation];
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
  if (self->_addToPhotosLibraryCommand)
  {
    v4 = [(_SFPBCommand *)self addToPhotosLibraryCommand];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"addToPhotosLibraryCommand"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"addToPhotosLibraryCommand"];
    }
  }

  if (self->_backendData)
  {
    v7 = [(_SFPBCommand *)self backendData];
    v8 = [v7 base64EncodedStringWithOptions:0];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"backendData"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"backendData"];
    }
  }

  if (self->_beginMapsRoutingCommand)
  {
    v10 = [(_SFPBCommand *)self beginMapsRoutingCommand];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"beginMapsRoutingCommand"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"beginMapsRoutingCommand"];
    }
  }

  if (self->_callCommand)
  {
    v13 = [(_SFPBCommand *)self callCommand];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"callCommand"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"callCommand"];
    }
  }

  if (self->_clearProactiveCategoryCommand)
  {
    v16 = [(_SFPBCommand *)self clearProactiveCategoryCommand];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"clearProactiveCategoryCommand"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"clearProactiveCategoryCommand"];
    }
  }

  if (self->_commandDetail)
  {
    v19 = [(_SFPBCommand *)self commandDetail];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"commandDetail"];
  }

  if (self->_commandReference)
  {
    v21 = [(_SFPBCommand *)self commandReference];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"commandReference"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"commandReference"];
    }
  }

  if (self->_copyCommand)
  {
    v24 = [(_SFPBCommand *)self copyCommand];
    v25 = [(_SFPBCopyCommand *)v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"copyCommand"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"copyCommand"];
    }
  }

  if (self->_createCalendarEventCommand)
  {
    v27 = [(_SFPBCommand *)self createCalendarEventCommand];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"createCalendarEventCommand"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"createCalendarEventCommand"];
    }
  }

  if (self->_createContactCommand)
  {
    v30 = [(_SFPBCommand *)self createContactCommand];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"createContactCommand"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"createContactCommand"];
    }
  }

  if (self->_createReminderCommand)
  {
    v33 = [(_SFPBCommand *)self createReminderCommand];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"createReminderCommand"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"createReminderCommand"];
    }
  }

  if (self->_emailCommand)
  {
    v36 = [(_SFPBCommand *)self emailCommand];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"emailCommand"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"emailCommand"];
    }
  }

  if (self->_executeMenuItemCommand)
  {
    v39 = [(_SFPBCommand *)self executeMenuItemCommand];
    v40 = [v39 dictionaryRepresentation];
    if (v40)
    {
      [v3 setObject:v40 forKeyedSubscript:@"executeMenuItemCommand"];
    }

    else
    {
      v41 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v41 forKeyedSubscript:@"executeMenuItemCommand"];
    }
  }

  if (self->_executeToolCommand)
  {
    v42 = [(_SFPBCommand *)self executeToolCommand];
    v43 = [v42 dictionaryRepresentation];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"executeToolCommand"];
    }

    else
    {
      v44 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v44 forKeyedSubscript:@"executeToolCommand"];
    }
  }

  if (self->_expandInlineCommand)
  {
    v45 = [(_SFPBCommand *)self expandInlineCommand];
    v46 = [v45 dictionaryRepresentation];
    if (v46)
    {
      [v3 setObject:v46 forKeyedSubscript:@"expandInlineCommand"];
    }

    else
    {
      v47 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v47 forKeyedSubscript:@"expandInlineCommand"];
    }
  }

  if (self->_fillToolAppEntityParameterCommand)
  {
    v48 = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
    v49 = [v48 dictionaryRepresentation];
    if (v49)
    {
      [v3 setObject:v49 forKeyedSubscript:@"fillToolAppEntityParameterCommand"];
    }

    else
    {
      v50 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v50 forKeyedSubscript:@"fillToolAppEntityParameterCommand"];
    }
  }

  if (self->_fillToolAppParameterCommand)
  {
    v51 = [(_SFPBCommand *)self fillToolAppParameterCommand];
    v52 = [v51 dictionaryRepresentation];
    if (v52)
    {
      [v3 setObject:v52 forKeyedSubscript:@"fillToolAppParameterCommand"];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v53 forKeyedSubscript:@"fillToolAppParameterCommand"];
    }
  }

  if (self->_fillToolFileParameterCommand)
  {
    v54 = [(_SFPBCommand *)self fillToolFileParameterCommand];
    v55 = [v54 dictionaryRepresentation];
    if (v55)
    {
      [v3 setObject:v55 forKeyedSubscript:@"fillToolFileParameterCommand"];
    }

    else
    {
      v56 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v56 forKeyedSubscript:@"fillToolFileParameterCommand"];
    }
  }

  if (self->_fillToolParameterCommand)
  {
    v57 = [(_SFPBCommand *)self fillToolParameterCommand];
    v58 = [v57 dictionaryRepresentation];
    if (v58)
    {
      [v3 setObject:v58 forKeyedSubscript:@"fillToolParameterCommand"];
    }

    else
    {
      v59 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v59 forKeyedSubscript:@"fillToolParameterCommand"];
    }
  }

  if (self->_fillToolPersonParameterCommand)
  {
    v60 = [(_SFPBCommand *)self fillToolPersonParameterCommand];
    v61 = [v60 dictionaryRepresentation];
    if (v61)
    {
      [v3 setObject:v61 forKeyedSubscript:@"fillToolPersonParameterCommand"];
    }

    else
    {
      v62 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v62 forKeyedSubscript:@"fillToolPersonParameterCommand"];
    }
  }

  if (self->_flightCheckinCommand)
  {
    v63 = [(_SFPBCommand *)self flightCheckinCommand];
    v64 = [v63 dictionaryRepresentation];
    if (v64)
    {
      [v3 setObject:v64 forKeyedSubscript:@"flightCheckinCommand"];
    }

    else
    {
      v65 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v65 forKeyedSubscript:@"flightCheckinCommand"];
    }
  }

  if (self->_indexedUserActivityCommand)
  {
    v66 = [(_SFPBCommand *)self indexedUserActivityCommand];
    v67 = [v66 dictionaryRepresentation];
    if (v67)
    {
      [v3 setObject:v67 forKeyedSubscript:@"indexedUserActivityCommand"];
    }

    else
    {
      v68 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v68 forKeyedSubscript:@"indexedUserActivityCommand"];
    }
  }

  if (self->_invokeSiriCommand)
  {
    v69 = [(_SFPBCommand *)self invokeSiriCommand];
    v70 = [v69 dictionaryRepresentation];
    if (v70)
    {
      [v3 setObject:v70 forKeyedSubscript:@"invokeSiriCommand"];
    }

    else
    {
      v71 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v71 forKeyedSubscript:@"invokeSiriCommand"];
    }
  }

  if (self->_launchAppCommand)
  {
    v72 = [(_SFPBCommand *)self launchAppCommand];
    v73 = [v72 dictionaryRepresentation];
    if (v73)
    {
      [v3 setObject:v73 forKeyedSubscript:@"launchAppCommand"];
    }

    else
    {
      v74 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v74 forKeyedSubscript:@"launchAppCommand"];
    }
  }

  if (self->_manageReservationCommand)
  {
    v75 = [(_SFPBCommand *)self manageReservationCommand];
    v76 = [v75 dictionaryRepresentation];
    if (v76)
    {
      [v3 setObject:v76 forKeyedSubscript:@"manageReservationCommand"];
    }

    else
    {
      v77 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v77 forKeyedSubscript:@"manageReservationCommand"];
    }
  }

  if (self->_normalizedTopic)
  {
    v78 = [(_SFPBCommand *)self normalizedTopic];
    v79 = [v78 dictionaryRepresentation];
    if (v79)
    {
      [v3 setObject:v79 forKeyedSubscript:@"normalizedTopic"];
    }

    else
    {
      v80 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v80 forKeyedSubscript:@"normalizedTopic"];
    }
  }

  if (self->_openAppClipCommand)
  {
    v81 = [(_SFPBCommand *)self openAppClipCommand];
    v82 = [v81 dictionaryRepresentation];
    if (v82)
    {
      [v3 setObject:v82 forKeyedSubscript:@"openAppClipCommand"];
    }

    else
    {
      v83 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v83 forKeyedSubscript:@"openAppClipCommand"];
    }
  }

  if (self->_openCalculationCommand)
  {
    v84 = [(_SFPBCommand *)self openCalculationCommand];
    v85 = [v84 dictionaryRepresentation];
    if (v85)
    {
      [v3 setObject:v85 forKeyedSubscript:@"openCalculationCommand"];
    }

    else
    {
      v86 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v86 forKeyedSubscript:@"openCalculationCommand"];
    }
  }

  if (self->_openCoreSpotlightItemCommand)
  {
    v87 = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
    v88 = [v87 dictionaryRepresentation];
    if (v88)
    {
      [v3 setObject:v88 forKeyedSubscript:@"openCoreSpotlightItemCommand"];
    }

    else
    {
      v89 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v89 forKeyedSubscript:@"openCoreSpotlightItemCommand"];
    }
  }

  if (self->_openFileProviderItemCommand)
  {
    v90 = [(_SFPBCommand *)self openFileProviderItemCommand];
    v91 = [v90 dictionaryRepresentation];
    if (v91)
    {
      [v3 setObject:v91 forKeyedSubscript:@"openFileProviderItemCommand"];
    }

    else
    {
      v92 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v92 forKeyedSubscript:@"openFileProviderItemCommand"];
    }
  }

  if (self->_openMediaCommand)
  {
    v93 = [(_SFPBCommand *)self openMediaCommand];
    v94 = [v93 dictionaryRepresentation];
    if (v94)
    {
      [v3 setObject:v94 forKeyedSubscript:@"openMediaCommand"];
    }

    else
    {
      v95 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v95 forKeyedSubscript:@"openMediaCommand"];
    }
  }

  if (self->_openPunchoutCommand)
  {
    v96 = [(_SFPBCommand *)self openPunchoutCommand];
    v97 = [v96 dictionaryRepresentation];
    if (v97)
    {
      [v3 setObject:v97 forKeyedSubscript:@"openPunchoutCommand"];
    }

    else
    {
      v98 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v98 forKeyedSubscript:@"openPunchoutCommand"];
    }
  }

  if (self->_openWebClipCommand)
  {
    v99 = [(_SFPBCommand *)self openWebClipCommand];
    v100 = [v99 dictionaryRepresentation];
    if (v100)
    {
      [v3 setObject:v100 forKeyedSubscript:@"openWebClipCommand"];
    }

    else
    {
      v101 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v101 forKeyedSubscript:@"openWebClipCommand"];
    }
  }

  if (self->_performContactActionCommand)
  {
    v102 = [(_SFPBCommand *)self performContactActionCommand];
    v103 = [v102 dictionaryRepresentation];
    if (v103)
    {
      [v3 setObject:v103 forKeyedSubscript:@"performContactActionCommand"];
    }

    else
    {
      v104 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v104 forKeyedSubscript:@"performContactActionCommand"];
    }
  }

  if (self->_performContactQueryCommand)
  {
    v105 = [(_SFPBCommand *)self performContactQueryCommand];
    v106 = [v105 dictionaryRepresentation];
    if (v106)
    {
      [v3 setObject:v106 forKeyedSubscript:@"performContactQueryCommand"];
    }

    else
    {
      v107 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v107 forKeyedSubscript:@"performContactQueryCommand"];
    }
  }

  if (self->_performEntityQueryCommand)
  {
    v108 = [(_SFPBCommand *)self performEntityQueryCommand];
    v109 = [v108 dictionaryRepresentation];
    if (v109)
    {
      [v3 setObject:v109 forKeyedSubscript:@"performEntityQueryCommand"];
    }

    else
    {
      v110 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v110 forKeyedSubscript:@"performEntityQueryCommand"];
    }
  }

  if (self->_performIntentCommand)
  {
    v111 = [(_SFPBCommand *)self performIntentCommand];
    v112 = [v111 dictionaryRepresentation];
    if (v112)
    {
      [v3 setObject:v112 forKeyedSubscript:@"performIntentCommand"];
    }

    else
    {
      v113 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v113 forKeyedSubscript:@"performIntentCommand"];
    }
  }

  if (self->_performPersonEntityQueryCommand)
  {
    v114 = [(_SFPBCommand *)self performPersonEntityQueryCommand];
    v115 = [v114 dictionaryRepresentation];
    if (v115)
    {
      [v3 setObject:v115 forKeyedSubscript:@"performPersonEntityQueryCommand"];
    }

    else
    {
      v116 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v116 forKeyedSubscript:@"performPersonEntityQueryCommand"];
    }
  }

  if (self->_playMediaCommand)
  {
    v117 = [(_SFPBCommand *)self playMediaCommand];
    v118 = [v117 dictionaryRepresentation];
    if (v118)
    {
      [v3 setObject:v118 forKeyedSubscript:@"playMediaCommand"];
    }

    else
    {
      v119 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v119 forKeyedSubscript:@"playMediaCommand"];
    }
  }

  if (self->_playVideoCommand)
  {
    v120 = [(_SFPBCommand *)self playVideoCommand];
    v121 = [v120 dictionaryRepresentation];
    if (v121)
    {
      [v3 setObject:v121 forKeyedSubscript:@"playVideoCommand"];
    }

    else
    {
      v122 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v122 forKeyedSubscript:@"playVideoCommand"];
    }
  }

  if (self->_rejectPeopleInPhotoCommand)
  {
    v123 = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
    v124 = [v123 dictionaryRepresentation];
    if (v124)
    {
      [v3 setObject:v124 forKeyedSubscript:@"rejectPeopleInPhotoCommand"];
    }

    else
    {
      v125 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v125 forKeyedSubscript:@"rejectPeopleInPhotoCommand"];
    }
  }

  if (self->_requestAppClipInstallCommand)
  {
    v126 = [(_SFPBCommand *)self requestAppClipInstallCommand];
    v127 = [v126 dictionaryRepresentation];
    if (v127)
    {
      [v3 setObject:v127 forKeyedSubscript:@"requestAppClipInstallCommand"];
    }

    else
    {
      v128 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v128 forKeyedSubscript:@"requestAppClipInstallCommand"];
    }
  }

  if (self->_requestProductPageCommand)
  {
    v129 = [(_SFPBCommand *)self requestProductPageCommand];
    v130 = [v129 dictionaryRepresentation];
    if (v130)
    {
      [v3 setObject:v130 forKeyedSubscript:@"requestProductPageCommand"];
    }

    else
    {
      v131 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v131 forKeyedSubscript:@"requestProductPageCommand"];
    }
  }

  if (self->_requestUserReportCommand)
  {
    v132 = [(_SFPBCommand *)self requestUserReportCommand];
    v133 = [v132 dictionaryRepresentation];
    if (v133)
    {
      [v3 setObject:v133 forKeyedSubscript:@"requestUserReportCommand"];
    }

    else
    {
      v134 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v134 forKeyedSubscript:@"requestUserReportCommand"];
    }
  }

  if (self->_runVoiceShortcutCommand)
  {
    v135 = [(_SFPBCommand *)self runVoiceShortcutCommand];
    v136 = [v135 dictionaryRepresentation];
    if (v136)
    {
      [v3 setObject:v136 forKeyedSubscript:@"runVoiceShortcutCommand"];
    }

    else
    {
      v137 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v137 forKeyedSubscript:@"runVoiceShortcutCommand"];
    }
  }

  if (self->_searchInAppCommand)
  {
    v138 = [(_SFPBCommand *)self searchInAppCommand];
    v139 = [v138 dictionaryRepresentation];
    if (v139)
    {
      [v3 setObject:v139 forKeyedSubscript:@"searchInAppCommand"];
    }

    else
    {
      v140 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v140 forKeyedSubscript:@"searchInAppCommand"];
    }
  }

  if (self->_searchWebCommand)
  {
    v141 = [(_SFPBCommand *)self searchWebCommand];
    v142 = [v141 dictionaryRepresentation];
    if (v142)
    {
      [v3 setObject:v142 forKeyedSubscript:@"searchWebCommand"];
    }

    else
    {
      v143 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v143 forKeyedSubscript:@"searchWebCommand"];
    }
  }

  if (self->_shareCommand)
  {
    v144 = [(_SFPBCommand *)self shareCommand];
    v145 = [v144 dictionaryRepresentation];
    if (v145)
    {
      [v3 setObject:v145 forKeyedSubscript:@"shareCommand"];
    }

    else
    {
      v146 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v146 forKeyedSubscript:@"shareCommand"];
    }
  }

  if (self->_showAppStoreSheetCommand)
  {
    v147 = [(_SFPBCommand *)self showAppStoreSheetCommand];
    v148 = [v147 dictionaryRepresentation];
    if (v148)
    {
      [v3 setObject:v148 forKeyedSubscript:@"showAppStoreSheetCommand"];
    }

    else
    {
      v149 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v149 forKeyedSubscript:@"showAppStoreSheetCommand"];
    }
  }

  if (self->_showContactCardCommand)
  {
    v150 = [(_SFPBCommand *)self showContactCardCommand];
    v151 = [v150 dictionaryRepresentation];
    if (v151)
    {
      [v3 setObject:v151 forKeyedSubscript:@"showContactCardCommand"];
    }

    else
    {
      v152 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v152 forKeyedSubscript:@"showContactCardCommand"];
    }
  }

  if (self->_showPhotosOneUpViewCommand)
  {
    v153 = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
    v154 = [v153 dictionaryRepresentation];
    if (v154)
    {
      [v3 setObject:v154 forKeyedSubscript:@"showPhotosOneUpViewCommand"];
    }

    else
    {
      v155 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v155 forKeyedSubscript:@"showPhotosOneUpViewCommand"];
    }
  }

  if (self->_showPurchaseRequestSheetCommand)
  {
    v156 = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
    v157 = [v156 dictionaryRepresentation];
    if (v157)
    {
      [v3 setObject:v157 forKeyedSubscript:@"showPurchaseRequestSheetCommand"];
    }

    else
    {
      v158 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v158 forKeyedSubscript:@"showPurchaseRequestSheetCommand"];
    }
  }

  if (self->_showSFCardCommand)
  {
    v159 = [(_SFPBCommand *)self showSFCardCommand];
    v160 = [v159 dictionaryRepresentation];
    if (v160)
    {
      [v3 setObject:v160 forKeyedSubscript:@"showSFCardCommand"];
    }

    else
    {
      v161 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v161 forKeyedSubscript:@"showSFCardCommand"];
    }
  }

  if (self->_showScreenTimeRequestSheetCommand)
  {
    v162 = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
    v163 = [v162 dictionaryRepresentation];
    if (v163)
    {
      [v3 setObject:v163 forKeyedSubscript:@"showScreenTimeRequestSheetCommand"];
    }

    else
    {
      v164 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v164 forKeyedSubscript:@"showScreenTimeRequestSheetCommand"];
    }
  }

  if (self->_showWrapperResponseViewCommand)
  {
    v165 = [(_SFPBCommand *)self showWrapperResponseViewCommand];
    v166 = [v165 dictionaryRepresentation];
    if (v166)
    {
      [v3 setObject:v166 forKeyedSubscript:@"showWrapperResponseViewCommand"];
    }

    else
    {
      v167 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v167 forKeyedSubscript:@"showWrapperResponseViewCommand"];
    }
  }

  if (self->_subscribeForUpdatesCommand)
  {
    v168 = [(_SFPBCommand *)self subscribeForUpdatesCommand];
    v169 = [v168 dictionaryRepresentation];
    if (v169)
    {
      [v3 setObject:v169 forKeyedSubscript:@"subscribeForUpdatesCommand"];
    }

    else
    {
      v170 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v170 forKeyedSubscript:@"subscribeForUpdatesCommand"];
    }
  }

  if (self->_toggleAudioCommand)
  {
    v171 = [(_SFPBCommand *)self toggleAudioCommand];
    v172 = [v171 dictionaryRepresentation];
    if (v172)
    {
      [v3 setObject:v172 forKeyedSubscript:@"toggleAudioCommand"];
    }

    else
    {
      v173 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v173 forKeyedSubscript:@"toggleAudioCommand"];
    }
  }

  if (self->_toggleWatchListStatusCommand)
  {
    v174 = [(_SFPBCommand *)self toggleWatchListStatusCommand];
    v175 = [v174 dictionaryRepresentation];
    if (v175)
    {
      [v3 setObject:v175 forKeyedSubscript:@"toggleWatchListStatusCommand"];
    }

    else
    {
      v176 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v176 forKeyedSubscript:@"toggleWatchListStatusCommand"];
    }
  }

  if (self->_updateSearchQueryCommand)
  {
    v177 = [(_SFPBCommand *)self updateSearchQueryCommand];
    v178 = [v177 dictionaryRepresentation];
    if (v178)
    {
      [v3 setObject:v178 forKeyedSubscript:@"updateSearchQueryCommand"];
    }

    else
    {
      v179 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v179 forKeyedSubscript:@"updateSearchQueryCommand"];
    }
  }

  if (self->_updateSportsFollowingStatusCommand)
  {
    v180 = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
    v181 = [v180 dictionaryRepresentation];
    if (v181)
    {
      [v3 setObject:v181 forKeyedSubscript:@"updateSportsFollowingStatusCommand"];
    }

    else
    {
      v182 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v182 forKeyedSubscript:@"updateSportsFollowingStatusCommand"];
    }
  }

  if (self->_viewEmailCommand)
  {
    v183 = [(_SFPBCommand *)self viewEmailCommand];
    v184 = [v183 dictionaryRepresentation];
    if (v184)
    {
      [v3 setObject:v184 forKeyedSubscript:@"viewEmailCommand"];
    }

    else
    {
      v185 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v185 forKeyedSubscript:@"viewEmailCommand"];
    }
  }

  v186 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_307;
  }

  v5 = [(_SFPBCommand *)self showContactCardCommand];
  v6 = [v4 showContactCardCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v7 = [(_SFPBCommand *)self showContactCardCommand];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCommand *)self showContactCardCommand];
    v10 = [v4 showContactCardCommand];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self showSFCardCommand];
  v6 = [v4 showSFCardCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v12 = [(_SFPBCommand *)self showSFCardCommand];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCommand *)self showSFCardCommand];
    v15 = [v4 showSFCardCommand];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self showAppStoreSheetCommand];
  v6 = [v4 showAppStoreSheetCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v17 = [(_SFPBCommand *)self showAppStoreSheetCommand];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCommand *)self showAppStoreSheetCommand];
    v20 = [v4 showAppStoreSheetCommand];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self openPunchoutCommand];
  v6 = [v4 openPunchoutCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v22 = [(_SFPBCommand *)self openPunchoutCommand];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBCommand *)self openPunchoutCommand];
    v25 = [v4 openPunchoutCommand];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self openFileProviderItemCommand];
  v6 = [v4 openFileProviderItemCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v27 = [(_SFPBCommand *)self openFileProviderItemCommand];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBCommand *)self openFileProviderItemCommand];
    v30 = [v4 openFileProviderItemCommand];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self openAppClipCommand];
  v6 = [v4 openAppClipCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v32 = [(_SFPBCommand *)self openAppClipCommand];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBCommand *)self openAppClipCommand];
    v35 = [v4 openAppClipCommand];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self openWebClipCommand];
  v6 = [v4 openWebClipCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v37 = [(_SFPBCommand *)self openWebClipCommand];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBCommand *)self openWebClipCommand];
    v40 = [v4 openWebClipCommand];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self requestAppClipInstallCommand];
  v6 = [v4 requestAppClipInstallCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v42 = [(_SFPBCommand *)self requestAppClipInstallCommand];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBCommand *)self requestAppClipInstallCommand];
    v45 = [v4 requestAppClipInstallCommand];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self requestUserReportCommand];
  v6 = [v4 requestUserReportCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v47 = [(_SFPBCommand *)self requestUserReportCommand];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBCommand *)self requestUserReportCommand];
    v50 = [v4 requestUserReportCommand];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self launchAppCommand];
  v6 = [v4 launchAppCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v52 = [(_SFPBCommand *)self launchAppCommand];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBCommand *)self launchAppCommand];
    v55 = [v4 launchAppCommand];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self runVoiceShortcutCommand];
  v6 = [v4 runVoiceShortcutCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v57 = [(_SFPBCommand *)self runVoiceShortcutCommand];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBCommand *)self runVoiceShortcutCommand];
    v60 = [v4 runVoiceShortcutCommand];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self indexedUserActivityCommand];
  v6 = [v4 indexedUserActivityCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v62 = [(_SFPBCommand *)self indexedUserActivityCommand];
  if (v62)
  {
    v63 = v62;
    v64 = [(_SFPBCommand *)self indexedUserActivityCommand];
    v65 = [v4 indexedUserActivityCommand];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
  v6 = [v4 openCoreSpotlightItemCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v67 = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
  if (v67)
  {
    v68 = v67;
    v69 = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
    v70 = [v4 openCoreSpotlightItemCommand];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self performIntentCommand];
  v6 = [v4 performIntentCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v72 = [(_SFPBCommand *)self performIntentCommand];
  if (v72)
  {
    v73 = v72;
    v74 = [(_SFPBCommand *)self performIntentCommand];
    v75 = [v4 performIntentCommand];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self searchInAppCommand];
  v6 = [v4 searchInAppCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v77 = [(_SFPBCommand *)self searchInAppCommand];
  if (v77)
  {
    v78 = v77;
    v79 = [(_SFPBCommand *)self searchInAppCommand];
    v80 = [v4 searchInAppCommand];
    v81 = [v79 isEqual:v80];

    if (!v81)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self updateSearchQueryCommand];
  v6 = [v4 updateSearchQueryCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v82 = [(_SFPBCommand *)self updateSearchQueryCommand];
  if (v82)
  {
    v83 = v82;
    v84 = [(_SFPBCommand *)self updateSearchQueryCommand];
    v85 = [v4 updateSearchQueryCommand];
    v86 = [v84 isEqual:v85];

    if (!v86)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self searchWebCommand];
  v6 = [v4 searchWebCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v87 = [(_SFPBCommand *)self searchWebCommand];
  if (v87)
  {
    v88 = v87;
    v89 = [(_SFPBCommand *)self searchWebCommand];
    v90 = [v4 searchWebCommand];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self invokeSiriCommand];
  v6 = [v4 invokeSiriCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v92 = [(_SFPBCommand *)self invokeSiriCommand];
  if (v92)
  {
    v93 = v92;
    v94 = [(_SFPBCommand *)self invokeSiriCommand];
    v95 = [v4 invokeSiriCommand];
    v96 = [v94 isEqual:v95];

    if (!v96)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self performContactQueryCommand];
  v6 = [v4 performContactQueryCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v97 = [(_SFPBCommand *)self performContactQueryCommand];
  if (v97)
  {
    v98 = v97;
    v99 = [(_SFPBCommand *)self performContactQueryCommand];
    v100 = [v4 performContactQueryCommand];
    v101 = [v99 isEqual:v100];

    if (!v101)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self openCalculationCommand];
  v6 = [v4 openCalculationCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v102 = [(_SFPBCommand *)self openCalculationCommand];
  if (v102)
  {
    v103 = v102;
    v104 = [(_SFPBCommand *)self openCalculationCommand];
    v105 = [v4 openCalculationCommand];
    v106 = [v104 isEqual:v105];

    if (!v106)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self playVideoCommand];
  v6 = [v4 playVideoCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v107 = [(_SFPBCommand *)self playVideoCommand];
  if (v107)
  {
    v108 = v107;
    v109 = [(_SFPBCommand *)self playVideoCommand];
    v110 = [v4 playVideoCommand];
    v111 = [v109 isEqual:v110];

    if (!v111)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self callCommand];
  v6 = [v4 callCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v112 = [(_SFPBCommand *)self callCommand];
  if (v112)
  {
    v113 = v112;
    v114 = [(_SFPBCommand *)self callCommand];
    v115 = [v4 callCommand];
    v116 = [v114 isEqual:v115];

    if (!v116)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self emailCommand];
  v6 = [v4 emailCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v117 = [(_SFPBCommand *)self emailCommand];
  if (v117)
  {
    v118 = v117;
    v119 = [(_SFPBCommand *)self emailCommand];
    v120 = [v4 emailCommand];
    v121 = [v119 isEqual:v120];

    if (!v121)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self beginMapsRoutingCommand];
  v6 = [v4 beginMapsRoutingCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v122 = [(_SFPBCommand *)self beginMapsRoutingCommand];
  if (v122)
  {
    v123 = v122;
    v124 = [(_SFPBCommand *)self beginMapsRoutingCommand];
    v125 = [v4 beginMapsRoutingCommand];
    v126 = [v124 isEqual:v125];

    if (!v126)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self toggleAudioCommand];
  v6 = [v4 toggleAudioCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v127 = [(_SFPBCommand *)self toggleAudioCommand];
  if (v127)
  {
    v128 = v127;
    v129 = [(_SFPBCommand *)self toggleAudioCommand];
    v130 = [v4 toggleAudioCommand];
    v131 = [v129 isEqual:v130];

    if (!v131)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self performPersonEntityQueryCommand];
  v6 = [v4 performPersonEntityQueryCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v132 = [(_SFPBCommand *)self performPersonEntityQueryCommand];
  if (v132)
  {
    v133 = v132;
    v134 = [(_SFPBCommand *)self performPersonEntityQueryCommand];
    v135 = [v4 performPersonEntityQueryCommand];
    v136 = [v134 isEqual:v135];

    if (!v136)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
  v6 = [v4 showPurchaseRequestSheetCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v137 = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
  if (v137)
  {
    v138 = v137;
    v139 = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
    v140 = [v4 showPurchaseRequestSheetCommand];
    v141 = [v139 isEqual:v140];

    if (!v141)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
  v6 = [v4 showScreenTimeRequestSheetCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v142 = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
  if (v142)
  {
    v143 = v142;
    v144 = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
    v145 = [v4 showScreenTimeRequestSheetCommand];
    v146 = [v144 isEqual:v145];

    if (!v146)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self performEntityQueryCommand];
  v6 = [v4 performEntityQueryCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v147 = [(_SFPBCommand *)self performEntityQueryCommand];
  if (v147)
  {
    v148 = v147;
    v149 = [(_SFPBCommand *)self performEntityQueryCommand];
    v150 = [v4 performEntityQueryCommand];
    v151 = [v149 isEqual:v150];

    if (!v151)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self shareCommand];
  v6 = [v4 shareCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v152 = [(_SFPBCommand *)self shareCommand];
  if (v152)
  {
    v153 = v152;
    v154 = [(_SFPBCommand *)self shareCommand];
    v155 = [v4 shareCommand];
    v156 = [v154 isEqual:v155];

    if (!v156)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self copyCommand];
  v6 = [v4 copyCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v157 = [(_SFPBCommand *)self copyCommand];
  if (v157)
  {
    v158 = v157;
    v159 = [(_SFPBCommand *)self copyCommand];
    v160 = [v4 copyCommand];
    v161 = [(_SFPBCopyCommand *)v159 isEqual:v160];

    if (!v161)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self toggleWatchListStatusCommand];
  v6 = [v4 toggleWatchListStatusCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v162 = [(_SFPBCommand *)self toggleWatchListStatusCommand];
  if (v162)
  {
    v163 = v162;
    v164 = [(_SFPBCommand *)self toggleWatchListStatusCommand];
    v165 = [v4 toggleWatchListStatusCommand];
    v166 = [v164 isEqual:v165];

    if (!v166)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
  v6 = [v4 showPhotosOneUpViewCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v167 = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
  if (v167)
  {
    v168 = v167;
    v169 = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
    v170 = [v4 showPhotosOneUpViewCommand];
    v171 = [v169 isEqual:v170];

    if (!v171)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self playMediaCommand];
  v6 = [v4 playMediaCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v172 = [(_SFPBCommand *)self playMediaCommand];
  if (v172)
  {
    v173 = v172;
    v174 = [(_SFPBCommand *)self playMediaCommand];
    v175 = [v4 playMediaCommand];
    v176 = [v174 isEqual:v175];

    if (!v176)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self openMediaCommand];
  v6 = [v4 openMediaCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v177 = [(_SFPBCommand *)self openMediaCommand];
  if (v177)
  {
    v178 = v177;
    v179 = [(_SFPBCommand *)self openMediaCommand];
    v180 = [v4 openMediaCommand];
    v181 = [v179 isEqual:v180];

    if (!v181)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self addToPhotosLibraryCommand];
  v6 = [v4 addToPhotosLibraryCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v182 = [(_SFPBCommand *)self addToPhotosLibraryCommand];
  if (v182)
  {
    v183 = v182;
    v184 = [(_SFPBCommand *)self addToPhotosLibraryCommand];
    v185 = [v4 addToPhotosLibraryCommand];
    v186 = [v184 isEqual:v185];

    if (!v186)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self performContactActionCommand];
  v6 = [v4 performContactActionCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v187 = [(_SFPBCommand *)self performContactActionCommand];
  if (v187)
  {
    v188 = v187;
    v189 = [(_SFPBCommand *)self performContactActionCommand];
    v190 = [v4 performContactActionCommand];
    v191 = [v189 isEqual:v190];

    if (!v191)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self expandInlineCommand];
  v6 = [v4 expandInlineCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v192 = [(_SFPBCommand *)self expandInlineCommand];
  if (v192)
  {
    v193 = v192;
    v194 = [(_SFPBCommand *)self expandInlineCommand];
    v195 = [v4 expandInlineCommand];
    v196 = [v194 isEqual:v195];

    if (!v196)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self subscribeForUpdatesCommand];
  v6 = [v4 subscribeForUpdatesCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v197 = [(_SFPBCommand *)self subscribeForUpdatesCommand];
  if (v197)
  {
    v198 = v197;
    v199 = [(_SFPBCommand *)self subscribeForUpdatesCommand];
    v200 = [v4 subscribeForUpdatesCommand];
    v201 = [v199 isEqual:v200];

    if (!v201)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self viewEmailCommand];
  v6 = [v4 viewEmailCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v202 = [(_SFPBCommand *)self viewEmailCommand];
  if (v202)
  {
    v203 = v202;
    v204 = [(_SFPBCommand *)self viewEmailCommand];
    v205 = [v4 viewEmailCommand];
    v206 = [v204 isEqual:v205];

    if (!v206)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
  v6 = [v4 rejectPeopleInPhotoCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v207 = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
  if (v207)
  {
    v208 = v207;
    v209 = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
    v210 = [v4 rejectPeopleInPhotoCommand];
    v211 = [v209 isEqual:v210];

    if (!v211)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self showWrapperResponseViewCommand];
  v6 = [v4 showWrapperResponseViewCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v212 = [(_SFPBCommand *)self showWrapperResponseViewCommand];
  if (v212)
  {
    v213 = v212;
    v214 = [(_SFPBCommand *)self showWrapperResponseViewCommand];
    v215 = [v4 showWrapperResponseViewCommand];
    v216 = [v214 isEqual:v215];

    if (!v216)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self clearProactiveCategoryCommand];
  v6 = [v4 clearProactiveCategoryCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v217 = [(_SFPBCommand *)self clearProactiveCategoryCommand];
  if (v217)
  {
    v218 = v217;
    v219 = [(_SFPBCommand *)self clearProactiveCategoryCommand];
    v220 = [v4 clearProactiveCategoryCommand];
    v221 = [v219 isEqual:v220];

    if (!v221)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self createContactCommand];
  v6 = [v4 createContactCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v222 = [(_SFPBCommand *)self createContactCommand];
  if (v222)
  {
    v223 = v222;
    v224 = [(_SFPBCommand *)self createContactCommand];
    v225 = [v4 createContactCommand];
    v226 = [v224 isEqual:v225];

    if (!v226)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self createCalendarEventCommand];
  v6 = [v4 createCalendarEventCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v227 = [(_SFPBCommand *)self createCalendarEventCommand];
  if (v227)
  {
    v228 = v227;
    v229 = [(_SFPBCommand *)self createCalendarEventCommand];
    v230 = [v4 createCalendarEventCommand];
    v231 = [v229 isEqual:v230];

    if (!v231)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self createReminderCommand];
  v6 = [v4 createReminderCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v232 = [(_SFPBCommand *)self createReminderCommand];
  if (v232)
  {
    v233 = v232;
    v234 = [(_SFPBCommand *)self createReminderCommand];
    v235 = [v4 createReminderCommand];
    v236 = [v234 isEqual:v235];

    if (!v236)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self manageReservationCommand];
  v6 = [v4 manageReservationCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v237 = [(_SFPBCommand *)self manageReservationCommand];
  if (v237)
  {
    v238 = v237;
    v239 = [(_SFPBCommand *)self manageReservationCommand];
    v240 = [v4 manageReservationCommand];
    v241 = [v239 isEqual:v240];

    if (!v241)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
  v6 = [v4 updateSportsFollowingStatusCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v242 = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
  if (v242)
  {
    v243 = v242;
    v244 = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
    v245 = [v4 updateSportsFollowingStatusCommand];
    v246 = [v244 isEqual:v245];

    if (!v246)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self requestProductPageCommand];
  v6 = [v4 requestProductPageCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v247 = [(_SFPBCommand *)self requestProductPageCommand];
  if (v247)
  {
    v248 = v247;
    v249 = [(_SFPBCommand *)self requestProductPageCommand];
    v250 = [v4 requestProductPageCommand];
    v251 = [v249 isEqual:v250];

    if (!v251)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self flightCheckinCommand];
  v6 = [v4 flightCheckinCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v252 = [(_SFPBCommand *)self flightCheckinCommand];
  if (v252)
  {
    v253 = v252;
    v254 = [(_SFPBCommand *)self flightCheckinCommand];
    v255 = [v4 flightCheckinCommand];
    v256 = [v254 isEqual:v255];

    if (!v256)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self executeToolCommand];
  v6 = [v4 executeToolCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v257 = [(_SFPBCommand *)self executeToolCommand];
  if (v257)
  {
    v258 = v257;
    v259 = [(_SFPBCommand *)self executeToolCommand];
    v260 = [v4 executeToolCommand];
    v261 = [v259 isEqual:v260];

    if (!v261)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self executeMenuItemCommand];
  v6 = [v4 executeMenuItemCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v262 = [(_SFPBCommand *)self executeMenuItemCommand];
  if (v262)
  {
    v263 = v262;
    v264 = [(_SFPBCommand *)self executeMenuItemCommand];
    v265 = [v4 executeMenuItemCommand];
    v266 = [v264 isEqual:v265];

    if (!v266)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self fillToolParameterCommand];
  v6 = [v4 fillToolParameterCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v267 = [(_SFPBCommand *)self fillToolParameterCommand];
  if (v267)
  {
    v268 = v267;
    v269 = [(_SFPBCommand *)self fillToolParameterCommand];
    v270 = [v4 fillToolParameterCommand];
    v271 = [v269 isEqual:v270];

    if (!v271)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self fillToolAppParameterCommand];
  v6 = [v4 fillToolAppParameterCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v272 = [(_SFPBCommand *)self fillToolAppParameterCommand];
  if (v272)
  {
    v273 = v272;
    v274 = [(_SFPBCommand *)self fillToolAppParameterCommand];
    v275 = [v4 fillToolAppParameterCommand];
    v276 = [v274 isEqual:v275];

    if (!v276)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self fillToolFileParameterCommand];
  v6 = [v4 fillToolFileParameterCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v277 = [(_SFPBCommand *)self fillToolFileParameterCommand];
  if (v277)
  {
    v278 = v277;
    v279 = [(_SFPBCommand *)self fillToolFileParameterCommand];
    v280 = [v4 fillToolFileParameterCommand];
    v281 = [v279 isEqual:v280];

    if (!v281)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
  v6 = [v4 fillToolAppEntityParameterCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v282 = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
  if (v282)
  {
    v283 = v282;
    v284 = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
    v285 = [v4 fillToolAppEntityParameterCommand];
    v286 = [v284 isEqual:v285];

    if (!v286)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self fillToolPersonParameterCommand];
  v6 = [v4 fillToolPersonParameterCommand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v287 = [(_SFPBCommand *)self fillToolPersonParameterCommand];
  if (v287)
  {
    v288 = v287;
    v289 = [(_SFPBCommand *)self fillToolPersonParameterCommand];
    v290 = [v4 fillToolPersonParameterCommand];
    v291 = [v289 isEqual:v290];

    if (!v291)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self commandDetail];
  v6 = [v4 commandDetail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v292 = [(_SFPBCommand *)self commandDetail];
  if (v292)
  {
    v293 = v292;
    v294 = [(_SFPBCommand *)self commandDetail];
    v295 = [v4 commandDetail];
    v296 = [v294 isEqual:v295];

    if (!v296)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self normalizedTopic];
  v6 = [v4 normalizedTopic];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v297 = [(_SFPBCommand *)self normalizedTopic];
  if (v297)
  {
    v298 = v297;
    v299 = [(_SFPBCommand *)self normalizedTopic];
    v300 = [v4 normalizedTopic];
    v301 = [v299 isEqual:v300];

    if (!v301)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self backendData];
  v6 = [v4 backendData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_306;
  }

  v302 = [(_SFPBCommand *)self backendData];
  if (v302)
  {
    v303 = v302;
    v304 = [(_SFPBCommand *)self backendData];
    v305 = [v4 backendData];
    v306 = [v304 isEqual:v305];

    if (!v306)
    {
      goto LABEL_307;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommand *)self commandReference];
  v6 = [v4 commandReference];
  if ((v5 != 0) != (v6 == 0))
  {
    v307 = [(_SFPBCommand *)self commandReference];
    if (!v307)
    {

LABEL_310:
      v312 = 1;
      goto LABEL_308;
    }

    v308 = v307;
    v309 = [(_SFPBCommand *)self commandReference];
    v310 = [v4 commandReference];
    v311 = [v309 isEqual:v310];

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

- (void)writeTo:(id)a3
{
  v65 = a3;
  v4 = [(_SFPBCommand *)self showContactCardCommand];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBCommand *)self showSFCardCommand];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBCommand *)self showAppStoreSheetCommand];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBCommand *)self openPunchoutCommand];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBCommand *)self openFileProviderItemCommand];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBCommand *)self openAppClipCommand];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBCommand *)self openWebClipCommand];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBCommand *)self requestAppClipInstallCommand];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBCommand *)self requestUserReportCommand];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_SFPBCommand *)self launchAppCommand];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_SFPBCommand *)self runVoiceShortcutCommand];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBCommand *)self indexedUserActivityCommand];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBCommand *)self openCoreSpotlightItemCommand];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBCommand *)self performIntentCommand];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBCommand *)self searchInAppCommand];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBCommand *)self updateSearchQueryCommand];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBCommand *)self searchWebCommand];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBCommand *)self invokeSiriCommand];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBCommand *)self performContactQueryCommand];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBCommand *)self openCalculationCommand];
  if (v23)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_SFPBCommand *)self playVideoCommand];
  if (v24)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = [(_SFPBCommand *)self callCommand];
  if (v25)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_SFPBCommand *)self emailCommand];
  if (v26)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_SFPBCommand *)self beginMapsRoutingCommand];
  if (v27)
  {
    PBDataWriterWriteSubmessage();
  }

  v28 = [(_SFPBCommand *)self toggleAudioCommand];
  if (v28)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = [(_SFPBCommand *)self performPersonEntityQueryCommand];
  if (v29)
  {
    PBDataWriterWriteSubmessage();
  }

  v30 = [(_SFPBCommand *)self showPurchaseRequestSheetCommand];
  if (v30)
  {
    PBDataWriterWriteSubmessage();
  }

  v31 = [(_SFPBCommand *)self showScreenTimeRequestSheetCommand];
  if (v31)
  {
    PBDataWriterWriteSubmessage();
  }

  v32 = [(_SFPBCommand *)self performEntityQueryCommand];
  if (v32)
  {
    PBDataWriterWriteSubmessage();
  }

  v33 = [(_SFPBCommand *)self shareCommand];
  if (v33)
  {
    PBDataWriterWriteSubmessage();
  }

  v34 = [(_SFPBCommand *)self copyCommand];
  if (v34)
  {
    PBDataWriterWriteSubmessage();
  }

  v35 = [(_SFPBCommand *)self toggleWatchListStatusCommand];
  if (v35)
  {
    PBDataWriterWriteSubmessage();
  }

  v36 = [(_SFPBCommand *)self showPhotosOneUpViewCommand];
  if (v36)
  {
    PBDataWriterWriteSubmessage();
  }

  v37 = [(_SFPBCommand *)self playMediaCommand];
  if (v37)
  {
    PBDataWriterWriteSubmessage();
  }

  v38 = [(_SFPBCommand *)self openMediaCommand];
  if (v38)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = [(_SFPBCommand *)self addToPhotosLibraryCommand];
  if (v39)
  {
    PBDataWriterWriteSubmessage();
  }

  v40 = [(_SFPBCommand *)self performContactActionCommand];
  if (v40)
  {
    PBDataWriterWriteSubmessage();
  }

  v41 = [(_SFPBCommand *)self expandInlineCommand];
  if (v41)
  {
    PBDataWriterWriteSubmessage();
  }

  v42 = [(_SFPBCommand *)self subscribeForUpdatesCommand];
  if (v42)
  {
    PBDataWriterWriteSubmessage();
  }

  v43 = [(_SFPBCommand *)self viewEmailCommand];
  if (v43)
  {
    PBDataWriterWriteSubmessage();
  }

  v44 = [(_SFPBCommand *)self rejectPeopleInPhotoCommand];
  if (v44)
  {
    PBDataWriterWriteSubmessage();
  }

  v45 = [(_SFPBCommand *)self showWrapperResponseViewCommand];
  if (v45)
  {
    PBDataWriterWriteSubmessage();
  }

  v46 = [(_SFPBCommand *)self clearProactiveCategoryCommand];
  if (v46)
  {
    PBDataWriterWriteSubmessage();
  }

  v47 = [(_SFPBCommand *)self createContactCommand];
  if (v47)
  {
    PBDataWriterWriteSubmessage();
  }

  v48 = [(_SFPBCommand *)self createCalendarEventCommand];
  if (v48)
  {
    PBDataWriterWriteSubmessage();
  }

  v49 = [(_SFPBCommand *)self createReminderCommand];
  if (v49)
  {
    PBDataWriterWriteSubmessage();
  }

  v50 = [(_SFPBCommand *)self manageReservationCommand];
  if (v50)
  {
    PBDataWriterWriteSubmessage();
  }

  v51 = [(_SFPBCommand *)self updateSportsFollowingStatusCommand];
  if (v51)
  {
    PBDataWriterWriteSubmessage();
  }

  v52 = [(_SFPBCommand *)self requestProductPageCommand];
  if (v52)
  {
    PBDataWriterWriteSubmessage();
  }

  v53 = [(_SFPBCommand *)self flightCheckinCommand];
  if (v53)
  {
    PBDataWriterWriteSubmessage();
  }

  v54 = [(_SFPBCommand *)self executeToolCommand];
  if (v54)
  {
    PBDataWriterWriteSubmessage();
  }

  v55 = [(_SFPBCommand *)self executeMenuItemCommand];
  if (v55)
  {
    PBDataWriterWriteSubmessage();
  }

  v56 = [(_SFPBCommand *)self fillToolParameterCommand];
  if (v56)
  {
    PBDataWriterWriteSubmessage();
  }

  v57 = [(_SFPBCommand *)self fillToolAppParameterCommand];
  if (v57)
  {
    PBDataWriterWriteSubmessage();
  }

  v58 = [(_SFPBCommand *)self fillToolFileParameterCommand];
  if (v58)
  {
    PBDataWriterWriteSubmessage();
  }

  v59 = [(_SFPBCommand *)self fillToolAppEntityParameterCommand];
  if (v59)
  {
    PBDataWriterWriteSubmessage();
  }

  v60 = [(_SFPBCommand *)self fillToolPersonParameterCommand];
  if (v60)
  {
    PBDataWriterWriteSubmessage();
  }

  v61 = [(_SFPBCommand *)self commandDetail];
  if (v61)
  {
    PBDataWriterWriteStringField();
  }

  v62 = [(_SFPBCommand *)self normalizedTopic];
  if (v62)
  {
    PBDataWriterWriteSubmessage();
  }

  v63 = [(_SFPBCommand *)self backendData];
  if (v63)
  {
    PBDataWriterWriteDataField();
  }

  v64 = [(_SFPBCommand *)self commandReference];
  if (v64)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setBackendData:(id)a3
{
  v4 = [a3 copy];
  backendData = self->_backendData;
  self->_backendData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCommandDetail:(id)a3
{
  v4 = [a3 copy];
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

- (void)setFillToolPersonParameterCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolPersonParameterCommand = self->_fillToolPersonParameterCommand;
  self->_fillToolPersonParameterCommand = v4;
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

- (void)setFillToolAppEntityParameterCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolAppEntityParameterCommand = self->_fillToolAppEntityParameterCommand;
  self->_fillToolAppEntityParameterCommand = v4;
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

- (void)setFillToolFileParameterCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolFileParameterCommand = self->_fillToolFileParameterCommand;
  self->_fillToolFileParameterCommand = v4;
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

- (void)setFillToolAppParameterCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolAppParameterCommand = self->_fillToolAppParameterCommand;
  self->_fillToolAppParameterCommand = v4;
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

- (void)setFillToolParameterCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  fillToolParameterCommand = self->_fillToolParameterCommand;
  self->_fillToolParameterCommand = v4;
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

- (void)setExecuteMenuItemCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  executeMenuItemCommand = self->_executeMenuItemCommand;
  self->_executeMenuItemCommand = v4;
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

- (void)setExecuteToolCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  executeToolCommand = self->_executeToolCommand;
  self->_executeToolCommand = v4;
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

- (void)setFlightCheckinCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  flightCheckinCommand = self->_flightCheckinCommand;
  self->_flightCheckinCommand = v4;
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

- (void)setRequestProductPageCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  requestProductPageCommand = self->_requestProductPageCommand;
  self->_requestProductPageCommand = v4;
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

- (void)setUpdateSportsFollowingStatusCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  updateSportsFollowingStatusCommand = self->_updateSportsFollowingStatusCommand;
  self->_updateSportsFollowingStatusCommand = v4;
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

- (void)setManageReservationCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  manageReservationCommand = self->_manageReservationCommand;
  self->_manageReservationCommand = v4;
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

- (void)setCreateReminderCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  createReminderCommand = self->_createReminderCommand;
  self->_createReminderCommand = v4;
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

- (void)setCreateCalendarEventCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  createCalendarEventCommand = self->_createCalendarEventCommand;
  self->_createCalendarEventCommand = v4;
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

- (void)setCreateContactCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  createContactCommand = self->_createContactCommand;
  self->_createContactCommand = v4;
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

- (void)setClearProactiveCategoryCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  clearProactiveCategoryCommand = self->_clearProactiveCategoryCommand;
  self->_clearProactiveCategoryCommand = v4;
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

- (void)setShowWrapperResponseViewCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showWrapperResponseViewCommand = self->_showWrapperResponseViewCommand;
  self->_showWrapperResponseViewCommand = v4;
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

- (void)setRejectPeopleInPhotoCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  rejectPeopleInPhotoCommand = self->_rejectPeopleInPhotoCommand;
  self->_rejectPeopleInPhotoCommand = v4;
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

- (void)setViewEmailCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  viewEmailCommand = self->_viewEmailCommand;
  self->_viewEmailCommand = v4;
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

- (void)setSubscribeForUpdatesCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  subscribeForUpdatesCommand = self->_subscribeForUpdatesCommand;
  self->_subscribeForUpdatesCommand = v4;
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

- (void)setExpandInlineCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  expandInlineCommand = self->_expandInlineCommand;
  self->_expandInlineCommand = v4;
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

- (void)setPerformContactActionCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performContactActionCommand = self->_performContactActionCommand;
  self->_performContactActionCommand = v4;
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

- (void)setAddToPhotosLibraryCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  addToPhotosLibraryCommand = self->_addToPhotosLibraryCommand;
  self->_addToPhotosLibraryCommand = v4;
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

- (void)setOpenMediaCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openMediaCommand = self->_openMediaCommand;
  self->_openMediaCommand = v4;
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

- (void)setPlayMediaCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  playMediaCommand = self->_playMediaCommand;
  self->_playMediaCommand = v4;
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

- (void)setShowPhotosOneUpViewCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showPhotosOneUpViewCommand = self->_showPhotosOneUpViewCommand;
  self->_showPhotosOneUpViewCommand = v4;
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

- (void)setToggleWatchListStatusCommand:(id)a3
{
  v4 = a3;
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

  self->_whichValue = 32 * (v4 != 0);
  toggleWatchListStatusCommand = self->_toggleWatchListStatusCommand;
  self->_toggleWatchListStatusCommand = v4;
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

- (void)setCopyCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  copyCommand = self->_copyCommand;
  self->_copyCommand = v4;
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

- (void)setShareCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  shareCommand = self->_shareCommand;
  self->_shareCommand = v4;
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

- (void)setPerformEntityQueryCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performEntityQueryCommand = self->_performEntityQueryCommand;
  self->_performEntityQueryCommand = v4;
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

- (void)setShowScreenTimeRequestSheetCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showScreenTimeRequestSheetCommand = self->_showScreenTimeRequestSheetCommand;
  self->_showScreenTimeRequestSheetCommand = v4;
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

- (void)setShowPurchaseRequestSheetCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showPurchaseRequestSheetCommand = self->_showPurchaseRequestSheetCommand;
  self->_showPurchaseRequestSheetCommand = v4;
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

- (void)setPerformPersonEntityQueryCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performPersonEntityQueryCommand = self->_performPersonEntityQueryCommand;
  self->_performPersonEntityQueryCommand = v4;
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

- (void)setToggleAudioCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  toggleAudioCommand = self->_toggleAudioCommand;
  self->_toggleAudioCommand = v4;
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

- (void)setBeginMapsRoutingCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  beginMapsRoutingCommand = self->_beginMapsRoutingCommand;
  self->_beginMapsRoutingCommand = v4;
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

- (void)setEmailCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  emailCommand = self->_emailCommand;
  self->_emailCommand = v4;
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

- (void)setCallCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  callCommand = self->_callCommand;
  self->_callCommand = v4;
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

- (void)setPlayVideoCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  playVideoCommand = self->_playVideoCommand;
  self->_playVideoCommand = v4;
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

- (void)setOpenCalculationCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openCalculationCommand = self->_openCalculationCommand;
  self->_openCalculationCommand = v4;
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

- (void)setPerformContactQueryCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performContactQueryCommand = self->_performContactQueryCommand;
  self->_performContactQueryCommand = v4;
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

- (void)setInvokeSiriCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  invokeSiriCommand = self->_invokeSiriCommand;
  self->_invokeSiriCommand = v4;
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

- (void)setSearchWebCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  searchWebCommand = self->_searchWebCommand;
  self->_searchWebCommand = v4;
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

- (void)setUpdateSearchQueryCommand:(id)a3
{
  v4 = a3;
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

  self->_whichValue = 16 * (v4 != 0);
  updateSearchQueryCommand = self->_updateSearchQueryCommand;
  self->_updateSearchQueryCommand = v4;
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

- (void)setSearchInAppCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  searchInAppCommand = self->_searchInAppCommand;
  self->_searchInAppCommand = v4;
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

- (void)setPerformIntentCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  performIntentCommand = self->_performIntentCommand;
  self->_performIntentCommand = v4;
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

- (void)setOpenCoreSpotlightItemCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openCoreSpotlightItemCommand = self->_openCoreSpotlightItemCommand;
  self->_openCoreSpotlightItemCommand = v4;
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

- (void)setIndexedUserActivityCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  indexedUserActivityCommand = self->_indexedUserActivityCommand;
  self->_indexedUserActivityCommand = v4;
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

- (void)setRunVoiceShortcutCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  runVoiceShortcutCommand = self->_runVoiceShortcutCommand;
  self->_runVoiceShortcutCommand = v4;
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

- (void)setLaunchAppCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  launchAppCommand = self->_launchAppCommand;
  self->_launchAppCommand = v4;
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

- (void)setRequestUserReportCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  requestUserReportCommand = self->_requestUserReportCommand;
  self->_requestUserReportCommand = v4;
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

- (void)setRequestAppClipInstallCommand:(id)a3
{
  v4 = a3;
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

  self->_whichValue = 8 * (v4 != 0);
  requestAppClipInstallCommand = self->_requestAppClipInstallCommand;
  self->_requestAppClipInstallCommand = v4;
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

- (void)setOpenWebClipCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openWebClipCommand = self->_openWebClipCommand;
  self->_openWebClipCommand = v4;
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

- (void)setOpenAppClipCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openAppClipCommand = self->_openAppClipCommand;
  self->_openAppClipCommand = v4;
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

- (void)setOpenFileProviderItemCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  openFileProviderItemCommand = self->_openFileProviderItemCommand;
  self->_openFileProviderItemCommand = v4;
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

- (void)setOpenPunchoutCommand:(id)a3
{
  v4 = a3;
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

  self->_whichValue = 4 * (v4 != 0);
  openPunchoutCommand = self->_openPunchoutCommand;
  self->_openPunchoutCommand = v4;
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

- (void)setShowAppStoreSheetCommand:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v61 = 0;
  }

  self->_whichValue = v61;
  showAppStoreSheetCommand = self->_showAppStoreSheetCommand;
  self->_showAppStoreSheetCommand = v4;
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

- (void)setShowSFCardCommand:(id)a3
{
  v4 = a3;
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

  self->_whichValue = 2 * (v4 != 0);
  showSFCardCommand = self->_showSFCardCommand;
  self->_showSFCardCommand = v4;
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

- (void)setShowContactCardCommand:(id)a3
{
  v4 = a3;
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

  self->_whichValue = v4 != 0;
  showContactCardCommand = self->_showContactCardCommand;
  self->_showContactCardCommand = v4;
}

@end