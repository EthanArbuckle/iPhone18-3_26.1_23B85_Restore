@interface WTAnalyticsDelegate
- (WTAnalyticsDelegate)initWithSmartReplyBool:(BOOL)a3 smartReplyConfig:(id)a4 analyticsUUID:(id)a5 requestedTool:(int64_t)a6 isEditable:(BOOL)a7;
- (id)getWritingToolsFeatureDetailsForCompositionSessionType:(int64_t)a3;
- (id)getWritingToolsFeatureDetailsForRequestedTool:(int64_t)a3;
- (void)applicationDidBecomeActive;
- (void)applicationDidEnterBackground;
- (void)applicationWillTerminate;
- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4;
- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4;
- (void)endWritingTools;
- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6;
- (void)redo;
- (void)sendWritingToolsOnlySignal:(id)a3 withPayload:(id)a4;
- (void)sendWritingToolsOrSmartReplySignal:(id)a3 withPayload:(id)a4;
- (void)undo;
- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4;
- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4;
@end

@implementation WTAnalyticsDelegate

- (WTAnalyticsDelegate)initWithSmartReplyBool:(BOOL)a3 smartReplyConfig:(id)a4 analyticsUUID:(id)a5 requestedTool:(int64_t)a6 isEditable:(BOOL)a7
{
  v7 = a7;
  v10 = a3;
  v48[3] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v37.receiver = self;
  v37.super_class = WTAnalyticsDelegate;
  v14 = [(WTAnalyticsDelegate *)&v37 init];
  v15 = v14;
  if (v14)
  {
    [(WTAnalyticsDelegate *)v14 setFromSmartReply:v10];
    [(WTAnalyticsDelegate *)v15 setIsEditableText:v7];
    v16 = WTIATextAssistantLog();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D451D000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WTPanelBringup", &unk_1D455D3B5, buf, 2u);
    }

    v17 = WTIATextAssistantLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [WTAnalyticsDelegate initWithSmartReplyBool:v17 smartReplyConfig:? analyticsUUID:? requestedTool:? isEditable:?];
    }

    if (v12)
    {
      v18 = [v12 inputContextHistory];
      v19 = [v18 threadIdentifier];
      threadIdentifier = v15->_threadIdentifier;
      v15->_threadIdentifier = v19;
    }

    else
    {
      v18 = v15->_threadIdentifier;
      v15->_threadIdentifier = 0;
    }

    objc_storeStrong(&v15->_analyticsUUID, a5);
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v21 = getIASignalWritingToolsPanelAppearedSymbolLoc_ptr;
    v46 = getIASignalWritingToolsPanelAppearedSymbolLoc_ptr;
    if (!getIASignalWritingToolsPanelAppearedSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __getIASignalWritingToolsPanelAppearedSymbolLoc_block_invoke;
      v41 = &unk_1E8480B48;
      v42 = &v43;
      v22 = InputAnalyticsLibrary();
      v23 = dlsym(v22, "IASignalWritingToolsPanelAppeared");
      *(v42[1] + 24) = v23;
      getIASignalWritingToolsPanelAppearedSymbolLoc_ptr = *(v42[1] + 24);
      v21 = v44[3];
    }

    _Block_object_dispose(&v43, 8);
    if (!v21)
    {
      goto LABEL_17;
    }

    v24 = *v21;
    v25 = getIAPayloadKeyWritingToolsFeatureDetails();
    v47[0] = v25;
    v26 = [(WTAnalyticsDelegate *)v15 getWritingToolsFeatureDetailsForRequestedTool:a6];
    v48[0] = v26;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v27 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr;
    v46 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr;
    if (!getIAPayloadKeyWritingToolsUISymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __getIAPayloadKeyWritingToolsUISymbolLoc_block_invoke;
      v41 = &unk_1E8480B48;
      v42 = &v43;
      v28 = InputAnalyticsLibrary();
      v29 = dlsym(v28, "IAPayloadKeyWritingToolsUI");
      *(v42[1] + 24) = v29;
      getIAPayloadKeyWritingToolsUISymbolLoc_ptr = *(v42[1] + 24);
      v27 = v44[3];
    }

    _Block_object_dispose(&v43, 8);
    if (!v27)
    {
LABEL_17:
      [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      __break(1u);
    }

    v30 = *v27;
    v48[1] = @"Unspecified";
    v47[1] = v30;
    v47[2] = @"IsEditable";
    v31 = MEMORY[0x1E696AD98];
    v32 = v30;
    v33 = [v31 numberWithBool:{-[WTAnalyticsDelegate isEditableText](v15, "isEditableText")}];
    v48[2] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
    [(WTAnalyticsDelegate *)v15 sendWritingToolsOnlySignal:v24 withPayload:v34];

    v35 = [MEMORY[0x1E696AD88] defaultCenter];
    [v35 addObserver:v15 selector:sel_applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
    [v35 addObserver:v15 selector:sel_applicationDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];
    [v35 addObserver:v15 selector:sel_applicationWillTerminate name:*MEMORY[0x1E69DDBD0] object:0];
  }

  return v15;
}

- (id)getWritingToolsFeatureDetailsForCompositionSessionType:(int64_t)a3
{
  v3 = @"SummaryTransform";
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v3 = @"Compose";
          break;
        case 11:
          v3 = @"SmartReply";
          break;
        case 12:
          v3 = getIAPayloadValueWritingToolsFeatureDetailsProofreadingReview();
          break;
      }
    }

    else if (a3 == 7)
    {
      v3 = getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform();
    }

    else
    {
      if (a3 == 8)
      {
        getIAPayloadValueWritingToolsFeatureDetailsBulletsTransform();
      }

      else
      {
        getIAPayloadValueWritingToolsFeatureDetailsTablesTransform();
      }
      v3 = ;
    }
  }

  else if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsProfessionalTone();
        break;
      case 4:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsConciseTone();
        break;
      case 5:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsOpenEndedTone();
        break;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v3 = getIAPayloadValueWritingToolsFeatureDetailsMagicRewrite();
    }

    else if (a3 == 2)
    {
      v3 = getIAPayloadValueWritingToolsFeatureDetailsFriendlyTone();
    }
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v4 = getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_ptr;
    v11 = getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_ptr;
    if (!getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_ptr)
    {
      v5 = InputAnalyticsLibrary();
      v9[3] = dlsym(v5, "IAPayloadValueWritingToolsFeatureDetailsGeneric");
      getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_ptr = v9[3];
      v4 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v4)
    {
      v7 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      _Block_object_dispose(&v8, 8);
      _Unwind_Resume(v7);
    }

    v3 = *v4;
  }

  return v3;
}

- (id)getWritingToolsFeatureDetailsForRequestedTool:(int64_t)a3
{
  v3 = @"Index";
  if (a3 <= 18)
  {
    if (a3 <= 10)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          v3 = getIAPayloadValueWritingToolsFeatureDetailsMagicRewrite();
          goto LABEL_31;
        }

        if (a3 != 3)
        {
          goto LABEL_31;
        }
      }

      v3 = getIAPayloadValueWritingToolsFeatureDetailsProofreadingReview();
      goto LABEL_31;
    }

    switch(a3)
    {
      case 11:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsFriendlyTone();
        break;
      case 12:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsProfessionalTone();
        break;
      case 13:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsConciseTone();
        break;
    }
  }

  else if (a3 <= 22)
  {
    switch(a3)
    {
      case 19:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsOpenEndedTone();
        break;
      case 21:
        v3 = @"SummaryTransform";
        break;
      case 22:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform();
        break;
    }
  }

  else if (a3 > 100)
  {
    v4 = @"Compose";
    if (a3 != 201)
    {
      v4 = @"Index";
    }

    if (a3 == 101)
    {
      v3 = @"SmartReply";
    }

    else
    {
      v3 = v4;
    }
  }

  else if (a3 == 23)
  {
    v3 = getIAPayloadValueWritingToolsFeatureDetailsBulletsTransform();
  }

  else if (a3 == 24)
  {
    v3 = getIAPayloadValueWritingToolsFeatureDetailsTablesTransform();
  }

LABEL_31:

  return v3;
}

- (void)sendWritingToolsOnlySignal:(id)a3 withPayload:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (![(WTAnalyticsDelegate *)self fromSmartReply])
  {
    IASignalAnalyticsClass = getIASignalAnalyticsClass();
    v8 = getIAChannelWritingTools();
    v9 = [(NSUUID *)self->_analyticsUUID UUIDString];
    [IASignalAnalyticsClass sendSignal:v10 toChannel:v8 withUniqueStringID:v9 withPayload:v6];
  }
}

- (void)sendWritingToolsOrSmartReplySignal:(id)a3 withPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WTAnalyticsDelegate *)self fromSmartReply])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v8 = getIAChannelSmartRepliesSymbolLoc_ptr;
    v19 = getIAChannelSmartRepliesSymbolLoc_ptr;
    if (!getIAChannelSmartRepliesSymbolLoc_ptr)
    {
      v9 = InputAnalyticsLibrary();
      v17[3] = dlsym(v9, "IAChannelSmartReplies");
      getIAChannelSmartRepliesSymbolLoc_ptr = v17[3];
      v8 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v8)
    {
      v15 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      _Block_object_dispose(&v16, 8);
      _Unwind_Resume(v15);
    }

    v10 = *v8;
  }

  else
  {
    v10 = getIAChannelWritingTools();
  }

  v11 = v10;
  if ([(WTAnalyticsDelegate *)self fromSmartReply]&& (threadIdentifier = self->_threadIdentifier) != 0)
  {
    v13 = [(NSString *)threadIdentifier copy];
  }

  else
  {
    v13 = [(NSUUID *)self->_analyticsUUID UUIDString];
  }

  v14 = v13;
  [getIASignalAnalyticsClass() sendSignal:v6 toChannel:v11 withUniqueStringID:v13 withPayload:v7];
}

- (void)applicationDidEnterBackground
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getIASignalWritingToolsUISuspendedSymbolLoc_ptr;
  v9 = getIASignalWritingToolsUISuspendedSymbolLoc_ptr;
  if (!getIASignalWritingToolsUISuspendedSymbolLoc_ptr)
  {
    v4 = InputAnalyticsLibrary();
    v7[3] = dlsym(v4, "IASignalWritingToolsUISuspended");
    getIASignalWritingToolsUISuspendedSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    v5 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:*v3 withPayload:0];
}

- (void)applicationDidBecomeActive
{
  if (InputAnalyticsLibraryCore() && getIASignalWritingToolsUIResumedSymbolLoc())
  {
    IASignalWritingToolsUIResumedSymbolLoc = getIASignalWritingToolsUIResumedSymbolLoc();
    if (!IASignalWritingToolsUIResumedSymbolLoc)
    {
      v5 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      [(WTAnalyticsDelegate *)v5 applicationWillTerminate];
      return;
    }

    v4 = *IASignalWritingToolsUIResumedSymbolLoc;
  }

  else
  {
    v4 = @"UIResumed";
  }

  v7 = v4;
  [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:v4 withPayload:0];
}

- (void)applicationWillTerminate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getIASignalWritingToolsUITerminatedSymbolLoc_ptr;
  v9 = getIASignalWritingToolsUITerminatedSymbolLoc_ptr;
  if (!getIASignalWritingToolsUITerminatedSymbolLoc_ptr)
  {
    v4 = InputAnalyticsLibrary();
    v7[3] = dlsym(v4, "IASignalWritingToolsUITerminated");
    getIASignalWritingToolsUITerminatedSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    v5 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:*v3 withPayload:0];
}

- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(WTAnalyticsDelegate *)self setProofreadingSuggestions:v5];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(WTAnalyticsDelegate *)self setUuidSuggestionMapping:v6];

  [(WTAnalyticsDelegate *)self setNumDrafts:0];

  [(WTAnalyticsDelegate *)self setCurrentDraftNumber:0];
}

- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v45 = v5;
  v46 = [v5 type];
  v44 = [v5 compositionSessionType];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v7)
  {
    v8 = *v50;
    v9 = &stru_1F4FC5520;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = [v11 range];
        [v11 range];
        v14 = v13;
        v15 = [v11 attributedText];
        v16 = [v15 string];
        LOBYTE(v12) = v14 + v12 > [v16 length];

        v17 = [v11 attributedText];
        v18 = [v17 string];
        if (v12)
        {

          v17 = WTIAWritingToolsLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v19 = [v11 range];
            [v11 range];
            v21 = v20;
            v22 = [v11 attributedText];
            v23 = [v22 string];
            v24 = [v23 length];
            *buf = 134218496;
            *&buf[4] = v19;
            *&buf[12] = 2048;
            *&buf[14] = v21;
            *&buf[22] = 2048;
            v61 = v24;
            _os_log_error_impl(&dword_1D451D000, v17, OS_LOG_TYPE_ERROR, "context.range (%lu, %lu) out of bounds (%lu)!", buf, 0x20u);
          }
        }

        else
        {
          v25 = [v11 range];
          v27 = [v18 substringWithRange:{v25, v26}];

          v18 = v27;
        }

        if (v18)
        {
          v28 = [(__CFString *)v9 stringByAppendingString:v18];

          v9 = v28;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = &stru_1F4FC5520;
  }

  if (v46 == 2)
  {
    v29 = [(WTAnalyticsDelegate *)self getWritingToolsFeatureDetailsForCompositionSessionType:v44];
  }

  else
  {
    if (v46 != 1)
    {
      v30 = WTIAWritingToolsLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [WTAnalyticsDelegate didBeginWritingToolsSession:contexts:];
      }

      goto LABEL_30;
    }

    v29 = getIAPayloadValueWritingToolsFeatureDetailsProofreadingReview();
  }

  v30 = v29;
  if (v29)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v31 = getIASignalWritingToolsActionSelectedSymbolLoc_ptr;
    v56 = getIASignalWritingToolsActionSelectedSymbolLoc_ptr;
    if (!getIASignalWritingToolsActionSelectedSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getIASignalWritingToolsActionSelectedSymbolLoc_block_invoke;
      v61 = &unk_1E8480B48;
      v62 = &v53;
      v32 = InputAnalyticsLibrary();
      v33 = dlsym(v32, "IASignalWritingToolsActionSelected");
      *(v62[1] + 24) = v33;
      getIASignalWritingToolsActionSelectedSymbolLoc_ptr = *(v62[1] + 24);
      v31 = v54[3];
    }

    _Block_object_dispose(&v53, 8);
    if (!v31)
    {
      goto LABEL_32;
    }

    v34 = *v31;
    v35 = getIAPayloadKeyWritingToolsFeatureDetails();
    v58[0] = v30;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v36 = getIAPayloadKeyWritingToolsInputTextSymbolLoc_ptr;
    v56 = getIAPayloadKeyWritingToolsInputTextSymbolLoc_ptr;
    v57[0] = v35;
    if (!getIAPayloadKeyWritingToolsInputTextSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getIAPayloadKeyWritingToolsInputTextSymbolLoc_block_invoke;
      v61 = &unk_1E8480B48;
      v62 = &v53;
      v37 = InputAnalyticsLibrary();
      v38 = dlsym(v37, "IAPayloadKeyWritingToolsInputText");
      *(v62[1] + 24) = v38;
      getIAPayloadKeyWritingToolsInputTextSymbolLoc_ptr = *(v62[1] + 24);
      v36 = v54[3];
    }

    _Block_object_dispose(&v53, 8);
    if (!v36)
    {
LABEL_32:
      [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      __break(1u);
    }

    v39 = *v36;
    v58[1] = v9;
    v57[1] = v39;
    v57[2] = @"IsEditable";
    v40 = MEMORY[0x1E696AD98];
    v41 = v39;
    v42 = [v40 numberWithBool:{-[WTAnalyticsDelegate isEditableText](self, "isEditableText")}];
    v58[2] = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
    [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v34 withPayload:v43];

LABEL_30:
  }
}

- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 type] == 2)
  {
    v7 = getIAPayloadValueWritingToolsUIRewritingView();
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v8 = getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_ptr;
    v29 = getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_ptr;
    if (!getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_ptr)
    {
      v9 = InputAnalyticsLibrary();
      v27[3] = dlsym(v9, "IAPayloadValueWritingToolsUIProofreadingView");
      getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_ptr = v27[3];
      v8 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (!v8)
    {
      goto LABEL_25;
    }

    v7 = *v8;
  }

  v10 = v7;
  if (a4 != 3)
  {
    if (a4 == 2)
    {
      v11 = getIASignalWritingToolsButtonTapped();
      v18 = getIAPayloadKeyWritingToolsInteractionType();
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v19 = getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_ptr;
      v29 = getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_ptr;
      v30 = v18;
      if (!getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_ptr)
      {
        v20 = InputAnalyticsLibrary();
        v27[3] = dlsym(v20, "IAPayloadValueWritingToolsInteractionTypeShowRewritten");
        getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_ptr = v27[3];
        v19 = v27[3];
      }

      _Block_object_dispose(&v26, 8);
      if (v19)
      {
        v31 = *v19;
        v21 = MEMORY[0x1E695DF20];
        v22 = v31;
        v23 = [v21 dictionaryWithObjects:&v31 forKeys:&v30 count:1];

        [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v11 withPayload:v23];
        goto LABEL_23;
      }
    }

    else
    {
      if (a4 != 1)
      {
        v11 = WTIAWritingToolsLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [WTAnalyticsDelegate writingToolsSession:didReceiveAction:];
        }

        goto LABEL_23;
      }

      v11 = getIASignalWritingToolsButtonTapped();
      v12 = getIAPayloadKeyWritingToolsInteractionType();
      v32 = v12;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v13 = getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_ptr;
      v29 = getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_ptr;
      if (!getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_ptr)
      {
        v14 = InputAnalyticsLibrary();
        v27[3] = dlsym(v14, "IAPayloadValueWritingToolsInteractionTypeShowOriginal");
        getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_ptr = v27[3];
        v13 = v27[3];
      }

      _Block_object_dispose(&v26, 8);
      if (v13)
      {
        v33[0] = *v13;
        v15 = MEMORY[0x1E695DF20];
        v16 = v33[0];
        v17 = [v15 dictionaryWithObjects:v33 forKeys:&v32 count:1];

        [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v11 withPayload:v17];
LABEL_23:

        goto LABEL_24;
      }
    }

LABEL_25:
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    __break(1u);
  }

  [(WTAnalyticsDelegate *)self setNumDrafts:[(WTAnalyticsDelegate *)self numDrafts]+ 1];
  [(WTAnalyticsDelegate *)self setCurrentDraftNumber:[(WTAnalyticsDelegate *)self numDrafts]];
  v24 = getIAPayloadValueWritingToolsUIRewritingView();
  v25 = v10 == v24;

  if (!v25)
  {
    v11 = WTIAWritingToolsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WTAnalyticsDelegate writingToolsSession:v10 didReceiveAction:v11];
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4
{
  v4 = a4;
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 type] == 1)
  {
    v56 = v6;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
    v10 = [v9 count];

    v11 = 0;
    if (v10)
    {
      v12 = 0;
      do
      {
        if (v4)
        {
          v13 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
          v14 = [v13 objectAtIndexedSubscript:v12];
          v15 = [v14 state];

          if (v15 == 3)
          {
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
            v18 = v8;
            goto LABEL_13;
          }

          if (v15 == 1)
          {
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
            v18 = v7;
LABEL_13:
            [v18 addObject:v16];
            v11 = 1;
            goto LABEL_16;
          }

          if (v15)
          {
            v16 = WTIAWritingToolsLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v21 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
              v22 = [v21 objectAtIndexedSubscript:v12];
              v23 = [v22 state];
              *buf = 134218240;
              v68 = v23;
              v69 = 2048;
              v70 = v12;
              _os_log_error_impl(&dword_1D451D000, v16, OS_LOG_TYPE_ERROR, "didEndWritingToolsSession: Unexpected proofreading suggestion state %lu for index %lu", buf, 0x16u);
            }

            goto LABEL_16;
          }

          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          v17 = v7;
        }

        else
        {
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          v17 = v8;
        }

        [v17 addObject:v16];
LABEL_16:

        ++v12;
        v19 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
        v20 = [v19 count];
      }

      while (v12 < v20);
    }

    if ([v7 count])
    {
      if (InputAnalyticsLibraryCore() && getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc())
      {
        v25 = getIAPayloadValueWritingToolsInteractionTypeUnspecified();
      }

      else
      {
        v25 = @"Unspecified";
      }

      v55 = getIASignalWritingToolsResultsAccepted();
      v54 = getIAPayloadKeyWritingToolsAcceptedAll();
      v65[0] = v54;
      v26 = MEMORY[0x1E696AD98];
      if (v11)
      {
        v27 = 0;
      }

      else
      {
        v28 = [v7 count];
        v53 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
        v27 = v28 == [v53 count];
      }

      v29 = [v26 numberWithInt:v27];
      v66[0] = v29;
      v30 = getIAPayloadKeyWritingToolsResultIndices();
      v65[1] = v30;
      v66[1] = v7;
      v31 = getIAPayloadKeyWritingToolsInteractionType();
      v65[2] = v31;
      v32 = v25;
      v66[2] = v25;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];
      [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v55 withPayload:v33];

      if ((v11 & 1) == 0)
      {
      }
    }

    if ([v8 count])
    {
      v34 = getIASignalWritingToolsResultsRejected();
      v35 = getIAPayloadKeyWritingToolsRejectedAll();
      v63[0] = v35;
      v36 = [MEMORY[0x1E696AD98] numberWithInt:!v4];
      v64[0] = v36;
      v37 = getIAPayloadKeyWritingToolsResultIndices();
      v63[1] = v37;
      v64[1] = v8;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
      [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v34 withPayload:v38];
    }

    v6 = v56;
    goto LABEL_39;
  }

  if ([v6 type] != 2)
  {
    v7 = WTIAWritingToolsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WTAnalyticsDelegate didEndWritingToolsSession:v6 accepted:v7];
    }

    goto LABEL_39;
  }

  if (v4)
  {
    if (InputAnalyticsLibraryCore() && getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc())
    {
      v24 = v6;
      v7 = getIAPayloadValueWritingToolsInteractionTypeUnspecified();
    }

    else
    {
      v24 = v6;
      v7 = @"Unspecified";
    }

    v46 = getIASignalWritingToolsResultsAccepted();
    v47 = getIAPayloadKeyWritingToolsAcceptedAll();
    v61[0] = v47;
    v62[0] = MEMORY[0x1E695E110];
    v48 = getIAPayloadKeyWritingToolsResultIndices();
    v61[1] = v48;
    v49 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WTAnalyticsDelegate currentDraftNumber](self, "currentDraftNumber")}];
    v60 = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    v62[1] = v50;
    v51 = getIAPayloadKeyWritingToolsInteractionType();
    v61[2] = v51;
    v62[2] = v7;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:3];
    [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:v46 withPayload:v52];

    v6 = v24;
    goto LABEL_39;
  }

  if ([v6 requestedTool] != 201 || -[WTAnalyticsDelegate currentDraftNumber](self, "currentDraftNumber") >= 1)
  {
    v7 = getIASignalWritingToolsResultsRejected();
    getIAPayloadKeyWritingToolsRejectedAll();
    v40 = v39 = v6;
    v58[0] = v40;
    v41 = [MEMORY[0x1E696AD98] numberWithInt:1];
    v59[0] = v41;
    v42 = getIAPayloadKeyWritingToolsResultIndices();
    v58[1] = v42;
    v43 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WTAnalyticsDelegate currentDraftNumber](self, "currentDraftNumber")}];
    v57 = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    v59[1] = v44;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
    [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:v7 withPayload:v45];

    v6 = v39;
LABEL_39:
  }

  [(WTAnalyticsDelegate *)self setProofreadingSuggestions:0];
  [(WTAnalyticsDelegate *)self setUuidSuggestionMapping:0];
}

- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
  [v10 addObjectsFromArray:v9];

  if (v7)
  {
    v11 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
    v12 = [v11 count];

    v13 = getIASignalWritingToolsResultsOffered();
    v14 = getIAPayloadKeyWritingToolsNumResultsOffered();
    v30 = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    v31[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v13 withPayload:v16];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        v23 = [(WTAnalyticsDelegate *)self uuidSuggestionMapping];
        v24 = [v22 uuid];
        [v23 setObject:v22 forKeyedSubscript:v24];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }
}

- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6
{
  v8 = a5;
  v10 = [(WTAnalyticsDelegate *)self uuidSuggestionMapping];
  v9 = [v10 objectForKeyedSubscript:v8];

  [v9 setState:a4];
}

- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  v30[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v7)
  {
    v14 = [(WTAnalyticsDelegate *)self numDrafts];
    v15 = getIASignalWritingToolsResultsOffered();
    v16 = getIAPayloadKeyWritingToolsNumResultsOffered();
    v28 = v16;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    v30[0] = v17;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v18 = getIAPayloadKeyWritingToolsResultIndexSymbolLoc_ptr;
    v27 = getIAPayloadKeyWritingToolsResultIndexSymbolLoc_ptr;
    if (!getIAPayloadKeyWritingToolsResultIndexSymbolLoc_ptr)
    {
      v19 = InputAnalyticsLibrary();
      v25[3] = dlsym(v19, "IAPayloadKeyWritingToolsResultIndex");
      getIAPayloadKeyWritingToolsResultIndexSymbolLoc_ptr = v25[3];
      v18 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v18)
    {
      [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      __break(1u);
    }

    v29 = *v18;
    v20 = MEMORY[0x1E696AD98];
    v21 = v29;
    v22 = [v20 numberWithUnsignedInteger:v14];
    v30[1] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v28 count:2];
    [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v15 withPayload:v23];
  }
}

- (void)endWritingTools
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getIASignalWritingToolsPanelDismissedSymbolLoc_ptr;
  v9 = getIASignalWritingToolsPanelDismissedSymbolLoc_ptr;
  if (!getIASignalWritingToolsPanelDismissedSymbolLoc_ptr)
  {
    v4 = InputAnalyticsLibrary();
    v7[3] = dlsym(v4, "IASignalWritingToolsPanelDismissed");
    getIASignalWritingToolsPanelDismissedSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    v5 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:*v3 withPayload:0];
}

- (void)undo
{
  v3 = [(WTAnalyticsDelegate *)self currentDraftNumber];
  v4 = 2;
  if (v3 > 2)
  {
    v4 = v3;
  }

  [(WTAnalyticsDelegate *)self setCurrentDraftNumber:v4 - 1];
}

- (void)redo
{
  v3 = [(WTAnalyticsDelegate *)self currentDraftNumber];
  v4 = [(WTAnalyticsDelegate *)self numDrafts];
  if (v3 + 1 > v4)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v4;
  }

  [(WTAnalyticsDelegate *)self setCurrentDraftNumber:v5];
}

- (uint64_t)initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:.cold.2()
{
  dlerror();
  v0 = abort_report_np();
  return [WTAnalyticsDelegate didBeginWritingToolsSession:v0 contexts:?];
}

- (void)didBeginWritingToolsSession:contexts:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1D451D000, v0, OS_LOG_TYPE_ERROR, "Unsupported session type: %lu", v1, 0xCu);
}

- (void)writingToolsSession:(uint64_t)a1 didReceiveAction:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = getIAPayloadValueWritingToolsUIRewritingView();
  OUTLINED_FUNCTION_0();
  v6 = 2048;
  v7 = a1;
  _os_log_error_impl(&dword_1D451D000, a2, OS_LOG_TYPE_ERROR, "WTActionShowRewritten action performed, expected UI to be rewriting view (%lu) but got %lu", v5, 0x16u);
}

- (void)writingToolsSession:didReceiveAction:.cold.5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1D451D000, v0, OS_LOG_TYPE_DEBUG, "didReceiveAction: %lu ignored", v1, 0xCu);
}

- (void)didEndWritingToolsSession:(void *)a1 accepted:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 type];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1D451D000, a2, OS_LOG_TYPE_ERROR, "didEndWritingToolsSession: Unsupported session type: %lu", v3, 0xCu);
}

@end