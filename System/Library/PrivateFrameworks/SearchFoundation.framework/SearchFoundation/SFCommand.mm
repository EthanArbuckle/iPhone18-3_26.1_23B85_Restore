@interface SFCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCommand)initWithCoder:(id)coder;
- (SFCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCommand

- (unint64_t)hash
{
  commandDetail = [(SFCommand *)self commandDetail];
  v4 = [commandDetail hash];
  normalizedTopic = [(SFCommand *)self normalizedTopic];
  v6 = [normalizedTopic hash] ^ v4;
  backendData = [(SFCommand *)self backendData];
  v8 = [backendData hash];
  commandReference = [(SFCommand *)self commandReference];
  v10 = v8 ^ [commandReference hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      commandDetail = [(SFCommand *)self commandDetail];
      commandDetail2 = [(SFCommand *)v6 commandDetail];
      if ((commandDetail != 0) == (commandDetail2 == 0))
      {
        v11 = 0;
LABEL_37:

        goto LABEL_38;
      }

      commandDetail3 = [(SFCommand *)self commandDetail];
      if (commandDetail3)
      {
        commandDetail4 = [(SFCommand *)self commandDetail];
        commandDetail5 = [(SFCommand *)v6 commandDetail];
        if (![commandDetail4 isEqual:commandDetail5])
        {
          v11 = 0;
          goto LABEL_35;
        }

        v41 = commandDetail4;
      }

      normalizedTopic = [(SFCommand *)self normalizedTopic];
      normalizedTopic2 = [(SFCommand *)v6 normalizedTopic];
      v14 = normalizedTopic2;
      if ((normalizedTopic != 0) == (normalizedTopic2 == 0))
      {

        v11 = 0;
        goto LABEL_34;
      }

      normalizedTopic3 = [(SFCommand *)self normalizedTopic];
      v40 = normalizedTopic3;
      if (normalizedTopic3)
      {
        v16 = normalizedTopic3;
        v35 = v14;
        v17 = normalizedTopic;
        normalizedTopic4 = [(SFCommand *)self normalizedTopic];
        normalizedTopic5 = [(SFCommand *)v6 normalizedTopic];
        v38 = normalizedTopic4;
        if (![normalizedTopic4 isEqual:?])
        {
          v11 = 0;
          normalizedTopic = v17;
          v14 = v35;
          goto LABEL_32;
        }

        v39 = commandDetail5;
        normalizedTopic = v17;
        v14 = v35;
      }

      else
      {
        v39 = commandDetail5;
      }

      backendData = [(SFCommand *)self backendData];
      backendData2 = [(SFCommand *)v6 backendData];
      if ((backendData != 0) == (backendData2 == 0))
      {

        v11 = 0;
        commandDetail5 = v39;
        v16 = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v33 = backendData2;
      v34 = backendData;
      [(SFCommand *)self backendData];
      v36 = v16 = v40;
      if (!v36 || (-[SFCommand backendData](self, "backendData"), v21 = objc_claimAutoreleasedReturnValue(), -[SFCommand backendData](v6, "backendData"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
      {
        commandReference = [(SFCommand *)self commandReference];
        commandReference2 = [(SFCommand *)v6 commandReference];
        if ((commandReference != 0) == (commandReference2 == 0))
        {

          v11 = 0;
          v16 = v40;
        }

        else
        {
          v29 = commandReference;
          v30 = commandReference2;
          commandReference3 = [(SFCommand *)self commandReference];
          v16 = v40;
          if (commandReference3)
          {
            v28 = commandReference3;
            commandReference4 = [(SFCommand *)self commandReference];
            commandReference5 = [(SFCommand *)v6 commandReference];
            v11 = [commandReference4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }
        }

        commandDetail5 = v39;
        if (!v36)
        {
LABEL_31:

          if (!v16)
          {
LABEL_33:

LABEL_34:
            commandDetail4 = v41;
            if (!commandDetail3)
            {
LABEL_36:

              goto LABEL_37;
            }

LABEL_35:

            goto LABEL_36;
          }

LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        v11 = 0;
        commandDetail5 = v39;
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  commandDetail = [(SFCommand *)self commandDetail];
  v6 = [commandDetail copy];
  [v4 setCommandDetail:v6];

  normalizedTopic = [(SFCommand *)self normalizedTopic];
  v8 = [normalizedTopic copy];
  [v4 setNormalizedTopic:v8];

  backendData = [(SFCommand *)self backendData];
  v10 = [backendData copy];
  [v4 setBackendData:v10];

  commandReference = [(SFCommand *)self commandReference];
  v12 = [commandReference copy];
  [v4 setCommandReference:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCommand alloc] initWithFacade:self];
  data = [(_SFPBCommand *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [SFCommand alloc];
  v7 = [[_SFPBCommand alloc] initWithData:v5];
  v8 = [(SFCommand *)v6 initWithProtobuf:v7];

  return v8;
}

- (SFCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v90.receiver = self;
  v90.super_class = SFCommand;
  v5 = [(SFCommand *)&v90 init];
  if (v5)
  {
    commandDetail = [protobufCopy commandDetail];

    if (commandDetail)
    {
      commandDetail2 = [protobufCopy commandDetail];
      [(SFCommand *)v5 setCommandDetail:commandDetail2];
    }

    normalizedTopic = [protobufCopy normalizedTopic];

    if (normalizedTopic)
    {
      normalizedTopic2 = [protobufCopy normalizedTopic];
      v10 = _SFPBTopicHandwrittenTranslator(normalizedTopic2);
      [(SFCommand *)v5 setNormalizedTopic:v10];
    }

    backendData = [protobufCopy backendData];

    if (backendData)
    {
      backendData2 = [protobufCopy backendData];
      [(SFCommand *)v5 setBackendData:backendData2];
    }

    commandReference = [protobufCopy commandReference];

    if (commandReference)
    {
      v14 = [SFCommandReference alloc];
      commandReference2 = [protobufCopy commandReference];
      v16 = [(SFCommandReference *)v14 initWithProtobuf:commandReference2];
      [(SFCommand *)v5 setCommandReference:v16];
    }

    showContactCardCommand = [protobufCopy showContactCardCommand];

    if (showContactCardCommand)
    {
      v18 = [SFShowContactCardCommand alloc];
      showContactCardCommand2 = [protobufCopy showContactCardCommand];
    }

    else
    {
      showSFCardCommand = [protobufCopy showSFCardCommand];

      if (showSFCardCommand)
      {
        v18 = [SFShowSFCardCommand alloc];
        showContactCardCommand2 = [protobufCopy showSFCardCommand];
      }

      else
      {
        showAppStoreSheetCommand = [protobufCopy showAppStoreSheetCommand];

        if (showAppStoreSheetCommand)
        {
          v18 = [SFShowAppStoreSheetCommand alloc];
          showContactCardCommand2 = [protobufCopy showAppStoreSheetCommand];
        }

        else
        {
          openPunchoutCommand = [protobufCopy openPunchoutCommand];

          if (openPunchoutCommand)
          {
            v18 = [SFOpenPunchoutCommand alloc];
            showContactCardCommand2 = [protobufCopy openPunchoutCommand];
          }

          else
          {
            openFileProviderItemCommand = [protobufCopy openFileProviderItemCommand];

            if (openFileProviderItemCommand)
            {
              v18 = [SFOpenFileProviderItemCommand alloc];
              showContactCardCommand2 = [protobufCopy openFileProviderItemCommand];
            }

            else
            {
              openAppClipCommand = [protobufCopy openAppClipCommand];

              if (openAppClipCommand)
              {
                v18 = [SFOpenAppClipCommand alloc];
                showContactCardCommand2 = [protobufCopy openAppClipCommand];
              }

              else
              {
                openWebClipCommand = [protobufCopy openWebClipCommand];

                if (openWebClipCommand)
                {
                  v18 = [SFOpenWebClipCommand alloc];
                  showContactCardCommand2 = [protobufCopy openWebClipCommand];
                }

                else
                {
                  requestAppClipInstallCommand = [protobufCopy requestAppClipInstallCommand];

                  if (requestAppClipInstallCommand)
                  {
                    v18 = [SFRequestAppClipInstallCommand alloc];
                    showContactCardCommand2 = [protobufCopy requestAppClipInstallCommand];
                  }

                  else
                  {
                    requestUserReportCommand = [protobufCopy requestUserReportCommand];

                    if (requestUserReportCommand)
                    {
                      v18 = [SFRequestUserReportCommand alloc];
                      showContactCardCommand2 = [protobufCopy requestUserReportCommand];
                    }

                    else
                    {
                      launchAppCommand = [protobufCopy launchAppCommand];

                      if (launchAppCommand)
                      {
                        v18 = [SFLaunchAppCommand alloc];
                        showContactCardCommand2 = [protobufCopy launchAppCommand];
                      }

                      else
                      {
                        runVoiceShortcutCommand = [protobufCopy runVoiceShortcutCommand];

                        if (runVoiceShortcutCommand)
                        {
                          v18 = [SFRunVoiceShortcutCommand alloc];
                          showContactCardCommand2 = [protobufCopy runVoiceShortcutCommand];
                        }

                        else
                        {
                          indexedUserActivityCommand = [protobufCopy indexedUserActivityCommand];

                          if (indexedUserActivityCommand)
                          {
                            v18 = [SFIndexedUserActivityCommand alloc];
                            showContactCardCommand2 = [protobufCopy indexedUserActivityCommand];
                          }

                          else
                          {
                            openCoreSpotlightItemCommand = [protobufCopy openCoreSpotlightItemCommand];

                            if (openCoreSpotlightItemCommand)
                            {
                              v18 = [SFOpenCoreSpotlightItemCommand alloc];
                              showContactCardCommand2 = [protobufCopy openCoreSpotlightItemCommand];
                            }

                            else
                            {
                              performIntentCommand = [protobufCopy performIntentCommand];

                              if (performIntentCommand)
                              {
                                v18 = [SFPerformIntentCommand alloc];
                                showContactCardCommand2 = [protobufCopy performIntentCommand];
                              }

                              else
                              {
                                searchInAppCommand = [protobufCopy searchInAppCommand];

                                if (searchInAppCommand)
                                {
                                  v18 = [SFSearchInAppCommand alloc];
                                  showContactCardCommand2 = [protobufCopy searchInAppCommand];
                                }

                                else
                                {
                                  updateSearchQueryCommand = [protobufCopy updateSearchQueryCommand];

                                  if (updateSearchQueryCommand)
                                  {
                                    v18 = [SFUpdateSearchQueryCommand alloc];
                                    showContactCardCommand2 = [protobufCopy updateSearchQueryCommand];
                                  }

                                  else
                                  {
                                    searchWebCommand = [protobufCopy searchWebCommand];

                                    if (searchWebCommand)
                                    {
                                      v18 = [SFSearchWebCommand alloc];
                                      showContactCardCommand2 = [protobufCopy searchWebCommand];
                                    }

                                    else
                                    {
                                      invokeSiriCommand = [protobufCopy invokeSiriCommand];

                                      if (invokeSiriCommand)
                                      {
                                        v18 = [SFInvokeSiriCommand alloc];
                                        showContactCardCommand2 = [protobufCopy invokeSiriCommand];
                                      }

                                      else
                                      {
                                        performContactQueryCommand = [protobufCopy performContactQueryCommand];

                                        if (performContactQueryCommand)
                                        {
                                          v18 = [SFPerformContactQueryCommand alloc];
                                          showContactCardCommand2 = [protobufCopy performContactQueryCommand];
                                        }

                                        else
                                        {
                                          openCalculationCommand = [protobufCopy openCalculationCommand];

                                          if (openCalculationCommand)
                                          {
                                            v18 = [SFOpenCalculationCommand alloc];
                                            showContactCardCommand2 = [protobufCopy openCalculationCommand];
                                          }

                                          else
                                          {
                                            playVideoCommand = [protobufCopy playVideoCommand];

                                            if (playVideoCommand)
                                            {
                                              v18 = [SFPlayVideoCommand alloc];
                                              showContactCardCommand2 = [protobufCopy playVideoCommand];
                                            }

                                            else
                                            {
                                              callCommand = [protobufCopy callCommand];

                                              if (callCommand)
                                              {
                                                v18 = [SFCallCommand alloc];
                                                showContactCardCommand2 = [protobufCopy callCommand];
                                              }

                                              else
                                              {
                                                emailCommand = [protobufCopy emailCommand];

                                                if (emailCommand)
                                                {
                                                  v18 = [SFEmailCommand alloc];
                                                  showContactCardCommand2 = [protobufCopy emailCommand];
                                                }

                                                else
                                                {
                                                  beginMapsRoutingCommand = [protobufCopy beginMapsRoutingCommand];

                                                  if (beginMapsRoutingCommand)
                                                  {
                                                    v18 = [SFBeginMapsRoutingCommand alloc];
                                                    showContactCardCommand2 = [protobufCopy beginMapsRoutingCommand];
                                                  }

                                                  else
                                                  {
                                                    toggleAudioCommand = [protobufCopy toggleAudioCommand];

                                                    if (toggleAudioCommand)
                                                    {
                                                      v18 = [SFToggleAudioCommand alloc];
                                                      showContactCardCommand2 = [protobufCopy toggleAudioCommand];
                                                    }

                                                    else
                                                    {
                                                      performPersonEntityQueryCommand = [protobufCopy performPersonEntityQueryCommand];

                                                      if (performPersonEntityQueryCommand)
                                                      {
                                                        v18 = [SFPerformPersonEntityQueryCommand alloc];
                                                        showContactCardCommand2 = [protobufCopy performPersonEntityQueryCommand];
                                                      }

                                                      else
                                                      {
                                                        showPurchaseRequestSheetCommand = [protobufCopy showPurchaseRequestSheetCommand];

                                                        if (showPurchaseRequestSheetCommand)
                                                        {
                                                          v18 = [SFShowPurchaseRequestSheetCommand alloc];
                                                          showContactCardCommand2 = [protobufCopy showPurchaseRequestSheetCommand];
                                                        }

                                                        else
                                                        {
                                                          showScreenTimeRequestSheetCommand = [protobufCopy showScreenTimeRequestSheetCommand];

                                                          if (showScreenTimeRequestSheetCommand)
                                                          {
                                                            v18 = [SFShowScreenTimeRequestSheetCommand alloc];
                                                            showContactCardCommand2 = [protobufCopy showScreenTimeRequestSheetCommand];
                                                          }

                                                          else
                                                          {
                                                            performEntityQueryCommand = [protobufCopy performEntityQueryCommand];

                                                            if (performEntityQueryCommand)
                                                            {
                                                              v18 = [SFPerformEntityQueryCommand alloc];
                                                              showContactCardCommand2 = [protobufCopy performEntityQueryCommand];
                                                            }

                                                            else
                                                            {
                                                              shareCommand = [protobufCopy shareCommand];

                                                              if (shareCommand)
                                                              {
                                                                v18 = [SFShareCommand alloc];
                                                                showContactCardCommand2 = [protobufCopy shareCommand];
                                                              }

                                                              else
                                                              {
                                                                copyCommand = [protobufCopy copyCommand];

                                                                if (copyCommand)
                                                                {
                                                                  v18 = [SFCopyCommand alloc];
                                                                  showContactCardCommand2 = [protobufCopy copyCommand];
                                                                }

                                                                else
                                                                {
                                                                  toggleWatchListStatusCommand = [protobufCopy toggleWatchListStatusCommand];

                                                                  if (toggleWatchListStatusCommand)
                                                                  {
                                                                    v18 = [SFToggleWatchListStatusCommand alloc];
                                                                    showContactCardCommand2 = [protobufCopy toggleWatchListStatusCommand];
                                                                  }

                                                                  else
                                                                  {
                                                                    showPhotosOneUpViewCommand = [protobufCopy showPhotosOneUpViewCommand];

                                                                    if (showPhotosOneUpViewCommand)
                                                                    {
                                                                      v18 = [SFShowPhotosOneUpViewCommand alloc];
                                                                      showContactCardCommand2 = [protobufCopy showPhotosOneUpViewCommand];
                                                                    }

                                                                    else
                                                                    {
                                                                      playMediaCommand = [protobufCopy playMediaCommand];

                                                                      if (playMediaCommand)
                                                                      {
                                                                        v18 = [SFPlayMediaCommand alloc];
                                                                        showContactCardCommand2 = [protobufCopy playMediaCommand];
                                                                      }

                                                                      else
                                                                      {
                                                                        openMediaCommand = [protobufCopy openMediaCommand];

                                                                        if (openMediaCommand)
                                                                        {
                                                                          v18 = [SFOpenMediaCommand alloc];
                                                                          showContactCardCommand2 = [protobufCopy openMediaCommand];
                                                                        }

                                                                        else
                                                                        {
                                                                          addToPhotosLibraryCommand = [protobufCopy addToPhotosLibraryCommand];

                                                                          if (addToPhotosLibraryCommand)
                                                                          {
                                                                            v18 = [SFAddToPhotosLibraryCommand alloc];
                                                                            showContactCardCommand2 = [protobufCopy addToPhotosLibraryCommand];
                                                                          }

                                                                          else
                                                                          {
                                                                            performContactActionCommand = [protobufCopy performContactActionCommand];

                                                                            if (performContactActionCommand)
                                                                            {
                                                                              v18 = [SFPerformContactActionCommand alloc];
                                                                              showContactCardCommand2 = [protobufCopy performContactActionCommand];
                                                                            }

                                                                            else
                                                                            {
                                                                              expandInlineCommand = [protobufCopy expandInlineCommand];

                                                                              if (expandInlineCommand)
                                                                              {
                                                                                v18 = [SFExpandInlineCommand alloc];
                                                                                showContactCardCommand2 = [protobufCopy expandInlineCommand];
                                                                              }

                                                                              else
                                                                              {
                                                                                subscribeForUpdatesCommand = [protobufCopy subscribeForUpdatesCommand];

                                                                                if (subscribeForUpdatesCommand)
                                                                                {
                                                                                  v18 = [SFSubscribeForUpdatesCommand alloc];
                                                                                  showContactCardCommand2 = [protobufCopy subscribeForUpdatesCommand];
                                                                                }

                                                                                else
                                                                                {
                                                                                  viewEmailCommand = [protobufCopy viewEmailCommand];

                                                                                  if (viewEmailCommand)
                                                                                  {
                                                                                    v18 = [SFViewEmailCommand alloc];
                                                                                    showContactCardCommand2 = [protobufCopy viewEmailCommand];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    rejectPeopleInPhotoCommand = [protobufCopy rejectPeopleInPhotoCommand];

                                                                                    if (rejectPeopleInPhotoCommand)
                                                                                    {
                                                                                      v18 = [SFRejectPeopleInPhotoCommand alloc];
                                                                                      showContactCardCommand2 = [protobufCopy rejectPeopleInPhotoCommand];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      showWrapperResponseViewCommand = [protobufCopy showWrapperResponseViewCommand];

                                                                                      if (showWrapperResponseViewCommand)
                                                                                      {
                                                                                        v18 = [SFShowWrapperResponseViewCommand alloc];
                                                                                        showContactCardCommand2 = [protobufCopy showWrapperResponseViewCommand];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        clearProactiveCategoryCommand = [protobufCopy clearProactiveCategoryCommand];

                                                                                        if (clearProactiveCategoryCommand)
                                                                                        {
                                                                                          v18 = [SFClearProactiveCategoryCommand alloc];
                                                                                          showContactCardCommand2 = [protobufCopy clearProactiveCategoryCommand];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          createContactCommand = [protobufCopy createContactCommand];

                                                                                          if (createContactCommand)
                                                                                          {
                                                                                            v18 = [SFCreateContactCommand alloc];
                                                                                            showContactCardCommand2 = [protobufCopy createContactCommand];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            createCalendarEventCommand = [protobufCopy createCalendarEventCommand];

                                                                                            if (createCalendarEventCommand)
                                                                                            {
                                                                                              v18 = [SFCreateCalendarEventCommand alloc];
                                                                                              showContactCardCommand2 = [protobufCopy createCalendarEventCommand];
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              createReminderCommand = [protobufCopy createReminderCommand];

                                                                                              if (createReminderCommand)
                                                                                              {
                                                                                                v18 = [SFCreateReminderCommand alloc];
                                                                                                showContactCardCommand2 = [protobufCopy createReminderCommand];
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                manageReservationCommand = [protobufCopy manageReservationCommand];

                                                                                                if (manageReservationCommand)
                                                                                                {
                                                                                                  v18 = [SFManageReservationCommand alloc];
                                                                                                  showContactCardCommand2 = [protobufCopy manageReservationCommand];
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  updateSportsFollowingStatusCommand = [protobufCopy updateSportsFollowingStatusCommand];

                                                                                                  if (updateSportsFollowingStatusCommand)
                                                                                                  {
                                                                                                    v18 = [SFUpdateSportsFollowingStatusCommand alloc];
                                                                                                    showContactCardCommand2 = [protobufCopy updateSportsFollowingStatusCommand];
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    requestProductPageCommand = [protobufCopy requestProductPageCommand];

                                                                                                    if (requestProductPageCommand)
                                                                                                    {
                                                                                                      v18 = [SFRequestProductPageCommand alloc];
                                                                                                      showContactCardCommand2 = [protobufCopy requestProductPageCommand];
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      flightCheckinCommand = [protobufCopy flightCheckinCommand];

                                                                                                      if (flightCheckinCommand)
                                                                                                      {
                                                                                                        v18 = [SFFlightCheckinCommand alloc];
                                                                                                        showContactCardCommand2 = [protobufCopy flightCheckinCommand];
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        executeToolCommand = [protobufCopy executeToolCommand];

                                                                                                        if (executeToolCommand)
                                                                                                        {
                                                                                                          v18 = [SFExecuteToolCommand alloc];
                                                                                                          showContactCardCommand2 = [protobufCopy executeToolCommand];
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          executeMenuItemCommand = [protobufCopy executeMenuItemCommand];

                                                                                                          if (executeMenuItemCommand)
                                                                                                          {
                                                                                                            v18 = [SFExecuteMenuItemCommand alloc];
                                                                                                            showContactCardCommand2 = [protobufCopy executeMenuItemCommand];
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            fillToolParameterCommand = [protobufCopy fillToolParameterCommand];

                                                                                                            if (fillToolParameterCommand)
                                                                                                            {
                                                                                                              v18 = [SFFillToolParameterCommand alloc];
                                                                                                              showContactCardCommand2 = [protobufCopy fillToolParameterCommand];
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              fillToolAppParameterCommand = [protobufCopy fillToolAppParameterCommand];

                                                                                                              if (fillToolAppParameterCommand)
                                                                                                              {
                                                                                                                v18 = [SFFillToolAppParameterCommand alloc];
                                                                                                                showContactCardCommand2 = [protobufCopy fillToolAppParameterCommand];
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                fillToolFileParameterCommand = [protobufCopy fillToolFileParameterCommand];

                                                                                                                if (fillToolFileParameterCommand)
                                                                                                                {
                                                                                                                  v18 = [SFFillToolFileParameterCommand alloc];
                                                                                                                  showContactCardCommand2 = [protobufCopy fillToolFileParameterCommand];
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  fillToolAppEntityParameterCommand = [protobufCopy fillToolAppEntityParameterCommand];

                                                                                                                  if (fillToolAppEntityParameterCommand)
                                                                                                                  {
                                                                                                                    v18 = [SFFillToolAppEntityParameterCommand alloc];
                                                                                                                    showContactCardCommand2 = [protobufCopy fillToolAppEntityParameterCommand];
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    fillToolPersonParameterCommand = [protobufCopy fillToolPersonParameterCommand];

                                                                                                                    if (!fillToolPersonParameterCommand)
                                                                                                                    {
                                                                                                                      v20 = v5;
                                                                                                                      goto LABEL_133;
                                                                                                                    }

                                                                                                                    v18 = [SFFillToolPersonParameterCommand alloc];
                                                                                                                    showContactCardCommand2 = [protobufCopy fillToolPersonParameterCommand];
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v77 = showContactCardCommand2;
    v20 = [(SFShowContactCardCommand *)v18 initWithProtobuf:showContactCardCommand2];

    commandDetail3 = [protobufCopy commandDetail];

    if (commandDetail3)
    {
      commandDetail4 = [protobufCopy commandDetail];
      [(SFCommand *)v20 setCommandDetail:commandDetail4];
    }

    normalizedTopic3 = [protobufCopy normalizedTopic];

    if (normalizedTopic3)
    {
      normalizedTopic4 = [protobufCopy normalizedTopic];
      v82 = _SFPBTopicHandwrittenTranslator(normalizedTopic4);
      [(SFCommand *)v20 setNormalizedTopic:v82];
    }

    backendData3 = [protobufCopy backendData];

    if (backendData3)
    {
      backendData4 = [protobufCopy backendData];
      [(SFCommand *)v20 setBackendData:backendData4];
    }

    commandReference3 = [protobufCopy commandReference];

    if (commandReference3)
    {
      v86 = [SFCommandReference alloc];
      commandReference4 = [protobufCopy commandReference];
      v88 = [(SFCommandReference *)v86 initWithProtobuf:commandReference4];
      [(SFCommand *)v20 setCommandReference:v88];
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_133:

  return v20;
}

@end