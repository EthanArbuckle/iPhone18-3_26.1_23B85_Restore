@interface SHSheetViewModel
- (NSString)description;
- (SHSheetViewModel)initWithSession:(id)session;
@end

@implementation SHSheetViewModel

- (SHSheetViewModel)initWithSession:(id)session
{
  sessionCopy = session;
  v77.receiver = self;
  v77.super_class = SHSheetViewModel;
  v6 = [(SHSheetViewModel *)&v77 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    configuration = [sessionCopy configuration];
    peopleSuggestions = [configuration peopleSuggestions];
    v10 = peopleSuggestions;
    v11 = MEMORY[0x1E695E0F0];
    if (peopleSuggestions)
    {
      v12 = peopleSuggestions;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    v13 = v12;

    activitiesManager = [sessionCopy activitiesManager];
    orderedActivities = [activitiesManager orderedActivities];
    v16 = orderedActivities;
    if (orderedActivities)
    {
      v17 = orderedActivities;
    }

    else
    {
      v17 = v11;
    }

    v18 = v17;

    v19 = [v13 copy];
    peopleSuggestions = v7->_peopleSuggestions;
    v7->_peopleSuggestions = v19;

    v21 = [v18 copy];
    activities = v7->_activities;
    v7->_activities = v21;

    metadataCollection = [sessionCopy metadataCollection];
    metadatas = [metadataCollection metadatas];
    metadataValues = v7->_metadataValues;
    v7->_metadataValues = metadatas;

    activityItemsManager = [sessionCopy activityItemsManager];
    urlRequests = [activityItemsManager urlRequests];
    urlRequests = v7->_urlRequests;
    v7->_urlRequests = urlRequests;

    urlSandboxExtensions = v7->_urlSandboxExtensions;
    v7->_urlSandboxExtensions = 0;

    v7->_showOptions = [sessionCopy showOptions];
    customOptionsTitle = [sessionCopy customOptionsTitle];
    customOptionsTitle = v7->_customOptionsTitle;
    v7->_customOptionsTitle = customOptionsTitle;

    v7->_showCustomHeaderButton = [sessionCopy showSharePlayProminently];
    v7->_showHeaderSpecialization = [sessionCopy showHeaderSpecialization];
    v32 = SHSheetCustomHeaderButtonTitle([sessionCopy showSharePlayProminently]);
    customHeaderButtonTitle = v7->_customHeaderButtonTitle;
    v7->_customHeaderButtonTitle = v32;

    v34 = SHSheetCustomHeaderButtonColor([sessionCopy showSharePlayProminently]);
    customHeaderButtonColor = v7->_customHeaderButtonColor;
    v7->_customHeaderButtonColor = v34;

    activityViewController = [sessionCopy activityViewController];
    customViewController = [activityViewController customViewController];
    customViewController = v7->_customViewController;
    v7->_customViewController = customViewController;

    activityViewController2 = [sessionCopy activityViewController];
    customViewControllerVerticalInsetWrapper = [activityViewController2 customViewControllerVerticalInsetWrapper];
    customViewControllerVerticalInsetWrapper = v7->_customViewControllerVerticalInsetWrapper;
    v7->_customViewControllerVerticalInsetWrapper = customViewControllerVerticalInsetWrapper;

    activityViewController3 = [sessionCopy activityViewController];
    customViewControllerSectionHeightWrapper = [activityViewController3 customViewControllerSectionHeightWrapper];
    customViewControllerSectionHeightWrapper = v7->_customViewControllerSectionHeightWrapper;
    v7->_customViewControllerSectionHeightWrapper = customViewControllerSectionHeightWrapper;

    v7->_isModeSwitchDisabled = [sessionCopy isModeSwitchDisabled];
    configuration2 = [sessionCopy configuration];
    peopleProxies = [configuration2 peopleProxies];
    peopleSuggestionProxies = v7->_peopleSuggestionProxies;
    v7->_peopleSuggestionProxies = peopleProxies;

    configuration3 = [sessionCopy configuration];
    shareProxies = [configuration3 shareProxies];
    shareProxies = v7->_shareProxies;
    v7->_shareProxies = shareProxies;

    configuration4 = [sessionCopy configuration];
    actionProxies = [configuration4 actionProxies];
    actionProxies = v7->_actionProxies;
    v7->_actionProxies = actionProxies;

    activitiesManager2 = [sessionCopy activitiesManager];
    activitiesByUUID = [activitiesManager2 activitiesByUUID];
    activitiesByUUID = v7->_activitiesByUUID;
    v7->_activitiesByUUID = activitiesByUUID;

    activitiesManager3 = [sessionCopy activitiesManager];
    applicationActivityTypes = [activitiesManager3 applicationActivityTypes];
    applicationActivityTypes = v7->_applicationActivityTypes;
    v7->_applicationActivityTypes = applicationActivityTypes;

    configuration5 = [sessionCopy configuration];
    nearbyCountSlotID = [configuration5 nearbyCountSlotID];
    nearbyCountSlotID = v7->_nearbyCountSlotID;
    v7->_nearbyCountSlotID = nearbyCountSlotID;

    configuration6 = [sessionCopy configuration];
    v7->_reloadData = [configuration6 reloadData];

    configuration7 = [sessionCopy configuration];
    v7->_updateProxiesWithAnimation = [configuration7 wantsAnimation];

    v7->_isSharingExpanded = [sessionCopy isExpanded];
    configuration8 = [sessionCopy configuration];
    restrictedActivityTypes = [configuration8 restrictedActivityTypes];
    v67 = restrictedActivityTypes;
    if (restrictedActivityTypes)
    {
      v68 = restrictedActivityTypes;
    }

    else
    {
      v68 = v11;
    }

    objc_storeStrong(&v7->_restrictedActivityTypes, v68);

    v7->_supportsCollaboration = [sessionCopy supportsCollaboration];
    v7->_supportsSendCopy = [sessionCopy supportsSendCopy];
    v7->_isCollaborative = [sessionCopy isCollaborative];
    v7->_showCollaborationOptions = [sessionCopy showCollaborationOptions];
    collaborationItem = [sessionCopy collaborationItem];
    canAddPeople = [collaborationItem canAddPeople];
    v71 = SHSheetCollaborationModeTitle(canAddPeople);
    collaborationModeTitle = v7->_collaborationModeTitle;
    v7->_collaborationModeTitle = v71;

    collaborationItem2 = [sessionCopy collaborationItem];
    createCollaborationFooterViewModel = [collaborationItem2 createCollaborationFooterViewModel];
    collaborationFooterViewModel = v7->_collaborationFooterViewModel;
    v7->_collaborationFooterViewModel = createCollaborationFooterViewModel;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  peopleSuggestions = [(SHSheetViewModel *)self peopleSuggestions];
  peopleSuggestionProxies = [(SHSheetViewModel *)self peopleSuggestionProxies];
  activities = [(SHSheetViewModel *)self activities];
  shareProxies = [(SHSheetViewModel *)self shareProxies];
  actionProxies = [(SHSheetViewModel *)self actionProxies];
  metadataValues = [(SHSheetViewModel *)self metadataValues];
  [(SHSheetViewModel *)self showOptions];
  v11 = NSStringFromBOOL();
  restrictedActivityTypes = [(SHSheetViewModel *)self restrictedActivityTypes];
  v13 = [v3 stringWithFormat:@"<%@ peopleSuggestions:%@ peopleSuggestionProxies:%@ activities:%@ shareProxies:%@ actionProxies:%@ metadataValues:%@ showOptions:%@ restrictedActivityTypes:%@>", v4, peopleSuggestions, peopleSuggestionProxies, activities, shareProxies, actionProxies, metadataValues, v11, restrictedActivityTypes];

  return v13;
}

@end