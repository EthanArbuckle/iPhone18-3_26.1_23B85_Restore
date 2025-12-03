@interface VOSDefaultSoundPack
- (NSDictionary)eventToSoundFilenameMapping;
- (id)soundAssetURLForOutputEvent:(id)event;
@end

@implementation VOSDefaultSoundPack

- (NSDictionary)eventToSoundFilenameMapping
{
  if (eventToSoundFilenameMapping_onceToken != -1)
  {
    [VOSDefaultSoundPack eventToSoundFilenameMapping];
  }

  v3 = eventToSoundFilenameMapping__Map;

  return v3;
}

void __50__VOSDefaultSoundPack_eventToSoundFilenameMapping__block_invoke()
{
  v142[69] = *MEMORY[0x277D85DE8];
  v140 = +[VOSOutputEvent DidActivateElement];
  v139 = [v140 rawValue];
  v141[0] = v139;
  v142[0] = @"Select.aiff";
  v138 = +[VOSOutputEvent NoResultsFound];
  v137 = [v138 rawValue];
  v141[1] = v137;
  v142[1] = @"NotFound.aiff";
  v136 = +[VOSOutputEvent BoundaryEncountered];
  v135 = [v136 rawValue];
  v141[2] = v135;
  v142[2] = @"WrapBoundary.aiff";
  v134 = +[VOSOutputEvent DidFocusOnElement];
  v133 = [v134 rawValue];
  v141[3] = v133;
  v142[3] = @"ElementBorder.aiff";
  v132 = +[VOSOutputEvent DidFocusOnScreenRecognitionElement];
  v131 = [v132 rawValue];
  v141[4] = v131;
  v142[4] = @"ElementBorderScreenRecognition.aiff";
  v130 = +[VOSOutputEvent NoItemExists];
  v129 = [v130 rawValue];
  v141[5] = v129;
  v142[5] = @"EmptySpace.aiff";
  v128 = +[VOSOutputEvent IsInteractable];
  v127 = [v128 rawValue];
  v141[6] = v127;
  v142[6] = @"Interactable.aiff";
  v126 = +[VOSOutputEvent InteractIn];
  v125 = [v126 rawValue];
  v141[7] = v125;
  v142[7] = @"InteractIn.aiff";
  v124 = +[VOSOutputEvent InteractOut];
  v123 = [v124 rawValue];
  v141[8] = v123;
  v142[8] = @"InteractOut.aiff";
  v122 = +[VOSOutputEvent DidReorderItem];
  v121 = [v122 rawValue];
  v141[9] = v121;
  v142[9] = @"Reorder.aiff";
  v120 = +[VOSOutputEvent UnknownCommand];
  v119 = [v120 rawValue];
  v141[10] = v119;
  v142[10] = @"UnsupportedCommandError.aiff";
  v118 = +[VOSOutputEvent DidWrapBackwards];
  v117 = [v118 rawValue];
  v141[11] = v117;
  v142[11] = @"WrapBack.aiff";
  v116 = +[VOSOutputEvent DidWrapForwards];
  v115 = [v116 rawValue];
  v141[12] = v115;
  v142[12] = @"WrapForward.aiff";
  v114 = +[VOSOutputEvent DidScrollByPage];
  v113 = [v114 rawValue];
  v141[13] = v113;
  v142[13] = @"ScrollPage.aiff";
  v112 = +[VOSOutputEvent DidBeginPassthrough];
  v111 = [v112 rawValue];
  v141[14] = v111;
  v142[14] = @"Drill.aiff";
  v110 = +[VOSOutputEvent DidSelectAutofill];
  v109 = [v110 rawValue];
  v141[15] = v109;
  v142[15] = @"Select.aiff";
  v108 = +[VOSOutputEvent DidChangeVolume];
  v107 = [v108 rawValue];
  v141[16] = v107;
  v142[16] = @"Volume.aiff";
  v106 = +[VOSOutputEvent DidSelectPreviousRotor];
  v105 = [v106 rawValue];
  v141[17] = v105;
  v142[17] = @"RotorLeft.aiff";
  v104 = +[VOSOutputEvent DidSelectNextRotor];
  v103 = [v104 rawValue];
  v141[18] = v103;
  v142[18] = @"RotorRight.aiff";
  v102 = +[VOSOutputEvent DidEnterTouchContainer];
  v101 = [v102 rawValue];
  v141[19] = v101;
  v142[19] = @"ContainerTouch.aiff";
  v100 = +[VOSOutputEvent DidEnterSecureText];
  v99 = [v100 rawValue];
  v141[20] = v99;
  v142[20] = @"SecureCharacter.aiff";
  v98 = +[VOSOutputEvent DidEnterTargetArea];
  v97 = [v98 rawValue];
  v141[21] = v97;
  v142[21] = @"BrailleDisplayConnected.aiff";
  v96 = +[VOSOutputEvent DidLeaveTargetArea];
  v95 = [v96 rawValue];
  v141[22] = v95;
  v142[22] = @"BrailleDisplayDisconnected.aiff";
  v94 = +[VOSOutputEvent DidSyncWithSystemFocus];
  v93 = [v94 rawValue];
  v141[23] = v93;
  v142[23] = @"Focus.aiff";
  v92 = +[VOSOutputEvent DidChangeTextSelectionDirection];
  v91 = [v92 rawValue];
  v141[24] = v91;
  v142[24] = @"SelectionDirectionChange.aiff";
  v90 = +[VOSOutputEvent DidRecognizeMLContent];
  v89 = [v90 rawValue];
  v141[25] = v89;
  v142[25] = @"DidRecognizeMLContent.aiff";
  v88 = +[VOSOutputEvent DidEnableQuickNav];
  v87 = [v88 rawValue];
  v141[26] = v87;
  v142[26] = @"TrackingOn.aiff";
  v86 = +[VOSOutputEvent DidDisableQuickNav];
  v85 = [v86 rawValue];
  v141[27] = v85;
  v142[27] = @"TrackingOff.aiff";
  v84 = +[VOSOutputEvent TVDidBeginInteractionWithRotor];
  v83 = [v84 rawValue];
  v141[28] = v83;
  v142[28] = @"TrackingOn.aiff";
  v82 = +[VOSOutputEvent TVDidEndInteractionWithRotor];
  v81 = [v82 rawValue];
  v141[29] = v81;
  v142[29] = @"TrackingOff.aiff";
  v80 = +[VOSOutputEvent BSIDidEnableTyping];
  v79 = [v80 rawValue];
  v141[30] = v79;
  v142[30] = @"BSIEnabledTyping.aiff";
  v78 = +[VOSOutputEvent BSIDidEnableCommand];
  v77 = [v78 rawValue];
  v141[31] = v77;
  v142[31] = @"BSIEnabledCommand.aiff";
  v76 = +[VOSOutputEvent BSIDidDisable];
  v75 = [v76 rawValue];
  v141[32] = v75;
  v142[32] = @"BSIDisabled.aiff";
  v74 = +[VOSOutputEvent BSIDidCalibrate];
  v73 = [v74 rawValue];
  v141[33] = v73;
  v142[33] = @"BSICalibration.aiff";
  v72 = +[VOSOutputEvent BSIDidCarriageReturn];
  v71 = [v72 rawValue];
  v141[34] = v71;
  v142[34] = @"BSICarriageReturn.aiff";
  v70 = +[VOSOutputEvent BSIDidType];
  v69 = [v70 rawValue];
  v141[35] = v69;
  v142[35] = @"BSITyping.aiff";
  v68 = +[VOSOutputEvent BSIDidDelete];
  v67 = [v68 rawValue];
  v141[36] = v67;
  v142[36] = @"BSIDeletion.aiff";
  v66 = +[VOSOutputEvent BSIDidEnterSpace];
  v65 = [v66 rawValue];
  v141[37] = v65;
  v142[37] = @"BSISpace.aiff";
  v64 = +[VOSOutputEvent AlertDidAppear];
  v63 = [v64 rawValue];
  v141[38] = v63;
  v142[38] = @"Alert.aiff";
  v62 = +[VOSOutputEvent NotificationDidAppear];
  v61 = [v62 rawValue];
  v141[39] = v61;
  v142[39] = @"Notification.aiff";
  v60 = +[VOSOutputEvent PopoverDidAppear];
  v59 = [v60 rawValue];
  v141[40] = v59;
  v142[40] = @"PopupAppeared.aiff";
  v58 = +[VOSOutputEvent ScreenDidChange];
  v57 = [v58 rawValue];
  v141[41] = v57;
  v142[41] = @"ScreenChange.aiff";
  v56 = +[VOSOutputEvent ItemIsLoading];
  v55 = [v56 rawValue];
  v141[42] = v55;
  v142[42] = @"WebPageLoadingInProgress.aiff";
  v54 = +[VOSOutputEvent ItemDidLoad];
  v53 = [v54 rawValue];
  v141[43] = v53;
  v142[43] = @"WebPageLoaded.aiff";
  v52 = +[VOSOutputEvent ScreenDidTurnOff];
  v51 = [v52 rawValue];
  v141[44] = v51;
  v142[44] = @"iOSScreenOff.aiff";
  v50 = +[VOSOutputEvent CollaborationOccurred];
  v49 = [v50 rawValue];
  v141[45] = v49;
  v142[45] = @"CollaborationOccurred.aiff";
  v48 = +[VOSOutputEvent InsertionPointDidMove];
  v47 = [v48 rawValue];
  v141[46] = v47;
  v142[46] = @"InsertionPoint.aiff";
  v46 = +[VOSOutputEvent AutofillDidAppear];
  v45 = [v46 rawValue];
  v141[47] = v45;
  v142[47] = @"BubbleAppear.aiff";
  v44 = +[VOSOutputEvent AutofillDidDismiss];
  v43 = [v44 rawValue];
  v141[48] = v43;
  v142[48] = @"BubbleDisappear.aiff";
  v42 = +[VOSOutputEvent FolderWillOpen];
  v41 = [v42 rawValue];
  v141[49] = v41;
  v142[49] = @"FolderOpening.aiff";
  v40 = +[VOSOutputEvent FolderDidOpen];
  v39 = [v40 rawValue];
  v141[50] = v39;
  v142[50] = @"FolderOpened.aiff";
  v38 = +[VOSOutputEvent FolderDidClose];
  v37 = [v38 rawValue];
  v141[51] = v37;
  v142[51] = @"FolderClosed.aiff";
  v36 = +[VOSOutputEvent KeyboardAppeared];
  v35 = [v36 rawValue];
  v141[52] = v35;
  v142[52] = @"KeyboardUp.aiff";
  v34 = +[VOSOutputEvent KeyboardDisappeared];
  v33 = [v34 rawValue];
  v141[53] = v33;
  v142[53] = @"KeyboardDown.aiff";
  v32 = +[VOSOutputEvent BrailleDisplayConnected];
  v31 = [v32 rawValue];
  v141[54] = v31;
  v142[54] = @"BrailleDisplayConnected.aiff";
  v30 = +[VOSOutputEvent BrailleDisplayDisconnected];
  v29 = [v30 rawValue];
  v141[55] = v29;
  v142[55] = @"BrailleDisplayDisconnected.aiff";
  v28 = +[VOSOutputEvent ItemMemorizationSucceeded];
  v27 = [v28 rawValue];
  v141[56] = v27;
  v142[56] = @"BrailleChordMemorize.aiff";
  v26 = +[VOSOutputEvent ItemMemorizationFailed];
  v25 = [v26 rawValue];
  v141[57] = v25;
  v142[57] = @"BrailleChordFailed.aiff";
  v24 = +[VOSOutputEvent ItemMemorizationInProgress];
  v23 = [v24 rawValue];
  v141[58] = v23;
  v142[58] = @"BrailleChordClockTick.aiff";
  v22 = +[VOSOutputEvent DockDidAppear];
  v21 = [v22 rawValue];
  v141[59] = v21;
  v142[59] = @"DrawerOpening.aiff";
  v20 = +[VOSOutputEvent DockDidDisappear];
  v19 = [v20 rawValue];
  v141[60] = v19;
  v142[60] = @"DrawerClosing.aiff";
  v18 = +[VOSOutputEvent ReachabilityDidBegin];
  v17 = [v18 rawValue];
  v141[61] = v17;
  v142[61] = @"ReachabilityEnabled.aiff";
  v16 = +[VOSOutputEvent ReachabilityDidEnd];
  v15 = [v16 rawValue];
  v141[62] = v15;
  v142[62] = @"ReachabilityDisabled.aiff";
  v14 = +[VOSOutputEvent TouchIDAuthenticated];
  v13 = [v14 rawValue];
  v141[63] = v13;
  v142[63] = @"LockScreenTouchIDAuthenticated.aiff";
  v0 = +[VOSOutputEvent TouchIDFailed];
  v1 = [v0 rawValue];
  v141[64] = v1;
  v142[64] = @"LockScreenFailedToAuthenticate.aiff";
  v2 = +[VOSOutputEvent SensitiveContent];
  v3 = [v2 rawValue];
  v141[65] = v3;
  v142[65] = @"SensitiveContent.aiff";
  v4 = +[VOSOutputEvent TutorialSuccess];
  v5 = [v4 rawValue];
  v141[66] = v5;
  v142[66] = @"TutorialSuccess.aiff";
  v6 = +[VOSOutputEvent TutorialMagicTapStart];
  v7 = [v6 rawValue];
  v141[67] = v7;
  v142[67] = @"TutorialMagicTapStart.aiff";
  v8 = +[VOSOutputEvent TutorialMagicTapStop];
  v9 = [v8 rawValue];
  v141[68] = v9;
  v142[68] = @"TutorialMagicTapStop.aiff";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:69];
  v11 = eventToSoundFilenameMapping__Map;
  eventToSoundFilenameMapping__Map = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)soundAssetURLForOutputEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy supportsSoundEffect])
  {
    eventToSoundFilenameMapping = [(VOSDefaultSoundPack *)self eventToSoundFilenameMapping];
    rawValue = [eventCopy rawValue];
    v7 = [eventToSoundFilenameMapping objectForKeyedSubscript:rawValue];

    pathExtension = [v7 pathExtension];
    stringByDeletingPathExtension = [v7 stringByDeletingPathExtension];

    v10 = VOSVoiceOverBundle();
    v11 = [v10 URLForResource:stringByDeletingPathExtension withExtension:pathExtension subdirectory:@"Sounds"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end