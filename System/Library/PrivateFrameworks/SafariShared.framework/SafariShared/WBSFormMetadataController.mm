@interface WBSFormMetadataController
+ (BOOL)convertNumber:(id)a3 toFormMetadataRequestType:(unint64_t *)a4;
+ (BOOL)manualAutoFillButtonWillFitInFieldWithMetadata:(id)a3;
+ (id)classifyFormMetadata:(id)a3;
+ (id)formMetadataClassificationJS;
- (BOOL)autoFillFrameIsValid:(id)a3;
- (BOOL)isFrameAnnotated:(id)a3;
- (BOOL)isFrameOrChildAnnotated:(id)a3;
- (BOOL)pageWithMainFrameMeetsEditedFormTextWarningCriteria:(id)a3;
- (BOOL)recursivelyCollectAncestorFramesOfFrame:(id)a3 startingFromFrame:(id)a4 ancestorFrames:(id)a5;
- (OpaqueJSValue)_jsObjectForForm:(id)a3 inFrame:(id)a4;
- (WBSFormMetadataController)init;
- (_NSRange)selectionRangeInField:(id)a3 inFrame:(id)a4;
- (id)_formMetadataByAddingInformationAboutUserEditedStateForUserNameAndPasswordFieldsToFormMetadata:(id)a3 inFrame:(id)a4;
- (id)formAutoFillNodeForField:(id)a3 inFrame:(id)a4;
- (id)formElementWithFormID:(double)a3 inFrame:(id)a4;
- (id)formMetadataControlsByAddingAdditionalControlInformationToFormMetadata:(id)a3 inFrame:(id)a4 inContext:(OpaqueJSContext *)a5 withControlMetadataContainingAdditionalControlInformation:(id)a6;
- (id)formSubmissionURLStringForSearchTextField:(id)a3 inFrame:(id)a4 useStrictDetection:(BOOL)a5;
- (id)metadataForActiveFormInPageWithMainFrame:(id)a3;
- (id)metadataForForm:(id)a3 inFrame:(id)a4 requestType:(unint64_t)a5;
- (id)metadataForForm:(id)a3 inFrame:(id)a4 requestType:(unint64_t)a5 addUserEditedStateForUserNameAndPasswordFields:(BOOL)a6;
- (id)uniqueIDForTextField:(id)a3 inFrame:(id)a4;
- (id)visibleNonEmptyTextFieldsInForm:(id)a3 inFrame:(id)a4;
- (unint64_t)userEditedTextControlCountInArray:(OpaqueJSValue *)a3 context:(OpaqueJSContext *)a4 expectTextFieldsRatherThanTextAreas:(BOOL)a5;
- (void)_handleFillingInContext:(OpaqueJSContext *)a3 operation:(id)a4 completionHandler:(id)a5;
- (void)_lockMetadataForForm:(id)a3 inFrame:(id)a4;
- (void)_unlockMetadataForForm:(id)a3 inFrame:(id)a4;
- (void)annotateForm:(double)a3 inFrame:(id)a4 withValues:(id)a5;
- (void)autoFillFormInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9 completionHandler:(id)a10;
- (void)autoFillOneTimeCodeFieldsInFrame:(id)a3 withValue:(id)a4 shouldSubmit:(BOOL)a5 completionHandler:(id)a6;
- (void)autoFilledField:(id)a3 inFrame:(id)a4;
- (void)automaticPasswordSheetDimissedInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4;
- (void)clearField:(id)a3 inFrame:(id)a4;
- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)a3 inFrame:(id)a4 completionHandler:(id)a5;
- (void)clearMetadataForFrame:(id)a3;
- (void)countUserEditedTextControlsInFrame:(id)a3 textFields:(unint64_t *)a4 textAreas:(unint64_t *)a5;
- (void)disableSpellCheckInField:(id)a3 inFrame:(id)a4;
- (void)fillForm:(double)a3 inFrame:(id)a4 withPassword:(id)a5 focusedFieldControlID:(id)a6 completionHandler:(id)a7;
- (void)focusControlForStreamlinedLogin:(id)a3 inFrame:(id)a4;
- (void)getMetadataForAllFormsInPageWithMainFrame:(id)a3 requestType:(unint64_t)a4 frames:(id *)a5 formMetadata:(id *)a6;
- (void)getMetadataForTextField:(id)a3 inFrame:(id)a4 completionHandler:(id)a5;
- (void)getMetadataForTextField:(id)a3 inFrame:(id)a4 textFieldMetadata:(id *)a5 formMetadata:(id *)a6 requestType:(unint64_t)a7;
- (void)metadataForFrame:(id)a3 requestType:(unint64_t)a4;
- (void)recursivelyClearMetadataForFrames:(id)a3;
- (void)recursivelyCollectMetadataInFrame:(id)a3 requestType:(unint64_t)a4 frames:(id)a5 formMetadata:(id)a6;
- (void)recursivelyCountUserEditedTextControlsInFrame:(id)a3 textFields:(unint64_t *)a4 textAreas:(unint64_t *)a5;
- (void)removeAutomaticPasswordElementsInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4 passwordControlUniqueIDs:(id)a5 blurAfterRemoval:(BOOL)a6;
- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)a3 passwordControlUniqueIDs:(id)a4;
- (void)replaceRange:(_NSRange)a3 inField:(id)a4 inFrame:(id)a5 withString:(id)a6 andSelectTailStartingAt:(unint64_t)a7;
- (void)selectRange:(_NSRange)a3 inField:(id)a4 inFrame:(id)a5;
- (void)setAutoFillSpinnerVisibility:(BOOL)a3 textFieldMetadata:(id)a4 frame:(id)a5;
- (void)setFormControls:(id)a3 inFrame:(id)a4 asAutoFilled:(BOOL)a5;
- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)a3 frame:(id)a4 passwordControlUniqueIDs:(id)a5;
- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)a3 formID:(double)a4 focusedPasswordControlUniqueID:(id)a5 passwordControlUniqueIDs:(id)a6 automaticPassword:(id)a7 blurAfterSubstitution:(BOOL)a8 completionHandler:(id)a9;
- (void)textFieldFocused:(id)a3 inFrame:(id)a4 textFieldMetadata:(id)a5 formMetadata:(id)a6;
@end

@implementation WBSFormMetadataController

+ (BOOL)convertNumber:(id)a3 toFormMetadataRequestType:(unint64_t *)a4
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (v5 && a4)
  {
    v8 = [v5 unsignedIntegerValue];
    if (v8 > 1)
    {
      v7 = 0;
    }

    else
    {
      *a4 = v8;
      v7 = 1;
    }
  }

  return v7;
}

- (WBSFormMetadataController)init
{
  v6.receiver = self;
  v6.super_class = WBSFormMetadataController;
  v2 = [(WBSFormMetadataController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)annotateForm:(double)a3 inFrame:(id)a4 withValues:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a4 jsContextForMetadataControllerScriptWorld];
  v10 = v8;
  if (v8)
  {
    v11 = SafariShared::JSUtilities::globalJSObjectByName(v8, "FormMetadataJS", v9);
    if (v11)
    {
      *v13 = JSValueMakeNumber(v10, a3);
      v14 = SafariShared::JSUtilities::translateNSToJSValue(v10, v7, v12);
      SafariShared::JSUtilities::callJSMethodWithArguments(v10, v11, "annotateFormWithID", v13, 2);
    }
  }
}

- (void)_handleFillingInContext:(OpaqueJSContext *)a3 operation:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  serialFillingQueue = self->_serialFillingQueue;
  if (!serialFillingQueue)
  {
    v11 = dispatch_queue_create("com.apple.Safari.AutoFill.filling", 0);
    v12 = self->_serialFillingQueue;
    self->_serialFillingQueue = v11;

    serialFillingQueue = self->_serialFillingQueue;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__WBSFormMetadataController__handleFillingInContext_operation_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC6088;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = a3;
  v13 = v9;
  v14 = v8;
  dispatch_async(serialFillingQueue, v15);
}

void __81__WBSFormMetadataController__handleFillingInContext_operation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__WBSFormMetadataController__handleFillingInContext_operation_completionHandler___block_invoke_2;
  block[3] = &unk_1E7FC6060;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v2;
  v9 = v3;
  v6 = *(a1 + 48);
  v4 = v6;
  v10 = v6;
  v5 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __81__WBSFormMetadataController__handleFillingInContext_operation_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v2 = (*(*(a1 + 48) + 16))();
  v3 = MEMORY[0x1E696EB58];
  v4 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(*(a1 + 64))];
  v5 = [v3 valueWithJSValueRef:v2 inContext:v4];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__WBSFormMetadataController__handleFillingInContext_operation_completionHandler___block_invoke_3;
  v7[3] = &unk_1E7FC6038;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  v9 = *(a1 + 56);
  [v5 safari_awaitThenableResolutionWithCompletionHandler:v7];
}

void __81__WBSFormMetadataController__handleFillingInContext_operation_completionHandler___block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  *(*(a1 + 32) + 32) = 0;
  if (a3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __81__WBSFormMetadataController__handleFillingInContext_operation_completionHandler___block_invoke_3_cold_1(v6);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

- (void)autoFillFormInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9 completionHandler:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = a10;
  v20 = [v15 jsContextForMetadataControllerScriptWorld];
  v22 = v20;
  if (v20)
  {
    v23 = SafariShared::JSUtilities::globalJSObjectByName(v20, "FormMetadataJS", v21);
    if (v23)
    {
      Undefined = JSValueMakeUndefined(v22);
      if ([v17 length])
      {
        Undefined = controlObject(v15, v17);
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __155__WBSFormMetadataController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke;
      v28[3] = &unk_1E7FC60B0;
      v31 = v22;
      v34 = a5;
      v29 = v16;
      v32 = Undefined;
      v35 = a6;
      v36 = a9;
      v30 = v18;
      v33 = v23;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __155__WBSFormMetadataController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke_2;
      v26[3] = &unk_1E7FC60D8;
      v27 = v19;
      [(WBSFormMetadataController *)self _handleFillingInContext:v22 operation:v28 completionHandler:v26];
    }
  }
}

JSValueRef __155__WBSFormMetadataController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke(uint64_t a1, uint64_t a2, objc_object *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *v10 = SafariShared::JSUtilities::translateNSToJSValue(*(a1 + 48), *(a1 + 32), a3);
  Undefined = JSValueMakeUndefined(*(a1 + 48));
  Boolean = JSValueMakeBoolean(*(a1 + 48), *(a1 + 72));
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12 = Boolean;
  v13 = v6;
  v14 = JSValueMakeBoolean(v5, (*(a1 + 73) & 1) == 0);
  if (*(a1 + 40))
  {
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v15 = SafariShared::JSUtilities::translateNSToJSValue(*(a1 + 48), v8, v7);
  v16 = JSValueMakeUndefined(*(a1 + 48));
  v17 = JSValueMakeBoolean(*(a1 + 48), *(a1 + 74));
  return SafariShared::JSUtilities::callJSMethodWithArguments(*(a1 + 48), *(a1 + 64), "autoFillControlsByID", v10, 8);
}

void __155__WBSFormMetadataController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v7 = v3;
    v4 = [v3 valueForProperty:@"formMetadata"];
    if (v4)
    {
      v5 = [[WBSFormMetadata alloc] initWithJSValue:v4];
      v6 = [v7 valueForProperty:@"shouldSubmit"];
      [v6 toBool];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    v3 = v7;
  }
}

- (void)autoFillOneTimeCodeFieldsInFrame:(id)a3 withValue:(id)a4 shouldSubmit:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 jsContextForMetadataControllerScriptWorld];
  v15 = v13;
  if (v13)
  {
    v16 = SafariShared::JSUtilities::globalJSObjectByName(v13, "FormMetadataJS", v14);
    if (v16)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __103__WBSFormMetadataController_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit_completionHandler___block_invoke;
      v19[3] = &unk_1E7FC6100;
      v21 = v15;
      v23 = a5;
      v20 = v11;
      v22 = v16;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __103__WBSFormMetadataController_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit_completionHandler___block_invoke_2;
      v17[3] = &unk_1E7FC60D8;
      v18 = v12;
      [(WBSFormMetadataController *)self _handleFillingInContext:v15 operation:v19 completionHandler:v17];
    }
  }
}

JSValueRef __103__WBSFormMetadataController_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit_completionHandler___block_invoke(uint64_t a1, uint64_t a2, objc_object *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  *v5 = SafariShared::JSUtilities::translateNSToJSValue(*(a1 + 40), *(a1 + 32), a3);
  Boolean = JSValueMakeBoolean(*(a1 + 40), *(a1 + 56));
  return SafariShared::JSUtilities::callJSMethodWithArguments(*(a1 + 40), *(a1 + 48), "autoFillOneTimeCodeFieldsWithValue", v5, 2);
}

void __103__WBSFormMetadataController_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v8 = v3;
    v4 = [v3 valueForProperty:@"value"];
    v5 = [v4 toString];

    v6 = [v8 valueForProperty:@"shouldSubmit"];
    [v6 toBool];

    v7 = [v8 valueForProperty:@"codeAppearsToHaveBeenFilledInItsEntirety"];
    [v7 toBool];

    (*(*(a1 + 32) + 16))();
    v3 = v8;
  }
}

- (void)focusControlForStreamlinedLogin:(id)a3 inFrame:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 jsContextForMetadataControllerScriptWorld];
  v8 = v6;
  if (v6)
  {
    v10 = SafariShared::JSUtilities::globalJSObjectByName(v6, "FormMetadataJS", v7);
    if (v10)
    {
      v11[0] = SafariShared::JSUtilities::translateNSToJSValue(v8, v5, v9);
      SafariShared::JSUtilities::callJSMethodWithArguments(v8, v10, "focusControlForStreamlinedLogin", v11, 1);
    }
  }
}

- (void)autoFilledField:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = 0;
  v11 = 0;
  [(WBSFormMetadataController *)self getMetadataForTextField:v6 inFrame:v7 textFieldMetadata:&v11 formMetadata:&v10 requestType:0];
  v8 = v11;
  v9 = v10;
  [(WBSFormMetadataController *)self autoFilledField:v8 inForm:v9 inFrame:v7];
}

- (void)setFormControls:(id)a3 inFrame:(id)a4 asAutoFilled:(BOOL)a5
{
  v5 = a5;
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 jsContextForMetadataControllerScriptWorld];
  if (v10)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = controlObject(v9, *(*(&v17 + 1) + 8 * v14));
          v16 = [(WBSFormMetadataController *)self formAutoFillNodeForJSWrapper:v15 inContext:v10, v17];
          [v16 setHTMLInputElementAutofilled:v5];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)fillForm:(double)a3 inFrame:(id)a4 withPassword:(id)a5 focusedFieldControlID:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v13 length] && (v16 = objc_msgSend(v12, "jsContextForMetadataControllerScriptWorld"), (v18 = v16) != 0) && (v19 = SafariShared::JSUtilities::globalJSObjectByName(v16, "FormMetadataJS", v17)) != 0)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __99__WBSFormMetadataController_fillForm_inFrame_withPassword_focusedFieldControlID_completionHandler___block_invoke;
    v22[3] = &unk_1E7FC6128;
    v25 = v18;
    v26 = a3;
    v23 = v13;
    v24 = v14;
    v27 = v19;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __99__WBSFormMetadataController_fillForm_inFrame_withPassword_focusedFieldControlID_completionHandler___block_invoke_2;
    v20[3] = &unk_1E7FC60D8;
    v21 = v15;
    [(WBSFormMetadataController *)self _handleFillingInContext:v18 operation:v22 completionHandler:v20];
  }

  else
  {
    (*(v15 + 2))(v15, 0);
  }
}

JSValueRef __99__WBSFormMetadataController_fillForm_inFrame_withPassword_focusedFieldControlID_completionHandler___block_invoke(uint64_t a1)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = JSValueMakeNumber(*(a1 + 48), *(a1 + 56));
  v5[1] = SafariShared::JSUtilities::translateNSToJSValue(*(a1 + 48), *(a1 + 32), v2);
  v5[2] = SafariShared::JSUtilities::translateNSToJSValue(*(a1 + 48), *(a1 + 40), v3);
  return SafariShared::JSUtilities::callJSMethodWithArguments(*(a1 + 48), *(a1 + 64), "fillFormWithPassword", v5, 3);
}

void __99__WBSFormMetadataController_fillForm_inFrame_withPassword_focusedFieldControlID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 toObjectOfClass:objc_opt_class()];
  if (!v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 toObject];
      v7 = objc_opt_class();
      __99__WBSFormMetadataController_fillForm_inFrame_withPassword_focusedFieldControlID_completionHandler___block_invoke_2_cold_1(v7, v9, v5, v6);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v4);
  }
}

- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)a3 inFrame:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(WBSFormMetadataController *)self setFormControls:v8 inFrame:v9 asAutoFilled:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(WBSFormMetadataController *)self clearField:*(*(&v15 + 1) + 8 * v14++) inFrame:v9, v15];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  v10[2](v10);
}

- (void)clearField:(id)a3 inFrame:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 jsContextForMetadataControllerScriptWorld];
  v9 = v7;
  if (v7)
  {
    v10 = SafariShared::JSUtilities::globalJSObjectByName(v7, "FormMetadataJS", v8);
    if (v10)
    {
      SafariShared::JSUtilities::jsString(v5, &string);
      *v12 = JSValueMakeString(v9, string);
      if (string)
      {
        JSStringRelease(string);
      }

      SafariShared::JSUtilities::callJSMethodWithArguments(v9, v10, "clearField", v12, 1);
    }
  }
}

- (void)disableSpellCheckInField:(id)a3 inFrame:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 jsContextForMetadataControllerScriptWorld];
  v8 = v6;
  if (v6)
  {
    v10 = SafariShared::JSUtilities::globalJSObjectByName(v6, "FormMetadataJS", v7);
    if (v10)
    {
      v11[0] = SafariShared::JSUtilities::translateNSToJSValue(v8, v5, v9);
      SafariShared::JSUtilities::callJSMethodWithArguments(v8, v10, "disableSpellCheckInFieldIfNeeded", v11, 1);
    }
  }
}

- (_NSRange)selectionRangeInField:(id)a3 inFrame:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 jsContextForMetadataControllerScriptWorld];
  v9 = v7;
  if (!v7)
  {
    v11 = 0;
LABEL_9:
    v21 = 0;
    goto LABEL_16;
  }

  v11 = SafariShared::JSUtilities::globalJSObjectByName(v7, "FormMetadataJS", v8);
  if (!v11)
  {
    goto LABEL_9;
  }

  v24[0] = SafariShared::JSUtilities::translateNSToJSValue(v9, v5, v10);
  v11 = SafariShared::JSUtilities::callJSMethodWithArguments(v9, v11, "selectionRangeInField", v24, 1);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = MEMORY[0x1E696EB58];
  v13 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(v9)];
  v14 = [v12 valueWithJSValueRef:v11 inContext:v13];

  v15 = [v14 objectForKeyedSubscript:@"length"];
  v16 = [v15 toInt32] == 2;

  if (v16)
  {
    v17 = [v14 objectAtIndexedSubscript:0];
    v18 = [v17 toNumber];

    if (v18)
    {
      v19 = [v14 objectAtIndexedSubscript:1];
      v20 = [v19 toNumber];

      if (v20)
      {
        v11 = [v18 unsignedIntegerValue];
        v21 = [v20 unsignedIntegerValue];
      }

      else
      {
        v11 = 0;
        v21 = 0;
      }
    }

    else
    {
      v11 = 0;
      v21 = 0;
    }
  }

  else
  {
    v11 = 0;
    v21 = 0;
  }

LABEL_16:
  v22 = v11;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

- (void)selectRange:(_NSRange)a3 inField:(id)a4 inFrame:(id)a5
{
  length = a3.length;
  location = a3.location;
  v21 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (self->_isCurrentlyFilling)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(v19) = 138543362;
      *(&v19 + 4) = v9;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Ignoring request to select range in %{public}@ because filling is in progress.", &v19, 0xCu);
    }
  }

  else
  {
    m_table = self->_framesToMetadataMap.m_impl.m_table;
    if (m_table)
    {
      if (*(m_table - 3))
      {
        v14 = [v10 jsContextForMetadataControllerScriptWorld];
        v16 = v14;
        if (v14)
        {
          v18 = SafariShared::JSUtilities::globalJSObjectByName(v14, "FormMetadataJS", v15);
          if (v18)
          {
            *&v19 = SafariShared::JSUtilities::translateNSToJSValue(v16, v9, v17);
            *(&v19 + 1) = JSValueMakeNumber(v16, location);
            Number = JSValueMakeNumber(v16, length);
            SafariShared::JSUtilities::callJSMethodWithArguments(v16, v18, "setFormFieldSelection", &v19, 3);
          }
        }
      }
    }
  }
}

- (void)replaceRange:(_NSRange)a3 inField:(id)a4 inFrame:(id)a5 withString:(id)a6 andSelectTailStartingAt:(unint64_t)a7
{
  length = a3.length;
  location = a3.location;
  v20[5] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = [a5 jsContextForMetadataControllerScriptWorld];
  v16 = v14;
  if (v14)
  {
    v18 = SafariShared::JSUtilities::globalJSObjectByName(v14, "FormMetadataJS", v15);
    if (v18)
    {
      v20[0] = SafariShared::JSUtilities::translateNSToJSValue(v16, v12, v17);
      v20[1] = JSValueMakeNumber(v16, location);
      v20[2] = JSValueMakeNumber(v16, length);
      v20[3] = SafariShared::JSUtilities::translateNSToJSValue(v16, v13, v19);
      v20[4] = JSValueMakeNumber(v16, a7);
      SafariShared::JSUtilities::callJSMethodWithArguments(v16, v18, "replaceFormFieldRangeAndSelectTail", v20, 5);
    }
  }
}

- (BOOL)isFrameAnnotated:(id)a3
{
  v3 = [a3 jsContextForMetadataControllerScriptWorld];
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  v6 = SafariShared::JSUtilities::globalJSObjectByName(v3, "FormMetadataJS", v4);
  if (!v6)
  {
    return 0;
  }

  v7 = SafariShared::JSUtilities::callJSMethodWithArguments(v5, v6, "isAnyFormAnnotated", 0, 0);
  if (!v7)
  {
    return 0;
  }

  return JSValueToBoolean(v5, v7);
}

- (BOOL)isFrameOrChildAnnotated:(id)a3
{
  v4 = a3;
  if ([(WBSFormMetadataController *)self isFrameAnnotated:v4])
  {
    v5 = 1;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__WBSFormMetadataController_isFrameOrChildAnnotated___block_invoke;
    v7[3] = &unk_1E7FC6150;
    v7[4] = self;
    v7[5] = &v8;
    [v4 enumerateChildFramesUsingBlock:v7];
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v5 & 1;
}

void __53__WBSFormMetadataController_isFrameOrChildAnnotated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) |= [*(a1 + 32) isFrameOrChildAnnotated:?];
}

- (void)clearMetadataForFrame:(id)a3
{
  v4 = a3;
  cachedFormMetadata = self->_cachedFormMetadata;
  self->_cachedFormMetadata = 0;

  v11 = [v4 frameRef];
  ShouldValidate = WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<OpaqueFormAutoFillFrame *>>,(WTF::ShouldValidateKey)1,OpaqueFormAutoFillFrame *>(&self->_framesToMetadataMap, &v11);
  m_table = self->_framesToMetadataMap.m_impl.m_table;
  if (m_table)
  {
    v8 = &m_table[4 * *(m_table - 1)];
    if (v8 == ShouldValidate)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!ShouldValidate)
    {
      goto LABEL_12;
    }

    v8 = 0;
  }

  if (v8 != ShouldValidate)
  {
    WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::remove(&self->_framesToMetadataMap, ShouldValidate);
    m_table = self->_framesToMetadataMap.m_impl.m_table;
  }

  if (!m_table || !*(m_table - 3))
  {
    v9 = [v4 pageMainFrame];
    v10 = [(WBSFormMetadataController *)self isFrameOrChildAnnotated:v9];

    if (!v10)
    {
      [(WBSFormMetadataController *)self clearScriptWorld];
    }
  }

LABEL_12:
}

- (void)recursivelyClearMetadataForFrames:(id)a3
{
  v4 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__WBSFormMetadataController_recursivelyClearMetadataForFrames___block_invoke;
  v5[3] = &unk_1E7FC6178;
  v5[4] = self;
  [v4 enumerateChildFramesUsingBlock:v5];
  [(WBSFormMetadataController *)self clearMetadataForFrame:v4];
}

- (void)metadataForFrame:(id)a3 requestType:(unint64_t)a4
{
  v5 = a3;
  v8 = [v5 frameRef];
  WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>(&self->_framesToMetadataMap, &v8, v9);
  v6 = *(v9[0] + 8);
  if (!v6)
  {
    operator new();
  }

  return v6;
}

- (void)recursivelyCollectMetadataInFrame:(id)a3 requestType:(unint64_t)a4 frames:(id)a5 formMetadata:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 committedURL];
  if ([v13 safari_isHTTPFamilyURL] & 1) != 0 || (objc_msgSend(v13, "isFileURL"))
  {
  }

  else
  {
    v21 = [v13 safari_isDataURL];

    if (!v21)
    {
      goto LABEL_12;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = SafariShared::FrameMetadata::metadataForAllForms([(WBSFormMetadataController *)self metadataForFrame:v10 requestType:a4], a4);
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        [v11 addObject:v10];
        [v12 addObject:v18];
        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

LABEL_12:
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__WBSFormMetadataController_recursivelyCollectMetadataInFrame_requestType_frames_formMetadata___block_invoke;
  v22[3] = &unk_1E7FC61A0;
  v22[4] = self;
  v25 = a4;
  v19 = v11;
  v23 = v19;
  v20 = v12;
  v24 = v20;
  [v10 enumerateChildFramesUsingBlock:v22];
}

- (BOOL)recursivelyCollectAncestorFramesOfFrame:(id)a3 startingFromFrame:(id)a4 ancestorFrames:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 frameRef];
  if (v11 == [v8 frameRef])
  {
    [v10 addObject:v9];
    v12 = 1;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __102__WBSFormMetadataController_recursivelyCollectAncestorFramesOfFrame_startingFromFrame_ancestorFrames___block_invoke;
    v14[3] = &unk_1E7FC61C8;
    v14[4] = self;
    v15 = v8;
    v16 = v10;
    v18 = &v19;
    v17 = v9;
    [v17 enumerateChildFramesUsingBlock:v14];
    v12 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  return v12 & 1;
}

void __102__WBSFormMetadataController_recursivelyCollectAncestorFramesOfFrame_startingFromFrame_ancestorFrames___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) recursivelyCollectAncestorFramesOfFrame:*(a1 + 40) startingFromFrame:? ancestorFrames:?])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    [*(a1 + 48) addObject:*(a1 + 56)];
  }
}

- (void)getMetadataForAllFormsInPageWithMainFrame:(id)a3 requestType:(unint64_t)a4 frames:(id *)a5 formMetadata:(id *)a6
{
  v14 = a3;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  [(WBSFormMetadataController *)self recursivelyCollectMetadataInFrame:v14 requestType:a4 frames:v10 formMetadata:v11];
  if (a5)
  {
    v12 = v10;
    *a5 = v10;
  }

  if (a6)
  {
    v13 = v11;
    *a6 = v11;
  }
}

- (OpaqueJSValue)_jsObjectForForm:(id)a3 inFrame:(id)a4
{
  v5 = a4;
  v6 = [v5 jsWrapperInMetadataControllerScriptWorldForNode:a3];
  if (v6)
  {
    v6 = JSValueToObject([v5 jsContextForMetadataControllerScriptWorld], v6, 0);
  }

  return v6;
}

- (id)metadataForForm:(id)a3 inFrame:(id)a4 requestType:(unint64_t)a5
{
  v5 = [(WBSFormMetadataController *)self metadataForForm:a3 inFrame:a4 requestType:a5 addUserEditedStateForUserNameAndPasswordFields:0];

  return v5;
}

- (id)metadataForForm:(id)a3 inFrame:(id)a4 requestType:(unint64_t)a5 addUserEditedStateForUserNameAndPasswordFields:(BOOL)a6
{
  v10 = a4;
  v11 = [(WBSFormMetadataController *)self _jsObjectForForm:a3 inFrame:v10];
  if (v11)
  {
    v12 = SafariShared::FrameMetadata::metadataForForm([(WBSFormMetadataController *)self metadataForFrame:v10 requestType:a5], v11, a5);
    if (a6)
    {
      v13 = [(WBSFormMetadataController *)self _formMetadataByAddingInformationAboutUserEditedStateForUserNameAndPasswordFieldsToFormMetadata:v12 inFrame:v10];

      v12 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_formMetadataByAddingInformationAboutUserEditedStateForUserNameAndPasswordFieldsToFormMetadata:(id)a3 inFrame:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = a4;
  v21 = [v5 userNameElementUniqueID];
  v6 = [v5 passwordElementUniqueID];
  v20 = v6;
  if (__PAIR128__(v21, v6) != 0)
  {
    v18 = v5;
    v7 = [v5 controls];
    v8 = [v7 mutableCopy];

    v19 = [MEMORY[0x1E695DF70] array];
    if (v21)
    {
      [v19 addObject:v21];
    }

    if (v20)
    {
      [v19 addObject:v20];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v19;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __132__WBSFormMetadataController__formMetadataByAddingInformationAboutUserEditedStateForUserNameAndPasswordFieldsToFormMetadata_inFrame___block_invoke;
          v25[3] = &unk_1E7FC5F68;
          v25[4] = v12;
          v13 = [v8 indexOfObjectPassingTest:v25];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = [v8 objectAtIndexedSubscript:v13];
            v15 = [v14 mutableCopy];

            v16 = [(WBSFormMetadataController *)self formAutoFillNodeForField:v12 inFrame:v23];
            [v15 setUserEditedTextField:{objc_msgSend(v16, "isHTMLInputElementUserEdited")}];
            [v8 setObject:v15 atIndexedSubscript:v13];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    v5 = [v18 formMetadataByReplacingControlsWith:v8];
  }

  return v5;
}

uint64_t __132__WBSFormMetadataController__formMetadataByAddingInformationAboutUserEditedStateForUserNameAndPasswordFieldsToFormMetadata_inFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)formMetadataControlsByAddingAdditionalControlInformationToFormMetadata:(id)a3 inFrame:(id)a4 inContext:(OpaqueJSContext *)a5 withControlMetadataContainingAdditionalControlInformation:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = a4;
  v9 = a6;
  v22 = [a3 controls];
  v10 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v22;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 uniqueID];
        v16 = [v9 uniqueID];
        v17 = [v15 isEqualToString:v16];

        if (v17)
        {
          v18 = [v9 copy];
          [v10 addObject:v18];
        }

        else
        {
          [v10 addObject:v14];
          v18 = [(WBSFormMetadataController *)self formAutoFillNodeForJSWrapper:controlObject(v24 inContext:v15), a5];
          if (v18)
          {
            v19 = [v14 mutableCopy];
            SafariShared::addAdditionalControlMetadata(v19, v18);
            v20 = [v19 copy];
            [v10 setObject:v20 atIndexedSubscript:{objc_msgSend(v10, "count") - 1}];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  return v10;
}

- (void)_lockMetadataForForm:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(WBSFormMetadataController *)self _unlockMetadataForForm:v6 inFrame:v7];
  v8 = [(WBSFormMetadataController *)self _jsObjectForForm:v6 inFrame:v7];
  if (v8)
  {
    v9 = [v7 jsContextForMetadataControllerScriptWorld];
    v10 = SafariShared::FrameMetadata::jsMetadataForForm([(WBSFormMetadataController *)self metadataForFrame:v7 requestType:0], v8, 0);
    if (v10)
    {
      SafariShared::JSUtilities::jsString("_safariLockedFormMetadata", &propertyName);
      JSObjectSetProperty(v9, v8, propertyName, v10, 0, 0);
      if (propertyName)
      {
        JSStringRelease(propertyName);
      }
    }
  }
}

- (void)_unlockMetadataForForm:(id)a3 inFrame:(id)a4
{
  v6 = a4;
  v7 = [(WBSFormMetadataController *)self _jsObjectForForm:a3 inFrame:v6];
  if (v7)
  {
    v8 = [v6 jsContextForMetadataControllerScriptWorld];
    SafariShared::JSUtilities::jsString("_safariLockedFormMetadata", &propertyName);
    JSObjectDeleteProperty(v8, v7, propertyName, 0);
    if (propertyName)
    {
      JSStringRelease(propertyName);
    }
  }
}

- (void)getMetadataForTextField:(id)a3 inFrame:(id)a4 textFieldMetadata:(id *)a5 formMetadata:(id *)a6 requestType:(unint64_t)a7
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v51 = v12;
  [(WBSFormMetadataController *)self metadataForFrame:v13 requestType:0];
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v14 = [v13 jsWrapperInMetadataControllerScriptWorldForNode:v12];
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = [v13 jsContextForMetadataControllerScriptWorld];
  v16 = JSValueToObject(v15, v14, 0);
  ctx = v15;
  v18 = SafariShared::JSUtilities::globalJSObjectByName(v15, "FormMetadataJS", v17);
  if (!v18)
  {
    goto LABEL_14;
  }

  v49 = v18;
  Boolean = 0;
  *v57 = v16;
  Number = JSValueMakeNumber(v15, a7);
  Boolean = JSValueMakeBoolean(v15, self->_cachedFormMetadata != 0);
  v19 = SafariShared::JSUtilities::callJSMethodWithArguments(v15, v49, "textFieldOrSelectElementMetadata", v57, 3);
  if (!v19)
  {
LABEL_13:
    SafariShared::JSUtilities::callJSMethodWithArguments(ctx, v49, "clearTextFieldOrSelectElementMetadataCache", 0, 0);
LABEL_14:
    cachedFormMetadata = self->_cachedFormMetadata;
    self->_cachedFormMetadata = 0;

    goto LABEL_15;
  }

  v20 = MEMORY[0x1E696EB58];
  v21 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(v15)];
  v44 = a6;
  v45 = a5;
  v48 = [v20 valueWithJSValueRef:v19 inContext:v21];

  v22 = [v48 objectForKeyedSubscript:@"length"];
  v23 = [v22 toInt32] == 2;

  if (!v23 || ([v48 objectAtIndexedSubscript:0], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "toDictionary"), v46 = objc_claimAutoreleasedReturnValue(), v24, !v46))
  {

    goto LABEL_13;
  }

  v25 = [(WBSFormControlMetadata *)[WBSMutableFormControlMetadata alloc] initWithDictionary:v46];
  v43 = [v48 objectAtIndexedSubscript:1];
  if ([v43 toBool])
  {
    v26 = [[WBSFormMetadata alloc] initWithJSValue:v43];
    v27 = self->_cachedFormMetadata;
    v47 = v26;
    self->_cachedFormMetadata = v26;
  }

  else
  {
    v29 = self->_cachedFormMetadata;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v47 = v29;
    v27 = [(WBSFormMetadata *)v29 controls];
    v30 = [v27 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v30)
    {
      v31 = *v53;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v53 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v52 + 1) + 8 * i);
          v34 = [v33 uniqueID];
          v35 = [(WBSFormControlMetadata *)v25 uniqueID];
          v36 = v34 == v35;

          if (v36)
          {
            v37 = [(WBSFormControlMetadata *)v25 value];
            [v33 setValue:v37];
          }
        }

        v30 = [v27 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v30);
    }
  }

  SafariShared::addAdditionalControlMetadata(v25, v51);
  -[WBSMutableFormControlMetadata setUserEditedTextField:](v25, "setUserEditedTextField:", [v51 isHTMLInputElementUserEdited]);
  v38 = [MEMORY[0x1E695DF70] array];
  v39 = [v13 pageMainFrame];
  [(WBSFormMetadataController *)self recursivelyCollectAncestorFramesOfFrame:v13 startingFromFrame:v39 ancestorFrames:v38];

  v40 = [v38 safari_mapObjectsUsingBlock:&__block_literal_global_52];
  [(WBSMutableFormControlMetadata *)v25 setAncestorFrameURLs:v40];

  if (v45)
  {
    *v45 = [(WBSMutableFormControlMetadata *)v25 copy];
  }

  if (v44)
  {
    SafariShared::addPasswordRequirementsToFormMetadata(v47, v41);
    v42 = v47;
    *v44 = v47;
  }

LABEL_15:
}

id __104__WBSFormMetadataController_getMetadataForTextField_inFrame_textFieldMetadata_formMetadata_requestType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 committedURL];

  return v2;
}

- (void)getMetadataForTextField:(id)a3 inFrame:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 pageMainFrame];
  [(WBSFormMetadataController *)self getMetadataForAllFormsInPageWithMainFrame:v11 requestType:0 frames:0 formMetadata:0];

  v12 = [(WBSFormMetadataController *)self formAutoFillNodeForField:v8 inFrame:v9];
  if (v12)
  {
    v15 = 0;
    v16 = 0;
    [(WBSFormMetadataController *)self getMetadataForTextField:v12 inFrame:v9 textFieldMetadata:&v16 formMetadata:&v15 requestType:0];
    v13 = v16;
    v14 = v15;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v10[2](v10, v14, v13);
}

- (id)uniqueIDForTextField:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(WBSFormMetadataController *)self metadataForFrame:v7 requestType:0];
  v8 = [v7 jsWrapperInMetadataControllerScriptWorldForNode:v6];
  if (v8 && (v9 = [v7 jsContextForMetadataControllerScriptWorld], *v15 = JSValueToObject(v9, v8, 0), (v11 = SafariShared::JSUtilities::globalJSObjectByName(v9, "FormMetadataJS", v10)) != 0) && (v12 = SafariShared::JSUtilities::callJSMethodWithArguments(v9, v11, "controlUniqueID", v15, 1)) != 0)
  {
    v13 = SafariShared::JSUtilities::toNSString(v9, v12, 2);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)userEditedTextControlCountInArray:(OpaqueJSValue *)a3 context:(OpaqueJSContext *)a4 expectTextFieldsRatherThanTextAreas:(BOOL)a5
{
  if (!a3)
  {
    return 0;
  }

  v5 = a5;
  v8 = JSValueToObject(a4, a3, 0);
  if (!v8)
  {
    return 0;
  }

  v10 = v8;
  v21 = 0;
  v11 = SafariShared::JSUtilities::arrayLength(a4, v8, &v21, v9);
  v12 = 0;
  if (!v21)
  {
    v13 = v11;
    if (v11)
    {
      v12 = 0;
      v14 = 0;
      do
      {
        PropertyAtIndex = JSObjectGetPropertyAtIndex(a4, v10, v14, 0);
        if (PropertyAtIndex)
        {
          v16 = JSValueToObject(a4, PropertyAtIndex, 0);
          if (v16)
          {
            v17 = [(WBSFormMetadataController *)self formAutoFillNodeForJSWrapper:v16 inContext:a4];
            v18 = v17;
            if (v17)
            {
              if (v5)
              {
                v19 = [v17 isHTMLInputElementUserEdited];
              }

              else
              {
                v19 = [v17 isHTMLTextAreaElementUserEdited];
              }

              v12 += v19;
            }
          }
        }

        ++v14;
      }

      while (v13 != v14);
    }
  }

  return v12;
}

- (void)countUserEditedTextControlsInFrame:(id)a3 textFields:(unint64_t *)a4 textAreas:(unint64_t *)a5
{
  v8 = a3;
  [(WBSFormMetadataController *)self metadataForFrame:v8 requestType:0];
  v9 = [v8 jsContextForMetadataControllerScriptWorld];
  v11 = v9;
  if (v9)
  {
    v12 = SafariShared::JSUtilities::globalJSObjectByName(v9, "FormMetadataJS", v10);
    if (v12)
    {
      v13 = SafariShared::JSUtilities::callJSMethodWithArguments(v11, v12, "visibleNonEmptyFormTextControls", 0, 0);
      if (v13)
      {
        v14 = JSValueToObject(v11, v13, 0);
        v16 = 0;
        if (SafariShared::JSUtilities::arrayLength(v11, v14, &v16, v15) == 2 && !v16)
        {
          *a4 = [(WBSFormMetadataController *)self userEditedTextControlCountInArray:JSObjectGetPropertyAtIndex(v11 context:v14 expectTextFieldsRatherThanTextAreas:0, 0), v11, 1];
          *a5 = [(WBSFormMetadataController *)self userEditedTextControlCountInArray:JSObjectGetPropertyAtIndex(v11 context:v14 expectTextFieldsRatherThanTextAreas:1u, 0), v11, 0];
        }
      }
    }
  }
}

- (void)recursivelyCountUserEditedTextControlsInFrame:(id)a3 textFields:(unint64_t *)a4 textAreas:(unint64_t *)a5
{
  v8 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  [(WBSFormMetadataController *)self countUserEditedTextControlsInFrame:v8 textFields:&v17 textAreas:&v13];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__WBSFormMetadataController_recursivelyCountUserEditedTextControlsInFrame_textFields_textAreas___block_invoke;
  v9[3] = &unk_1E7FC6210;
  v9[4] = self;
  v9[5] = &v14;
  v9[6] = &v10;
  [v8 enumerateChildFramesUsingBlock:v9];
  *a4 += v15[3];
  *a5 += v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

- (BOOL)pageWithMainFrameMeetsEditedFormTextWarningCriteria:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isAutoFillDrivenByUIProcess])
  {
    goto LABEL_8;
  }

  v5 = [v4 jsContextForMetadataControllerScriptWorld];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  GlobalObject = JSContextGetGlobalObject(v5);
  if (SafariShared::jsObjectHasOnBeforeUnloadProperty(v6, GlobalObject, v8))
  {
    goto LABEL_8;
  }

  v10 = SafariShared::JSUtilities::globalJSObjectByName(v6, "document", v9);
  SafariShared::JSUtilities::jsString("body", &propertyName);
  Property = JSObjectGetProperty(v6, v10, propertyName, 0);
  v13 = JSValueToObject(v6, Property, 0);
  if (propertyName)
  {
    JSStringRelease(propertyName);
  }

  if (v13 && SafariShared::jsObjectHasOnBeforeUnloadProperty(v6, v13, v12))
  {
LABEL_8:
    v14 = 0;
  }

  else
  {
    v17 = 0;
    propertyName = 0;
    [(WBSFormMetadataController *)self recursivelyCountUserEditedTextControlsInFrame:v4 textFields:&propertyName textAreas:&v17];
    [(WBSFormMetadataController *)self recursivelyClearMetadataForFrames:v4];
    if (v17)
    {
      v16 = 1;
    }

    else
    {
      v16 = propertyName > 1;
    }

    v14 = v16;
  }

  return v14;
}

- (void)textFieldFocused:(id)a3 inFrame:(id)a4 textFieldMetadata:(id)a5 formMetadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 frameRef];
  m_table = self->_framesToMetadataMap.m_impl.m_table;
  if (!m_table)
  {
LABEL_9:
    v23 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [WBSFormMetadataController textFieldFocused:v23 inFrame:? textFieldMetadata:? formMetadata:?];
    }

    goto LABEL_11;
  }

  if (!v14)
  {
    [WBSFormMetadataController textFieldFocused:inFrame:textFieldMetadata:formMetadata:];
  }

  if (v14 == -1)
  {
    [WBSFormMetadataController textFieldFocused:inFrame:textFieldMetadata:formMetadata:];
  }

  v16 = *(m_table - 2);
  v17 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
  v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
  v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
  v20 = v16 & ((v19 >> 31) ^ v19);
  v21 = *&m_table[4 * v20];
  if (v21 != v14)
  {
    v22 = 1;
    while (v21)
    {
      v20 = (v20 + v22) & v16;
      v21 = *&m_table[4 * v20];
      ++v22;
      if (v21 == v14)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_9;
  }

LABEL_11:
}

- (id)formElementWithFormID:(double)a3 inFrame:(id)a4
{
  Number = [a4 jsContextForMetadataControllerScriptWorld];
  if (Number)
  {
    v8 = Number;
    Number = SafariShared::JSUtilities::globalJSObjectByName(Number, "FormMetadataJS", v7);
    if (Number)
    {
      v9 = Number;
      Number = JSValueMakeNumber(v8, a3);
      *v11 = Number;
      if (Number)
      {
        Number = SafariShared::JSUtilities::callJSMethodWithArguments(v8, v9, "formElementWithFormID", v11, 1);
        if (Number)
        {
          Number = [(WBSFormMetadataController *)self formAutoFillNodeForJSWrapper:JSValueToObject(v8 inContext:Number, 0), v8];
        }
      }
    }
  }

  return Number;
}

- (BOOL)autoFillFrameIsValid:(id)a3
{
  v4 = a3;
  v5 = [v4 frameRef];
  if (v5 && (m_table = self->_framesToMetadataMap.m_impl.m_table) != 0)
  {
    if (v5 == -1)
    {
      [WBSFormMetadataController textFieldFocused:inFrame:textFieldMetadata:formMetadata:];
    }

    v7 = *(m_table - 2);
    v8 = (~(v5 << 32) + v5) ^ ((~(v5 << 32) + v5) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *&m_table[4 * v11];
    if (v12 == v5)
    {
      v14 = 1;
    }

    else
    {
      v13 = 1;
      do
      {
        v14 = v12 != 0;
        if (!v12)
        {
          break;
        }

        v11 = (v11 + v13) & v7;
        v12 = *&m_table[4 * v11];
        ++v13;
      }

      while (v12 != v5);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)formAutoFillNodeForField:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WBSFormMetadataController *)self autoFillFrameIsValid:v7])
  {
    v8 = -[WBSFormMetadataController formAutoFillNodeForJSWrapper:inContext:](self, "formAutoFillNodeForJSWrapper:inContext:", controlObject(v7, v6), [v7 jsContextForMetadataControllerScriptWorld]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formSubmissionURLStringForSearchTextField:(id)a3 inFrame:(id)a4 useStrictDetection:(BOOL)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  [(WBSFormMetadataController *)self metadataForFrame:v9 requestType:0];
  v10 = [v9 jsWrapperInMetadataControllerScriptWorldForNode:v8];
  if (v10 && (v11 = [v9 jsContextForMetadataControllerScriptWorld], v12 = JSValueToObject(v11, v10, 0), (v14 = SafariShared::JSUtilities::globalJSObjectByName(v11, "FormMetadataJS", v13)) != 0) && (*v24 = v12, Boolean = JSValueMakeBoolean(v11, a5), (v15 = SafariShared::JSUtilities::callJSMethodWithArguments(v11, v14, "searchTextFieldFormSubmissionURLString", v24, 2)) != 0))
  {
    v17 = SafariShared::JSUtilities::translateJSValueToNS(v11, v15, v16);
    v18 = [MEMORY[0x1E695DFB0] null];
    v19 = v17 == v18;

    v20 = !v19;
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

    if (v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = v17;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)visibleNonEmptyTextFieldsInForm:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(WBSFormMetadataController *)self metadataForFrame:v7 requestType:0];
  v8 = [v7 jsWrapperInMetadataControllerScriptWorldForNode:v6];
  if (v8)
  {
    v9 = [v7 jsContextForMetadataControllerScriptWorld];
    *v26 = JSValueToObject(v9, v8, 0);
    v11 = SafariShared::JSUtilities::globalJSObjectByName(v9, "FormMetadataJS", v10);
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = SafariShared::JSUtilities::callJSMethodWithArguments(v9, v11, "visibleNonEmptyFormTextControlsInForm", v26, 1);
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = JSValueToObject(v9, v12, 0);
    v25 = 0;
    v8 = 0;
    if (SafariShared::JSUtilities::arrayLength(v9, v13, &v25, v14) != 2 || v25)
    {
      goto LABEL_19;
    }

    PropertyAtIndex = JSObjectGetPropertyAtIndex(v9, v13, 0, 0);
    if (!PropertyAtIndex || (v17 = JSValueToObject(v9, PropertyAtIndex, 0)) == 0)
    {
LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

    v18 = SafariShared::JSUtilities::arrayLength(v9, v17, &v25, v16);
    v8 = 0;
    if (!v25)
    {
      v19 = v18;
      if (v18)
      {
        v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v18];
        v20 = 0;
        do
        {
          v21 = JSObjectGetPropertyAtIndex(v9, v17, v20, 0);
          if (v21)
          {
            v22 = JSValueToObject(v9, v21, 0);
            if (v22)
            {
              v23 = [(WBSFormMetadataController *)self formAutoFillNodeForJSWrapper:v22 inContext:v9];
              if (v23)
              {
                [(OpaqueJSValue *)v8 addObject:v23];
              }
            }
          }

          ++v20;
        }

        while (v19 != v20);
      }
    }
  }

LABEL_19:

  return v8;
}

+ (BOOL)manualAutoFillButtonWillFitInFieldWithMetadata:(id)a3
{
  v3 = a3;
  if ([v3 isVerticalWritingMode])
  {
    [v3 rectHeight];
  }

  else
  {
    [v3 rectWidth];
  }

  v5 = v4 >= 100.0;

  return v5;
}

- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)a3 formID:(double)a4 focusedPasswordControlUniqueID:(id)a5 passwordControlUniqueIDs:(id)a6 automaticPassword:(id)a7 blurAfterSubstitution:(BOOL)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v19 = [v15 jsContextForMetadataControllerScriptWorld];
  if (v19)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __213__WBSFormMetadataController_substitutePasswordElementsWithAutomaticPasswordElementsInFrame_formID_focusedPasswordControlUniqueID_passwordControlUniqueIDs_automaticPassword_blurAfterSubstitution_completionHandler___block_invoke;
    v20[3] = &unk_1E7FC6238;
    v21 = v15;
    v22 = self;
    v25 = v19;
    v26 = a8;
    v24 = v18;
    v23 = v16;
    [(WBSFormMetadataController *)self fillForm:v21 inFrame:v17 withPassword:v23 focusedFieldControlID:v20 completionHandler:a4];
  }

  else
  {
    (*(v18 + 2))(v18, 0);
  }
}

void __213__WBSFormMetadataController_substitutePasswordElementsWithAutomaticPasswordElementsInFrame_formID_focusedPasswordControlUniqueID_passwordControlUniqueIDs_automaticPassword_blurAfterSubstitution_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = controlObject(*(a1 + 32), *(*(&v13 + 1) + 8 * i));
        v8 = [*(a1 + 40) formAutoFillNodeForJSWrapper:v7 inContext:{*(a1 + 64), v13}];
        v9 = v8;
        if (*(a1 + 72) == 1)
        {
          [v8 setHTMLInputElementAutoFilledAndObscured:1];
        }

        else
        {
          [v8 setHTMLInputElementAutoFilledAndViewable:1];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v4);
  }

  if (*(a1 + 72) == 1)
  {
    v12 = SafariShared::JSUtilities::globalJSObjectByName(*(a1 + 64), "AutomaticPasswordsJS", v10);
    if (v12)
    {
      *v17 = SafariShared::JSUtilities::translateNSToJSValue(*(a1 + 64), *(a1 + 48), v11);
      SafariShared::JSUtilities::callJSMethodWithArguments(*(a1 + 64), v12, "blurControlWithID", v17, 1);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)removeAutomaticPasswordElementsInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4 passwordControlUniqueIDs:(id)a5 blurAfterRemoval:(BOOL)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v23 = a4;
  v10 = a5;
  v11 = [v9 jsContextForMetadataControllerScriptWorld];
  v13 = v11;
  if (v11)
  {
    v14 = SafariShared::JSUtilities::globalJSObjectByName(v11, "AutomaticPasswordsJS", v12);
    if (v14)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = v10;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v16)
      {
        v17 = *v25;
        do
        {
          v18 = 0;
          do
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = [(WBSFormMetadataController *)self formAutoFillNodeForJSWrapper:controlObject(v9 inContext:*(*(&v24 + 1) + 8 * v18)), v13];
            [v19 setHTMLInputElementAutoFilledAndViewable:0];
            [v19 setHTMLInputElementAutoFilledWithAutomaticStrongPassword:0];

            ++v18;
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v24 objects:v31 count:16];
        }

        while (v16);
      }

      *v28 = SafariShared::JSUtilities::translateNSToJSValue(v13, v15, v20);
      v29 = SafariShared::JSUtilities::translateNSToJSValue(v13, v23, v21);
      v30 = JSValueMakeBoolean(v13, a6);
      SafariShared::JSUtilities::callJSMethodWithArguments(v13, v14, "removeAutomaticPasswordElements", v28, 3);
    }
  }
}

- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)a3 passwordControlUniqueIDs:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 jsContextForMetadataControllerScriptWorld];
  if (v8)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = controlObject(v6, *(*(&v15 + 1) + 8 * v12));
          v14 = [(WBSFormMetadataController *)self formAutoFillNodeForJSWrapper:v13 inContext:v8, v15];
          [v14 setHTMLInputElementAutoFilledWithAutomaticStrongPassword:0];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)automaticPasswordSheetDimissedInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 jsContextForMetadataControllerScriptWorld];
  v8 = v6;
  if (v6)
  {
    v10 = SafariShared::JSUtilities::globalJSObjectByName(v6, "AutomaticPasswordsJS", v7);
    if (v10)
    {
      v11[0] = SafariShared::JSUtilities::translateNSToJSValue(v8, v5, v9);
      SafariShared::JSUtilities::callJSMethodWithArguments(v8, v10, "blurControlWithID", v11, 1);
    }
  }
}

- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)a3 frame:(id)a4 passwordControlUniqueIDs:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a4 jsContextForMetadataControllerScriptWorld];
  v10 = v8;
  if (v8)
  {
    v12 = SafariShared::JSUtilities::globalJSObjectByName(v8, "AutomaticPasswordsJS", v9);
    if (v12)
    {
      *v13 = SafariShared::JSUtilities::translateNSToJSValue(v10, v7, v11);
      Boolean = JSValueMakeBoolean(v10, a3);
      SafariShared::JSUtilities::callJSMethodWithArguments(v10, v12, "setStrongPasswordElementViewableIfAppropriate", v13, 2);
    }
  }
}

- (id)metadataForActiveFormInPageWithMainFrame:(id)a3
{
  v14 = 0;
  v15 = 0;
  [(WBSFormMetadataController *)self getMetadataForAllFormsInPageWithMainFrame:a3 requestType:4 frames:&v15 formMetadata:&v14];
  v3 = v15;
  v4 = v14;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__14;
  v12 = __Block_byref_object_dispose__14;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__WBSFormMetadataController_metadataForActiveFormInPageWithMainFrame___block_invoke;
  v7[3] = &unk_1E7FC6260;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __70__WBSFormMetadataController_metadataForActiveFormInPageWithMainFrame___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 containsActiveElement])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)setAutoFillSpinnerVisibility:(BOOL)a3 textFieldMetadata:(id)a4 frame:(id)a5
{
  v6 = a3;
  v13 = a4;
  v8 = a5;
  v9 = [v8 jsContextForMetadataControllerScriptWorld];
  if (v9 && [objc_opt_class() manualAutoFillButtonWillFitInFieldWithMetadata:v13])
  {
    v10 = [v13 uniqueID];
    v11 = controlObject(v8, v10);

    v12 = [(WBSFormMetadataController *)self formAutoFillNodeForJSWrapper:v11 inContext:v9];
    [v12 setSpinnerVisibilityOnHTMLInputElement:v6];
  }
}

+ (id)formMetadataClassificationJS
{
  v2 = objc_alloc_init(MEMORY[0x1E696EB40]);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [v3 initWithBytes:formMetadataClassificationSource length:15447 encoding:1];
  v5 = [v2 globalObject];
  v6 = [MEMORY[0x1E696EB58] valueWithUInt32:0 inContext:v2];
  [v5 setValue:v6 forProperty:@"WBSFormMetadataRequestNormal"];

  v7 = [v2 globalObject];
  v8 = [MEMORY[0x1E696EB58] valueWithUInt32:1 inContext:v2];
  [v7 setValue:v8 forProperty:@"WBSFormMetadataRequestPreFill"];

  v9 = [v2 globalObject];
  v10 = [MEMORY[0x1E696EB58] valueWithUInt32:2 inContext:v2];
  [v9 setValue:v10 forProperty:@"WBSFormMetadataRequestTesting"];

  v11 = [v2 globalObject];
  v12 = [MEMORY[0x1E696EB58] valueWithUInt32:3 inContext:v2];
  [v11 setValue:v12 forProperty:@"WBSFormMetadataRequestTextChange"];

  v13 = [v2 globalObject];
  v14 = [MEMORY[0x1E696EB58] valueWithUInt32:4 inContext:v2];
  [v13 setValue:v14 forProperty:@"WBSFormMetadataRequestCollectMetadataFromDebugMenu"];

  v15 = [v2 globalObject];
  v16 = [MEMORY[0x1E696EB58] valueWithUInt32:0 inContext:v2];
  [v15 setValue:v16 forProperty:@"WBSAutoFillFormTypeUndetermined"];

  v17 = [v2 globalObject];
  v18 = [MEMORY[0x1E696EB58] valueWithUInt32:1 inContext:v2];
  [v17 setValue:v18 forProperty:@"WBSAutoFillFormTypeAutoFillableStandard"];

  v19 = [v2 globalObject];
  v20 = [MEMORY[0x1E696EB58] valueWithUInt32:2 inContext:v2];
  [v19 setValue:v20 forProperty:@"WBSAutoFillFormTypeNonAutoFillable"];

  v21 = [v2 globalObject];
  v22 = [MEMORY[0x1E696EB58] valueWithUInt32:3 inContext:v2];
  [v21 setValue:v22 forProperty:@"WBSAutoFillFormTypeAutoFillableLogin"];

  v23 = [v2 globalObject];
  v24 = [MEMORY[0x1E696EB58] valueWithUInt32:4 inContext:v2];
  [v23 setValue:v24 forProperty:@"WBSAutoFillFormTypeNewAccount"];

  v25 = [v2 globalObject];
  v26 = [MEMORY[0x1E696EB58] valueWithUInt32:5 inContext:v2];
  [v25 setValue:v26 forProperty:@"WBSAutoFillFormTypeChangePassword"];

  v27 = [MEMORY[0x1E696EB58] valueWithNewObjectInContext:v2];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __57__WBSFormMetadataController_formMetadataClassificationJS__block_invoke;
  v40 = &unk_1E7FC6288;
  v28 = v2;
  v41 = v28;
  v29 = v27;
  v42 = v29;
  v30 = MEMORY[0x1BFB13CE0](&v37);
  (v30)[2](v30, @"specifierForAutocompleteTokensAndAddressBookLabel", SafariShared::jsSpecifierForAutocompleteTokensAndAddressBookLabel);
  (v30)[2](v30, @"dateFormatFromTemplate", SafariShared::jsDateFormatFromTemplate);
  (v30)[2](v30, @"stringFromDateFormat", SafariShared::jsStringFromDateFormat);
  v31 = [v28 globalObject];
  [v31 setValue:v29 forProperty:@"FormMetadataJSController"];

  [v28 setExceptionHandler:&__block_literal_global_153];
  v32 = [MEMORY[0x1E695DFF8] URLWithString:@"FormMetadataClassification.js"];
  v33 = [v28 evaluateScript:v4 withSourceURL:v32];

  v34 = [v28 globalObject];
  v35 = [v34 objectForKeyedSubscript:@"FormMetadataClassificationJS"];

  return v35;
}

void __57__WBSFormMetadataController_formMetadataClassificationJS__block_invoke(uint64_t a1, void *a2, JSValueRef (__cdecl *a3)(JSContextRef, JSObjectRef, JSObjectRef, size_t, const JSValueRef[], JSValueRef *))
{
  v5 = a2;
  v6 = [*(a1 + 32) JSGlobalContextRef];
  SafariShared::JSUtilities::jsString(v5, &name);
  FunctionWithCallback = JSObjectMakeFunctionWithCallback(v6, name, a3);
  if (name)
  {
    JSStringRelease(name);
  }

  v8 = [MEMORY[0x1E696EB58] valueWithJSValueRef:FunctionWithCallback inContext:*(a1 + 32)];
  [*(a1 + 40) setValue:v8 forProperty:v5];
}

void __57__WBSFormMetadataController_formMetadataClassificationJS__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  SafariShared::JSUtilities::logExceptionInChannel(v5, [v6 JSGlobalContextRef], objc_msgSend(v4, "JSValueRef"));
}

+ (id)classifyFormMetadata:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 formMetadataClassificationJS];
  v6 = MEMORY[0x1E696EB58];
  v7 = [v4 dictionaryRepresentationRedactingSensitiveValues:0 withKnownSensitiveValues:0];
  v8 = [v5 context];
  v9 = [v6 valueWithObject:v7 inContext:v8];

  [v9 setObject:&unk_1F3A9AD90 forKeyedSubscript:@"RequestType"];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v5 invokeMethod:@"classify" withArguments:v10];

  v12 = [[WBSFormMetadata alloc] initWithJSValue:v9];

  return v12;
}

void __99__WBSFormMetadataController_fillForm_inFrame_withPassword_focusedFieldControlID_completionHandler___block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  v7 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a3, OS_LOG_TYPE_ERROR, "fillFormWithPassword unexpectedly returned a non-array value which when coerced was of type %@", a2, 0xCu);
}

@end