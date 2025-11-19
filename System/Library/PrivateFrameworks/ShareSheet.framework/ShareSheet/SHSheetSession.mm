@interface SHSheetSession
- (BOOL)_isHeroCollaborationOnly;
- (BOOL)activitiesManager:(id)a3 shouldShowSystemActivityType:(id)a4;
- (BOOL)activityItemsManager:(id)a3 collaborationSupportsPromiseURLsForActivity:(id)a4;
- (BOOL)isCollaborationRestricted;
- (BOOL)isExpanded;
- (BOOL)isModeSwitchDisabled;
- (BOOL)showHeaderSpecialization;
- (BOOL)supportsCollaboration;
- (BOOL)supportsSendCopy;
- (NSArray)customizationGroups;
- (NSString)customOptionsTitle;
- (SFCollaborationItem)collaborationItem;
- (SHSheetSession)initWithContext:(id)a3 delegate:(id)a4;
- (SHSheetSessionDelegate)delegate;
- (UIActivityViewController)activityViewController;
- (UIActivityViewControllerObjectManipulationDelegate)objectManipulationDelegate;
- (UIViewController)customOptionsViewController;
- (id)_activityItemsService;
- (id)_collaborationService;
- (id)_configurationForActivity:(id)a3 forRemoteUIService:(BOOL)a4;
- (id)_createActivityMatchingContext;
- (id)_metadataValues;
- (id)activityConfigurationsForActivities:(id)a3 forRemoteUIService:(BOOL)a4;
- (id)activityItemsManager:(id)a3 collaborationActivityItemValuesForActivityItemValue:(id)a4 activity:(id)a5;
- (id)activityItemsManager:(id)a3 subjectForActivity:(id)a4;
- (id)collaborationItemsProvider:(id)a3 resolveActivityItem:(id)a4;
- (id)collaborationPlaceholderActivityItemsForActivityItemsManager:(id)a3;
- (id)createClientContext;
- (id)createContentContext;
- (id)createDiscoveryContext;
- (id)createShareServiceUIConfiguration;
- (id)urlRequestsForActivityItemsManager:(id)a3;
- (int64_t)numberOfVisibleActionActivities;
- (int64_t)numberOfVisibleSharingActivities;
- (void)_configureWithContext:(id)a3;
- (void)_updateObjectManipulationSupport;
- (void)_updateTestingSnapshotIfNeededForResolvedItems:(id)a3 activityType:(id)a4;
- (void)activityItemsManagerLinkMetadataValuesDidChange:(id)a3;
- (void)metadataCollection:(id)a3 didChangeMetadata:(id)a4;
- (void)metadataCollectionDidFinishLoading:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4;
- (void)setConfiguration:(id)a3;
- (void)setIsCollaborative:(BOOL)a3;
- (void)setIsContentManaged:(BOOL)a3;
- (void)setSelectedAssetIdentifiers:(id)a3;
- (void)updateWithContext:(id)a3;
@end

@implementation SHSheetSession

- (UIActivityViewController)activityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_activityViewController);

  return WeakRetained;
}

- (id)_collaborationService
{
  v3 = [(SHSheetSession *)self delegate];
  v4 = [v3 collaborationServiceForSession:self];

  return v4;
}

- (BOOL)supportsCollaboration
{
  if ([(SHSheetSession *)self isCollaborationRestricted])
  {
    return 0;
  }

  v4 = [(SHSheetSession *)self collaborationItemsProvider];
  v3 = [v4 supportsCollaboration];

  v5 = [(SHSheetSession *)self collaborationItemsProvider];
  v6 = [v5 supportsSendCopy];

  v7 = [(SHSheetSession *)self collaborationModeRestriction];
  if (v7)
  {
    v8 = [(SHSheetSession *)self collaborationModeRestriction];
    if ([v8 disabledMode] == 1)
    {
      v9 = [(SHSheetSession *)self collaborationModeRestriction];
      v10 = [v9 alertTitle];
      v11 = v10 != 0;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 || (v3 & 1) == 0) | v6 & 1)
    {
      return v3 & v11;
    }

    else
    {
      v12 = share_sheet_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SHSheetSession *)v12 supportsCollaboration:v13];
      }

      return 1;
    }
  }

  else
  {
  }

  return v3;
}

- (SHSheetSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_activityItemsService
{
  v3 = [(SHSheetSession *)self delegate];
  v4 = [v3 activityItemsServiceForSession:self];

  return v4;
}

- (id)_metadataValues
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(SHSheetSession *)self photosHeaderMetadata];
  v4 = v3;
  if (v3)
  {
    v14[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v6 = [(SHSheetSession *)self activityItemsManager];
    v5 = [v6 linkMetadataValues];

    if (![v5 count])
    {
      v7 = [(SHSheetSession *)self collaborationItem];
      v8 = [v7 linkMetadata];

      if (v8)
      {
        v9 = [(SHSheetSession *)self collaborationItem];
        v10 = [v9 linkMetadata];
        v13 = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];

        v5 = v11;
      }
    }
  }

  return v5;
}

- (BOOL)isCollaborationRestricted
{
  v3 = [(SHSheetSession *)self collaborationItemsProvider];
  v4 = [v3 collaborationItems];
  v5 = [v4 firstObject];
  if ([v5 type] == 2)
  {
    v6 = [(SHSheetSession *)self configuration];
    v7 = [v6 restrictedActivityTypes];
    v8 = [v7 containsObject:@"com.apple.Collaboration.Internal"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SFCollaborationItem)collaborationItem
{
  if ([(SHSheetSession *)self isCollaborationRestricted])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SHSheetSession *)self collaborationItemsProvider];
    v5 = [v4 collaborationItems];
    v3 = [v5 firstObject];
  }

  return v3;
}

- (void)_updateObjectManipulationSupport
{
  showOptions = self->_showOptions;
  WeakRetained = objc_loadWeakRetained(&self->_objectManipulationDelegate);
  self->_objectManipulationDelegateFlags.respondsToCustomizationAvailable = objc_opt_respondsToSelector() & 1;

  v5 = objc_loadWeakRetained(&self->_objectManipulationDelegate);
  self->_objectManipulationDelegateFlags.respondsToCustomLocalizedActionTitle = objc_opt_respondsToSelector() & 1;

  v6 = objc_loadWeakRetained(&self->_objectManipulationDelegate);
  self->_objectManipulationDelegateFlags.respondsToCustomActionViewController = objc_opt_respondsToSelector() & 1;

  if (self->_objectManipulationDelegateFlags.respondsToCustomizationAvailable)
  {
    v7 = [(SHSheetSession *)self objectManipulationDelegate];
    v8 = objc_loadWeakRetained(&self->_activityViewController);
    self->_showOptions = [v7 _customizationAvailableForActivityViewController:v8];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_objectManipulationDelegate);

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = [(SHSheetSession *)self customizationGroups];
    self->_showOptions = [v7 count] != 0;
  }

LABEL_6:
  if (showOptions != self->_showOptions)
  {
    v10 = [(SHSheetSession *)self delegate];
    [v10 showOptionsDidChangeForSession:self];
  }
}

- (id)_createActivityMatchingContext
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(SHSheetSession *)self activityItemsManager];
  v4 = [v3 activityItemValuesForActivity:0];

  if ([(SHSheetSession *)self isCollaborative])
  {
    v5 = [(SHSheetSession *)self collaborationItemsProvider];
    v6 = [v5 collaborationItems];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [(SHSheetSession *)self excludedActivityTypes];
  if ([(SHSheetSession *)self supportsCollaboration]&& ![(SHSheetSession *)self supportsSendCopy])
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Excluding AirDrop for collaboration only mode", buf, 2u);
    }

    if (v7)
    {
      v9 = [v7 mutableCopy];

      v7 = v9;
    }

    else
    {
      v7 = [MEMORY[0x1E695DF70] array];
    }

    [v7 addObject:@"com.apple.UIKit.activity.AirDrop"];
  }

  if ([v7 count])
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Excluded activity types (%@)", buf, 0xCu);
    }
  }

  v12 = [(SHSheetSession *)self includedActivityTypes];
  v13 = [(SHSheetSession *)self excludedActivityCategories];
  if ([(SHSheetSession *)self _isHeroCollaborationOnly])
  {
    v28 = @"com.apple.UIKit.activity.Message";
    v13 = 1;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];

    v12 = v14;
  }

  v15 = [(SHSheetSession *)self collaborationModeRestriction];
  if (v15)
  {
    v16 = [(SHSheetSession *)self collaborationModeRestriction];
    if ([v16 disabledMode] == 1)
    {
      v17 = [(SHSheetSession *)self collaborationModeRestriction];
      v18 = [v17 alertTitle];
      v19 = v18 == 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = [_UIActivityMatchingContext alloc];
  v21 = [(SHSheetSession *)self activityItemsManager];
  v22 = [v21 activityItems];
  v23 = [(_UIActivityMatchingContext *)v20 initWithActivityItems:v22 itemValues:v4 collaborationItems:v6];

  [(_UIActivityMatchingContext *)v23 setIsContentManaged:[(SHSheetSession *)self isContentManaged]];
  [(_UIActivityMatchingContext *)v23 setIsCollaborative:[(SHSheetSession *)self isCollaborative]];
  [(_UIActivityMatchingContext *)v23 setShouldMatchOnlyUserElectedExtensions:1];
  [(_UIActivityMatchingContext *)v23 setWhitelistActionActivitiesOnly:[(SHSheetSession *)self whitelistActionActivitiesOnly]];
  v24 = [(SHSheetSession *)self activitiesManager];
  v25 = [v24 applicationActivities];
  [(_UIActivityMatchingContext *)v23 setApplicationActivities:v25];

  v26 = [(SHSheetSession *)self activityTypeOrder];
  [(_UIActivityMatchingContext *)v23 setActivityTypeOrder:v26];

  [(_UIActivityMatchingContext *)v23 setIncludedActivityTypes:v12];
  [(_UIActivityMatchingContext *)v23 setExcludedActivityTypes:v7];
  [(_UIActivityMatchingContext *)v23 setExcludedActivityCategories:v13];
  [(_UIActivityMatchingContext *)v23 setSharingStyle:[(SHSheetSession *)self sharingStyle]];
  [(_UIActivityMatchingContext *)v23 setShowSharePlayProminently:[(SHSheetSession *)self showSharePlayProminently]];
  [(_UIActivityMatchingContext *)v23 setShouldExcludeiCloudSharingActivity:[(SHSheetSession *)self supportsCollaboration]|| v19];

  return v23;
}

- (BOOL)_isHeroCollaborationOnly
{
  v3 = [(SHSheetSession *)self collaborationItem];
  if ([v3 type] == 1)
  {
    v4 = [(SHSheetSession *)self collaborationItem];
    v5 = [v4 isServiceManatee];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SHSheetSession *)self collaborationItem];
  if ([v6 type] == 2)
  {
    v7 = [(SHSheetSession *)self collaborationItem];
    v8 = [v7 isURLProviderSupported] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  if (((v5 | v8) & 1) == 0)
  {
    return 0;
  }

  return [(SHSheetSession *)self isCollaborative];
}

- (SHSheetSession)initWithContext:(id)a3 delegate:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = SHSheetSession;
  v8 = [(SHSheetSession *)&v20 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [v10 substringWithRange:{24, 12}];
    identifier = v8->_identifier;
    v8->_identifier = v11;

    v8->_canPerformSharePlay = +[UISharePlayActivity _canPerform];
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v8->_canPerformSharePlay)
      {
        v14 = "yes";
      }

      else
      {
        v14 = "no";
      }

      *buf = 136315138;
      v22 = v14;
      _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "SharePlay: App supports SharePlay: %s", buf, 0xCu);
    }

    objc_storeWeak(&v8->_delegate, v7);
    [(SHSheetSession *)v8 updateWithContext:v6];
    if ([(SHSheetSession *)v8 useRemoteUIService])
    {
      v15 = _ShareSheetPrefersModernRemoteScene();
      v16 = off_1E71F82F8;
      if (!v15)
      {
        v16 = off_1E71F8330;
      }

      v17 = [objc_alloc(*v16) initWithSession:v8];
      remoteScene = v8->_remoteScene;
      v8->_remoteScene = v17;
    }
  }

  return v8;
}

- (BOOL)supportsSendCopy
{
  v3 = [(SHSheetSession *)self collaborationItemsProvider];
  v4 = [v3 supportsCollaboration];

  v5 = [(SHSheetSession *)self collaborationItemsProvider];
  v6 = [v5 supportsSendCopy];

  v7 = [(SHSheetSession *)self collaborationModeRestriction];
  if (v7)
  {
    v8 = [(SHSheetSession *)self collaborationModeRestriction];
    if ([v8 disabledMode])
    {
      v9 = 1;
    }

    else
    {
      v10 = [(SHSheetSession *)self collaborationModeRestriction];
      v11 = [v10 alertTitle];
      v9 = v11 != 0;
    }

    if ((v9 || (v6 & 1) == 0) | v4 & 1)
    {
      return v6 & v9;
    }

    else
    {
      v12 = share_sheet_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SHSheetSession *)v12 supportsSendCopy:v13];
      }

      return 1;
    }
  }

  else
  {
  }

  return v6;
}

- (void)setIsCollaborative:(BOOL)a3
{
  if (self->_isCollaborative != a3)
  {
    self->_isCollaborative = a3;
    v5 = [(SHSheetSession *)self activityItemsManager];
    [v5 invalidateCache];

    v6 = [(SHSheetSession *)self delegate];
    [v6 isCollaborativeDidChangeForSession:self];
  }
}

- (id)collaborationItemsProvider:(id)a3 resolveActivityItem:(id)a4
{
  v5 = a4;
  v6 = [(SHSheetSession *)self activityViewController];
  v7 = [SHSheetActivityItemsManager placeholderActivityItemValuesForActivityItem:v5 activityViewController:v6];

  return v7;
}

- (void)updateWithContext:(id)a3
{
  [(SHSheetSession *)self _configureWithContext:a3];
  [(SHSheetSession *)self _updateObjectManipulationSupport];
  v5 = [(SHSheetSession *)self _createActivityMatchingContext];
  v4 = [(SHSheetSession *)self activitiesManager];
  [v4 updateActivitiesWithContext:v5];
}

- (void)_configureWithContext:(id)a3
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 activityViewController];
  objc_storeWeak(&self->_activityViewController, v5);

  v6 = [v4 activityItems];
  v7 = [v4 collaborationModeRestriction];
  collaborationModeRestriction = self->_collaborationModeRestriction;
  self->_collaborationModeRestriction = v7;

  if (dyld_program_sdk_at_least())
  {
    v9 = [(SHSheetSession *)self collaborationItemsProvider];
    if (!v9 || (-[SHSheetSession collaborationItemsProvider](self, "collaborationItemsProvider"), v10 = objc_claimAutoreleasedReturnValue(), [v10 activityItems], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "activityItems"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToArray:", v12), v12, v11, v10, v9, (v13 & 1) == 0))
    {
      [(SHSheetSession *)self setCollaborationURLRequests:0];
      [(SHSheetSession *)self setShowCollaborationOptions:0];
      WeakRetained = objc_loadWeakRetained(&self->_activityViewController);
      v15 = [WeakRetained collaborationDelegate];

      v16 = objc_alloc(MEMORY[0x1E69CDE68]);
      v17 = [v4 activityItems];
      v18 = [v4 managedFileURL];
      v19 = [v16 initWithActivityItems:v17 delegate:self managedFileURL:v18 isURLProviderSupported:v15 != 0];

      [(SHSheetSession *)self setCollaborationItemsProvider:v19];
      if ([(SHSheetSession *)self supportsCollaboration])
      {
        v20 = [(SHSheetSession *)self collaborationItem];
        [v20 registerChangeObserver:self];

        v21 = [(SHSheetSession *)self supportsSendCopy];
        v22 = [(SHSheetSession *)self collaborationModeRestriction];
        v23 = [v22 alertTitle];

        if (v23)
        {
          if (v21)
          {
            v24 = [(SHSheetSession *)self collaborationModeRestriction];
            -[SHSheetSession setIsCollaborative:](self, "setIsCollaborative:", [v24 disabledMode] == 0);
          }

          else
          {
            [(SHSheetSession *)self setIsCollaborative:1];
          }
        }

        else
        {
          v25 = [(SHSheetSession *)self collaborationItem];
          v99 = [v25 defaultCollaboration];

          v26 = [(SHSheetSession *)self collaborationItem];
          v27 = [v26 type];

          if (v27)
          {
            v28 = 0;
          }

          else
          {
            v29 = [(SHSheetSession *)self collaborationItem];
            v28 = [v29 isiCloudDrive] ^ 1;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v102 = __Block_byref_object_copy__6;
          *&v103 = __Block_byref_object_dispose__6;
          *(&v103 + 1) = 0;
          v30 = [(SHSheetSession *)self _collaborationService];
          v31 = [(SHSheetSession *)self collaborationItem];
          v32 = [v31 contentIdentifier];
          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 3221225472;
          v100[2] = __40__SHSheetSession__configureWithContext___block_invoke;
          v100[3] = &unk_1E71FB2A0;
          v100[4] = buf;
          [v30 requestCollaborativeModeForContentIdentifier:v32 completionHandler:v100];

          if (v28)
          {
            v33 = 0;
          }

          else
          {
            v34 = *(*&buf[8] + 40);
            if (v34)
            {
              v33 = [v34 BOOLValue];
            }

            else
            {
              v33 = v99;
            }
          }

          [(SHSheetSession *)self setIsCollaborative:(!v21 | v33) & 1];
          _Block_object_dispose(buf, 8);
        }
      }
    }
  }

  activityItemsManager = self->_activityItemsManager;
  if (!activityItemsManager || (-[SHSheetActivityItemsManager activityItems](activityItemsManager, "activityItems"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v6 isEqualToArray:v36], v36, (v37 & 1) == 0))
  {
    [(SHSheetSession *)self setCollaborationURLRequests:0];
    v38 = [SHSheetActivityItemsManager alloc];
    v39 = objc_loadWeakRetained(&self->_activityViewController);
    if ([(SHSheetSession *)self supportsCollaboration])
    {
      v40 = self;
    }

    else
    {
      v40 = 0;
    }

    v41 = [(SHSheetSession *)self _activityItemsService];
    v42 = [(SHSheetActivityItemsManager *)v38 initWithActivityItems:v6 activityViewController:v39 delegate:self collaborationDelegate:v40 service:v41];

    v43 = self->_activityItemsManager;
    self->_activityItemsManager = v42;
  }

  if (!self->_activitiesManager || ([v4 applicationActivities], v44 = objc_claimAutoreleasedReturnValue(), -[SHSheetActivitiesManager applicationActivities](self->_activitiesManager, "applicationActivities"), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v44, "isEqualToArray:", v45), v45, v44, (v46 & 1) == 0))
  {
    v47 = [SHSheetActivitiesManager alloc];
    identifier = self->_identifier;
    v49 = [v4 applicationActivities];
    v50 = [(SHSheetActivitiesManager *)v47 initWithSessionIdentifier:identifier applicationActivities:v49];
    activitiesManager = self->_activitiesManager;
    self->_activitiesManager = v50;

    [(SHSheetActivitiesManager *)self->_activitiesManager setDelegate:self];
  }

  v52 = [v4 activityTypesToCreateInShareService];
  activityTypesToCreateInShareService = self->_activityTypesToCreateInShareService;
  self->_activityTypesToCreateInShareService = v52;

  v54 = [v4 includedActivityTypes];
  includedActivityTypes = self->_includedActivityTypes;
  self->_includedActivityTypes = v54;

  v56 = [v4 excludedActivityTypes];
  excludedActivityTypes = self->_excludedActivityTypes;
  self->_excludedActivityTypes = v56;

  v58 = [v4 activityTypeOrder];
  activityTypeOrder = self->_activityTypeOrder;
  self->_activityTypeOrder = v58;

  v60 = [v4 heroActionActivityTypes];
  heroActionActivityTypes = self->_heroActionActivityTypes;
  self->_heroActionActivityTypes = v60;

  self->_showHeroActionsHorizontally = [v4 showHeroActionsHorizontally];
  self->_excludedActivityCategories = [v4 excludedActivityCategories];
  self->_allowsEmbedding = [v4 allowsEmbedding];
  self->_shouldSuggestFamilyMembers = [v4 shouldSuggestFamilyMembers];
  if (self->_canPerformSharePlay && [v4 allowsProminentActivity])
  {
    v62 = ![(NSArray *)self->_excludedActivityTypes containsObject:@"com.apple.UIKit.activity.SharePlay"];
  }

  else
  {
    v62 = 0;
  }

  self->_showSharePlayProminently = v62;
  v63 = share_sheet_log();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    if (self->_showSharePlayProminently)
    {
      v95 = "yes";
    }

    else
    {
      v95 = "no";
    }

    if (self->_canPerformSharePlay)
    {
      v96 = "yes";
    }

    else
    {
      v96 = "no";
    }

    if ([v4 allowsProminentActivity])
    {
      v97 = "yes";
    }

    else
    {
      v97 = "no";
    }

    if ([(NSArray *)self->_excludedActivityTypes containsObject:@"com.apple.UIKit.activity.SharePlay"])
    {
      v98 = "no";
    }

    else
    {
      v98 = "yes";
    }

    *buf = 136315906;
    *&buf[4] = v95;
    *&buf[12] = 2080;
    *&buf[14] = v96;
    *&buf[22] = 2080;
    v102 = v97;
    LOWORD(v103) = 2080;
    *(&v103 + 2) = v98;
    _os_log_debug_impl(&dword_18B359000, v63, OS_LOG_TYPE_DEBUG, "SharePlay: Setting showSharePlayProminently to %s: canPerformSharePlay (%s) && allowsProminentActivity (%s) && excludedActivityTypes does not contain SharePlay (%s)", buf, 0x2Au);
  }

  self->_showKeyboardAutomatically = [v4 showKeyboardAutomatically];
  self->_whitelistActionActivitiesOnly = [v4 whitelistActionActivitiesOnly];
  self->_isContentManaged = [v4 isContentManaged];
  self->_sharingStyle = [v4 sharingStyle];
  v64 = [v4 includedActivityTypes];
  if ([v64 containsObject:@"com.apple.UIKit.activity.AirDrop"])
  {
    v65 = [v4 includedActivityTypes];
    self->_isAirdropOnly = [v65 count] == 1;
  }

  else
  {
    self->_isAirdropOnly = 0;
  }

  v66 = [v4 photosHeaderMetadata];
  photosHeaderMetadata = self->_photosHeaderMetadata;
  self->_photosHeaderMetadata = v66;

  v68 = [v4 objectManipulationDelegate];
  objc_storeWeak(&self->_objectManipulationDelegate, v68);

  self->_configureForCloudSharing = [v4 configureForCloudSharing];
  self->_configureForPhotosEdit = [v4 configureForPhotosEdit];
  self->_hideHeaderView = [v4 hideHeaderView];
  self->_hideNavigationBar = [v4 hideNavigationBar];
  self->_hideSuggestions = [v4 hideSuggestions];
  v69 = [v4 topContentSectionText];
  topContentSectionText = self->_topContentSectionText;
  self->_topContentSectionText = v69;

  self->_instantShareSheet = [v4 instantShareSheet];
  v71 = [v4 selectedAssetIdentifiers];
  selectedAssetIdentifiers = self->_selectedAssetIdentifiers;
  self->_selectedAssetIdentifiers = v71;

  self->_useRemoteUIService = [v4 useRemoteUIService];
  self->_showCustomScene = [v4 showCustomScene];
  v73 = [v4 peopleSuggestionBundleIds];
  v74 = [v73 copy];
  peopleSuggestionBundleIds = self->_peopleSuggestionBundleIds;
  self->_peopleSuggestionBundleIds = v74;

  v76 = objc_alloc(getSFUILoadedMetadataCollectionClass());
  v77 = [(SHSheetSession *)self _metadataValues];
  v78 = [v76 initWithMetadatas:v77];
  metadataCollection = self->_metadataCollection;
  self->_metadataCollection = v78;

  [(SFUILoadedMetadataCollection *)self->_metadataCollection setDelegate:self];
  self->_xrRenderingMode = [v4 xrRenderingMode];
  if (_os_feature_enabled_impl())
  {
    v80 = [(SHSheetSession *)self testingSnapshot];
    v81 = v80 == 0;

    if (v81)
    {
      v82 = objc_alloc(MEMORY[0x1E69CDED8]);
      v83 = [MEMORY[0x1E696AAE8] mainBundle];
      v84 = [v83 bundleIdentifier];
      v85 = [v82 initWithItems:v6 applicationBundleID:v84 pid:getpid()];

      v86 = [(SHSheetSession *)self activityItemsManager];
      v87 = [v86 placeholderActivityItemValuesForSendCopyMode];

      v88 = [(SHSheetSession *)self supportsCollaboration];
      v89 = !v88 || [(SHSheetSession *)self supportsSendCopy];
      v90 = [(SHSheetSession *)self collaborationItem];
      [v85 updateWithPlaceholderItems:v87 collaborationItem:v90 supportsCollaboration:v88 supportsSendCopy:v89];

      [(SHSheetSession *)self setTestingSnapshot:v85];
    }
  }

  v91 = [v4 testingReferenceSnapshot];
  [(SHSheetSession *)self setTestingReferenceSnapshot:v91];

  v92 = [v4 snapshotHandler];
  v93 = v92;
  if (v92)
  {
    v94 = v92;
  }

  else
  {
    v94 = &__block_literal_global_41;
  }

  [(SHSheetSession *)self setSnapshotHandler:v94];
}

- (id)createDiscoveryContext
{
  v2 = [(SHSheetSession *)self activityItemsManager];
  v3 = [v2 activityItemValuesForActivity:0];

  v4 = _NSExtensionItemsFromActivityItemValues(v3);
  v5 = objc_alloc_init(_UIActivityDiscoveryContext);
  v6 = [_UIActivityApplicationExtensionDiscovery extensionMatchingDictionariesForExtensionItems:v4];
  [(_UIActivityDiscoveryContext *)v5 setActivityItemValueExtensionMatchingDictionaries:v6];

  return v5;
}

- (id)createShareServiceUIConfiguration
{
  v3 = objc_alloc_init(UISUIActivityViewControllerConfiguration);
  v4 = [(SHSheetSession *)self identifier];
  [(UISUIActivityViewControllerConfiguration *)v3 setSessionID:v4];

  v5 = [(SHSheetSession *)self activityItemsManager];
  v6 = [v5 activityItemValuesForActivity:0];

  v7 = [v6 sh_allClassNames];
  [(UISUIActivityViewControllerConfiguration *)v3 setActivityItemValueClassNames:v7];

  v8 = [(SHSheetSession *)self activityItemsManager];
  v9 = [v8 activityItemURLValuesForActivity:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setUrlsBeingShared:v9];

  v10 = [(SHSheetSession *)self activityItemsManager];
  v11 = [v10 securityScopedURLsForActivity:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setSecurityScopedURLsForMatching:v11];

  v12 = [(SHSheetSession *)self activityViewController];
  v13 = [v12 viewIfLoaded];
  v14 = [v13 window];
  v15 = [v14 tintColor];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostTintColor:v15];

  v16 = [(SHSheetSession *)self activitiesManager];
  v17 = [v16 orderedActivities];
  v18 = [(SHSheetSession *)self activityConfigurationsForActivities:v17 forRemoteUIService:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostActivityConfigurations:v18];

  v19 = [(SHSheetSession *)self activitiesManager];
  v20 = [v19 hiddenActivities];
  v21 = [(SHSheetSession *)self activityConfigurationsForActivities:v20 forRemoteUIService:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostHiddenActivityConfigurations:v21];

  v22 = [(SHSheetSession *)self activityTypesToCreateInShareService];
  [(UISUIActivityViewControllerConfiguration *)v3 setActivityTypesToCreateInShareService:v22];

  v23 = [(SHSheetSession *)self activityViewController];
  v24 = [v23 traitCollection];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostTraitCollection:v24];

  v25 = [(SHSheetSession *)self activityViewController];
  v26 = [v25 viewIfLoaded];
  [v26 directionalLayoutMargins];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostLayoutMargins:?];

  v27 = [MEMORY[0x1E695DF58] currentLocale];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostLocale:v27];

  v28 = [(SHSheetSession *)self activityViewController];
  [v28 preferredContentSize];
  [(UISUIActivityViewControllerConfiguration *)v3 setPreferredWidth:?];

  v29 = [MEMORY[0x1E696AAE8] mainBundle];
  v30 = [v29 preferredLocalizations];
  [(UISUIActivityViewControllerConfiguration *)v3 setPreferredLocalizations:v30];

  v31 = [MEMORY[0x1E69DC938] currentDevice];
  -[UISUIActivityViewControllerConfiguration setHostIdiom:](v3, "setHostIdiom:", [v31 userInterfaceIdiom]);

  [(UISUIActivityViewControllerConfiguration *)v3 setNumberOfVisibleSharingActivities:[(SHSheetSession *)self numberOfVisibleSharingActivities]];
  [(UISUIActivityViewControllerConfiguration *)v3 setNumberOfVisibleActionActivities:[(SHSheetSession *)self numberOfVisibleActionActivities]];
  v73 = v6;
  v72 = _NSExtensionItemsFromActivityItemValues(v6);
  v32 = [_UIActivityApplicationExtensionDiscovery extensionMatchingDictionariesForExtensionItems:?];
  [(UISUIActivityViewControllerConfiguration *)v3 setActivityItemValueExtensionMatchingDictionaries:v32];

  [(UISUIActivityViewControllerConfiguration *)v3 setAllowsEmbedding:[(SHSheetSession *)self allowsEmbedding]];
  [(UISUIActivityViewControllerConfiguration *)v3 setIsContentManaged:[(SHSheetSession *)self isContentManaged]];
  v33 = 1;
  [(UISUIActivityViewControllerConfiguration *)v3 setShouldMatchOnlyUserElectedExtensions:1];
  [(UISUIActivityViewControllerConfiguration *)v3 setWhitelistActionActivitiesOnly:[(SHSheetSession *)self whitelistActionActivitiesOnly]];
  [(UISUIActivityViewControllerConfiguration *)v3 setLinkedBeforeYukon:dyld_program_sdk_at_least() ^ 1];
  if (![(SHSheetSession *)self shouldSkipPeopleSuggestions])
  {
    v33 = [(SHSheetSession *)self hideSuggestions];
  }

  [(UISUIActivityViewControllerConfiguration *)v3 setShouldSkipPeopleSuggestions:v33];
  v34 = [(SHSheetSession *)self activityItemsManager];
  v35 = [v34 recipientsForActivity:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setRecipients:v35];

  v36 = [(SHSheetSession *)self activityItemsManager];
  v37 = [v36 activityItemURLValuesForActivity:0];

  [(UISUIActivityViewControllerConfiguration *)v3 setShouldExcludeiCloudSharingActivity:_UIActivityHelperActivityItemsIncludeICloudDriveURL(v37) ^ 1];
  v38 = [(SHSheetSession *)self activitiesManager];
  v39 = [v38 excludedActivityTypes];
  [(UISUIActivityViewControllerConfiguration *)v3 setExcludedActivityTypes:v39];

  v40 = [(SHSheetSession *)self includedActivityTypes];
  [(UISUIActivityViewControllerConfiguration *)v3 setIncludedActivityTypes:v40];

  v41 = [(SHSheetSession *)self activityTypeOrder];
  [(UISUIActivityViewControllerConfiguration *)v3 setActivityTypeOrder:v41];

  [(UISUIActivityViewControllerConfiguration *)v3 setExcludedActivityCategories:[(SHSheetSession *)self excludedActivityCategories]];
  [(UISUIActivityViewControllerConfiguration *)v3 setCanExcludeExtensionActivities:_UICanExcludeExtensionActivities()];
  [(UISUIActivityViewControllerConfiguration *)v3 setSharingStyle:[(SHSheetSession *)self sharingStyle]];
  [(UISUIActivityViewControllerConfiguration *)v3 setCanShowShareSheetPlugIns:1];
  v42 = [(SHSheetSession *)self selectedAssetIdentifiers];
  v43 = [(SHSheetSession *)self activityItemsManager];
  v44 = [v43 suggestionAssetIdentifiers];

  if ([v44 count])
  {
    v45 = [MEMORY[0x1E695DFA8] setWithArray:v44];
    [v45 addObjectsFromArray:v42];
    v46 = [v45 allObjects];

    v42 = v46;
  }

  [(UISUIActivityViewControllerConfiguration *)v3 setInitialPhotosAssetDetails:v42];
  v47 = [(SHSheetSession *)self activityViewController];
  v48 = [v47 traitCollection];
  v49 = [v48 preferredContentSizeCategory];

  [UIActivity imageWidthForContentSizeCategory:v49];
  v51 = round(v50 * 0.75);
  [(UISUIActivityViewControllerConfiguration *)v3 setIconSize:v51, v51];
  v52 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v52 scale];
  [(UISUIActivityViewControllerConfiguration *)v3 setIconScale:?];

  if ([(SHSheetSession *)self supportsCollaboration]&& ![(SHSheetSession *)self supportsSendCopy])
  {
    v53 = share_sheet_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v53, OS_LOG_TYPE_DEFAULT, "Excluding AirDrop for collaboration only mode", buf, 2u);
    }

    v54 = [(UISUIActivityViewControllerConfiguration *)v3 excludedActivityTypes];
    if (v54)
    {
      v55 = [(UISUIActivityViewControllerConfiguration *)v3 excludedActivityTypes];
      v56 = [v55 mutableCopy];
    }

    else
    {
      v56 = [MEMORY[0x1E695DF70] array];
    }

    [v56 addObject:@"com.apple.UIKit.activity.AirDrop"];
    v57 = [v56 copy];
    [(UISUIActivityViewControllerConfiguration *)v3 setExcludedActivityTypes:v57];
  }

  if ([(SHSheetSession *)self _isHeroCollaborationOnly])
  {
    [(UISUIActivityViewControllerConfiguration *)v3 setIncludedActivityTypes:&unk_1EFEC8F80];
    [(UISUIActivityViewControllerConfiguration *)v3 setWhitelistActionActivitiesOnly:0];
  }

  [(UISUIActivityViewControllerConfiguration *)v3 setIsCollaborative:[(SHSheetSession *)self isCollaborative]];
  v58 = [(SHSheetSession *)self collaborationItem];
  if (v58)
  {
    v59 = MEMORY[0x1E696AD98];
    v60 = [(SHSheetSession *)self collaborationItem];
    v61 = [v59 numberWithInteger:{objc_msgSend(v60, "type")}];
    [(UISUIActivityViewControllerConfiguration *)v3 setCollaborationType:v61];
  }

  else
  {
    [(UISUIActivityViewControllerConfiguration *)v3 setCollaborationType:0];
  }

  v62 = [(SHSheetSession *)self collaborationItem];
  if (v62)
  {
    v63 = MEMORY[0x1E696AD98];
    v64 = [(SHSheetSession *)self collaborationItem];
    v65 = [v63 numberWithBool:{objc_msgSend(v64, "isPostShare")}];
    [(UISUIActivityViewControllerConfiguration *)v3 setCollaborationIsPostShare:v65];
  }

  else
  {
    [(UISUIActivityViewControllerConfiguration *)v3 setCollaborationIsPostShare:0];
  }

  if ([(SHSheetSession *)self isCollaborative])
  {
    v66 = [(SHSheetSession *)self activityTypesToCreateInShareService];
    v67 = [v66 mutableCopy];

    [v67 removeObject:@"com.apple.UIKit.activity.RemoteOpenInApplication"];
    [(UISUIActivityViewControllerConfiguration *)v3 setActivityTypesToCreateInShareService:v67];
  }

  if (_os_feature_enabled_impl())
  {
    v68 = [(SHSheetSession *)self testingSnapshot];

    if (v68)
    {
      v69 = [(SHSheetSession *)self testingSnapshot];
      [(UISUIActivityViewControllerConfiguration *)v3 setTestingSnapshot:v69];
    }
  }

  v70 = [(SHSheetSession *)self testingReferenceSnapshot];
  [(UISUIActivityViewControllerConfiguration *)v3 setTestingReferenceSnapshot:v70];

  return v3;
}

- (NSArray)customizationGroups
{
  v3 = [(SHSheetSession *)self objectManipulationDelegate];
  v4 = [(SHSheetSession *)self activityViewController];
  v5 = [v3 _customizationGroupsForActivityViewController:v4];

  return v5;
}

- (NSString)customOptionsTitle
{
  if (self->_objectManipulationDelegateFlags.respondsToCustomLocalizedActionTitle)
  {
    v3 = [(SHSheetSession *)self objectManipulationDelegate];
    v4 = [(SHSheetSession *)self activityViewController];
    v5 = [v3 customLocalizedActionTitleForActivityViewController:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIViewController)customOptionsViewController
{
  if (self->_objectManipulationDelegateFlags.respondsToCustomActionViewController)
  {
    v3 = [(SHSheetSession *)self objectManipulationDelegate];
    v4 = [(SHSheetSession *)self activityViewController];
    v5 = [v3 customActionViewControllerForActivityViewController:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSelectedAssetIdentifiers:(id)a3
{
  v6 = a3;
  if ([v6 isEqualToArray:self->_selectedAssetIdentifiers])
  {
    self->_shouldSkipPeopleSuggestions = 1;
  }

  else
  {
    self->_shouldSkipPeopleSuggestions = 0;
    v4 = [v6 copy];
    selectedAssetIdentifiers = self->_selectedAssetIdentifiers;
    self->_selectedAssetIdentifiers = v4;
  }
}

- (void)setIsContentManaged:(BOOL)a3
{
  if (self->_isContentManaged != a3)
  {
    v4 = a3;
    self->_isContentManaged = a3;
    v5 = [(SHSheetSession *)self activityItemsManager];
    [v5 setIsContentManaged:v4];
  }
}

- (id)createClientContext
{
  v2 = [[SHSheetUIServiceClientContext alloc] initWithSession:self];

  return v2;
}

- (id)createContentContext
{
  v3 = objc_alloc_init(UIActivityContentContext);
  v4 = [(SHSheetSession *)self instantShareSheet]|| [(SHSheetSession *)self useRemoteUIService];
  [(UIActivityContentContext *)v3 setCanRenderPeople:v4];
  [(UIActivityContentContext *)v3 setConfigureForCloudSharing:[(SHSheetSession *)self configureForCloudSharing]];
  [(UIActivityContentContext *)v3 setConfigureForPhotosEdit:[(SHSheetSession *)self configureForPhotosEdit]];
  [(UIActivityContentContext *)v3 setHideHeaderView:[(SHSheetSession *)self hideHeaderView]];
  [(UIActivityContentContext *)v3 setHideNavigationBar:[(SHSheetSession *)self hideNavigationBar]];
  v5 = [(SHSheetSession *)self topContentSectionText];
  [(UIActivityContentContext *)v3 setTopContentSectionText:v5];

  [(UIActivityContentContext *)v3 setSharingExpanded:[(SHSheetSession *)self isExpanded]];
  [(UIActivityContentContext *)v3 setSharingStyle:[(SHSheetSession *)self sharingStyle]];
  v6 = [(SHSheetSession *)self activitiesManager];
  v7 = [v6 applicationActivityTypes];
  [(UIActivityContentContext *)v3 setApplicationActivityTypes:v7];

  v8 = [(SHSheetSession *)self heroActionActivityTypes];
  [(UIActivityContentContext *)v3 setHeroActionActivityTypes:v8];

  [(UIActivityContentContext *)v3 setShowHeroActionsHorizontally:[(SHSheetSession *)self showHeroActionsHorizontally]];
  v9 = _ShareSheetApplicationKeyWindow();
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  v14 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  if ((v14 - 1) >= 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if ((v14 - 1) >= 2)
  {
    v16 = v13;
  }

  else
  {
    v16 = v11;
  }

  [(UIActivityContentContext *)v3 setHostPortraitWindowSize:v16, v15];

  return v3;
}

- (BOOL)isExpanded
{
  if (![(SHSheetSession *)self sharingStyle])
  {
    return 1;
  }

  return [(SHSheetSession *)self didExpand];
}

- (BOOL)showHeaderSpecialization
{
  v2 = [(SHSheetSession *)self activityItemsManager];
  v3 = [v2 linkMetadataValues];
  v4 = [v3 firstObject];

  LOBYTE(v2) = [SHSheetActivityItemUtilities shouldShowHeaderSpecializationForMetadata:v4];
  return v2;
}

- (BOOL)isModeSwitchDisabled
{
  v3 = [(SHSheetSession *)self collaborationModeRestriction];
  if (v3)
  {
    v4 = [(SHSheetSession *)self collaborationModeRestriction];
    v5 = [v4 alertTitle];
    if (v5)
    {
      v6 = [(SHSheetSession *)self collaborationModeRestriction];
      v7 = [v6 allowContinueToMode] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  configuration = self->_configuration;
  if (!configuration)
  {
    v7 = share_sheet_log();
    v8 = share_sheet_log();
    v9 = [(SHSheetSession *)self activityViewController];
    v10 = os_signpost_id_make_with_pointer(v8, v9);

    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v7, OS_SIGNPOST_INTERVAL_END, v10, "SendInitialConfiguration", &unk_18B437ED2, buf, 2u);
    }

    v11 = share_sheet_log();
    if (os_signpost_enabled(v11))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InitialContentUpdate", &unk_18B437ED2, v14, 2u);
    }

    configuration = self->_configuration;
  }

  if (configuration != v5)
  {
    objc_storeStrong(&self->_configuration, a3);
    if ([(SHSheetSession *)self isCollaborationRestricted])
    {
      [(SHSheetSession *)self setIsCollaborative:0];
    }

    goto LABEL_13;
  }

  v12 = [(SHSheetSession *)self useRemoteUIService];
  if (!v5 && v12)
  {
LABEL_13:
    v13 = [(SHSheetSession *)self delegate];
    [v13 sessionConfigurationDidChangeForSession:self];
  }
}

- (void)_updateTestingSnapshotIfNeededForResolvedItems:(id)a3 activityType:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = [(SHSheetSession *)self testingSnapshot];

    if (v8)
    {
      if (-[SHSheetSession isCollaborative](self, "isCollaborative") && [v7 isEqualToString:@"com.apple.UIKit.activity.Message"] && !objc_msgSend(v6, "count") && (-[SHSheetSession collaborationItem](self, "collaborationItem"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "itemProvider"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
      {
        v9 = [(SHSheetSession *)self testingSnapshot];
        v12 = [(SHSheetSession *)self collaborationItem];
        v13 = [v12 itemProvider];
        v15[0] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [v9 updateWithFinalItems:v14 forActivityType:v7 forCollaboration:{-[SHSheetSession isCollaborative](self, "isCollaborative")}];
      }

      else
      {
        v9 = [(SHSheetSession *)self testingSnapshot];
        [v9 updateWithFinalItems:v6 forActivityType:v7 forCollaboration:{-[SHSheetSession isCollaborative](self, "isCollaborative")}];
      }
    }
  }
}

- (id)activityConfigurationsForActivities:(id)a3 forRemoteUIService:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(SHSheetSession *)self _configurationForActivity:*(*(&v15 + 1) + 8 * i) forRemoteUIService:v4, v15];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_configurationForActivity:(id)a3 forRemoteUIService:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [UISUIActivityConfiguration configurationForActivity:v6 forRemoteUIService:v4];
  v8 = [(SHSheetSession *)self activityViewController];
  v9 = [v6 activityType];
  v10 = [v8 _titleForActivity:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v6 activityTitle];
  }

  v13 = v12;

  v14 = [v7 activityTitle];
  v15 = [v13 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    [v7 updateConfigurationWithOverrideTitle:v13];
  }

  return v7;
}

- (BOOL)activitiesManager:(id)a3 shouldShowSystemActivityType:(id)a4
{
  v5 = a4;
  v6 = [(SHSheetSession *)self activityViewController];
  v7 = [v6 _shouldShowSystemActivityType:v5];

  return v7;
}

- (void)metadataCollectionDidFinishLoading:(id)a3
{
  v4 = [(SHSheetSession *)self delegate];
  [v4 headerMetadataDidChangeForSession:self];
}

- (void)metadataCollection:(id)a3 didChangeMetadata:(id)a4
{
  v5 = a4;
  v6 = [(SHSheetSession *)self delegate];
  [v6 session:self didChangeMetadata:v5];
}

- (void)activityItemsManagerLinkMetadataValuesDidChange:(id)a3
{
  v4 = objc_alloc(getSFUILoadedMetadataCollectionClass());
  v5 = [(SHSheetSession *)self _metadataValues];
  v6 = [v4 initWithMetadatas:v5];
  [(SHSheetSession *)self setMetadataCollection:v6];

  v7 = [(SHSheetSession *)self delegate];
  [v7 headerMetadataDidChangeForSession:self];
}

- (id)urlRequestsForActivityItemsManager:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  collaborationURLRequests = self->_collaborationURLRequests;
  if (collaborationURLRequests)
  {
    v4 = collaborationURLRequests;
  }

  else
  {
    v6 = [(SHSheetSession *)self collaborationItem];
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x1E69CDE78];
      v13[0] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v10 = [v8 urlRequestsForCollaborationItems:v9];
      v11 = self->_collaborationURLRequests;
      self->_collaborationURLRequests = v10;
    }

    v4 = self->_collaborationURLRequests;
  }

  return v4;
}

- (BOOL)activityItemsManager:(id)a3 collaborationSupportsPromiseURLsForActivity:(id)a4
{
  v4 = a4;
  if ([objc_opt_class() activityCategory])
  {
    v5 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [v4 _activitySupportsPromiseURLs];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)collaborationPlaceholderActivityItemsForActivityItemsManager:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [(SHSheetSession *)self collaborationItem];
  if (v4 && (v5 = v4, v6 = [(SHSheetSession *)self supportsCollaboration], v5, v6))
  {
    v7 = [(SHSheetSession *)self collaborationItem];
    v8 = [v7 placeholderActivityItem];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = [(SHSheetSession *)self collaborationItem];
      v10 = [v12 activityItem];
    }

    if ([(SHSheetSession *)self isCollaborative])
    {
      v15[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    else
    {
      v13 = [(SHSheetSession *)self collaborationItem];
      v11 = [v13 sendCopyItems];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)activityItemsManager:(id)a3 collaborationActivityItemValuesForActivityItemValue:(id)a4 activity:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(SHSheetSession *)self supportsCollaboration])
  {
    v11 = 0;
    goto LABEL_33;
  }

  v11 = [v9 mutableCopy];
  v12 = [(SHSheetSession *)self collaborationItem];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = -1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __100__SHSheetSession_activityItemsManager_collaborationActivityItemValuesForActivityItemValue_activity___block_invoke;
  v40[3] = &unk_1E71FB2E8;
  v42 = &v44;
  v13 = v12;
  v41 = v13;
  v43 = &v48;
  [v9 enumerateObjectsUsingBlock:v40];
  if (*(v45 + 24) == 1)
  {
    [v11 removeObjectAtIndex:v49[3]];
    v49[3] = -1;
  }

  if ([(SHSheetSession *)self isCollaborative])
  {
    v14 = [v10 activityType];
    v15 = [v14 isEqual:@"com.apple.UIKit.activity.Message"];

    if (v15)
    {
      [v11 removeAllObjects];
      goto LABEL_21;
    }

    v16 = [v10 activityType];
    v17 = [v16 isEqual:@"com.apple.UIKit.activity.Mail"];

    if (v17)
    {
      [v11 removeAllObjects];
      v18 = [(SHSheetSession *)self delegate];
      v19 = [v18 collaborationSharingResultForActivity:v10];

      v20 = [v19 mailResult];
      v21 = [v20 body];

      if (!v21)
      {
LABEL_20:

        goto LABEL_21;
      }

      v22 = [v19 mailResult];
      v23 = [v22 body];
      [v11 addObject:v23];
    }

    else
    {
      if ([objc_opt_class() activityCategory] != 1)
      {
        goto LABEL_21;
      }

      v24 = [(SHSheetSession *)self delegate];
      v19 = [v24 collaborationSharingResultForActivity:v10];

      if (v19)
      {
        [v11 removeAllObjects];
        v25 = [v19 sharingURL];

        if (v25)
        {
          v22 = [v19 sharingURL];
          [v11 addObject:v22];
        }

        else
        {
          v22 = share_sheet_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v27 = [v19 collaborationItemIdentifier];
            v28 = [v19 error];
            [(SHSheetSession *)v27 activityItemsManager:v28 collaborationActivityItemValuesForActivityItemValue:buf activity:v22];
          }
        }
      }

      else
      {
        v22 = share_sheet_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v10 activityType];
          *buf = 138412290;
          v53 = v26;
          _os_log_impl(&dword_18B359000, v22, OS_LOG_TYPE_DEFAULT, "No sharingResult for activity type:%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  if (!-[SHSheetSession isCollaborative](self, "isCollaborative") || ![objc_opt_class() activityCategory])
  {
    v29 = [v10 activityType];
    v30 = [v29 isEqualToString:@"com.apple.InCallService.ShareExtension"];

    if ((v30 & 1) == 0 && (v49[3] & 0x8000000000000000) == 0)
    {
      v31 = [(SHSheetSession *)self collaborationItem];
      v32 = [v31 type] == 0;

      if (!v32)
      {
        v33 = [v13 itemProvider];
        v34 = [v33 supportsShareSheetSendCopyRepresentation];

        if (v34)
        {
          v35 = [v13 sendCopyRepresentation];
          v36 = v35;
          if (v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = [v13 itemProvider];
          }

          v38 = v37;

          [v11 replaceObjectAtIndex:v49[3] withObject:v38];
        }

        else
        {
          [v11 removeObjectAtIndex:v49[3]];
        }
      }
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

LABEL_33:

  return v11;
}

void __100__SHSheetSession_activityItemsManager_collaborationActivityItemValuesForActivityItemValue_activity___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [_UIActivityItemMapping _originalActivityItemForActivityItem:v13];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v13;
  }

  v9 = v8;

  v10 = [*(a1 + 32) placeholderActivityItem];
  *(*(*(a1 + 40) + 8) + 24) = [v10 isEqual:v9];

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) != 0 || ([*(a1 + 32) activityItem], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v9), v11, v12))
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)activityItemsManager:(id)a3 subjectForActivity:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (-[SHSheetSession supportsCollaboration](self, "supportsCollaboration") && -[SHSheetSession isCollaborative](self, "isCollaborative") && ([v5 activityType], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", @"com.apple.UIKit.activity.Mail"), v6, v7))
  {
    v8 = [(SHSheetSession *)self delegate];
    v9 = [v8 collaborationSharingResultForActivity:v5];

    v10 = [v9 mailResult];
    v11 = [v10 subject];

    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "Collaboration Mail Subject:%@", &v14, 0xCu);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)numberOfVisibleSharingActivities
{
  v3 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 5;
  v4 = [(SHSheetSession *)self activityViewController];
  v5 = [v4 customViewController];

  v6 = v3 < 0xFFFFFFFFFFFFFFFELL || v5 == 0;
  if (!v6 || ![(SHSheetSession *)self isExpanded])
  {
    return 0;
  }

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    v9 = [(SHSheetSession *)self activityViewController];
    v10 = [v9 _existingPresentationControllerImmediate:0 effective:1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      return 5;
    }

    else
    {
      return 7;
    }
  }

  else if (v3 >= 0xFFFFFFFFFFFFFFFELL)
  {
    return 7;
  }

  else
  {
    return 5;
  }
}

- (int64_t)numberOfVisibleActionActivities
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(SHSheetSession *)self activityViewController];
  v6 = [v5 _existingPresentationControllerImmediate:0 effective:1];

  v7 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 5;
  v8 = [(SHSheetSession *)self activityViewController];
  v9 = [v8 customViewController];

  if (v7 < 0xFFFFFFFFFFFFFFFELL || v9 == 0)
  {
    if ([(SHSheetSession *)self isExpanded])
    {
      if (v4 == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = 7;
        }

        else
        {
          v11 = 4;
        }
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v11 = 2;
        if (!v9 && (isKindOfClass & 1) != 0)
        {
          v18 = v6;
          v19 = [v18 selectedDetentIdentifier];
          if (v19)
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v20 = [v18 detents];
            v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v21)
            {
              v22 = *v39;
              while (2)
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v39 != v22)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v24 = *(*(&v38 + 1) + 8 * i);
                  v25 = [v24 _identifier];
                  v26 = [v25 isEqualToString:v19];

                  if (v26)
                  {
                    v27 = v24;
                    goto LABEL_33;
                  }
                }

                v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }
          }

          else
          {
            v20 = [v18 detents];
            v27 = [v20 firstObject];
LABEL_33:
            v21 = v27;
          }

          if (!v21)
          {
            v28 = share_sheet_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [(SHSheetSession *)v28 numberOfVisibleActionActivities:v29];
            }
          }

          v36 = [MEMORY[0x1E69DCF58] largeDetent];
          v37 = [v21 isEqual:v36];

          if (v37)
          {
            v11 = 10;
          }

          else
          {
            v11 = 4;
          }
        }
      }
    }

    else
    {
      if (v4 == 1)
      {
        v12 = 9;
      }

      else
      {
        v12 = 8;
      }

      v13 = [(SHSheetSession *)self activityViewController];
      v14 = [v13 heroActionActivityTypes];
      v15 = [v14 count];

      if (v15)
      {
        v11 = v12 - 2;
      }

      else
      {
        v11 = v12;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (![(SHSheetSession *)self isCollaborationRestricted])
  {
    if ((v4 & 4) != 0)
    {
      v9 = [v6 options];

      if (!v9)
      {
        goto LABEL_9;
      }

      objc_initWeak(&location, self);
      v10 = MEMORY[0x1E69CDE78];
      v11 = [(SHSheetSession *)self collaborationItem];
      v12 = [(SHSheetSession *)self _collaborationService];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __39__SHSheetSession_observable_didChange___block_invoke;
      v14[3] = &unk_1E71F94C8;
      objc_copyWeak(&v15, &location);
      [v10 canShowShareOptionsForCollaborationItem:v11 service:v12 completionHandler:v14];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      if ((v4 & 2) != 0)
      {
LABEL_9:
        v13 = [(SHSheetSession *)self delegate];
        [v13 collaborationFooterViewModelDidChangeForSession:self];

        goto LABEL_10;
      }

      if ((v4 & 0x10) != 0)
      {
        v7 = [v6 canAddPeople];
        v8 = [v7 BOOLValue];

        if ((v8 & 1) == 0)
        {
          [(SHSheetSession *)self setShowCollaborationOptions:0];
          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
}

void __39__SHSheetSession_observable_didChange___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCollaborationRestricted] & 1) == 0)
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "no";
      if (a2)
      {
        v6 = "yes";
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "canShowShareOptions:%s", &v8, 0xCu);
    }

    [v4 setShowCollaborationOptions:a2];
    v7 = [v4 delegate];
    [v7 collaborationFooterViewModelDidChangeForSession:v4];
  }
}

- (UIActivityViewControllerObjectManipulationDelegate)objectManipulationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_objectManipulationDelegate);

  return WeakRetained;
}

- (void)activityItemsManager:(uint8_t *)buf collaborationActivityItemValuesForActivityItemValue:(os_log_t)log activity:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18B359000, log, OS_LOG_TYPE_ERROR, "No sharingURL for sharingResult:%@ error:%@", buf, 0x16u);
}

@end