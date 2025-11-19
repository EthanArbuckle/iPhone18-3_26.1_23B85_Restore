@interface PXSharingSettings
+ (PXSharingSettings)sharedInstance;
+ (id)settingsControllerModule;
- (id)debugDescription;
- (void)defaultValueDidChangeForKey:(id)a3;
- (void)setDefaultValues;
@end

@implementation PXSharingSettings

- (void)setDefaultValues
{
  [(PXSharingSettings *)self setShowConfidentialityWarnings:1];
  [(PXSharingSettings *)self setConfidentialityWarningsVersion:7];
  [(PXSharingSettings *)self setOnlyRegisterSingleItemProviderRepresentation:0];
  [(PXSharingSettings *)self setDisableMailDrop:0];
  [(PXSharingSettings *)self setMaxMessagesAssetLimit:20];
  [(PXSharingSettings *)self setMaxMailPhotoLimit:5];
  [(PXSharingSettings *)self setShowInternalGIFExport:0];
  [(PXSharingSettings *)self setAllowCopyingVideos:0];
  [(PXSharingSettings *)self setShowFileRadarButtonOnInternalInstalls:1];
  [(PXSharingSettings *)self setSimulatedErrorType:0];
  [(PXSharingSettings *)self setEnableOneUpAnimation:1];
  [(PXSharingSettings *)self setAllowFallbacksWhilePreparing:0];
  [(PXSharingSettings *)self setLocationBakingComparisonStrategy:0];
  [(PXSharingSettings *)self setDisableMetadataCorrections:0];
  [(PXSharingSettings *)self setForceDateTimeMetadataBaking:0];
  [(PXSharingSettings *)self setForceLocationMetadataBaking:0];
  [(PXSharingSettings *)self setForceCaptionMetadataBaking:0];
  [(PXSharingSettings *)self setForceAccessibilityDescriptionMetadataBaking:0];
  [(PXSharingSettings *)self setSendAssetURLsToMessages:0];
  [(PXSharingSettings *)self setSimulateError:0];
  [(PXSharingSettings *)self setSimulateDownloadFailure:0];
  [(PXSharingSettings *)self setSimulateMaxFilesizeLimitForGIFsInSharedAlbumsError:0];
  [(PXSharingSettings *)self setSimulateCPLNotReadyError:0];
  [(PXSharingSettings *)self setSimulateLowDiskSpaceError:0];
  [(PXSharingSettings *)self setSimulateUserCloudNotAuthenticated:0];
  [(PXSharingSettings *)self setSimulateSyndicatedResourceUnavailable:0];
  [(PXSharingSettings *)self setSimulateMismatchedExportCounts:0];
  [(PXSharingSettings *)self setShowSingleVideoDurationInShareSheetHeader:1];
  [(PXSharingSettings *)self setSharingHeaderLocationDisplayStyle:0];
  [(PXSharingSettings *)self setProvideGenericTypeIdentifiersForNilActivityTypes:1];
  [(PXSharingSettings *)self setShowUnmodifiedOriginalsExportSwitch:0];
  [(PXSharingSettings *)self setShowGlobalLivenessExclusionSwitch:0];
  [(PXSharingSettings *)self setShowGlobalLocationExclusionSwitch:1];
  [(PXSharingSettings *)self setExcludeLivenessByDefaultWhenSharing:0];
  [(PXSharingSettings *)self setExcludeLocationByDefaultWhenSharing:0];
  [(PXSharingSettings *)self setShowSendAsAssetBundlesForCMM:1];
  [(PXSharingSettings *)self setShowSendAsAssetBundlesForIndividualItems:1];
  [(PXSharingSettings *)self setSendAsAssetBundlesByDefaultWhenSharing:0];
  [(PXSharingSettings *)self setSavePhotosBundlesToFilesWithoutExtractingMedia:0];
  [(PXSharingSettings *)self setShouldUpdateFileCreationDatesForUnmodifiedOriginalExports:1];

  [(PXSharingSettings *)self setShouldUpdateFileCreationDatesForRegularExports:1];
}

+ (id)settingsControllerModule
{
  v183[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v4 = NSStringFromSelector(sel_showConfidentialityWarnings);
  v5 = [v3 rowWithTitle:@"Show Confidentiality Warnings" valueKeyPath:v4];
  v183[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:1];
  v173 = [v2 sectionWithRows:v6 title:@"Warnings"];

  v171 = MEMORY[0x1E69C6638];
  v7 = MEMORY[0x1E69C66A8];
  v169 = NSStringFromSelector(sel_onlyRegisterSingleItemProviderRepresentation);
  v166 = [v7 rowWithTitle:@"Single NSItemProvider Representation" valueKeyPath:v169];
  v182[0] = v166;
  v8 = MEMORY[0x1E69C66A8];
  v162 = NSStringFromSelector(sel_disableMailDrop);
  v158 = [v8 rowWithTitle:@"Disable Mail Drop" valueKeyPath:v162];
  v182[1] = v158;
  v9 = MEMORY[0x1E69C6680];
  v153 = NSStringFromSelector(sel_maxMessagesAssetLimit);
  v148 = [v9 rowWithTitle:@"Messages Asset Limit" valueKeyPath:v153];
  v143 = [v148 minValue:0.0 maxValue:50.0];
  v139 = [v143 px_increment:1.0];
  v182[2] = v139;
  v10 = MEMORY[0x1E69C6680];
  v135 = NSStringFromSelector(sel_maxMailPhotoLimit);
  v11 = [v10 rowWithTitle:@"Mail Image Limit (if no MailDrop)" valueKeyPath:v135];
  v12 = [v11 minValue:0.0 maxValue:50.0];
  v13 = [v12 px_increment:1.0];
  v182[3] = v13;
  v14 = MEMORY[0x1E69C66A8];
  v15 = NSStringFromSelector(sel_showInternalGIFExport);
  v16 = [v14 rowWithTitle:@"Show Autoloop -> GIF" valueKeyPath:v15];
  v182[4] = v16;
  v17 = MEMORY[0x1E69C66A8];
  v18 = NSStringFromSelector(sel_enableOneUpAnimation);
  v19 = [v17 rowWithTitle:@"Enable 1up animation" valueKeyPath:v18];
  v182[5] = v19;
  v20 = MEMORY[0x1E69C66A8];
  v21 = NSStringFromSelector(sel_allowCopyingVideos);
  v22 = [v20 rowWithTitle:@"Allow Copying Videos" valueKeyPath:v21];
  v182[6] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:7];
  v172 = [v171 sectionWithRows:v23 title:@"Share Sheet"];

  v24 = MEMORY[0x1E69C6638];
  v25 = MEMORY[0x1E69C66A8];
  v26 = NSStringFromSelector(sel_showSingleVideoDurationInShareSheetHeader);
  v27 = [v25 rowWithTitle:@"Show Duration For Single Video" valueKeyPath:v26];
  v181[0] = v27;
  v28 = MEMORY[0x1E69C65F8];
  v29 = NSStringFromSelector(sel_sharingHeaderLocationDisplayStyle);
  v30 = [v28 rowWithTitle:@"Location Display Style" valueKeyPath:v29];
  v31 = [v30 possibleValues:&unk_1F190F988 titles:&unk_1F190F9A0];
  v181[1] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v181 count:2];
  v170 = [v24 sectionWithRows:v32 title:@"Share Sheet Header Options"];

  v167 = MEMORY[0x1E69C6638];
  v33 = MEMORY[0x1E69C66A8];
  v163 = NSStringFromSelector(sel_provideGenericTypeIdentifiersForNilActivityTypes);
  v159 = [v33 rowWithTitle:@"Fast UTType for nil activity types" valueKeyPath:v163];
  v180[0] = v159;
  v34 = MEMORY[0x1E69C66A8];
  v154 = NSStringFromSelector(sel_showUnmodifiedOriginalsExportSwitch);
  v149 = [v34 rowWithTitle:@"Unmodified Export Switch" valueKeyPath:v154];
  v180[1] = v149;
  v35 = MEMORY[0x1E69C66A8];
  v144 = NSStringFromSelector(sel_showGlobalLivenessExclusionSwitch);
  v140 = [v35 rowWithTitle:@"Show Liveness Switch" valueKeyPath:v144];
  v180[2] = v140;
  v36 = MEMORY[0x1E69C66A8];
  v136 = NSStringFromSelector(sel_showGlobalLocationExclusionSwitch);
  v132 = [v36 rowWithTitle:@"Show Location Switch" valueKeyPath:v136];
  v180[3] = v132;
  v37 = MEMORY[0x1E69C66A8];
  v129 = NSStringFromSelector(sel_excludeLivenessByDefaultWhenSharing);
  v127 = [v37 rowWithTitle:@"Exclude Liveness" valueKeyPath:v129];
  v180[4] = v127;
  v38 = MEMORY[0x1E69C66A8];
  v125 = NSStringFromSelector(sel_excludeLocationByDefaultWhenSharing);
  v39 = [v38 rowWithTitle:@"Exclude Location" valueKeyPath:v125];
  v180[5] = v39;
  v40 = MEMORY[0x1E69C66A8];
  v41 = NSStringFromSelector(sel_showSendAsAssetBundlesForCMM);
  v42 = [v40 rowWithTitle:@"Show All Photos Data option for CMM" valueKeyPath:v41];
  v180[6] = v42;
  v43 = MEMORY[0x1E69C66A8];
  v44 = NSStringFromSelector(sel_showSendAsAssetBundlesForIndividualItems);
  v45 = [v43 rowWithTitle:@"Show All Photos Data option for Individual Items" valueKeyPath:v44];
  v180[7] = v45;
  v46 = MEMORY[0x1E69C66A8];
  v47 = NSStringFromSelector(sel_sendAsAssetBundlesByDefaultWhenSharing);
  v48 = [v46 rowWithTitle:@"Send All Photos Data" valueKeyPath:v47];
  v180[8] = v48;
  v49 = MEMORY[0x1E69C66A8];
  v50 = NSStringFromSelector(sel_savePhotosBundlesToFilesWithoutExtractingMedia);
  v51 = [v49 rowWithTitle:@"Allow All Photos Data for Save To Files" valueKeyPath:v50];
  v180[9] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:10];
  v168 = [v167 sectionWithRows:v52 title:@"Metadata Preferences (Share Sheet Secondary Actions)"];

  v164 = MEMORY[0x1E69C6638];
  v53 = MEMORY[0x1E69C66A8];
  v160 = NSStringFromSelector(sel_allowFallbacksWhilePreparing);
  v155 = [v53 rowWithTitle:@"Allow fallbacks during prepare" valueKeyPath:v160];
  v179[0] = v155;
  v54 = MEMORY[0x1E69C65F8];
  v150 = NSStringFromSelector(sel_locationBakingComparisonStrategy);
  v145 = [v54 rowWithTitle:@"Location Baking Comparison" valueKeyPath:v150];
  v141 = [v145 possibleValues:&unk_1F190F9B8 titles:&unk_1F190F9D0];
  v179[1] = v141;
  v55 = MEMORY[0x1E69C66A8];
  v137 = NSStringFromSelector(sel_disableMetadataCorrections);
  v133 = [v55 rowWithTitle:@"Disable Metadata Corrections" valueKeyPath:v137];
  v179[2] = v133;
  v56 = MEMORY[0x1E69C66A8];
  v130 = NSStringFromSelector(sel_forceDateTimeMetadataBaking);
  v57 = [v56 rowWithTitle:@"Always Bake Creation Date" valueKeyPath:v130];
  v179[3] = v57;
  v58 = MEMORY[0x1E69C66A8];
  v59 = NSStringFromSelector(sel_forceLocationMetadataBaking);
  v60 = [v58 rowWithTitle:@"Always Bake Location" valueKeyPath:v59];
  v179[4] = v60;
  v61 = MEMORY[0x1E69C66A8];
  v62 = NSStringFromSelector(sel_forceCaptionMetadataBaking);
  v63 = [v61 rowWithTitle:@"Always Bake Caption" valueKeyPath:v62];
  v179[5] = v63;
  v64 = MEMORY[0x1E69C66A8];
  v65 = NSStringFromSelector(sel_forceAccessibilityDescriptionMetadataBaking);
  v66 = [v64 rowWithTitle:@"Always Bake AX Description" valueKeyPath:v65];
  v179[6] = v66;
  v67 = MEMORY[0x1E69C66A8];
  v68 = NSStringFromSelector(sel_sendAssetURLsToMessages);
  v69 = [v67 rowWithTitle:@"Send Asset URLs to Messages" valueKeyPath:v68];
  v179[7] = v69;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:8];
  v165 = [v164 sectionWithRows:v70 title:@"Export Pipeline"];

  v71 = [MEMORY[0x1E696AE18] predicateWithFormat:@"simulateError != 0"];
  v156 = MEMORY[0x1E69C6638];
  v72 = MEMORY[0x1E69C66A8];
  v151 = NSStringFromSelector(sel_simulateError);
  v146 = [v72 rowWithTitle:@"Simulate Error" valueKeyPath:v151];
  v178[0] = v146;
  v73 = MEMORY[0x1E69C66A8];
  v142 = NSStringFromSelector(sel_simulateDownloadFailure);
  v138 = [v73 rowWithTitle:@"Download Failure" valueKeyPath:v142];
  v134 = [v138 condition:v71];
  v178[1] = v134;
  v74 = MEMORY[0x1E69C66A8];
  v131 = NSStringFromSelector(sel_simulateCPLNotReadyError);
  v128 = [v74 rowWithTitle:@"CPL Not Ready error" valueKeyPath:v131];
  v126 = [v128 condition:v71];
  v178[2] = v126;
  v75 = MEMORY[0x1E69C66A8];
  v124 = NSStringFromSelector(sel_simulateLowDiskSpaceError);
  v123 = [v75 rowWithTitle:@"Low Disk Space" valueKeyPath:v124];
  v122 = [v123 condition:v71];
  v178[3] = v122;
  v76 = MEMORY[0x1E69C66A8];
  v121 = NSStringFromSelector(sel_simulateUserCloudNotAuthenticated);
  v120 = [v76 rowWithTitle:@"iCloud Settings Require Review" valueKeyPath:v121];
  v119 = [v120 condition:v71];
  v178[4] = v119;
  v77 = MEMORY[0x1E69C66A8];
  v118 = NSStringFromSelector(sel_simulateMaxFilesizeLimitForGIFsInSharedAlbumsError);
  v78 = [v77 rowWithTitle:@"GIF -> Shared Albums file limit" valueKeyPath:v118];
  v161 = v71;
  v79 = [v78 condition:v71];
  v178[5] = v79;
  v80 = MEMORY[0x1E69C66A8];
  v81 = NSStringFromSelector(sel_simulateSyndicatedResourceUnavailable);
  v82 = [v80 rowWithTitle:@"Syndicated resource unavailable" valueKeyPath:v81];
  v83 = [v82 condition:v71];
  v178[6] = v83;
  v84 = MEMORY[0x1E69C66A8];
  v85 = NSStringFromSelector(sel_simulateMismatchedExportCounts);
  v86 = [v84 rowWithTitle:@"Mismatched count failure (uses fallback)" valueKeyPath:v85];
  v178[7] = v86;
  v87 = MEMORY[0x1E69C65E8];
  v88 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_12521];
  v89 = [v87 rowWithTitle:@"Show Preparing Dialog" action:v88];
  v178[8] = v89;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:9];
  v157 = [v156 sectionWithRows:v90 title:@"Simulation"];

  v91 = MEMORY[0x1E69C6638];
  v92 = MEMORY[0x1E69C65F8];
  v93 = NSStringFromSelector(sel_simulatedErrorType);
  v94 = [v92 rowWithTitle:@"Error Type Override" valueKeyPath:v93];
  v95 = [v94 possibleValues:&unk_1F190F9E8 titles:&unk_1F190FA00];
  v177[0] = v95;
  v96 = MEMORY[0x1E69C66A8];
  v97 = NSStringFromSelector(sel_showFileRadarButtonOnInternalInstalls);
  v98 = [v96 rowWithTitle:@"Show Radar Button (Internal OS)" valueKeyPath:v97];
  v177[1] = v98;
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:2];
  v152 = [v91 sectionWithRows:v99 title:@"Error Presentation UI"];

  v100 = MEMORY[0x1E69C6638];
  v101 = MEMORY[0x1E69C66A8];
  v102 = NSStringFromSelector(sel_shouldUpdateFileCreationDatesForUnmodifiedOriginalExports);
  v103 = [v101 rowWithTitle:@"Unmodified Originals" valueKeyPath:v102];
  v176[0] = v103;
  v104 = MEMORY[0x1E69C66A8];
  v105 = NSStringFromSelector(sel_shouldUpdateFileCreationDatesForRegularExports);
  v106 = [v104 rowWithTitle:@"Share Sheet" valueKeyPath:v105];
  v176[1] = v106;
  v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:2];
  v147 = [v100 sectionWithRows:v107 title:@"File Creation Date Set During Export"];

  v108 = MEMORY[0x1E69C6638];
  v109 = MEMORY[0x1E69C65E8];
  v110 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v111 = [v109 rowWithTitle:@"Restore Defaults" action:v110];
  v175 = v111;
  v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1];
  v113 = [v108 sectionWithRows:v112];

  v114 = MEMORY[0x1E69C6638];
  v174[0] = v173;
  v174[1] = v172;
  v174[2] = v170;
  v174[3] = v168;
  v174[4] = v165;
  v174[5] = v157;
  v174[6] = v152;
  v174[7] = v147;
  v174[8] = v113;
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:9];
  v116 = [v114 moduleWithTitle:@"Sharing Settings" contents:v115];

  return v116;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(PXSharingSettings *)self description];
  v5 = [v3 stringWithString:v4];

  v6 = [(PXSharingSettings *)self showConfidentialityWarnings];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = v7;
  [v5 appendFormat:@"\n\tShow Confidentiality Warnings: %@", v8];

  [v5 appendFormat:@"\n\tConfidentiality Warnings Version: %ld", -[PXSharingSettings confidentialityWarningsVersion](self, "confidentialityWarningsVersion")];

  return v5;
}

- (void)defaultValueDidChangeForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"confidentialityWarningsVersion"])
  {
    [(PXSharingSettings *)self setShowConfidentialityWarnings:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PXSharingSettings;
    [(PXSettings *)&v5 defaultValueDidChangeForKey:v4];
  }
}

+ (PXSharingSettings)sharedInstance
{
  if (sharedInstance_onceToken_129572 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_129572, &__block_literal_global_129573);
  }

  v3 = sharedInstance_sharedInstance_129574;

  return v3;
}

void __35__PXSharingSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 sharingSettings];
  v1 = sharedInstance_sharedInstance_129574;
  sharedInstance_sharedInstance_129574 = v0;
}

@end