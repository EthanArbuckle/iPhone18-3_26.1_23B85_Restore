@interface VOSDefaultHapticPack
- (NSDictionary)eventToHapticFilenameMapping;
- (id)hapticAssetURLForOutputEvent:(id)event;
@end

@implementation VOSDefaultHapticPack

- (NSDictionary)eventToHapticFilenameMapping
{
  if (eventToHapticFilenameMapping_onceToken != -1)
  {
    [VOSDefaultHapticPack eventToHapticFilenameMapping];
  }

  v3 = eventToHapticFilenameMapping__Map;

  return v3;
}

void __52__VOSDefaultHapticPack_eventToHapticFilenameMapping__block_invoke()
{
  v112[54] = *MEMORY[0x277D85DE8];
  v110 = +[VOSOutputEvent DidActivateElement];
  v109 = [v110 rawValue];
  v111[0] = v109;
  v112[0] = @"DidActivateElement.ahap";
  v108 = +[VOSOutputEvent NoResultsFound];
  v107 = [v108 rawValue];
  v111[1] = v107;
  v112[1] = @"NoResultsFound.ahap";
  v106 = +[VOSOutputEvent BoundaryEncountered];
  v105 = [v106 rawValue];
  v111[2] = v105;
  v112[2] = @"BoundaryEncountered.ahap";
  v104 = +[VOSOutputEvent DidFocusOnElement];
  v103 = [v104 rawValue];
  v111[3] = v103;
  v112[3] = @"DidFocusOnElement.ahap";
  v102 = +[VOSOutputEvent DidFocusOnScreenRecognitionElement];
  v101 = [v102 rawValue];
  v111[4] = v101;
  v112[4] = @"DidFocusOnElement.ahap";
  v100 = +[VOSOutputEvent DidReorderItem];
  v99 = [v100 rawValue];
  v111[5] = v99;
  v112[5] = @"DidReorderItem.ahap";
  v98 = +[VOSOutputEvent UnknownCommand];
  v97 = [v98 rawValue];
  v111[6] = v97;
  v112[6] = @"UnknownCommand.ahap";
  v96 = +[VOSOutputEvent DidWrapBackwards];
  v95 = [v96 rawValue];
  v111[7] = v95;
  v112[7] = @"DidWrapBackwards.ahap";
  v94 = +[VOSOutputEvent DidWrapForwards];
  v93 = [v94 rawValue];
  v111[8] = v93;
  v112[8] = @"DidWrapForwards.ahap";
  v92 = +[VOSOutputEvent DidScrollByPage];
  v91 = [v92 rawValue];
  v111[9] = v91;
  v112[9] = @"DidScrollByPage.ahap";
  v90 = +[VOSOutputEvent DidBeginPassthrough];
  v89 = [v90 rawValue];
  v111[10] = v89;
  v112[10] = @"DidBeginPassthrough.ahap";
  v88 = +[VOSOutputEvent DidSelectAutofill];
  v87 = [v88 rawValue];
  v111[11] = v87;
  v112[11] = @"DidSelectAutofill.ahap";
  v86 = +[VOSOutputEvent DidSelectPreviousRotor];
  v85 = [v86 rawValue];
  v111[12] = v85;
  v112[12] = @"DidSelectPreviousRotor.ahap";
  v84 = +[VOSOutputEvent DidSelectNextRotor];
  v83 = [v84 rawValue];
  v111[13] = v83;
  v112[13] = @"DidSelectNextRotor.ahap";
  v82 = +[VOSOutputEvent PreviousRotorProgress];
  v81 = [v82 rawValue];
  v111[14] = v81;
  v112[14] = @"PreviousRotorProgress.ahap";
  v80 = +[VOSOutputEvent NextRotorProgress];
  v79 = [v80 rawValue];
  v111[15] = v79;
  v112[15] = @"NextRotorProgress.ahap";
  v78 = +[VOSOutputEvent DidEnterTouchContainer];
  v77 = [v78 rawValue];
  v111[16] = v77;
  v112[16] = @"DidEnterTouchContainer.ahap";
  v76 = +[VOSOutputEvent DidEnterSecureText];
  v75 = [v76 rawValue];
  v111[17] = v75;
  v112[17] = @"DidEnterSecureText.ahap";
  v74 = +[VOSOutputEvent DidEnterTargetArea];
  v73 = [v74 rawValue];
  v111[18] = v73;
  v112[18] = @"DidEnterTargetArea.ahap";
  v72 = +[VOSOutputEvent DidLeaveTargetArea];
  v71 = [v72 rawValue];
  v111[19] = v71;
  v112[19] = @"DidLeaveTargetArea.ahap";
  v70 = +[VOSOutputEvent DidSyncWithSystemFocus];
  v69 = [v70 rawValue];
  v111[20] = v69;
  v112[20] = @"DidSyncWithSystemFocus.ahap";
  v68 = +[VOSOutputEvent DidChangeTextSelectionDirection];
  v67 = [v68 rawValue];
  v111[21] = v67;
  v112[21] = @"DidChangeTextSelectionDirection.ahap";
  v66 = +[VOSOutputEvent NoItemExists];
  v65 = [v66 rawValue];
  v111[22] = v65;
  v112[22] = @"NoItemExists.ahap";
  v64 = +[VOSOutputEvent IsInteractable];
  v63 = [v64 rawValue];
  v111[23] = v63;
  v112[23] = @"IsInteractable.ahap";
  v62 = +[VOSOutputEvent AlertDidAppear];
  v61 = [v62 rawValue];
  v111[24] = v61;
  v112[24] = @"AlertDidAppear.ahap";
  v60 = +[VOSOutputEvent NotificationDidAppear];
  v59 = [v60 rawValue];
  v111[25] = v59;
  v112[25] = @"NotificationDidAppear.ahap";
  v58 = +[VOSOutputEvent PopoverDidAppear];
  v57 = [v58 rawValue];
  v111[26] = v57;
  v112[26] = @"PopoverDidAppear.ahap";
  v56 = +[VOSOutputEvent ScreenDidChange];
  v55 = [v56 rawValue];
  v111[27] = v55;
  v112[27] = @"ScreenDidChange.ahap";
  v54 = +[VOSOutputEvent ItemIsLoading];
  v53 = [v54 rawValue];
  v111[28] = v53;
  v112[28] = @"ItemIsLoading.ahap";
  v52 = +[VOSOutputEvent ItemDidLoad];
  v51 = [v52 rawValue];
  v111[29] = v51;
  v112[29] = @"ItemDidLoad.ahap";
  v50 = +[VOSOutputEvent ScreenDidTurnOff];
  v49 = [v50 rawValue];
  v111[30] = v49;
  v112[30] = @"ScreenDidTurnOff.ahap";
  v48 = +[VOSOutputEvent CollaborationOccurred];
  v47 = [v48 rawValue];
  v111[31] = v47;
  v112[31] = @"CollaborationOccurred.ahap";
  v46 = +[VOSOutputEvent InsertionPointDidMove];
  v45 = [v46 rawValue];
  v111[32] = v45;
  v112[32] = @"InsertionPointDidMove.ahap";
  v44 = +[VOSOutputEvent AutofillDidAppear];
  v43 = [v44 rawValue];
  v111[33] = v43;
  v112[33] = @"AutofillDidAppear.ahap";
  v42 = +[VOSOutputEvent AutofillDidDismiss];
  v41 = [v42 rawValue];
  v111[34] = v41;
  v112[34] = @"AutofillDidDismiss.ahap";
  v40 = +[VOSOutputEvent FolderWillOpen];
  v39 = [v40 rawValue];
  v111[35] = v39;
  v112[35] = @"FolderWillOpen.ahap";
  v38 = +[VOSOutputEvent FolderDidOpen];
  v37 = [v38 rawValue];
  v111[36] = v37;
  v112[36] = @"FolderDidOpen.ahap";
  v36 = +[VOSOutputEvent FolderDidClose];
  v35 = [v36 rawValue];
  v111[37] = v35;
  v112[37] = @"FolderDidClose.ahap";
  v34 = +[VOSOutputEvent KeyboardAppeared];
  v33 = [v34 rawValue];
  v111[38] = v33;
  v112[38] = @"KeyboardAppeared.ahap";
  v32 = +[VOSOutputEvent KeyboardDisappeared];
  v31 = [v32 rawValue];
  v111[39] = v31;
  v112[39] = @"KeyboardDisappeared.ahap";
  v30 = +[VOSOutputEvent BrailleDisplayConnected];
  v29 = [v30 rawValue];
  v111[40] = v29;
  v112[40] = @"BrailleDisplayConnected.ahap";
  v28 = +[VOSOutputEvent BrailleDisplayDisconnected];
  v27 = [v28 rawValue];
  v111[41] = v27;
  v112[41] = @"BrailleDisplayDisconnected.ahap";
  v26 = +[VOSOutputEvent ItemMemorizationSucceeded];
  v25 = [v26 rawValue];
  v111[42] = v25;
  v112[42] = @"ItemMemorizationSucceeded.ahap";
  v24 = +[VOSOutputEvent ItemMemorizationFailed];
  v23 = [v24 rawValue];
  v111[43] = v23;
  v112[43] = @"ItemMemorizationFailed.ahap";
  v22 = +[VOSOutputEvent ItemMemorizationInProgress];
  v21 = [v22 rawValue];
  v111[44] = v21;
  v112[44] = @"ItemMemorizationInProgress.ahap";
  v20 = +[VOSOutputEvent DockDidAppear];
  v19 = [v20 rawValue];
  v111[45] = v19;
  v112[45] = @"DockDidAppear.ahap";
  v18 = +[VOSOutputEvent DockDidDisappear];
  v17 = [v18 rawValue];
  v111[46] = v17;
  v112[46] = @"DockDidDisappear.ahap";
  v16 = +[VOSOutputEvent ReachabilityDidBegin];
  v15 = [v16 rawValue];
  v111[47] = v15;
  v112[47] = @"ReachabilityDidBegin.ahap";
  v14 = +[VOSOutputEvent ReachabilityDidEnd];
  v13 = [v14 rawValue];
  v111[48] = v13;
  v112[48] = @"ReachabilityDidEnd.ahap";
  v0 = +[VOSOutputEvent TouchIDAuthenticated];
  v1 = [v0 rawValue];
  v111[49] = v1;
  v112[49] = @"TouchIDAuthenticated.ahap";
  v2 = +[VOSOutputEvent TouchIDFailed];
  v3 = [v2 rawValue];
  v111[50] = v3;
  v112[50] = @"TouchIDFailed.ahap";
  v4 = +[VOSOutputEvent Startup];
  v5 = [v4 rawValue];
  v111[51] = v5;
  v112[51] = @"Startup.ahap";
  v6 = +[VOSOutputEvent BSIDidEnterChord];
  v7 = [v6 rawValue];
  v111[52] = v7;
  v112[52] = @"DidFocusOnElement.ahap";
  v8 = +[VOSOutputEvent BrailleDisplayReconnectionTriggered];
  v9 = [v8 rawValue];
  v111[53] = v9;
  v112[53] = @"BrailleDisplayReconnectionTriggered.ahap";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:54];
  v11 = eventToHapticFilenameMapping__Map;
  eventToHapticFilenameMapping__Map = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)hapticAssetURLForOutputEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy supportsHaptic])
  {
    eventToHapticFilenameMapping = [(VOSDefaultHapticPack *)self eventToHapticFilenameMapping];
    rawValue = [eventCopy rawValue];
    v7 = [eventToHapticFilenameMapping objectForKeyedSubscript:rawValue];

    pathExtension = [v7 pathExtension];
    stringByDeletingPathExtension = [v7 stringByDeletingPathExtension];

    v10 = VOSVoiceOverBundle();
    v11 = [v10 URLForResource:stringByDeletingPathExtension withExtension:pathExtension subdirectory:@"Haptics"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end