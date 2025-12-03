@interface SHSheetSession
- (BOOL)_isHeroCollaborationOnly;
- (BOOL)activitiesManager:(id)manager shouldShowSystemActivityType:(id)type;
- (BOOL)activityItemsManager:(id)manager collaborationSupportsPromiseURLsForActivity:(id)activity;
- (BOOL)isCollaborationRestricted;
- (BOOL)isExpanded;
- (BOOL)isModeSwitchDisabled;
- (BOOL)showHeaderSpecialization;
- (BOOL)supportsCollaboration;
- (BOOL)supportsSendCopy;
- (NSArray)customizationGroups;
- (NSString)customOptionsTitle;
- (SFCollaborationItem)collaborationItem;
- (SHSheetSession)initWithContext:(id)context delegate:(id)delegate;
- (SHSheetSessionDelegate)delegate;
- (UIActivityViewController)activityViewController;
- (UIActivityViewControllerObjectManipulationDelegate)objectManipulationDelegate;
- (UIViewController)customOptionsViewController;
- (id)_activityItemsService;
- (id)_collaborationService;
- (id)_configurationForActivity:(id)activity forRemoteUIService:(BOOL)service;
- (id)_createActivityMatchingContext;
- (id)_metadataValues;
- (id)activityConfigurationsForActivities:(id)activities forRemoteUIService:(BOOL)service;
- (id)activityItemsManager:(id)manager collaborationActivityItemValuesForActivityItemValue:(id)value activity:(id)activity;
- (id)activityItemsManager:(id)manager subjectForActivity:(id)activity;
- (id)collaborationItemsProvider:(id)provider resolveActivityItem:(id)item;
- (id)collaborationPlaceholderActivityItemsForActivityItemsManager:(id)manager;
- (id)createClientContext;
- (id)createContentContext;
- (id)createDiscoveryContext;
- (id)createShareServiceUIConfiguration;
- (id)urlRequestsForActivityItemsManager:(id)manager;
- (int64_t)numberOfVisibleActionActivities;
- (int64_t)numberOfVisibleSharingActivities;
- (void)_configureWithContext:(id)context;
- (void)_updateObjectManipulationSupport;
- (void)_updateTestingSnapshotIfNeededForResolvedItems:(id)items activityType:(id)type;
- (void)activityItemsManagerLinkMetadataValuesDidChange:(id)change;
- (void)metadataCollection:(id)collection didChangeMetadata:(id)metadata;
- (void)metadataCollectionDidFinishLoading:(id)loading;
- (void)observable:(id)observable didChange:(unint64_t)change;
- (void)setConfiguration:(id)configuration;
- (void)setIsCollaborative:(BOOL)collaborative;
- (void)setIsContentManaged:(BOOL)managed;
- (void)setSelectedAssetIdentifiers:(id)identifiers;
- (void)updateWithContext:(id)context;
@end

@implementation SHSheetSession

- (UIActivityViewController)activityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_activityViewController);

  return WeakRetained;
}

- (id)_collaborationService
{
  delegate = [(SHSheetSession *)self delegate];
  v4 = [delegate collaborationServiceForSession:self];

  return v4;
}

- (BOOL)supportsCollaboration
{
  if ([(SHSheetSession *)self isCollaborationRestricted])
  {
    return 0;
  }

  collaborationItemsProvider = [(SHSheetSession *)self collaborationItemsProvider];
  supportsCollaboration = [collaborationItemsProvider supportsCollaboration];

  collaborationItemsProvider2 = [(SHSheetSession *)self collaborationItemsProvider];
  supportsSendCopy = [collaborationItemsProvider2 supportsSendCopy];

  collaborationModeRestriction = [(SHSheetSession *)self collaborationModeRestriction];
  if (collaborationModeRestriction)
  {
    collaborationModeRestriction2 = [(SHSheetSession *)self collaborationModeRestriction];
    if ([collaborationModeRestriction2 disabledMode] == 1)
    {
      collaborationModeRestriction3 = [(SHSheetSession *)self collaborationModeRestriction];
      alertTitle = [collaborationModeRestriction3 alertTitle];
      v11 = alertTitle != 0;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 || (supportsCollaboration & 1) == 0) | supportsSendCopy & 1)
    {
      return supportsCollaboration & v11;
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

  return supportsCollaboration;
}

- (SHSheetSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_activityItemsService
{
  delegate = [(SHSheetSession *)self delegate];
  v4 = [delegate activityItemsServiceForSession:self];

  return v4;
}

- (id)_metadataValues
{
  v14[1] = *MEMORY[0x1E69E9840];
  photosHeaderMetadata = [(SHSheetSession *)self photosHeaderMetadata];
  v4 = photosHeaderMetadata;
  if (photosHeaderMetadata)
  {
    v14[0] = photosHeaderMetadata;
    linkMetadataValues = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    activityItemsManager = [(SHSheetSession *)self activityItemsManager];
    linkMetadataValues = [activityItemsManager linkMetadataValues];

    if (![linkMetadataValues count])
    {
      collaborationItem = [(SHSheetSession *)self collaborationItem];
      linkMetadata = [collaborationItem linkMetadata];

      if (linkMetadata)
      {
        collaborationItem2 = [(SHSheetSession *)self collaborationItem];
        linkMetadata2 = [collaborationItem2 linkMetadata];
        v13 = linkMetadata2;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];

        linkMetadataValues = v11;
      }
    }
  }

  return linkMetadataValues;
}

- (BOOL)isCollaborationRestricted
{
  collaborationItemsProvider = [(SHSheetSession *)self collaborationItemsProvider];
  collaborationItems = [collaborationItemsProvider collaborationItems];
  firstObject = [collaborationItems firstObject];
  if ([firstObject type] == 2)
  {
    configuration = [(SHSheetSession *)self configuration];
    restrictedActivityTypes = [configuration restrictedActivityTypes];
    v8 = [restrictedActivityTypes containsObject:@"com.apple.Collaboration.Internal"];
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
    firstObject = 0;
  }

  else
  {
    collaborationItemsProvider = [(SHSheetSession *)self collaborationItemsProvider];
    collaborationItems = [collaborationItemsProvider collaborationItems];
    firstObject = [collaborationItems firstObject];
  }

  return firstObject;
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
    objectManipulationDelegate = [(SHSheetSession *)self objectManipulationDelegate];
    v8 = objc_loadWeakRetained(&self->_activityViewController);
    self->_showOptions = [objectManipulationDelegate _customizationAvailableForActivityViewController:v8];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_objectManipulationDelegate);

    if (!v9)
    {
      goto LABEL_6;
    }

    objectManipulationDelegate = [(SHSheetSession *)self customizationGroups];
    self->_showOptions = [objectManipulationDelegate count] != 0;
  }

LABEL_6:
  if (showOptions != self->_showOptions)
  {
    delegate = [(SHSheetSession *)self delegate];
    [delegate showOptionsDidChangeForSession:self];
  }
}

- (id)_createActivityMatchingContext
{
  v31 = *MEMORY[0x1E69E9840];
  activityItemsManager = [(SHSheetSession *)self activityItemsManager];
  v4 = [activityItemsManager activityItemValuesForActivity:0];

  if ([(SHSheetSession *)self isCollaborative])
  {
    collaborationItemsProvider = [(SHSheetSession *)self collaborationItemsProvider];
    collaborationItems = [collaborationItemsProvider collaborationItems];
  }

  else
  {
    collaborationItems = MEMORY[0x1E695E0F0];
  }

  excludedActivityTypes = [(SHSheetSession *)self excludedActivityTypes];
  if ([(SHSheetSession *)self supportsCollaboration]&& ![(SHSheetSession *)self supportsSendCopy])
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Excluding AirDrop for collaboration only mode", buf, 2u);
    }

    if (excludedActivityTypes)
    {
      v9 = [excludedActivityTypes mutableCopy];

      excludedActivityTypes = v9;
    }

    else
    {
      excludedActivityTypes = [MEMORY[0x1E695DF70] array];
    }

    [excludedActivityTypes addObject:@"com.apple.UIKit.activity.AirDrop"];
  }

  if ([excludedActivityTypes count])
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [excludedActivityTypes componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Excluded activity types (%@)", buf, 0xCu);
    }
  }

  includedActivityTypes = [(SHSheetSession *)self includedActivityTypes];
  excludedActivityCategories = [(SHSheetSession *)self excludedActivityCategories];
  if ([(SHSheetSession *)self _isHeroCollaborationOnly])
  {
    v28 = @"com.apple.UIKit.activity.Message";
    excludedActivityCategories = 1;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];

    includedActivityTypes = v14;
  }

  collaborationModeRestriction = [(SHSheetSession *)self collaborationModeRestriction];
  if (collaborationModeRestriction)
  {
    collaborationModeRestriction2 = [(SHSheetSession *)self collaborationModeRestriction];
    if ([collaborationModeRestriction2 disabledMode] == 1)
    {
      collaborationModeRestriction3 = [(SHSheetSession *)self collaborationModeRestriction];
      alertTitle = [collaborationModeRestriction3 alertTitle];
      v19 = alertTitle == 0;
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
  activityItemsManager2 = [(SHSheetSession *)self activityItemsManager];
  activityItems = [activityItemsManager2 activityItems];
  v23 = [(_UIActivityMatchingContext *)v20 initWithActivityItems:activityItems itemValues:v4 collaborationItems:collaborationItems];

  [(_UIActivityMatchingContext *)v23 setIsContentManaged:[(SHSheetSession *)self isContentManaged]];
  [(_UIActivityMatchingContext *)v23 setIsCollaborative:[(SHSheetSession *)self isCollaborative]];
  [(_UIActivityMatchingContext *)v23 setShouldMatchOnlyUserElectedExtensions:1];
  [(_UIActivityMatchingContext *)v23 setWhitelistActionActivitiesOnly:[(SHSheetSession *)self whitelistActionActivitiesOnly]];
  activitiesManager = [(SHSheetSession *)self activitiesManager];
  applicationActivities = [activitiesManager applicationActivities];
  [(_UIActivityMatchingContext *)v23 setApplicationActivities:applicationActivities];

  activityTypeOrder = [(SHSheetSession *)self activityTypeOrder];
  [(_UIActivityMatchingContext *)v23 setActivityTypeOrder:activityTypeOrder];

  [(_UIActivityMatchingContext *)v23 setIncludedActivityTypes:includedActivityTypes];
  [(_UIActivityMatchingContext *)v23 setExcludedActivityTypes:excludedActivityTypes];
  [(_UIActivityMatchingContext *)v23 setExcludedActivityCategories:excludedActivityCategories];
  [(_UIActivityMatchingContext *)v23 setSharingStyle:[(SHSheetSession *)self sharingStyle]];
  [(_UIActivityMatchingContext *)v23 setShowSharePlayProminently:[(SHSheetSession *)self showSharePlayProminently]];
  [(_UIActivityMatchingContext *)v23 setShouldExcludeiCloudSharingActivity:[(SHSheetSession *)self supportsCollaboration]|| v19];

  return v23;
}

- (BOOL)_isHeroCollaborationOnly
{
  collaborationItem = [(SHSheetSession *)self collaborationItem];
  if ([collaborationItem type] == 1)
  {
    collaborationItem2 = [(SHSheetSession *)self collaborationItem];
    isServiceManatee = [collaborationItem2 isServiceManatee];
  }

  else
  {
    isServiceManatee = 0;
  }

  collaborationItem3 = [(SHSheetSession *)self collaborationItem];
  if ([collaborationItem3 type] == 2)
  {
    collaborationItem4 = [(SHSheetSession *)self collaborationItem];
    v8 = [collaborationItem4 isURLProviderSupported] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  if (((isServiceManatee | v8) & 1) == 0)
  {
    return 0;
  }

  return [(SHSheetSession *)self isCollaborative];
}

- (SHSheetSession)initWithContext:(id)context delegate:(id)delegate
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = SHSheetSession;
  v8 = [(SHSheetSession *)&v20 init];
  if (v8)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [uUIDString substringWithRange:{24, 12}];
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

    objc_storeWeak(&v8->_delegate, delegateCopy);
    [(SHSheetSession *)v8 updateWithContext:contextCopy];
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
  collaborationItemsProvider = [(SHSheetSession *)self collaborationItemsProvider];
  supportsCollaboration = [collaborationItemsProvider supportsCollaboration];

  collaborationItemsProvider2 = [(SHSheetSession *)self collaborationItemsProvider];
  supportsSendCopy = [collaborationItemsProvider2 supportsSendCopy];

  collaborationModeRestriction = [(SHSheetSession *)self collaborationModeRestriction];
  if (collaborationModeRestriction)
  {
    collaborationModeRestriction2 = [(SHSheetSession *)self collaborationModeRestriction];
    if ([collaborationModeRestriction2 disabledMode])
    {
      v9 = 1;
    }

    else
    {
      collaborationModeRestriction3 = [(SHSheetSession *)self collaborationModeRestriction];
      alertTitle = [collaborationModeRestriction3 alertTitle];
      v9 = alertTitle != 0;
    }

    if ((v9 || (supportsSendCopy & 1) == 0) | supportsCollaboration & 1)
    {
      return supportsSendCopy & v9;
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

  return supportsSendCopy;
}

- (void)setIsCollaborative:(BOOL)collaborative
{
  if (self->_isCollaborative != collaborative)
  {
    self->_isCollaborative = collaborative;
    activityItemsManager = [(SHSheetSession *)self activityItemsManager];
    [activityItemsManager invalidateCache];

    delegate = [(SHSheetSession *)self delegate];
    [delegate isCollaborativeDidChangeForSession:self];
  }
}

- (id)collaborationItemsProvider:(id)provider resolveActivityItem:(id)item
{
  itemCopy = item;
  activityViewController = [(SHSheetSession *)self activityViewController];
  v7 = [SHSheetActivityItemsManager placeholderActivityItemValuesForActivityItem:itemCopy activityViewController:activityViewController];

  return v7;
}

- (void)updateWithContext:(id)context
{
  [(SHSheetSession *)self _configureWithContext:context];
  [(SHSheetSession *)self _updateObjectManipulationSupport];
  _createActivityMatchingContext = [(SHSheetSession *)self _createActivityMatchingContext];
  activitiesManager = [(SHSheetSession *)self activitiesManager];
  [activitiesManager updateActivitiesWithContext:_createActivityMatchingContext];
}

- (void)_configureWithContext:(id)context
{
  v104 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  activityViewController = [contextCopy activityViewController];
  objc_storeWeak(&self->_activityViewController, activityViewController);

  activityItems = [contextCopy activityItems];
  collaborationModeRestriction = [contextCopy collaborationModeRestriction];
  collaborationModeRestriction = self->_collaborationModeRestriction;
  self->_collaborationModeRestriction = collaborationModeRestriction;

  if (dyld_program_sdk_at_least())
  {
    collaborationItemsProvider = [(SHSheetSession *)self collaborationItemsProvider];
    if (!collaborationItemsProvider || (-[SHSheetSession collaborationItemsProvider](self, "collaborationItemsProvider"), v10 = objc_claimAutoreleasedReturnValue(), [v10 activityItems], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(contextCopy, "activityItems"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToArray:", v12), v12, v11, v10, collaborationItemsProvider, (v13 & 1) == 0))
    {
      [(SHSheetSession *)self setCollaborationURLRequests:0];
      [(SHSheetSession *)self setShowCollaborationOptions:0];
      WeakRetained = objc_loadWeakRetained(&self->_activityViewController);
      collaborationDelegate = [WeakRetained collaborationDelegate];

      v16 = objc_alloc(MEMORY[0x1E69CDE68]);
      activityItems2 = [contextCopy activityItems];
      managedFileURL = [contextCopy managedFileURL];
      v19 = [v16 initWithActivityItems:activityItems2 delegate:self managedFileURL:managedFileURL isURLProviderSupported:collaborationDelegate != 0];

      [(SHSheetSession *)self setCollaborationItemsProvider:v19];
      if ([(SHSheetSession *)self supportsCollaboration])
      {
        collaborationItem = [(SHSheetSession *)self collaborationItem];
        [collaborationItem registerChangeObserver:self];

        supportsSendCopy = [(SHSheetSession *)self supportsSendCopy];
        collaborationModeRestriction2 = [(SHSheetSession *)self collaborationModeRestriction];
        alertTitle = [collaborationModeRestriction2 alertTitle];

        if (alertTitle)
        {
          if (supportsSendCopy)
          {
            collaborationModeRestriction3 = [(SHSheetSession *)self collaborationModeRestriction];
            -[SHSheetSession setIsCollaborative:](self, "setIsCollaborative:", [collaborationModeRestriction3 disabledMode] == 0);
          }

          else
          {
            [(SHSheetSession *)self setIsCollaborative:1];
          }
        }

        else
        {
          collaborationItem2 = [(SHSheetSession *)self collaborationItem];
          defaultCollaboration = [collaborationItem2 defaultCollaboration];

          collaborationItem3 = [(SHSheetSession *)self collaborationItem];
          type = [collaborationItem3 type];

          if (type)
          {
            v28 = 0;
          }

          else
          {
            collaborationItem4 = [(SHSheetSession *)self collaborationItem];
            v28 = [collaborationItem4 isiCloudDrive] ^ 1;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v102 = __Block_byref_object_copy__6;
          *&v103 = __Block_byref_object_dispose__6;
          *(&v103 + 1) = 0;
          _collaborationService = [(SHSheetSession *)self _collaborationService];
          collaborationItem5 = [(SHSheetSession *)self collaborationItem];
          contentIdentifier = [collaborationItem5 contentIdentifier];
          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 3221225472;
          v100[2] = __40__SHSheetSession__configureWithContext___block_invoke;
          v100[3] = &unk_1E71FB2A0;
          v100[4] = buf;
          [_collaborationService requestCollaborativeModeForContentIdentifier:contentIdentifier completionHandler:v100];

          if (v28)
          {
            bOOLValue = 0;
          }

          else
          {
            v34 = *(*&buf[8] + 40);
            if (v34)
            {
              bOOLValue = [v34 BOOLValue];
            }

            else
            {
              bOOLValue = defaultCollaboration;
            }
          }

          [(SHSheetSession *)self setIsCollaborative:(!supportsSendCopy | bOOLValue) & 1];
          _Block_object_dispose(buf, 8);
        }
      }
    }
  }

  activityItemsManager = self->_activityItemsManager;
  if (!activityItemsManager || (-[SHSheetActivityItemsManager activityItems](activityItemsManager, "activityItems"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [activityItems isEqualToArray:v36], v36, (v37 & 1) == 0))
  {
    [(SHSheetSession *)self setCollaborationURLRequests:0];
    v38 = [SHSheetActivityItemsManager alloc];
    v39 = objc_loadWeakRetained(&self->_activityViewController);
    if ([(SHSheetSession *)self supportsCollaboration])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    _activityItemsService = [(SHSheetSession *)self _activityItemsService];
    v42 = [(SHSheetActivityItemsManager *)v38 initWithActivityItems:activityItems activityViewController:v39 delegate:self collaborationDelegate:selfCopy service:_activityItemsService];

    v43 = self->_activityItemsManager;
    self->_activityItemsManager = v42;
  }

  if (!self->_activitiesManager || ([contextCopy applicationActivities], v44 = objc_claimAutoreleasedReturnValue(), -[SHSheetActivitiesManager applicationActivities](self->_activitiesManager, "applicationActivities"), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v44, "isEqualToArray:", v45), v45, v44, (v46 & 1) == 0))
  {
    v47 = [SHSheetActivitiesManager alloc];
    identifier = self->_identifier;
    applicationActivities = [contextCopy applicationActivities];
    v50 = [(SHSheetActivitiesManager *)v47 initWithSessionIdentifier:identifier applicationActivities:applicationActivities];
    activitiesManager = self->_activitiesManager;
    self->_activitiesManager = v50;

    [(SHSheetActivitiesManager *)self->_activitiesManager setDelegate:self];
  }

  activityTypesToCreateInShareService = [contextCopy activityTypesToCreateInShareService];
  activityTypesToCreateInShareService = self->_activityTypesToCreateInShareService;
  self->_activityTypesToCreateInShareService = activityTypesToCreateInShareService;

  includedActivityTypes = [contextCopy includedActivityTypes];
  includedActivityTypes = self->_includedActivityTypes;
  self->_includedActivityTypes = includedActivityTypes;

  excludedActivityTypes = [contextCopy excludedActivityTypes];
  excludedActivityTypes = self->_excludedActivityTypes;
  self->_excludedActivityTypes = excludedActivityTypes;

  activityTypeOrder = [contextCopy activityTypeOrder];
  activityTypeOrder = self->_activityTypeOrder;
  self->_activityTypeOrder = activityTypeOrder;

  heroActionActivityTypes = [contextCopy heroActionActivityTypes];
  heroActionActivityTypes = self->_heroActionActivityTypes;
  self->_heroActionActivityTypes = heroActionActivityTypes;

  self->_showHeroActionsHorizontally = [contextCopy showHeroActionsHorizontally];
  self->_excludedActivityCategories = [contextCopy excludedActivityCategories];
  self->_allowsEmbedding = [contextCopy allowsEmbedding];
  self->_shouldSuggestFamilyMembers = [contextCopy shouldSuggestFamilyMembers];
  if (self->_canPerformSharePlay && [contextCopy allowsProminentActivity])
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

    if ([contextCopy allowsProminentActivity])
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

  self->_showKeyboardAutomatically = [contextCopy showKeyboardAutomatically];
  self->_whitelistActionActivitiesOnly = [contextCopy whitelistActionActivitiesOnly];
  self->_isContentManaged = [contextCopy isContentManaged];
  self->_sharingStyle = [contextCopy sharingStyle];
  includedActivityTypes2 = [contextCopy includedActivityTypes];
  if ([includedActivityTypes2 containsObject:@"com.apple.UIKit.activity.AirDrop"])
  {
    includedActivityTypes3 = [contextCopy includedActivityTypes];
    self->_isAirdropOnly = [includedActivityTypes3 count] == 1;
  }

  else
  {
    self->_isAirdropOnly = 0;
  }

  photosHeaderMetadata = [contextCopy photosHeaderMetadata];
  photosHeaderMetadata = self->_photosHeaderMetadata;
  self->_photosHeaderMetadata = photosHeaderMetadata;

  objectManipulationDelegate = [contextCopy objectManipulationDelegate];
  objc_storeWeak(&self->_objectManipulationDelegate, objectManipulationDelegate);

  self->_configureForCloudSharing = [contextCopy configureForCloudSharing];
  self->_configureForPhotosEdit = [contextCopy configureForPhotosEdit];
  self->_hideHeaderView = [contextCopy hideHeaderView];
  self->_hideNavigationBar = [contextCopy hideNavigationBar];
  self->_hideSuggestions = [contextCopy hideSuggestions];
  topContentSectionText = [contextCopy topContentSectionText];
  topContentSectionText = self->_topContentSectionText;
  self->_topContentSectionText = topContentSectionText;

  self->_instantShareSheet = [contextCopy instantShareSheet];
  selectedAssetIdentifiers = [contextCopy selectedAssetIdentifiers];
  selectedAssetIdentifiers = self->_selectedAssetIdentifiers;
  self->_selectedAssetIdentifiers = selectedAssetIdentifiers;

  self->_useRemoteUIService = [contextCopy useRemoteUIService];
  self->_showCustomScene = [contextCopy showCustomScene];
  peopleSuggestionBundleIds = [contextCopy peopleSuggestionBundleIds];
  v74 = [peopleSuggestionBundleIds copy];
  peopleSuggestionBundleIds = self->_peopleSuggestionBundleIds;
  self->_peopleSuggestionBundleIds = v74;

  v76 = objc_alloc(getSFUILoadedMetadataCollectionClass());
  _metadataValues = [(SHSheetSession *)self _metadataValues];
  v78 = [v76 initWithMetadatas:_metadataValues];
  metadataCollection = self->_metadataCollection;
  self->_metadataCollection = v78;

  [(SFUILoadedMetadataCollection *)self->_metadataCollection setDelegate:self];
  self->_xrRenderingMode = [contextCopy xrRenderingMode];
  if (_os_feature_enabled_impl())
  {
    testingSnapshot = [(SHSheetSession *)self testingSnapshot];
    v81 = testingSnapshot == 0;

    if (v81)
    {
      v82 = objc_alloc(MEMORY[0x1E69CDED8]);
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v85 = [v82 initWithItems:activityItems applicationBundleID:bundleIdentifier pid:getpid()];

      activityItemsManager = [(SHSheetSession *)self activityItemsManager];
      placeholderActivityItemValuesForSendCopyMode = [activityItemsManager placeholderActivityItemValuesForSendCopyMode];

      supportsCollaboration = [(SHSheetSession *)self supportsCollaboration];
      v89 = !supportsCollaboration || [(SHSheetSession *)self supportsSendCopy];
      collaborationItem6 = [(SHSheetSession *)self collaborationItem];
      [v85 updateWithPlaceholderItems:placeholderActivityItemValuesForSendCopyMode collaborationItem:collaborationItem6 supportsCollaboration:supportsCollaboration supportsSendCopy:v89];

      [(SHSheetSession *)self setTestingSnapshot:v85];
    }
  }

  testingReferenceSnapshot = [contextCopy testingReferenceSnapshot];
  [(SHSheetSession *)self setTestingReferenceSnapshot:testingReferenceSnapshot];

  snapshotHandler = [contextCopy snapshotHandler];
  v93 = snapshotHandler;
  if (snapshotHandler)
  {
    v94 = snapshotHandler;
  }

  else
  {
    v94 = &__block_literal_global_41;
  }

  [(SHSheetSession *)self setSnapshotHandler:v94];
}

- (id)createDiscoveryContext
{
  activityItemsManager = [(SHSheetSession *)self activityItemsManager];
  v3 = [activityItemsManager activityItemValuesForActivity:0];

  v4 = _NSExtensionItemsFromActivityItemValues(v3);
  v5 = objc_alloc_init(_UIActivityDiscoveryContext);
  v6 = [_UIActivityApplicationExtensionDiscovery extensionMatchingDictionariesForExtensionItems:v4];
  [(_UIActivityDiscoveryContext *)v5 setActivityItemValueExtensionMatchingDictionaries:v6];

  return v5;
}

- (id)createShareServiceUIConfiguration
{
  v3 = objc_alloc_init(UISUIActivityViewControllerConfiguration);
  identifier = [(SHSheetSession *)self identifier];
  [(UISUIActivityViewControllerConfiguration *)v3 setSessionID:identifier];

  activityItemsManager = [(SHSheetSession *)self activityItemsManager];
  v6 = [activityItemsManager activityItemValuesForActivity:0];

  sh_allClassNames = [v6 sh_allClassNames];
  [(UISUIActivityViewControllerConfiguration *)v3 setActivityItemValueClassNames:sh_allClassNames];

  activityItemsManager2 = [(SHSheetSession *)self activityItemsManager];
  v9 = [activityItemsManager2 activityItemURLValuesForActivity:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setUrlsBeingShared:v9];

  activityItemsManager3 = [(SHSheetSession *)self activityItemsManager];
  v11 = [activityItemsManager3 securityScopedURLsForActivity:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setSecurityScopedURLsForMatching:v11];

  activityViewController = [(SHSheetSession *)self activityViewController];
  viewIfLoaded = [activityViewController viewIfLoaded];
  window = [viewIfLoaded window];
  tintColor = [window tintColor];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostTintColor:tintColor];

  activitiesManager = [(SHSheetSession *)self activitiesManager];
  orderedActivities = [activitiesManager orderedActivities];
  v18 = [(SHSheetSession *)self activityConfigurationsForActivities:orderedActivities forRemoteUIService:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostActivityConfigurations:v18];

  activitiesManager2 = [(SHSheetSession *)self activitiesManager];
  hiddenActivities = [activitiesManager2 hiddenActivities];
  v21 = [(SHSheetSession *)self activityConfigurationsForActivities:hiddenActivities forRemoteUIService:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostHiddenActivityConfigurations:v21];

  activityTypesToCreateInShareService = [(SHSheetSession *)self activityTypesToCreateInShareService];
  [(UISUIActivityViewControllerConfiguration *)v3 setActivityTypesToCreateInShareService:activityTypesToCreateInShareService];

  activityViewController2 = [(SHSheetSession *)self activityViewController];
  traitCollection = [activityViewController2 traitCollection];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostTraitCollection:traitCollection];

  activityViewController3 = [(SHSheetSession *)self activityViewController];
  viewIfLoaded2 = [activityViewController3 viewIfLoaded];
  [viewIfLoaded2 directionalLayoutMargins];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostLayoutMargins:?];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [(UISUIActivityViewControllerConfiguration *)v3 setHostLocale:currentLocale];

  activityViewController4 = [(SHSheetSession *)self activityViewController];
  [activityViewController4 preferredContentSize];
  [(UISUIActivityViewControllerConfiguration *)v3 setPreferredWidth:?];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  [(UISUIActivityViewControllerConfiguration *)v3 setPreferredLocalizations:preferredLocalizations];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  -[UISUIActivityViewControllerConfiguration setHostIdiom:](v3, "setHostIdiom:", [currentDevice userInterfaceIdiom]);

  [(UISUIActivityViewControllerConfiguration *)v3 setNumberOfVisibleSharingActivities:[(SHSheetSession *)self numberOfVisibleSharingActivities]];
  [(UISUIActivityViewControllerConfiguration *)v3 setNumberOfVisibleActionActivities:[(SHSheetSession *)self numberOfVisibleActionActivities]];
  v73 = v6;
  v72 = _NSExtensionItemsFromActivityItemValues(v6);
  v32 = [_UIActivityApplicationExtensionDiscovery extensionMatchingDictionariesForExtensionItems:?];
  [(UISUIActivityViewControllerConfiguration *)v3 setActivityItemValueExtensionMatchingDictionaries:v32];

  [(UISUIActivityViewControllerConfiguration *)v3 setAllowsEmbedding:[(SHSheetSession *)self allowsEmbedding]];
  [(UISUIActivityViewControllerConfiguration *)v3 setIsContentManaged:[(SHSheetSession *)self isContentManaged]];
  hideSuggestions = 1;
  [(UISUIActivityViewControllerConfiguration *)v3 setShouldMatchOnlyUserElectedExtensions:1];
  [(UISUIActivityViewControllerConfiguration *)v3 setWhitelistActionActivitiesOnly:[(SHSheetSession *)self whitelistActionActivitiesOnly]];
  [(UISUIActivityViewControllerConfiguration *)v3 setLinkedBeforeYukon:dyld_program_sdk_at_least() ^ 1];
  if (![(SHSheetSession *)self shouldSkipPeopleSuggestions])
  {
    hideSuggestions = [(SHSheetSession *)self hideSuggestions];
  }

  [(UISUIActivityViewControllerConfiguration *)v3 setShouldSkipPeopleSuggestions:hideSuggestions];
  activityItemsManager4 = [(SHSheetSession *)self activityItemsManager];
  v35 = [activityItemsManager4 recipientsForActivity:0];
  [(UISUIActivityViewControllerConfiguration *)v3 setRecipients:v35];

  activityItemsManager5 = [(SHSheetSession *)self activityItemsManager];
  v37 = [activityItemsManager5 activityItemURLValuesForActivity:0];

  [(UISUIActivityViewControllerConfiguration *)v3 setShouldExcludeiCloudSharingActivity:_UIActivityHelperActivityItemsIncludeICloudDriveURL(v37) ^ 1];
  activitiesManager3 = [(SHSheetSession *)self activitiesManager];
  excludedActivityTypes = [activitiesManager3 excludedActivityTypes];
  [(UISUIActivityViewControllerConfiguration *)v3 setExcludedActivityTypes:excludedActivityTypes];

  includedActivityTypes = [(SHSheetSession *)self includedActivityTypes];
  [(UISUIActivityViewControllerConfiguration *)v3 setIncludedActivityTypes:includedActivityTypes];

  activityTypeOrder = [(SHSheetSession *)self activityTypeOrder];
  [(UISUIActivityViewControllerConfiguration *)v3 setActivityTypeOrder:activityTypeOrder];

  [(UISUIActivityViewControllerConfiguration *)v3 setExcludedActivityCategories:[(SHSheetSession *)self excludedActivityCategories]];
  [(UISUIActivityViewControllerConfiguration *)v3 setCanExcludeExtensionActivities:_UICanExcludeExtensionActivities()];
  [(UISUIActivityViewControllerConfiguration *)v3 setSharingStyle:[(SHSheetSession *)self sharingStyle]];
  [(UISUIActivityViewControllerConfiguration *)v3 setCanShowShareSheetPlugIns:1];
  selectedAssetIdentifiers = [(SHSheetSession *)self selectedAssetIdentifiers];
  activityItemsManager6 = [(SHSheetSession *)self activityItemsManager];
  suggestionAssetIdentifiers = [activityItemsManager6 suggestionAssetIdentifiers];

  if ([suggestionAssetIdentifiers count])
  {
    v45 = [MEMORY[0x1E695DFA8] setWithArray:suggestionAssetIdentifiers];
    [v45 addObjectsFromArray:selectedAssetIdentifiers];
    allObjects = [v45 allObjects];

    selectedAssetIdentifiers = allObjects;
  }

  [(UISUIActivityViewControllerConfiguration *)v3 setInitialPhotosAssetDetails:selectedAssetIdentifiers];
  activityViewController5 = [(SHSheetSession *)self activityViewController];
  traitCollection2 = [activityViewController5 traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];

  [UIActivity imageWidthForContentSizeCategory:preferredContentSizeCategory];
  v51 = round(v50 * 0.75);
  [(UISUIActivityViewControllerConfiguration *)v3 setIconSize:v51, v51];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [(UISUIActivityViewControllerConfiguration *)v3 setIconScale:?];

  if ([(SHSheetSession *)self supportsCollaboration]&& ![(SHSheetSession *)self supportsSendCopy])
  {
    v53 = share_sheet_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v53, OS_LOG_TYPE_DEFAULT, "Excluding AirDrop for collaboration only mode", buf, 2u);
    }

    excludedActivityTypes2 = [(UISUIActivityViewControllerConfiguration *)v3 excludedActivityTypes];
    if (excludedActivityTypes2)
    {
      excludedActivityTypes3 = [(UISUIActivityViewControllerConfiguration *)v3 excludedActivityTypes];
      array = [excludedActivityTypes3 mutableCopy];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:@"com.apple.UIKit.activity.AirDrop"];
    v57 = [array copy];
    [(UISUIActivityViewControllerConfiguration *)v3 setExcludedActivityTypes:v57];
  }

  if ([(SHSheetSession *)self _isHeroCollaborationOnly])
  {
    [(UISUIActivityViewControllerConfiguration *)v3 setIncludedActivityTypes:&unk_1EFEC8F80];
    [(UISUIActivityViewControllerConfiguration *)v3 setWhitelistActionActivitiesOnly:0];
  }

  [(UISUIActivityViewControllerConfiguration *)v3 setIsCollaborative:[(SHSheetSession *)self isCollaborative]];
  collaborationItem = [(SHSheetSession *)self collaborationItem];
  if (collaborationItem)
  {
    v59 = MEMORY[0x1E696AD98];
    collaborationItem2 = [(SHSheetSession *)self collaborationItem];
    v61 = [v59 numberWithInteger:{objc_msgSend(collaborationItem2, "type")}];
    [(UISUIActivityViewControllerConfiguration *)v3 setCollaborationType:v61];
  }

  else
  {
    [(UISUIActivityViewControllerConfiguration *)v3 setCollaborationType:0];
  }

  collaborationItem3 = [(SHSheetSession *)self collaborationItem];
  if (collaborationItem3)
  {
    v63 = MEMORY[0x1E696AD98];
    collaborationItem4 = [(SHSheetSession *)self collaborationItem];
    v65 = [v63 numberWithBool:{objc_msgSend(collaborationItem4, "isPostShare")}];
    [(UISUIActivityViewControllerConfiguration *)v3 setCollaborationIsPostShare:v65];
  }

  else
  {
    [(UISUIActivityViewControllerConfiguration *)v3 setCollaborationIsPostShare:0];
  }

  if ([(SHSheetSession *)self isCollaborative])
  {
    activityTypesToCreateInShareService2 = [(SHSheetSession *)self activityTypesToCreateInShareService];
    v67 = [activityTypesToCreateInShareService2 mutableCopy];

    [v67 removeObject:@"com.apple.UIKit.activity.RemoteOpenInApplication"];
    [(UISUIActivityViewControllerConfiguration *)v3 setActivityTypesToCreateInShareService:v67];
  }

  if (_os_feature_enabled_impl())
  {
    testingSnapshot = [(SHSheetSession *)self testingSnapshot];

    if (testingSnapshot)
    {
      testingSnapshot2 = [(SHSheetSession *)self testingSnapshot];
      [(UISUIActivityViewControllerConfiguration *)v3 setTestingSnapshot:testingSnapshot2];
    }
  }

  testingReferenceSnapshot = [(SHSheetSession *)self testingReferenceSnapshot];
  [(UISUIActivityViewControllerConfiguration *)v3 setTestingReferenceSnapshot:testingReferenceSnapshot];

  return v3;
}

- (NSArray)customizationGroups
{
  objectManipulationDelegate = [(SHSheetSession *)self objectManipulationDelegate];
  activityViewController = [(SHSheetSession *)self activityViewController];
  v5 = [objectManipulationDelegate _customizationGroupsForActivityViewController:activityViewController];

  return v5;
}

- (NSString)customOptionsTitle
{
  if (self->_objectManipulationDelegateFlags.respondsToCustomLocalizedActionTitle)
  {
    objectManipulationDelegate = [(SHSheetSession *)self objectManipulationDelegate];
    activityViewController = [(SHSheetSession *)self activityViewController];
    v5 = [objectManipulationDelegate customLocalizedActionTitleForActivityViewController:activityViewController];
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
    objectManipulationDelegate = [(SHSheetSession *)self objectManipulationDelegate];
    activityViewController = [(SHSheetSession *)self activityViewController];
    v5 = [objectManipulationDelegate customActionViewControllerForActivityViewController:activityViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSelectedAssetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy isEqualToArray:self->_selectedAssetIdentifiers])
  {
    self->_shouldSkipPeopleSuggestions = 1;
  }

  else
  {
    self->_shouldSkipPeopleSuggestions = 0;
    v4 = [identifiersCopy copy];
    selectedAssetIdentifiers = self->_selectedAssetIdentifiers;
    self->_selectedAssetIdentifiers = v4;
  }
}

- (void)setIsContentManaged:(BOOL)managed
{
  if (self->_isContentManaged != managed)
  {
    managedCopy = managed;
    self->_isContentManaged = managed;
    activityItemsManager = [(SHSheetSession *)self activityItemsManager];
    [activityItemsManager setIsContentManaged:managedCopy];
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
  useRemoteUIService = [(SHSheetSession *)self instantShareSheet]|| [(SHSheetSession *)self useRemoteUIService];
  [(UIActivityContentContext *)v3 setCanRenderPeople:useRemoteUIService];
  [(UIActivityContentContext *)v3 setConfigureForCloudSharing:[(SHSheetSession *)self configureForCloudSharing]];
  [(UIActivityContentContext *)v3 setConfigureForPhotosEdit:[(SHSheetSession *)self configureForPhotosEdit]];
  [(UIActivityContentContext *)v3 setHideHeaderView:[(SHSheetSession *)self hideHeaderView]];
  [(UIActivityContentContext *)v3 setHideNavigationBar:[(SHSheetSession *)self hideNavigationBar]];
  topContentSectionText = [(SHSheetSession *)self topContentSectionText];
  [(UIActivityContentContext *)v3 setTopContentSectionText:topContentSectionText];

  [(UIActivityContentContext *)v3 setSharingExpanded:[(SHSheetSession *)self isExpanded]];
  [(UIActivityContentContext *)v3 setSharingStyle:[(SHSheetSession *)self sharingStyle]];
  activitiesManager = [(SHSheetSession *)self activitiesManager];
  applicationActivityTypes = [activitiesManager applicationActivityTypes];
  [(UIActivityContentContext *)v3 setApplicationActivityTypes:applicationActivityTypes];

  heroActionActivityTypes = [(SHSheetSession *)self heroActionActivityTypes];
  [(UIActivityContentContext *)v3 setHeroActionActivityTypes:heroActionActivityTypes];

  [(UIActivityContentContext *)v3 setShowHeroActionsHorizontally:[(SHSheetSession *)self showHeroActionsHorizontally]];
  v9 = _ShareSheetApplicationKeyWindow();
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  activeInterfaceOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  if ((activeInterfaceOrientation - 1) >= 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if ((activeInterfaceOrientation - 1) >= 2)
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
  activityItemsManager = [(SHSheetSession *)self activityItemsManager];
  linkMetadataValues = [activityItemsManager linkMetadataValues];
  firstObject = [linkMetadataValues firstObject];

  LOBYTE(activityItemsManager) = [SHSheetActivityItemUtilities shouldShowHeaderSpecializationForMetadata:firstObject];
  return activityItemsManager;
}

- (BOOL)isModeSwitchDisabled
{
  collaborationModeRestriction = [(SHSheetSession *)self collaborationModeRestriction];
  if (collaborationModeRestriction)
  {
    collaborationModeRestriction2 = [(SHSheetSession *)self collaborationModeRestriction];
    alertTitle = [collaborationModeRestriction2 alertTitle];
    if (alertTitle)
    {
      collaborationModeRestriction3 = [(SHSheetSession *)self collaborationModeRestriction];
      v7 = [collaborationModeRestriction3 allowContinueToMode] ^ 1;
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

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configuration = self->_configuration;
  if (!configuration)
  {
    v7 = share_sheet_log();
    v8 = share_sheet_log();
    activityViewController = [(SHSheetSession *)self activityViewController];
    v10 = os_signpost_id_make_with_pointer(v8, activityViewController);

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

  if (configuration != configurationCopy)
  {
    objc_storeStrong(&self->_configuration, configuration);
    if ([(SHSheetSession *)self isCollaborationRestricted])
    {
      [(SHSheetSession *)self setIsCollaborative:0];
    }

    goto LABEL_13;
  }

  useRemoteUIService = [(SHSheetSession *)self useRemoteUIService];
  if (!configurationCopy && useRemoteUIService)
  {
LABEL_13:
    delegate = [(SHSheetSession *)self delegate];
    [delegate sessionConfigurationDidChangeForSession:self];
  }
}

- (void)_updateTestingSnapshotIfNeededForResolvedItems:(id)items activityType:(id)type
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  typeCopy = type;
  if (_os_feature_enabled_impl())
  {
    testingSnapshot = [(SHSheetSession *)self testingSnapshot];

    if (testingSnapshot)
    {
      if (-[SHSheetSession isCollaborative](self, "isCollaborative") && [typeCopy isEqualToString:@"com.apple.UIKit.activity.Message"] && !objc_msgSend(itemsCopy, "count") && (-[SHSheetSession collaborationItem](self, "collaborationItem"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "itemProvider"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
      {
        testingSnapshot2 = [(SHSheetSession *)self testingSnapshot];
        collaborationItem = [(SHSheetSession *)self collaborationItem];
        itemProvider = [collaborationItem itemProvider];
        v15[0] = itemProvider;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [testingSnapshot2 updateWithFinalItems:v14 forActivityType:typeCopy forCollaboration:{-[SHSheetSession isCollaborative](self, "isCollaborative")}];
      }

      else
      {
        testingSnapshot2 = [(SHSheetSession *)self testingSnapshot];
        [testingSnapshot2 updateWithFinalItems:itemsCopy forActivityType:typeCopy forCollaboration:{-[SHSheetSession isCollaborative](self, "isCollaborative")}];
      }
    }
  }
}

- (id)activityConfigurationsForActivities:(id)activities forRemoteUIService:(BOOL)service
{
  serviceCopy = service;
  v20 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(activitiesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = activitiesCopy;
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

        v13 = [(SHSheetSession *)self _configurationForActivity:*(*(&v15 + 1) + 8 * i) forRemoteUIService:serviceCopy, v15];
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

- (id)_configurationForActivity:(id)activity forRemoteUIService:(BOOL)service
{
  serviceCopy = service;
  activityCopy = activity;
  v7 = [UISUIActivityConfiguration configurationForActivity:activityCopy forRemoteUIService:serviceCopy];
  activityViewController = [(SHSheetSession *)self activityViewController];
  activityType = [activityCopy activityType];
  v10 = [activityViewController _titleForActivity:activityType];
  v11 = v10;
  if (v10)
  {
    activityTitle = v10;
  }

  else
  {
    activityTitle = [activityCopy activityTitle];
  }

  v13 = activityTitle;

  activityTitle2 = [v7 activityTitle];
  v15 = [v13 isEqualToString:activityTitle2];

  if ((v15 & 1) == 0)
  {
    [v7 updateConfigurationWithOverrideTitle:v13];
  }

  return v7;
}

- (BOOL)activitiesManager:(id)manager shouldShowSystemActivityType:(id)type
{
  typeCopy = type;
  activityViewController = [(SHSheetSession *)self activityViewController];
  v7 = [activityViewController _shouldShowSystemActivityType:typeCopy];

  return v7;
}

- (void)metadataCollectionDidFinishLoading:(id)loading
{
  delegate = [(SHSheetSession *)self delegate];
  [delegate headerMetadataDidChangeForSession:self];
}

- (void)metadataCollection:(id)collection didChangeMetadata:(id)metadata
{
  metadataCopy = metadata;
  delegate = [(SHSheetSession *)self delegate];
  [delegate session:self didChangeMetadata:metadataCopy];
}

- (void)activityItemsManagerLinkMetadataValuesDidChange:(id)change
{
  v4 = objc_alloc(getSFUILoadedMetadataCollectionClass());
  _metadataValues = [(SHSheetSession *)self _metadataValues];
  v6 = [v4 initWithMetadatas:_metadataValues];
  [(SHSheetSession *)self setMetadataCollection:v6];

  delegate = [(SHSheetSession *)self delegate];
  [delegate headerMetadataDidChangeForSession:self];
}

- (id)urlRequestsForActivityItemsManager:(id)manager
{
  v13[1] = *MEMORY[0x1E69E9840];
  collaborationURLRequests = self->_collaborationURLRequests;
  if (collaborationURLRequests)
  {
    v4 = collaborationURLRequests;
  }

  else
  {
    collaborationItem = [(SHSheetSession *)self collaborationItem];
    v7 = collaborationItem;
    if (collaborationItem)
    {
      v8 = MEMORY[0x1E69CDE78];
      v13[0] = collaborationItem;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v10 = [v8 urlRequestsForCollaborationItems:v9];
      v11 = self->_collaborationURLRequests;
      self->_collaborationURLRequests = v10;
    }

    v4 = self->_collaborationURLRequests;
  }

  return v4;
}

- (BOOL)activityItemsManager:(id)manager collaborationSupportsPromiseURLsForActivity:(id)activity
{
  activityCopy = activity;
  if ([objc_opt_class() activityCategory])
  {
    _activitySupportsPromiseURLs = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    _activitySupportsPromiseURLs = [activityCopy _activitySupportsPromiseURLs];
  }

  else
  {
    _activitySupportsPromiseURLs = 0;
  }

  return _activitySupportsPromiseURLs;
}

- (id)collaborationPlaceholderActivityItemsForActivityItemsManager:(id)manager
{
  v15[1] = *MEMORY[0x1E69E9840];
  collaborationItem = [(SHSheetSession *)self collaborationItem];
  if (collaborationItem && (v5 = collaborationItem, v6 = [(SHSheetSession *)self supportsCollaboration], v5, v6))
  {
    collaborationItem2 = [(SHSheetSession *)self collaborationItem];
    placeholderActivityItem = [collaborationItem2 placeholderActivityItem];
    v9 = placeholderActivityItem;
    if (placeholderActivityItem)
    {
      activityItem = placeholderActivityItem;
    }

    else
    {
      collaborationItem3 = [(SHSheetSession *)self collaborationItem];
      activityItem = [collaborationItem3 activityItem];
    }

    if ([(SHSheetSession *)self isCollaborative])
    {
      v15[0] = activityItem;
      sendCopyItems = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    else
    {
      collaborationItem4 = [(SHSheetSession *)self collaborationItem];
      sendCopyItems = [collaborationItem4 sendCopyItems];
    }
  }

  else
  {
    sendCopyItems = 0;
  }

  return sendCopyItems;
}

- (id)activityItemsManager:(id)manager collaborationActivityItemValuesForActivityItemValue:(id)value activity:(id)activity
{
  v54 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  valueCopy = value;
  activityCopy = activity;
  if (![(SHSheetSession *)self supportsCollaboration])
  {
    v11 = 0;
    goto LABEL_33;
  }

  v11 = [valueCopy mutableCopy];
  collaborationItem = [(SHSheetSession *)self collaborationItem];
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
  v13 = collaborationItem;
  v41 = v13;
  v43 = &v48;
  [valueCopy enumerateObjectsUsingBlock:v40];
  if (*(v45 + 24) == 1)
  {
    [v11 removeObjectAtIndex:v49[3]];
    v49[3] = -1;
  }

  if ([(SHSheetSession *)self isCollaborative])
  {
    activityType = [activityCopy activityType];
    v15 = [activityType isEqual:@"com.apple.UIKit.activity.Message"];

    if (v15)
    {
      [v11 removeAllObjects];
      goto LABEL_21;
    }

    activityType2 = [activityCopy activityType];
    v17 = [activityType2 isEqual:@"com.apple.UIKit.activity.Mail"];

    if (v17)
    {
      [v11 removeAllObjects];
      delegate = [(SHSheetSession *)self delegate];
      v19 = [delegate collaborationSharingResultForActivity:activityCopy];

      mailResult = [v19 mailResult];
      body = [mailResult body];

      if (!body)
      {
LABEL_20:

        goto LABEL_21;
      }

      mailResult2 = [v19 mailResult];
      body2 = [mailResult2 body];
      [v11 addObject:body2];
    }

    else
    {
      if ([objc_opt_class() activityCategory] != 1)
      {
        goto LABEL_21;
      }

      delegate2 = [(SHSheetSession *)self delegate];
      v19 = [delegate2 collaborationSharingResultForActivity:activityCopy];

      if (v19)
      {
        [v11 removeAllObjects];
        sharingURL = [v19 sharingURL];

        if (sharingURL)
        {
          mailResult2 = [v19 sharingURL];
          [v11 addObject:mailResult2];
        }

        else
        {
          mailResult2 = share_sheet_log();
          if (os_log_type_enabled(mailResult2, OS_LOG_TYPE_ERROR))
          {
            collaborationItemIdentifier = [v19 collaborationItemIdentifier];
            error = [v19 error];
            [(SHSheetSession *)collaborationItemIdentifier activityItemsManager:error collaborationActivityItemValuesForActivityItemValue:buf activity:mailResult2];
          }
        }
      }

      else
      {
        mailResult2 = share_sheet_log();
        if (os_log_type_enabled(mailResult2, OS_LOG_TYPE_DEFAULT))
        {
          activityType3 = [activityCopy activityType];
          *buf = 138412290;
          v53 = activityType3;
          _os_log_impl(&dword_18B359000, mailResult2, OS_LOG_TYPE_DEFAULT, "No sharingResult for activity type:%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  if (!-[SHSheetSession isCollaborative](self, "isCollaborative") || ![objc_opt_class() activityCategory])
  {
    activityType4 = [activityCopy activityType];
    v30 = [activityType4 isEqualToString:@"com.apple.InCallService.ShareExtension"];

    if ((v30 & 1) == 0 && (v49[3] & 0x8000000000000000) == 0)
    {
      collaborationItem2 = [(SHSheetSession *)self collaborationItem];
      v32 = [collaborationItem2 type] == 0;

      if (!v32)
      {
        itemProvider = [v13 itemProvider];
        supportsShareSheetSendCopyRepresentation = [itemProvider supportsShareSheetSendCopyRepresentation];

        if (supportsShareSheetSendCopyRepresentation)
        {
          sendCopyRepresentation = [v13 sendCopyRepresentation];
          v36 = sendCopyRepresentation;
          if (sendCopyRepresentation)
          {
            itemProvider2 = sendCopyRepresentation;
          }

          else
          {
            itemProvider2 = [v13 itemProvider];
          }

          v38 = itemProvider2;

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

- (id)activityItemsManager:(id)manager subjectForActivity:(id)activity
{
  v16 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  if (-[SHSheetSession supportsCollaboration](self, "supportsCollaboration") && -[SHSheetSession isCollaborative](self, "isCollaborative") && ([activityCopy activityType], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", @"com.apple.UIKit.activity.Mail"), v6, v7))
  {
    delegate = [(SHSheetSession *)self delegate];
    v9 = [delegate collaborationSharingResultForActivity:activityCopy];

    mailResult = [v9 mailResult];
    subject = [mailResult subject];

    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = subject;
      _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "Collaboration Mail Subject:%@", &v14, 0xCu);
    }
  }

  else
  {
    subject = 0;
  }

  return subject;
}

- (int64_t)numberOfVisibleSharingActivities
{
  v3 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 5;
  activityViewController = [(SHSheetSession *)self activityViewController];
  customViewController = [activityViewController customViewController];

  v6 = v3 < 0xFFFFFFFFFFFFFFFELL || customViewController == 0;
  if (!v6 || ![(SHSheetSession *)self isExpanded])
  {
    return 0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    activityViewController2 = [(SHSheetSession *)self activityViewController];
    v10 = [activityViewController2 _existingPresentationControllerImmediate:0 effective:1];
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  activityViewController = [(SHSheetSession *)self activityViewController];
  v6 = [activityViewController _existingPresentationControllerImmediate:0 effective:1];

  v7 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 5;
  activityViewController2 = [(SHSheetSession *)self activityViewController];
  customViewController = [activityViewController2 customViewController];

  if (v7 < 0xFFFFFFFFFFFFFFFELL || customViewController == 0)
  {
    if ([(SHSheetSession *)self isExpanded])
    {
      if (userInterfaceIdiom == 1)
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
        if (!customViewController && (isKindOfClass & 1) != 0)
        {
          v18 = v6;
          selectedDetentIdentifier = [v18 selectedDetentIdentifier];
          if (selectedDetentIdentifier)
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            detents = [v18 detents];
            v21 = [detents countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v21)
            {
              v22 = *v39;
              while (2)
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v39 != v22)
                  {
                    objc_enumerationMutation(detents);
                  }

                  v24 = *(*(&v38 + 1) + 8 * i);
                  _identifier = [v24 _identifier];
                  v26 = [_identifier isEqualToString:selectedDetentIdentifier];

                  if (v26)
                  {
                    firstObject = v24;
                    goto LABEL_33;
                  }
                }

                v21 = [detents countByEnumeratingWithState:&v38 objects:v42 count:16];
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
            detents = [v18 detents];
            firstObject = [detents firstObject];
LABEL_33:
            v21 = firstObject;
          }

          if (!v21)
          {
            v28 = share_sheet_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [(SHSheetSession *)v28 numberOfVisibleActionActivities:v29];
            }
          }

          largeDetent = [MEMORY[0x1E69DCF58] largeDetent];
          v37 = [v21 isEqual:largeDetent];

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
      if (userInterfaceIdiom == 1)
      {
        v12 = 9;
      }

      else
      {
        v12 = 8;
      }

      activityViewController3 = [(SHSheetSession *)self activityViewController];
      heroActionActivityTypes = [activityViewController3 heroActionActivityTypes];
      v15 = [heroActionActivityTypes count];

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

- (void)observable:(id)observable didChange:(unint64_t)change
{
  changeCopy = change;
  observableCopy = observable;
  if (![(SHSheetSession *)self isCollaborationRestricted])
  {
    if ((changeCopy & 4) != 0)
    {
      options = [observableCopy options];

      if (!options)
      {
        goto LABEL_9;
      }

      objc_initWeak(&location, self);
      v10 = MEMORY[0x1E69CDE78];
      collaborationItem = [(SHSheetSession *)self collaborationItem];
      _collaborationService = [(SHSheetSession *)self _collaborationService];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __39__SHSheetSession_observable_didChange___block_invoke;
      v14[3] = &unk_1E71F94C8;
      objc_copyWeak(&v15, &location);
      [v10 canShowShareOptionsForCollaborationItem:collaborationItem service:_collaborationService completionHandler:v14];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      if ((changeCopy & 2) != 0)
      {
LABEL_9:
        delegate = [(SHSheetSession *)self delegate];
        [delegate collaborationFooterViewModelDidChangeForSession:self];

        goto LABEL_10;
      }

      if ((changeCopy & 0x10) != 0)
      {
        canAddPeople = [observableCopy canAddPeople];
        bOOLValue = [canAddPeople BOOLValue];

        if ((bOOLValue & 1) == 0)
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