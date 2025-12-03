@interface SHSheetUIServiceClientContext
+ (id)_deserializeMetadatas:(id)metadatas;
- (BOOL)isEqual:(id)equal;
- (CGSize)hostPortraitWindowSize;
- (SHSheetUIServiceClientContext)initWithBSXPCCoder:(id)coder;
- (SHSheetUIServiceClientContext)initWithSession:(id)session;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SHSheetUIServiceClientContext

- (CGSize)hostPortraitWindowSize
{
  width = self->_hostPortraitWindowSize.width;
  height = self->_hostPortraitWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SHSheetUIServiceClientContext)initWithSession:(id)session
{
  sessionCopy = session;
  v71.receiver = self;
  v71.super_class = SHSheetUIServiceClientContext;
  v5 = [(SHSheetUIServiceClientContext *)&v71 init];
  if (v5)
  {
    identifier = [sessionCopy identifier];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = identifier;

    activitiesManager = [sessionCopy activitiesManager];
    orderedActivities = [activitiesManager orderedActivities];
    v10 = orderedActivities;
    v11 = MEMORY[0x1E695E0F0];
    if (orderedActivities)
    {
      v11 = orderedActivities;
    }

    v12 = v11;

    v13 = [sessionCopy activityConfigurationsForActivities:v12 forRemoteUIService:1];

    activityConfigurations = v5->_activityConfigurations;
    v5->_activityConfigurations = v13;

    metadataCollection = [sessionCopy metadataCollection];
    loadedSerializedMetadatas = [metadataCollection loadedSerializedMetadatas];
    serializedMetadataValues = v5->_serializedMetadataValues;
    v5->_serializedMetadataValues = loadedSerializedMetadatas;

    v18 = [SHSheetUIServiceClientContext _deserializeMetadatas:v5->_serializedMetadataValues];
    metadataValues = v5->_metadataValues;
    v5->_metadataValues = v18;

    metadataCollection2 = [sessionCopy metadataCollection];
    metadatas = [metadataCollection2 metadatas];
    if ([metadatas count])
    {
      metadataCollection3 = [sessionCopy metadataCollection];
      loadedMetadatas = [metadataCollection3 loadedMetadatas];
      v5->_isLoadingMetadata = loadedMetadatas == 0;
    }

    else
    {
      v5->_isLoadingMetadata = 0;
    }

    activityItemsManager = [sessionCopy activityItemsManager];
    urlRequests = [activityItemsManager urlRequests];
    urlRequests = v5->_urlRequests;
    v5->_urlRequests = urlRequests;

    activityItemsManager2 = [sessionCopy activityItemsManager];
    urlSandboxExtensions = [activityItemsManager2 urlSandboxExtensions];
    urlSandboxExtensions = v5->_urlSandboxExtensions;
    v5->_urlSandboxExtensions = urlSandboxExtensions;

    v5->_showOptions = [sessionCopy showOptions];
    customOptionsTitle = [sessionCopy customOptionsTitle];
    customOptionsTitle = v5->_customOptionsTitle;
    v5->_customOptionsTitle = customOptionsTitle;

    v5->_showCustomHeaderButton = [sessionCopy showSharePlayProminently];
    v5->_showHeaderSpecialization = [sessionCopy showHeaderSpecialization];
    v32 = SHSheetCustomHeaderButtonTitle([sessionCopy showSharePlayProminently]);
    customHeaderButtonTitle = v5->_customHeaderButtonTitle;
    v5->_customHeaderButtonTitle = v32;

    v34 = SHSheetCustomHeaderButtonColor([sessionCopy showSharePlayProminently]);
    customHeaderButtonColor = v5->_customHeaderButtonColor;
    v5->_customHeaderButtonColor = v34;

    v5->_isModeSwitchDisabled = [sessionCopy isModeSwitchDisabled];
    v5->_isSharingExpanded = [sessionCopy isExpanded];
    v5->_sharingStyle = [sessionCopy sharingStyle];
    v5->_configureForCloudSharing = [sessionCopy configureForCloudSharing];
    v5->_configureForPhotosEdit = [sessionCopy configureForPhotosEdit];
    v5->_hideHeaderView = [sessionCopy hideHeaderView];
    v5->_hideNavigationBar = [sessionCopy hideNavigationBar];
    topContentSectionText = [sessionCopy topContentSectionText];
    topContentSectionText = v5->_topContentSectionText;
    v5->_topContentSectionText = topContentSectionText;

    heroActionActivityTypes = [sessionCopy heroActionActivityTypes];
    heroActionActivityTypes = v5->_heroActionActivityTypes;
    v5->_heroActionActivityTypes = heroActionActivityTypes;

    excludedActivityTypes = [sessionCopy excludedActivityTypes];
    excludedActivityTypes = v5->_excludedActivityTypes;
    v5->_excludedActivityTypes = excludedActivityTypes;

    activitiesManager2 = [sessionCopy activitiesManager];
    applicationActivityTypes = [activitiesManager2 applicationActivityTypes];
    applicationActivityTypes = v5->_applicationActivityTypes;
    v5->_applicationActivityTypes = applicationActivityTypes;

    v5->_showHeroActionsHorizontally = [sessionCopy showHeroActionsHorizontally];
    v45 = SHSheetTintColor();
    tintColor = v5->_tintColor;
    v5->_tintColor = v45;

    v5->_supportsCollaboration = [sessionCopy supportsCollaboration];
    v5->_supportsSendCopy = [sessionCopy supportsSendCopy];
    v5->_isCollaborative = [sessionCopy isCollaborative];
    v5->_showCollaborationOptions = [sessionCopy showCollaborationOptions];
    collaborationItem = [sessionCopy collaborationItem];
    v48 = collaborationItem;
    if (collaborationItem)
    {
      canAddPeople = [collaborationItem canAddPeople];
      v50 = SHSheetCollaborationModeTitle(canAddPeople);
      collaborationModeTitle = v5->_collaborationModeTitle;
      v5->_collaborationModeTitle = v50;

      createCollaborationFooterViewModel = [v48 createCollaborationFooterViewModel];
      collaborationFooterViewModel = v5->_collaborationFooterViewModel;
      v5->_collaborationFooterViewModel = createCollaborationFooterViewModel;
    }

    identityOfCurrentProcess = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
    processIdentity = v5->_processIdentity;
    v5->_processIdentity = identityOfCurrentProcess;

    v5->_wantsCustomScene = [sessionCopy showCustomScene];
    activityViewController = [sessionCopy activityViewController];
    customViewControllerVerticalInsetWrapper = [activityViewController customViewControllerVerticalInsetWrapper];
    customViewControllerVerticalInsetWrapper = v5->_customViewControllerVerticalInsetWrapper;
    v5->_customViewControllerVerticalInsetWrapper = customViewControllerVerticalInsetWrapper;

    activityViewController2 = [sessionCopy activityViewController];
    customViewControllerSectionHeightWrapper = [activityViewController2 customViewControllerSectionHeightWrapper];
    customViewControllerSectionHeightWrapper = v5->_customViewControllerSectionHeightWrapper;
    v5->_customViewControllerSectionHeightWrapper = customViewControllerSectionHeightWrapper;

    v62 = _ShareSheetApplicationKeyWindow();
    [v62 bounds];
    v64 = v63;
    v66 = v65;

    activeInterfaceOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
    if ((activeInterfaceOrientation - 1) >= 2)
    {
      v68 = v66;
    }

    else
    {
      v68 = v64;
    }

    if ((activeInterfaceOrientation - 1) >= 2)
    {
      v69 = v64;
    }

    else
    {
      v69 = v66;
    }

    v5->_hostPortraitWindowSize.width = v68;
    v5->_hostPortraitWindowSize.height = v69;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sessionIdentifier = [(SHSheetUIServiceClientContext *)self sessionIdentifier];
      sessionIdentifier2 = [(SHSheetUIServiceClientContext *)v5 sessionIdentifier];
      v8 = sessionIdentifier;
      v9 = sessionIdentifier2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          LOBYTE(v12) = 0;
          v17 = v9;
          v15 = v8;
          goto LABEL_82;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          LOBYTE(v12) = 0;
LABEL_83:

          goto LABEL_84;
        }
      }

      activityConfigurations = [(SHSheetUIServiceClientContext *)self activityConfigurations];
      activityConfigurations2 = [(SHSheetUIServiceClientContext *)v5 activityConfigurations];
      v15 = activityConfigurations;
      v16 = activityConfigurations2;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          LOBYTE(v12) = 0;
          v23 = v16;
          v21 = v15;
LABEL_81:

          goto LABEL_82;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
          LOBYTE(v12) = 0;
LABEL_82:

          goto LABEL_83;
        }
      }

      metadataValues = [(SHSheetUIServiceClientContext *)self metadataValues];
      metadataValues2 = [(SHSheetUIServiceClientContext *)v5 metadataValues];
      v21 = metadataValues;
      v22 = metadataValues2;
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        if ((v21 != 0) == (v22 == 0))
        {
          LOBYTE(v12) = 0;
          v25 = v22;
          v26 = v21;
LABEL_80:

          goto LABEL_81;
        }

        LODWORD(v12) = [v21 isEqual:v22];

        if (!v12)
        {
          goto LABEL_81;
        }
      }

      isLoadingMetadata = [(SHSheetUIServiceClientContext *)self isLoadingMetadata];
      if (isLoadingMetadata != [(SHSheetUIServiceClientContext *)v5 isLoadingMetadata])
      {
        LOBYTE(v12) = 0;
        goto LABEL_81;
      }

      v141 = v21;
      v142 = v23;
      urlRequests = [(SHSheetUIServiceClientContext *)self urlRequests];
      urlRequests2 = [(SHSheetUIServiceClientContext *)v5 urlRequests];
      v29 = urlRequests;
      v30 = urlRequests2;
      v31 = v30;
      v140 = v30;
      if (v29 == v30)
      {

        v138 = v29;
      }

      else
      {
        if ((v29 != 0) == (v30 == 0))
        {
          v139 = v15;
          LOBYTE(v12) = 0;
          v42 = v29;
          v26 = v29;
          v21 = v141;
          v23 = v142;
LABEL_79:

          v15 = v139;
          v25 = v140;
          goto LABEL_80;
        }

        v32 = v30;
        v33 = [v29 isEqual:v30];

        v138 = v29;
        if (!v33)
        {
          LOBYTE(v12) = 0;
          v21 = v141;
          v23 = v142;
          v26 = v138;
          v25 = v140;
          goto LABEL_80;
        }
      }

      urlSandboxExtensions = [(SHSheetUIServiceClientContext *)self urlSandboxExtensions];
      urlSandboxExtensions2 = [(SHSheetUIServiceClientContext *)v5 urlSandboxExtensions];
      v36 = urlSandboxExtensions;
      v37 = urlSandboxExtensions2;
      v38 = v37;
      v23 = v142;
      v137 = v36;
      v139 = v15;
      v136 = v37;
      if (v36 == v37)
      {
      }

      else
      {
        if ((v36 != 0) == (v37 == 0))
        {
          LOBYTE(v12) = 0;
          v44 = v36;
          v21 = v141;
          v26 = v138;
LABEL_77:

          goto LABEL_78;
        }

        v39 = v37;
        v40 = v36;
        v41 = [v36 isEqual:v37];

        if (!v41)
        {
          goto LABEL_37;
        }
      }

      showOptions = [(SHSheetUIServiceClientContext *)self showOptions];
      if (showOptions != [(SHSheetUIServiceClientContext *)v5 showOptions])
      {
LABEL_37:
        LOBYTE(v12) = 0;
        v21 = v141;
        v26 = v138;
LABEL_78:
        v31 = v136;
        v42 = v137;
        goto LABEL_79;
      }

      customOptionsTitle = [(SHSheetUIServiceClientContext *)self customOptionsTitle];
      customOptionsTitle2 = [(SHSheetUIServiceClientContext *)v5 customOptionsTitle];
      v47 = customOptionsTitle;
      v48 = customOptionsTitle2;
      v49 = v48;
      v134 = v48;
      v135 = v47;
      if (v47 == v48)
      {
      }

      else
      {
        if ((v47 != 0) == (v48 == 0))
        {
          LOBYTE(v12) = 0;
          v52 = v47;
          v21 = v141;
          v26 = v138;
LABEL_75:

          goto LABEL_76;
        }

        v50 = v48;
        v132 = [v47 isEqual:v48];

        if (!v132)
        {
          goto LABEL_45;
        }
      }

      showCustomHeaderButton = [(SHSheetUIServiceClientContext *)self showCustomHeaderButton];
      if (showCustomHeaderButton != [(SHSheetUIServiceClientContext *)v5 showCustomHeaderButton])
      {
LABEL_45:
        LOBYTE(v12) = 0;
        v21 = v141;
        v26 = v138;
LABEL_76:
        v38 = v134;
        v44 = v135;
        goto LABEL_77;
      }

      showHeaderSpecialization = [(SHSheetUIServiceClientContext *)self showHeaderSpecialization];
      v44 = v135;
      if (showHeaderSpecialization != [(SHSheetUIServiceClientContext *)v5 showHeaderSpecialization])
      {
        LOBYTE(v12) = 0;
        v21 = v141;
        v26 = v138;
        v38 = v134;
        goto LABEL_77;
      }

      customHeaderButtonTitle = [(SHSheetUIServiceClientContext *)self customHeaderButtonTitle];
      customHeaderButtonTitle2 = [(SHSheetUIServiceClientContext *)v5 customHeaderButtonTitle];
      v56 = customHeaderButtonTitle;
      v57 = customHeaderButtonTitle2;
      v58 = v57;
      v131 = v57;
      v133 = v56;
      if (v56 == v57)
      {
      }

      else
      {
        if ((v56 != 0) == (v57 == 0))
        {
          LOBYTE(v12) = 0;
          v64 = v56;
          v21 = v141;
          v26 = v138;
LABEL_73:

          goto LABEL_74;
        }

        v59 = v57;
        v60 = v56;
        v61 = [v56 isEqual:v57];

        if (!v61)
        {
          LOBYTE(v12) = 0;
          v21 = v141;
          v26 = v138;
LABEL_74:
          v49 = v131;
          v52 = v133;
          goto LABEL_75;
        }
      }

      customHeaderButtonColor = [(SHSheetUIServiceClientContext *)self customHeaderButtonColor];
      customHeaderButtonColor2 = [(SHSheetUIServiceClientContext *)v5 customHeaderButtonColor];
      v64 = customHeaderButtonColor;
      v65 = customHeaderButtonColor2;
      v66 = v65;
      v130 = v65;
      if (v64 == v65)
      {
      }

      else
      {
        if ((v64 != 0) == (v65 == 0))
        {
          LOBYTE(v12) = 0;
          v70 = v64;
LABEL_63:

          goto LABEL_64;
        }

        v67 = v65;
        v68 = [v64 isEqual:v65];

        if (!v68)
        {
          goto LABEL_61;
        }
      }

      isModeSwitchDisabled = [(SHSheetUIServiceClientContext *)self isModeSwitchDisabled];
      if (isModeSwitchDisabled != [(SHSheetUIServiceClientContext *)v5 isModeSwitchDisabled])
      {
LABEL_61:
        LOBYTE(v12) = 0;
LABEL_64:
        v21 = v141;
LABEL_72:
        v26 = v138;
        v58 = v130;
        goto LABEL_73;
      }

      isSharingExpanded = [(SHSheetUIServiceClientContext *)self isSharingExpanded];
      if (isSharingExpanded != [(SHSheetUIServiceClientContext *)v5 isSharingExpanded]|| (v72 = [(SHSheetUIServiceClientContext *)self sharingStyle], v72 != [(SHSheetUIServiceClientContext *)v5 sharingStyle]) || (v73 = [(SHSheetUIServiceClientContext *)self configureForCloudSharing], v73 != [(SHSheetUIServiceClientContext *)v5 configureForCloudSharing]) || (v74 = [(SHSheetUIServiceClientContext *)self configureForPhotosEdit], v74 != [(SHSheetUIServiceClientContext *)v5 configureForPhotosEdit]) || (v75 = [(SHSheetUIServiceClientContext *)self hideHeaderView], v75 != [(SHSheetUIServiceClientContext *)v5 hideHeaderView]) || (v76 = [(SHSheetUIServiceClientContext *)self hideNavigationBar], v76 != [(SHSheetUIServiceClientContext *)v5 hideNavigationBar]))
      {
        LOBYTE(v12) = 0;
        v21 = v141;
        v23 = v142;
        goto LABEL_72;
      }

      topContentSectionText = [(SHSheetUIServiceClientContext *)self topContentSectionText];
      topContentSectionText2 = [(SHSheetUIServiceClientContext *)v5 topContentSectionText];
      v80 = topContentSectionText;
      v128 = topContentSectionText2;
      v129 = v80;
      if (v80 == v128)
      {
      }

      else
      {
        if ((v80 != 0) == (v128 == 0))
        {
          LOBYTE(v12) = 0;
          v126 = v80;

LABEL_130:
          goto LABEL_131;
        }

        v81 = [v80 isEqual:v128];

        if (!v81)
        {
          LOBYTE(v12) = 0;
LABEL_131:
          v23 = v142;
          v66 = v128;
          v70 = v129;
          goto LABEL_63;
        }
      }

      heroActionActivityTypes = [(SHSheetUIServiceClientContext *)self heroActionActivityTypes];
      heroActionActivityTypes2 = [(SHSheetUIServiceClientContext *)v5 heroActionActivityTypes];
      v126 = heroActionActivityTypes;
      v127 = heroActionActivityTypes2;
      if (v126 == v127)
      {
      }

      else
      {
        if ((v126 != 0) == (v127 == 0))
        {
          LOBYTE(v12) = 0;
          v125 = v126;

LABEL_128:
          goto LABEL_129;
        }

        v84 = [v126 isEqual:v127];

        if (!v84)
        {
          LOBYTE(v12) = 0;
LABEL_129:

          goto LABEL_130;
        }
      }

      excludedActivityTypes = [(SHSheetUIServiceClientContext *)self excludedActivityTypes];
      excludedActivityTypes2 = [(SHSheetUIServiceClientContext *)v5 excludedActivityTypes];
      v87 = excludedActivityTypes;
      v124 = excludedActivityTypes2;
      v125 = v87;
      if (v87 == v124)
      {
      }

      else
      {
        if ((v87 != 0) == (v124 == 0))
        {
          LOBYTE(v12) = 0;
          v91 = v87;

LABEL_126:
          goto LABEL_127;
        }

        v88 = [v87 isEqual:v124];

        if (!v88)
        {
          LOBYTE(v12) = 0;
LABEL_127:

          goto LABEL_128;
        }
      }

      applicationActivityTypes = [(SHSheetUIServiceClientContext *)self applicationActivityTypes];
      applicationActivityTypes2 = [(SHSheetUIServiceClientContext *)v5 applicationActivityTypes];
      v91 = applicationActivityTypes;
      v123 = applicationActivityTypes2;
      if (v91 == v123)
      {
      }

      else
      {
        if ((v91 != 0) == (v123 == 0))
        {
          LOBYTE(v12) = 0;
          v122 = v91;

LABEL_124:
          goto LABEL_125;
        }

        v92 = [v91 isEqual:v123];

        if (!v92)
        {
          goto LABEL_109;
        }
      }

      showHeroActionsHorizontally = [(SHSheetUIServiceClientContext *)self showHeroActionsHorizontally];
      if (showHeroActionsHorizontally != [(SHSheetUIServiceClientContext *)v5 showHeroActionsHorizontally])
      {
LABEL_109:
        LOBYTE(v12) = 0;
LABEL_125:

        goto LABEL_126;
      }

      tintColor = [(SHSheetUIServiceClientContext *)self tintColor];
      tintColor2 = [(SHSheetUIServiceClientContext *)v5 tintColor];
      v96 = tintColor;
      v121 = tintColor2;
      v122 = v96;
      if (v96 == v121)
      {
      }

      else
      {
        if ((v96 != 0) == (v121 == 0))
        {
          LOBYTE(v12) = 0;
          v101 = v121;
          v119 = v122;
LABEL_122:

          goto LABEL_123;
        }

        v118 = [v96 isEqual:v121];

        if (!v118)
        {
LABEL_120:
          LOBYTE(v12) = 0;
LABEL_123:

          goto LABEL_124;
        }
      }

      supportsCollaboration = [(SHSheetUIServiceClientContext *)self supportsCollaboration];
      if (supportsCollaboration != [(SHSheetUIServiceClientContext *)v5 supportsCollaboration])
      {
        goto LABEL_120;
      }

      supportsSendCopy = [(SHSheetUIServiceClientContext *)self supportsSendCopy];
      if (supportsSendCopy != [(SHSheetUIServiceClientContext *)v5 supportsSendCopy])
      {
        goto LABEL_120;
      }

      isCollaborative = [(SHSheetUIServiceClientContext *)self isCollaborative];
      if (isCollaborative != [(SHSheetUIServiceClientContext *)v5 isCollaborative])
      {
        goto LABEL_120;
      }

      showCollaborationOptions = [(SHSheetUIServiceClientContext *)self showCollaborationOptions];
      if (showCollaborationOptions != [(SHSheetUIServiceClientContext *)v5 showCollaborationOptions])
      {
        goto LABEL_120;
      }

      collaborationModeTitle = [(SHSheetUIServiceClientContext *)self collaborationModeTitle];
      collaborationModeTitle2 = [(SHSheetUIServiceClientContext *)v5 collaborationModeTitle];
      v103 = collaborationModeTitle;
      v104 = collaborationModeTitle2;
      v119 = v103;
      v101 = v104;
      if (v103 == v104)
      {
      }

      else
      {
        if ((v103 != 0) == (v104 == 0))
        {
          LOBYTE(v12) = 0;
          v106 = v104;
          v117 = v119;
          goto LABEL_148;
        }

        LODWORD(v116) = [v103 isEqual:v104];

        if (!v116)
        {
          goto LABEL_138;
        }
      }

      wantsCustomScene = [(SHSheetUIServiceClientContext *)self wantsCustomScene];
      if (wantsCustomScene != [(SHSheetUIServiceClientContext *)v5 wantsCustomScene])
      {
LABEL_138:
        LOBYTE(v12) = 0;
        goto LABEL_122;
      }

      [(SHSheetUIServiceClientContext *)self hostPortraitWindowSize];
      v108 = v107;
      v110 = v109;
      [(SHSheetUIServiceClientContext *)v5 hostPortraitWindowSize];
      LOBYTE(v12) = 0;
      if (v108 != v112 || v110 != v111)
      {
        goto LABEL_122;
      }

      collaborationFooterViewModel = [(SHSheetUIServiceClientContext *)self collaborationFooterViewModel];
      collaborationFooterViewModel2 = [(SHSheetUIServiceClientContext *)v5 collaborationFooterViewModel];
      v12 = collaborationFooterViewModel;
      v115 = collaborationFooterViewModel2;
      v106 = v115;
      v117 = v12;
      if (v12 == v115)
      {
        LOBYTE(v12) = 1;
      }

      else if ((v12 != 0) == (v115 == 0))
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        LOBYTE(v12) = [v12 isEqual:v115];
      }

LABEL_148:
      goto LABEL_122;
    }

    LOBYTE(v12) = 0;
  }

LABEL_84:

  return v12;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  sessionIdentifier = [(SHSheetUIServiceClientContext *)self sessionIdentifier];
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];

  activityConfigurations = [(SHSheetUIServiceClientContext *)self activityConfigurations];
  [coderCopy encodeCollection:activityConfigurations forKey:@"activityConfigurations"];

  [coderCopy encodeBool:-[SHSheetUIServiceClientContext isSharingExpanded](self forKey:{"isSharingExpanded"), @"isSharingExpanded"}];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SHSheetUIServiceClientContext sharingStyle](self, "sharingStyle")}];
  [coderCopy encodeObject:v6 forKey:@"sharingStyle"];

  [coderCopy encodeBool:-[SHSheetUIServiceClientContext configureForCloudSharing](self forKey:{"configureForCloudSharing"), @"configureForCloudSharing"}];
  [coderCopy encodeBool:-[SHSheetUIServiceClientContext configureForPhotosEdit](self forKey:{"configureForPhotosEdit"), @"configureForPhotosEdit"}];
  [coderCopy encodeBool:-[SHSheetUIServiceClientContext hideHeaderView](self forKey:{"hideHeaderView"), @"hideHeaderView"}];
  [coderCopy encodeBool:-[SHSheetUIServiceClientContext hideNavigationBar](self forKey:{"hideNavigationBar"), @"hideNavigationBar"}];
  topContentSectionText = [(SHSheetUIServiceClientContext *)self topContentSectionText];
  [coderCopy encodeObject:topContentSectionText forKey:@"topContentSectionText"];

  heroActionActivityTypes = [(SHSheetUIServiceClientContext *)self heroActionActivityTypes];
  [coderCopy encodeObject:heroActionActivityTypes forKey:@"heroActionActivityTypes"];

  excludedActivityTypes = [(SHSheetUIServiceClientContext *)self excludedActivityTypes];
  [coderCopy encodeObject:excludedActivityTypes forKey:@"excludedActivityTypes"];

  applicationActivityTypes = [(SHSheetUIServiceClientContext *)self applicationActivityTypes];
  [coderCopy encodeObject:applicationActivityTypes forKey:@"applicationActivityTypes"];

  [coderCopy encodeBool:-[SHSheetUIServiceClientContext showHeroActionsHorizontally](self forKey:{"showHeroActionsHorizontally"), @"showHeroActionsHorizontally"}];
  tintColor = [(SHSheetUIServiceClientContext *)self tintColor];
  [coderCopy encodeObject:tintColor forKey:@"tintColor"];

  serializedMetadataValues = [(SHSheetUIServiceClientContext *)self serializedMetadataValues];
  [coderCopy encodeObject:serializedMetadataValues forKey:@"serializedMetadataValues"];

  [coderCopy encodeBool:-[SHSheetUIServiceClientContext isLoadingMetadata](self forKey:{"isLoadingMetadata"), @"isLoadingMetadata"}];
  urlRequests = [(SHSheetUIServiceClientContext *)self urlRequests];
  [coderCopy encodeObject:urlRequests forKey:@"urlRequests"];

  urlSandboxExtensions = [(SHSheetUIServiceClientContext *)self urlSandboxExtensions];
  [coderCopy encodeObject:urlSandboxExtensions forKey:@"urlSandboxExtensions"];

  [coderCopy encodeBool:-[SHSheetUIServiceClientContext showOptions](self forKey:{"showOptions"), @"showOptions"}];
  customOptionsTitle = [(SHSheetUIServiceClientContext *)self customOptionsTitle];
  [coderCopy encodeObject:customOptionsTitle forKey:@"customOptionsTitle"];

  [coderCopy encodeBool:-[SHSheetUIServiceClientContext showCustomHeaderButton](self forKey:{"showCustomHeaderButton"), @"showCustomHeaderButton"}];
  [coderCopy encodeBool:-[SHSheetUIServiceClientContext showHeaderSpecialization](self forKey:{"showHeaderSpecialization"), @"showHeaderSpecialization"}];
  customHeaderButtonTitle = [(SHSheetUIServiceClientContext *)self customHeaderButtonTitle];
  [coderCopy encodeObject:customHeaderButtonTitle forKey:@"customHeaderButtonTitle"];

  customHeaderButtonColor = [(SHSheetUIServiceClientContext *)self customHeaderButtonColor];
  [coderCopy encodeObject:customHeaderButtonColor forKey:@"customHeaderButtonColor"];

  [coderCopy encodeBool:-[SHSheetUIServiceClientContext isModeSwitchDisabled](self forKey:{"isModeSwitchDisabled"), @"isModeSwitchDisabled"}];
  [coderCopy encodeBool:-[SHSheetUIServiceClientContext supportsCollaboration](self forKey:{"supportsCollaboration"), @"supportsCollaboration"}];
  [coderCopy encodeBool:-[SHSheetUIServiceClientContext supportsSendCopy](self forKey:{"supportsSendCopy"), @"supportsSendCopy"}];
  [coderCopy encodeBool:-[SHSheetUIServiceClientContext isCollaborative](self forKey:{"isCollaborative"), @"isCollaborative"}];
  [coderCopy encodeBool:-[SHSheetUIServiceClientContext showCollaborationOptions](self forKey:{"showCollaborationOptions"), @"showCollaborationOptions"}];
  collaborationModeTitle = [(SHSheetUIServiceClientContext *)self collaborationModeTitle];
  [coderCopy encodeObject:collaborationModeTitle forKey:@"collaborationModeTitle"];

  collaborationFooterViewModel = [(SHSheetUIServiceClientContext *)self collaborationFooterViewModel];

  if (collaborationFooterViewModel)
  {
    collaborationFooterViewModel2 = [(SHSheetUIServiceClientContext *)self collaborationFooterViewModel];
    [coderCopy encodeObject:collaborationFooterViewModel2 forKey:@"collaborationFooterViewModel"];
  }

  processIdentity = [(SHSheetUIServiceClientContext *)self processIdentity];
  [coderCopy encodeObject:processIdentity forKey:@"processIdentity"];

  [coderCopy encodeBool:-[SHSheetUIServiceClientContext wantsCustomScene](self forKey:{"wantsCustomScene"), @"wantsCustomScene"}];
  customViewControllerVerticalInsetWrapper = [(SHSheetUIServiceClientContext *)self customViewControllerVerticalInsetWrapper];
  [coderCopy encodeObject:customViewControllerVerticalInsetWrapper forKey:@"customViewControllerVerticalInsetWrapper"];

  customViewControllerSectionHeightWrapper = [(SHSheetUIServiceClientContext *)self customViewControllerSectionHeightWrapper];
  [coderCopy encodeObject:customViewControllerSectionHeightWrapper forKey:@"customViewControllerSectionHeightWrapper"];

  [(SHSheetUIServiceClientContext *)self hostPortraitWindowSize];
  [coderCopy encodeCGSize:@"hostPortraitWindowSize" forKey:?];
}

- (SHSheetUIServiceClientContext)initWithBSXPCCoder:(id)coder
{
  v78 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v71.receiver = self;
  v71.super_class = SHSheetUIServiceClientContext;
  v5 = [(SHSheetUIServiceClientContext *)&v71 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"activityConfigurations"];
    activityConfigurations = v5->_activityConfigurations;
    v5->_activityConfigurations = v9;

    v11 = [SUIHostActivityProxy activitiesForConfigurations:v5->_activityConfigurations];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v14)
    {
      v15 = *v68;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v68 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v67 + 1) + 8 * i);
          activityUUID = [v17 activityUUID];
          [dictionary setObject:v17 forKeyedSubscript:activityUUID];
        }

        v14 = [v13 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v14);
    }

    v19 = [dictionary copy];
    activitiesByUUID = v5->_activitiesByUUID;
    v5->_activitiesByUUID = v19;

    v5->_isSharingExpanded = [coderCopy decodeBoolForKey:@"isSharingExpanded"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingStyle"];
    v5->_sharingStyle = [v21 intValue];

    v5->_configureForCloudSharing = [coderCopy decodeBoolForKey:@"configureForCloudSharing"];
    v5->_configureForPhotosEdit = [coderCopy decodeBoolForKey:@"configureForPhotosEdit"];
    v5->_hideHeaderView = [coderCopy decodeBoolForKey:@"hideHeaderView"];
    v5->_hideNavigationBar = [coderCopy decodeBoolForKey:@"hideNavigationBar"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topContentSectionText"];
    topContentSectionText = v5->_topContentSectionText;
    v5->_topContentSectionText = v22;

    v24 = objc_opt_class();
    v25 = [coderCopy decodeCollectionOfClass:v24 containingClass:objc_opt_class() forKey:@"heroActionActivityTypes"];
    heroActionActivityTypes = v5->_heroActionActivityTypes;
    v5->_heroActionActivityTypes = v25;

    v27 = objc_opt_class();
    v28 = [coderCopy decodeCollectionOfClass:v27 containingClass:objc_opt_class() forKey:@"excludedActivityTypes"];
    excludedActivityTypes = v5->_excludedActivityTypes;
    v5->_excludedActivityTypes = v28;

    v30 = objc_opt_class();
    v31 = [coderCopy decodeCollectionOfClass:v30 containingClass:objc_opt_class() forKey:@"applicationActivityTypes"];
    applicationActivityTypes = v5->_applicationActivityTypes;
    v5->_applicationActivityTypes = v31;

    v5->_showHeroActionsHorizontally = [coderCopy decodeBoolForKey:@"showHeroActionsHorizontally"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v33;

    v35 = objc_opt_class();
    v36 = [coderCopy decodeCollectionOfClass:v35 containingClass:objc_opt_class() forKey:@"serializedMetadataValues"];
    serializedMetadataValues = v5->_serializedMetadataValues;
    v5->_serializedMetadataValues = v36;

    v38 = [SHSheetUIServiceClientContext _deserializeMetadatas:v5->_serializedMetadataValues];
    metadataValues = v5->_metadataValues;
    v5->_metadataValues = v38;

    v5->_isLoadingMetadata = [coderCopy decodeBoolForKey:@"isLoadingMetadata"];
    v40 = objc_opt_class();
    v41 = [coderCopy decodeCollectionOfClass:v40 containingClass:objc_opt_class() forKey:@"urlRequests"];
    urlRequests = v5->_urlRequests;
    v5->_urlRequests = v41;

    v43 = objc_opt_class();
    v44 = [coderCopy decodeCollectionOfClass:v43 containingClass:objc_opt_class() forKey:@"urlSandboxExtensions"];
    urlSandboxExtensions = v5->_urlSandboxExtensions;
    v5->_urlSandboxExtensions = v44;

    v5->_showOptions = [coderCopy decodeBoolForKey:@"showOptions"];
    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customOptionsTitle"];
    customOptionsTitle = v5->_customOptionsTitle;
    v5->_customOptionsTitle = v46;

    v5->_showCustomHeaderButton = [coderCopy decodeBoolForKey:@"showCustomHeaderButton"];
    v5->_showHeaderSpecialization = [coderCopy decodeBoolForKey:@"showHeaderSpecialization"];
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customHeaderButtonTitle"];
    customHeaderButtonTitle = v5->_customHeaderButtonTitle;
    v5->_customHeaderButtonTitle = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customHeaderButtonColor"];
    customHeaderButtonColor = v5->_customHeaderButtonColor;
    v5->_customHeaderButtonColor = v50;

    v5->_isModeSwitchDisabled = [coderCopy decodeBoolForKey:@"isModeSwitchDisabled"];
    v5->_supportsCollaboration = [coderCopy decodeBoolForKey:@"supportsCollaboration"];
    v5->_supportsSendCopy = [coderCopy decodeBoolForKey:@"supportsSendCopy"];
    v5->_isCollaborative = [coderCopy decodeBoolForKey:@"isCollaborative"];
    v5->_showCollaborationOptions = [coderCopy decodeBoolForKey:@"showCollaborationOptions"];
    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collaborationModeTitle"];
    collaborationModeTitle = v5->_collaborationModeTitle;
    v5->_collaborationModeTitle = v52;

    if (v5->_supportsCollaboration)
    {
      v73 = 0;
      v74 = &v73;
      v75 = 0x2050000000;
      v54 = getSLCollaborationFooterViewModelClass_softClass;
      v76 = getSLCollaborationFooterViewModelClass_softClass;
      if (!getSLCollaborationFooterViewModelClass_softClass)
      {
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __getSLCollaborationFooterViewModelClass_block_invoke;
        v72[3] = &unk_1E71F91F0;
        v72[4] = &v73;
        __getSLCollaborationFooterViewModelClass_block_invoke(v72);
        v54 = v74[3];
      }

      v55 = v54;
      _Block_object_dispose(&v73, 8);
      v56 = [coderCopy decodeObjectOfClass:v54 forKey:@"collaborationFooterViewModel"];
      collaborationFooterViewModel = v5->_collaborationFooterViewModel;
      v5->_collaborationFooterViewModel = v56;
    }

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processIdentity"];
    processIdentity = v5->_processIdentity;
    v5->_processIdentity = v58;

    v5->_wantsCustomScene = [coderCopy decodeBoolForKey:@"wantsCustomScene"];
    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customViewControllerVerticalInsetWrapper"];
    customViewControllerVerticalInsetWrapper = v5->_customViewControllerVerticalInsetWrapper;
    v5->_customViewControllerVerticalInsetWrapper = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customViewControllerSectionHeightWrapper"];
    customViewControllerSectionHeightWrapper = v5->_customViewControllerSectionHeightWrapper;
    v5->_customViewControllerSectionHeightWrapper = v62;

    [coderCopy decodeCGSizeForKey:@"hostPortraitWindowSize"];
    v5->_hostPortraitWindowSize.width = v64;
    v5->_hostPortraitWindowSize.height = v65;
  }

  return v5;
}

+ (id)_deserializeMetadatas:(id)metadatas
{
  v29 = *MEMORY[0x1E69E9840];
  metadatasCopy = metadatas;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(metadatasCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = metadatasCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v20 = 0;
        v21 = &v20;
        v22 = 0x2050000000;
        v10 = getLPLinkMetadataClass_softClass;
        v23 = getLPLinkMetadataClass_softClass;
        if (!getLPLinkMetadataClass_softClass)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v26 = __getLPLinkMetadataClass_block_invoke;
          v27 = &unk_1E71F91F0;
          v28 = &v20;
          __getLPLinkMetadataClass_block_invoke(&buf);
          v10 = v21[3];
        }

        v11 = v10;
        _Block_object_dispose(&v20, 8);
        v12 = [v10 metadataWithDataRepresentationForLocalUseOnly:v9];
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = share_sheet_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v9;
            _os_log_error_impl(&dword_18B359000, v13, OS_LOG_TYPE_ERROR, "Failed to de-serialize metadata from data: %@", &buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  v14 = [v4 copy];

  return v14;
}

@end