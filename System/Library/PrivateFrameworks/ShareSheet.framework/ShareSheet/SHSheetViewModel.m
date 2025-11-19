@interface SHSheetViewModel
- (NSString)description;
- (SHSheetViewModel)initWithSession:(id)a3;
@end

@implementation SHSheetViewModel

- (SHSheetViewModel)initWithSession:(id)a3
{
  v5 = a3;
  v77.receiver = self;
  v77.super_class = SHSheetViewModel;
  v6 = [(SHSheetViewModel *)&v77 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = [v5 configuration];
    v9 = [v8 peopleSuggestions];
    v10 = v9;
    v11 = MEMORY[0x1E695E0F0];
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    v13 = v12;

    v14 = [v5 activitiesManager];
    v15 = [v14 orderedActivities];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
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

    v23 = [v5 metadataCollection];
    v24 = [v23 metadatas];
    metadataValues = v7->_metadataValues;
    v7->_metadataValues = v24;

    v26 = [v5 activityItemsManager];
    v27 = [v26 urlRequests];
    urlRequests = v7->_urlRequests;
    v7->_urlRequests = v27;

    urlSandboxExtensions = v7->_urlSandboxExtensions;
    v7->_urlSandboxExtensions = 0;

    v7->_showOptions = [v5 showOptions];
    v30 = [v5 customOptionsTitle];
    customOptionsTitle = v7->_customOptionsTitle;
    v7->_customOptionsTitle = v30;

    v7->_showCustomHeaderButton = [v5 showSharePlayProminently];
    v7->_showHeaderSpecialization = [v5 showHeaderSpecialization];
    v32 = SHSheetCustomHeaderButtonTitle([v5 showSharePlayProminently]);
    customHeaderButtonTitle = v7->_customHeaderButtonTitle;
    v7->_customHeaderButtonTitle = v32;

    v34 = SHSheetCustomHeaderButtonColor([v5 showSharePlayProminently]);
    customHeaderButtonColor = v7->_customHeaderButtonColor;
    v7->_customHeaderButtonColor = v34;

    v36 = [v5 activityViewController];
    v37 = [v36 customViewController];
    customViewController = v7->_customViewController;
    v7->_customViewController = v37;

    v39 = [v5 activityViewController];
    v40 = [v39 customViewControllerVerticalInsetWrapper];
    customViewControllerVerticalInsetWrapper = v7->_customViewControllerVerticalInsetWrapper;
    v7->_customViewControllerVerticalInsetWrapper = v40;

    v42 = [v5 activityViewController];
    v43 = [v42 customViewControllerSectionHeightWrapper];
    customViewControllerSectionHeightWrapper = v7->_customViewControllerSectionHeightWrapper;
    v7->_customViewControllerSectionHeightWrapper = v43;

    v7->_isModeSwitchDisabled = [v5 isModeSwitchDisabled];
    v45 = [v5 configuration];
    v46 = [v45 peopleProxies];
    peopleSuggestionProxies = v7->_peopleSuggestionProxies;
    v7->_peopleSuggestionProxies = v46;

    v48 = [v5 configuration];
    v49 = [v48 shareProxies];
    shareProxies = v7->_shareProxies;
    v7->_shareProxies = v49;

    v51 = [v5 configuration];
    v52 = [v51 actionProxies];
    actionProxies = v7->_actionProxies;
    v7->_actionProxies = v52;

    v54 = [v5 activitiesManager];
    v55 = [v54 activitiesByUUID];
    activitiesByUUID = v7->_activitiesByUUID;
    v7->_activitiesByUUID = v55;

    v57 = [v5 activitiesManager];
    v58 = [v57 applicationActivityTypes];
    applicationActivityTypes = v7->_applicationActivityTypes;
    v7->_applicationActivityTypes = v58;

    v60 = [v5 configuration];
    v61 = [v60 nearbyCountSlotID];
    nearbyCountSlotID = v7->_nearbyCountSlotID;
    v7->_nearbyCountSlotID = v61;

    v63 = [v5 configuration];
    v7->_reloadData = [v63 reloadData];

    v64 = [v5 configuration];
    v7->_updateProxiesWithAnimation = [v64 wantsAnimation];

    v7->_isSharingExpanded = [v5 isExpanded];
    v65 = [v5 configuration];
    v66 = [v65 restrictedActivityTypes];
    v67 = v66;
    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = v11;
    }

    objc_storeStrong(&v7->_restrictedActivityTypes, v68);

    v7->_supportsCollaboration = [v5 supportsCollaboration];
    v7->_supportsSendCopy = [v5 supportsSendCopy];
    v7->_isCollaborative = [v5 isCollaborative];
    v7->_showCollaborationOptions = [v5 showCollaborationOptions];
    v69 = [v5 collaborationItem];
    v70 = [v69 canAddPeople];
    v71 = SHSheetCollaborationModeTitle(v70);
    collaborationModeTitle = v7->_collaborationModeTitle;
    v7->_collaborationModeTitle = v71;

    v73 = [v5 collaborationItem];
    v74 = [v73 createCollaborationFooterViewModel];
    collaborationFooterViewModel = v7->_collaborationFooterViewModel;
    v7->_collaborationFooterViewModel = v74;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SHSheetViewModel *)self peopleSuggestions];
  v6 = [(SHSheetViewModel *)self peopleSuggestionProxies];
  v7 = [(SHSheetViewModel *)self activities];
  v8 = [(SHSheetViewModel *)self shareProxies];
  v9 = [(SHSheetViewModel *)self actionProxies];
  v10 = [(SHSheetViewModel *)self metadataValues];
  [(SHSheetViewModel *)self showOptions];
  v11 = NSStringFromBOOL();
  v12 = [(SHSheetViewModel *)self restrictedActivityTypes];
  v13 = [v3 stringWithFormat:@"<%@ peopleSuggestions:%@ peopleSuggestionProxies:%@ activities:%@ shareProxies:%@ actionProxies:%@ metadataValues:%@ showOptions:%@ restrictedActivityTypes:%@>", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end