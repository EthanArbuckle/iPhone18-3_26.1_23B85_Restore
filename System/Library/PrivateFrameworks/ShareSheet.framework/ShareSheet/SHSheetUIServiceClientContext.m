@interface SHSheetUIServiceClientContext
+ (id)_deserializeMetadatas:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)hostPortraitWindowSize;
- (SHSheetUIServiceClientContext)initWithBSXPCCoder:(id)a3;
- (SHSheetUIServiceClientContext)initWithSession:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
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

- (SHSheetUIServiceClientContext)initWithSession:(id)a3
{
  v4 = a3;
  v71.receiver = self;
  v71.super_class = SHSheetUIServiceClientContext;
  v5 = [(SHSheetUIServiceClientContext *)&v71 init];
  if (v5)
  {
    v6 = [v4 identifier];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 activitiesManager];
    v9 = [v8 orderedActivities];
    v10 = v9;
    v11 = MEMORY[0x1E695E0F0];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = [v4 activityConfigurationsForActivities:v12 forRemoteUIService:1];

    activityConfigurations = v5->_activityConfigurations;
    v5->_activityConfigurations = v13;

    v15 = [v4 metadataCollection];
    v16 = [v15 loadedSerializedMetadatas];
    serializedMetadataValues = v5->_serializedMetadataValues;
    v5->_serializedMetadataValues = v16;

    v18 = [SHSheetUIServiceClientContext _deserializeMetadatas:v5->_serializedMetadataValues];
    metadataValues = v5->_metadataValues;
    v5->_metadataValues = v18;

    v20 = [v4 metadataCollection];
    v21 = [v20 metadatas];
    if ([v21 count])
    {
      v22 = [v4 metadataCollection];
      v23 = [v22 loadedMetadatas];
      v5->_isLoadingMetadata = v23 == 0;
    }

    else
    {
      v5->_isLoadingMetadata = 0;
    }

    v24 = [v4 activityItemsManager];
    v25 = [v24 urlRequests];
    urlRequests = v5->_urlRequests;
    v5->_urlRequests = v25;

    v27 = [v4 activityItemsManager];
    v28 = [v27 urlSandboxExtensions];
    urlSandboxExtensions = v5->_urlSandboxExtensions;
    v5->_urlSandboxExtensions = v28;

    v5->_showOptions = [v4 showOptions];
    v30 = [v4 customOptionsTitle];
    customOptionsTitle = v5->_customOptionsTitle;
    v5->_customOptionsTitle = v30;

    v5->_showCustomHeaderButton = [v4 showSharePlayProminently];
    v5->_showHeaderSpecialization = [v4 showHeaderSpecialization];
    v32 = SHSheetCustomHeaderButtonTitle([v4 showSharePlayProminently]);
    customHeaderButtonTitle = v5->_customHeaderButtonTitle;
    v5->_customHeaderButtonTitle = v32;

    v34 = SHSheetCustomHeaderButtonColor([v4 showSharePlayProminently]);
    customHeaderButtonColor = v5->_customHeaderButtonColor;
    v5->_customHeaderButtonColor = v34;

    v5->_isModeSwitchDisabled = [v4 isModeSwitchDisabled];
    v5->_isSharingExpanded = [v4 isExpanded];
    v5->_sharingStyle = [v4 sharingStyle];
    v5->_configureForCloudSharing = [v4 configureForCloudSharing];
    v5->_configureForPhotosEdit = [v4 configureForPhotosEdit];
    v5->_hideHeaderView = [v4 hideHeaderView];
    v5->_hideNavigationBar = [v4 hideNavigationBar];
    v36 = [v4 topContentSectionText];
    topContentSectionText = v5->_topContentSectionText;
    v5->_topContentSectionText = v36;

    v38 = [v4 heroActionActivityTypes];
    heroActionActivityTypes = v5->_heroActionActivityTypes;
    v5->_heroActionActivityTypes = v38;

    v40 = [v4 excludedActivityTypes];
    excludedActivityTypes = v5->_excludedActivityTypes;
    v5->_excludedActivityTypes = v40;

    v42 = [v4 activitiesManager];
    v43 = [v42 applicationActivityTypes];
    applicationActivityTypes = v5->_applicationActivityTypes;
    v5->_applicationActivityTypes = v43;

    v5->_showHeroActionsHorizontally = [v4 showHeroActionsHorizontally];
    v45 = SHSheetTintColor();
    tintColor = v5->_tintColor;
    v5->_tintColor = v45;

    v5->_supportsCollaboration = [v4 supportsCollaboration];
    v5->_supportsSendCopy = [v4 supportsSendCopy];
    v5->_isCollaborative = [v4 isCollaborative];
    v5->_showCollaborationOptions = [v4 showCollaborationOptions];
    v47 = [v4 collaborationItem];
    v48 = v47;
    if (v47)
    {
      v49 = [v47 canAddPeople];
      v50 = SHSheetCollaborationModeTitle(v49);
      collaborationModeTitle = v5->_collaborationModeTitle;
      v5->_collaborationModeTitle = v50;

      v52 = [v48 createCollaborationFooterViewModel];
      collaborationFooterViewModel = v5->_collaborationFooterViewModel;
      v5->_collaborationFooterViewModel = v52;
    }

    v54 = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
    processIdentity = v5->_processIdentity;
    v5->_processIdentity = v54;

    v5->_wantsCustomScene = [v4 showCustomScene];
    v56 = [v4 activityViewController];
    v57 = [v56 customViewControllerVerticalInsetWrapper];
    customViewControllerVerticalInsetWrapper = v5->_customViewControllerVerticalInsetWrapper;
    v5->_customViewControllerVerticalInsetWrapper = v57;

    v59 = [v4 activityViewController];
    v60 = [v59 customViewControllerSectionHeightWrapper];
    customViewControllerSectionHeightWrapper = v5->_customViewControllerSectionHeightWrapper;
    v5->_customViewControllerSectionHeightWrapper = v60;

    v62 = _ShareSheetApplicationKeyWindow();
    [v62 bounds];
    v64 = v63;
    v66 = v65;

    v67 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
    if ((v67 - 1) >= 2)
    {
      v68 = v66;
    }

    else
    {
      v68 = v64;
    }

    if ((v67 - 1) >= 2)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SHSheetUIServiceClientContext *)self sessionIdentifier];
      v7 = [(SHSheetUIServiceClientContext *)v5 sessionIdentifier];
      v8 = v6;
      v9 = v7;
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

      v13 = [(SHSheetUIServiceClientContext *)self activityConfigurations];
      v14 = [(SHSheetUIServiceClientContext *)v5 activityConfigurations];
      v15 = v13;
      v16 = v14;
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

      v19 = [(SHSheetUIServiceClientContext *)self metadataValues];
      v20 = [(SHSheetUIServiceClientContext *)v5 metadataValues];
      v21 = v19;
      v22 = v20;
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

      v24 = [(SHSheetUIServiceClientContext *)self isLoadingMetadata];
      if (v24 != [(SHSheetUIServiceClientContext *)v5 isLoadingMetadata])
      {
        LOBYTE(v12) = 0;
        goto LABEL_81;
      }

      v141 = v21;
      v142 = v23;
      v27 = [(SHSheetUIServiceClientContext *)self urlRequests];
      v28 = [(SHSheetUIServiceClientContext *)v5 urlRequests];
      v29 = v27;
      v30 = v28;
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

      v34 = [(SHSheetUIServiceClientContext *)self urlSandboxExtensions];
      v35 = [(SHSheetUIServiceClientContext *)v5 urlSandboxExtensions];
      v36 = v34;
      v37 = v35;
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

      v43 = [(SHSheetUIServiceClientContext *)self showOptions];
      if (v43 != [(SHSheetUIServiceClientContext *)v5 showOptions])
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

      v45 = [(SHSheetUIServiceClientContext *)self customOptionsTitle];
      v46 = [(SHSheetUIServiceClientContext *)v5 customOptionsTitle];
      v47 = v45;
      v48 = v46;
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

      v51 = [(SHSheetUIServiceClientContext *)self showCustomHeaderButton];
      if (v51 != [(SHSheetUIServiceClientContext *)v5 showCustomHeaderButton])
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

      v53 = [(SHSheetUIServiceClientContext *)self showHeaderSpecialization];
      v44 = v135;
      if (v53 != [(SHSheetUIServiceClientContext *)v5 showHeaderSpecialization])
      {
        LOBYTE(v12) = 0;
        v21 = v141;
        v26 = v138;
        v38 = v134;
        goto LABEL_77;
      }

      v54 = [(SHSheetUIServiceClientContext *)self customHeaderButtonTitle];
      v55 = [(SHSheetUIServiceClientContext *)v5 customHeaderButtonTitle];
      v56 = v54;
      v57 = v55;
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

      v62 = [(SHSheetUIServiceClientContext *)self customHeaderButtonColor];
      v63 = [(SHSheetUIServiceClientContext *)v5 customHeaderButtonColor];
      v64 = v62;
      v65 = v63;
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

      v69 = [(SHSheetUIServiceClientContext *)self isModeSwitchDisabled];
      if (v69 != [(SHSheetUIServiceClientContext *)v5 isModeSwitchDisabled])
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

      v71 = [(SHSheetUIServiceClientContext *)self isSharingExpanded];
      if (v71 != [(SHSheetUIServiceClientContext *)v5 isSharingExpanded]|| (v72 = [(SHSheetUIServiceClientContext *)self sharingStyle], v72 != [(SHSheetUIServiceClientContext *)v5 sharingStyle]) || (v73 = [(SHSheetUIServiceClientContext *)self configureForCloudSharing], v73 != [(SHSheetUIServiceClientContext *)v5 configureForCloudSharing]) || (v74 = [(SHSheetUIServiceClientContext *)self configureForPhotosEdit], v74 != [(SHSheetUIServiceClientContext *)v5 configureForPhotosEdit]) || (v75 = [(SHSheetUIServiceClientContext *)self hideHeaderView], v75 != [(SHSheetUIServiceClientContext *)v5 hideHeaderView]) || (v76 = [(SHSheetUIServiceClientContext *)self hideNavigationBar], v76 != [(SHSheetUIServiceClientContext *)v5 hideNavigationBar]))
      {
        LOBYTE(v12) = 0;
        v21 = v141;
        v23 = v142;
        goto LABEL_72;
      }

      v78 = [(SHSheetUIServiceClientContext *)self topContentSectionText];
      v79 = [(SHSheetUIServiceClientContext *)v5 topContentSectionText];
      v80 = v78;
      v128 = v79;
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

      v82 = [(SHSheetUIServiceClientContext *)self heroActionActivityTypes];
      v83 = [(SHSheetUIServiceClientContext *)v5 heroActionActivityTypes];
      v126 = v82;
      v127 = v83;
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

      v85 = [(SHSheetUIServiceClientContext *)self excludedActivityTypes];
      v86 = [(SHSheetUIServiceClientContext *)v5 excludedActivityTypes];
      v87 = v85;
      v124 = v86;
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

      v89 = [(SHSheetUIServiceClientContext *)self applicationActivityTypes];
      v90 = [(SHSheetUIServiceClientContext *)v5 applicationActivityTypes];
      v91 = v89;
      v123 = v90;
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

      v93 = [(SHSheetUIServiceClientContext *)self showHeroActionsHorizontally];
      if (v93 != [(SHSheetUIServiceClientContext *)v5 showHeroActionsHorizontally])
      {
LABEL_109:
        LOBYTE(v12) = 0;
LABEL_125:

        goto LABEL_126;
      }

      v94 = [(SHSheetUIServiceClientContext *)self tintColor];
      v95 = [(SHSheetUIServiceClientContext *)v5 tintColor];
      v96 = v94;
      v121 = v95;
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

      v97 = [(SHSheetUIServiceClientContext *)self supportsCollaboration];
      if (v97 != [(SHSheetUIServiceClientContext *)v5 supportsCollaboration])
      {
        goto LABEL_120;
      }

      v98 = [(SHSheetUIServiceClientContext *)self supportsSendCopy];
      if (v98 != [(SHSheetUIServiceClientContext *)v5 supportsSendCopy])
      {
        goto LABEL_120;
      }

      v99 = [(SHSheetUIServiceClientContext *)self isCollaborative];
      if (v99 != [(SHSheetUIServiceClientContext *)v5 isCollaborative])
      {
        goto LABEL_120;
      }

      v100 = [(SHSheetUIServiceClientContext *)self showCollaborationOptions];
      if (v100 != [(SHSheetUIServiceClientContext *)v5 showCollaborationOptions])
      {
        goto LABEL_120;
      }

      v102 = [(SHSheetUIServiceClientContext *)self collaborationModeTitle];
      v120 = [(SHSheetUIServiceClientContext *)v5 collaborationModeTitle];
      v103 = v102;
      v104 = v120;
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

      v105 = [(SHSheetUIServiceClientContext *)self wantsCustomScene];
      if (v105 != [(SHSheetUIServiceClientContext *)v5 wantsCustomScene])
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

      v113 = [(SHSheetUIServiceClientContext *)self collaborationFooterViewModel];
      v114 = [(SHSheetUIServiceClientContext *)v5 collaborationFooterViewModel];
      v12 = v113;
      v115 = v114;
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

- (void)encodeWithBSXPCCoder:(id)a3
{
  v24 = a3;
  v4 = [(SHSheetUIServiceClientContext *)self sessionIdentifier];
  [v24 encodeObject:v4 forKey:@"sessionIdentifier"];

  v5 = [(SHSheetUIServiceClientContext *)self activityConfigurations];
  [v24 encodeCollection:v5 forKey:@"activityConfigurations"];

  [v24 encodeBool:-[SHSheetUIServiceClientContext isSharingExpanded](self forKey:{"isSharingExpanded"), @"isSharingExpanded"}];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SHSheetUIServiceClientContext sharingStyle](self, "sharingStyle")}];
  [v24 encodeObject:v6 forKey:@"sharingStyle"];

  [v24 encodeBool:-[SHSheetUIServiceClientContext configureForCloudSharing](self forKey:{"configureForCloudSharing"), @"configureForCloudSharing"}];
  [v24 encodeBool:-[SHSheetUIServiceClientContext configureForPhotosEdit](self forKey:{"configureForPhotosEdit"), @"configureForPhotosEdit"}];
  [v24 encodeBool:-[SHSheetUIServiceClientContext hideHeaderView](self forKey:{"hideHeaderView"), @"hideHeaderView"}];
  [v24 encodeBool:-[SHSheetUIServiceClientContext hideNavigationBar](self forKey:{"hideNavigationBar"), @"hideNavigationBar"}];
  v7 = [(SHSheetUIServiceClientContext *)self topContentSectionText];
  [v24 encodeObject:v7 forKey:@"topContentSectionText"];

  v8 = [(SHSheetUIServiceClientContext *)self heroActionActivityTypes];
  [v24 encodeObject:v8 forKey:@"heroActionActivityTypes"];

  v9 = [(SHSheetUIServiceClientContext *)self excludedActivityTypes];
  [v24 encodeObject:v9 forKey:@"excludedActivityTypes"];

  v10 = [(SHSheetUIServiceClientContext *)self applicationActivityTypes];
  [v24 encodeObject:v10 forKey:@"applicationActivityTypes"];

  [v24 encodeBool:-[SHSheetUIServiceClientContext showHeroActionsHorizontally](self forKey:{"showHeroActionsHorizontally"), @"showHeroActionsHorizontally"}];
  v11 = [(SHSheetUIServiceClientContext *)self tintColor];
  [v24 encodeObject:v11 forKey:@"tintColor"];

  v12 = [(SHSheetUIServiceClientContext *)self serializedMetadataValues];
  [v24 encodeObject:v12 forKey:@"serializedMetadataValues"];

  [v24 encodeBool:-[SHSheetUIServiceClientContext isLoadingMetadata](self forKey:{"isLoadingMetadata"), @"isLoadingMetadata"}];
  v13 = [(SHSheetUIServiceClientContext *)self urlRequests];
  [v24 encodeObject:v13 forKey:@"urlRequests"];

  v14 = [(SHSheetUIServiceClientContext *)self urlSandboxExtensions];
  [v24 encodeObject:v14 forKey:@"urlSandboxExtensions"];

  [v24 encodeBool:-[SHSheetUIServiceClientContext showOptions](self forKey:{"showOptions"), @"showOptions"}];
  v15 = [(SHSheetUIServiceClientContext *)self customOptionsTitle];
  [v24 encodeObject:v15 forKey:@"customOptionsTitle"];

  [v24 encodeBool:-[SHSheetUIServiceClientContext showCustomHeaderButton](self forKey:{"showCustomHeaderButton"), @"showCustomHeaderButton"}];
  [v24 encodeBool:-[SHSheetUIServiceClientContext showHeaderSpecialization](self forKey:{"showHeaderSpecialization"), @"showHeaderSpecialization"}];
  v16 = [(SHSheetUIServiceClientContext *)self customHeaderButtonTitle];
  [v24 encodeObject:v16 forKey:@"customHeaderButtonTitle"];

  v17 = [(SHSheetUIServiceClientContext *)self customHeaderButtonColor];
  [v24 encodeObject:v17 forKey:@"customHeaderButtonColor"];

  [v24 encodeBool:-[SHSheetUIServiceClientContext isModeSwitchDisabled](self forKey:{"isModeSwitchDisabled"), @"isModeSwitchDisabled"}];
  [v24 encodeBool:-[SHSheetUIServiceClientContext supportsCollaboration](self forKey:{"supportsCollaboration"), @"supportsCollaboration"}];
  [v24 encodeBool:-[SHSheetUIServiceClientContext supportsSendCopy](self forKey:{"supportsSendCopy"), @"supportsSendCopy"}];
  [v24 encodeBool:-[SHSheetUIServiceClientContext isCollaborative](self forKey:{"isCollaborative"), @"isCollaborative"}];
  [v24 encodeBool:-[SHSheetUIServiceClientContext showCollaborationOptions](self forKey:{"showCollaborationOptions"), @"showCollaborationOptions"}];
  v18 = [(SHSheetUIServiceClientContext *)self collaborationModeTitle];
  [v24 encodeObject:v18 forKey:@"collaborationModeTitle"];

  v19 = [(SHSheetUIServiceClientContext *)self collaborationFooterViewModel];

  if (v19)
  {
    v20 = [(SHSheetUIServiceClientContext *)self collaborationFooterViewModel];
    [v24 encodeObject:v20 forKey:@"collaborationFooterViewModel"];
  }

  v21 = [(SHSheetUIServiceClientContext *)self processIdentity];
  [v24 encodeObject:v21 forKey:@"processIdentity"];

  [v24 encodeBool:-[SHSheetUIServiceClientContext wantsCustomScene](self forKey:{"wantsCustomScene"), @"wantsCustomScene"}];
  v22 = [(SHSheetUIServiceClientContext *)self customViewControllerVerticalInsetWrapper];
  [v24 encodeObject:v22 forKey:@"customViewControllerVerticalInsetWrapper"];

  v23 = [(SHSheetUIServiceClientContext *)self customViewControllerSectionHeightWrapper];
  [v24 encodeObject:v23 forKey:@"customViewControllerSectionHeightWrapper"];

  [(SHSheetUIServiceClientContext *)self hostPortraitWindowSize];
  [v24 encodeCGSize:@"hostPortraitWindowSize" forKey:?];
}

- (SHSheetUIServiceClientContext)initWithBSXPCCoder:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v71.receiver = self;
  v71.super_class = SHSheetUIServiceClientContext;
  v5 = [(SHSheetUIServiceClientContext *)&v71 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = objc_opt_class();
    v9 = [v4 decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"activityConfigurations"];
    activityConfigurations = v5->_activityConfigurations;
    v5->_activityConfigurations = v9;

    v11 = [SUIHostActivityProxy activitiesForConfigurations:v5->_activityConfigurations];
    v12 = [MEMORY[0x1E695DF90] dictionary];
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
          v18 = [v17 activityUUID];
          [v12 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v13 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v14);
    }

    v19 = [v12 copy];
    activitiesByUUID = v5->_activitiesByUUID;
    v5->_activitiesByUUID = v19;

    v5->_isSharingExpanded = [v4 decodeBoolForKey:@"isSharingExpanded"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingStyle"];
    v5->_sharingStyle = [v21 intValue];

    v5->_configureForCloudSharing = [v4 decodeBoolForKey:@"configureForCloudSharing"];
    v5->_configureForPhotosEdit = [v4 decodeBoolForKey:@"configureForPhotosEdit"];
    v5->_hideHeaderView = [v4 decodeBoolForKey:@"hideHeaderView"];
    v5->_hideNavigationBar = [v4 decodeBoolForKey:@"hideNavigationBar"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topContentSectionText"];
    topContentSectionText = v5->_topContentSectionText;
    v5->_topContentSectionText = v22;

    v24 = objc_opt_class();
    v25 = [v4 decodeCollectionOfClass:v24 containingClass:objc_opt_class() forKey:@"heroActionActivityTypes"];
    heroActionActivityTypes = v5->_heroActionActivityTypes;
    v5->_heroActionActivityTypes = v25;

    v27 = objc_opt_class();
    v28 = [v4 decodeCollectionOfClass:v27 containingClass:objc_opt_class() forKey:@"excludedActivityTypes"];
    excludedActivityTypes = v5->_excludedActivityTypes;
    v5->_excludedActivityTypes = v28;

    v30 = objc_opt_class();
    v31 = [v4 decodeCollectionOfClass:v30 containingClass:objc_opt_class() forKey:@"applicationActivityTypes"];
    applicationActivityTypes = v5->_applicationActivityTypes;
    v5->_applicationActivityTypes = v31;

    v5->_showHeroActionsHorizontally = [v4 decodeBoolForKey:@"showHeroActionsHorizontally"];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v33;

    v35 = objc_opt_class();
    v36 = [v4 decodeCollectionOfClass:v35 containingClass:objc_opt_class() forKey:@"serializedMetadataValues"];
    serializedMetadataValues = v5->_serializedMetadataValues;
    v5->_serializedMetadataValues = v36;

    v38 = [SHSheetUIServiceClientContext _deserializeMetadatas:v5->_serializedMetadataValues];
    metadataValues = v5->_metadataValues;
    v5->_metadataValues = v38;

    v5->_isLoadingMetadata = [v4 decodeBoolForKey:@"isLoadingMetadata"];
    v40 = objc_opt_class();
    v41 = [v4 decodeCollectionOfClass:v40 containingClass:objc_opt_class() forKey:@"urlRequests"];
    urlRequests = v5->_urlRequests;
    v5->_urlRequests = v41;

    v43 = objc_opt_class();
    v44 = [v4 decodeCollectionOfClass:v43 containingClass:objc_opt_class() forKey:@"urlSandboxExtensions"];
    urlSandboxExtensions = v5->_urlSandboxExtensions;
    v5->_urlSandboxExtensions = v44;

    v5->_showOptions = [v4 decodeBoolForKey:@"showOptions"];
    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customOptionsTitle"];
    customOptionsTitle = v5->_customOptionsTitle;
    v5->_customOptionsTitle = v46;

    v5->_showCustomHeaderButton = [v4 decodeBoolForKey:@"showCustomHeaderButton"];
    v5->_showHeaderSpecialization = [v4 decodeBoolForKey:@"showHeaderSpecialization"];
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customHeaderButtonTitle"];
    customHeaderButtonTitle = v5->_customHeaderButtonTitle;
    v5->_customHeaderButtonTitle = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customHeaderButtonColor"];
    customHeaderButtonColor = v5->_customHeaderButtonColor;
    v5->_customHeaderButtonColor = v50;

    v5->_isModeSwitchDisabled = [v4 decodeBoolForKey:@"isModeSwitchDisabled"];
    v5->_supportsCollaboration = [v4 decodeBoolForKey:@"supportsCollaboration"];
    v5->_supportsSendCopy = [v4 decodeBoolForKey:@"supportsSendCopy"];
    v5->_isCollaborative = [v4 decodeBoolForKey:@"isCollaborative"];
    v5->_showCollaborationOptions = [v4 decodeBoolForKey:@"showCollaborationOptions"];
    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collaborationModeTitle"];
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
      v56 = [v4 decodeObjectOfClass:v54 forKey:@"collaborationFooterViewModel"];
      collaborationFooterViewModel = v5->_collaborationFooterViewModel;
      v5->_collaborationFooterViewModel = v56;
    }

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processIdentity"];
    processIdentity = v5->_processIdentity;
    v5->_processIdentity = v58;

    v5->_wantsCustomScene = [v4 decodeBoolForKey:@"wantsCustomScene"];
    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customViewControllerVerticalInsetWrapper"];
    customViewControllerVerticalInsetWrapper = v5->_customViewControllerVerticalInsetWrapper;
    v5->_customViewControllerVerticalInsetWrapper = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customViewControllerSectionHeightWrapper"];
    customViewControllerSectionHeightWrapper = v5->_customViewControllerSectionHeightWrapper;
    v5->_customViewControllerSectionHeightWrapper = v62;

    [v4 decodeCGSizeForKey:@"hostPortraitWindowSize"];
    v5->_hostPortraitWindowSize.width = v64;
    v5->_hostPortraitWindowSize.height = v65;
  }

  return v5;
}

+ (id)_deserializeMetadatas:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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