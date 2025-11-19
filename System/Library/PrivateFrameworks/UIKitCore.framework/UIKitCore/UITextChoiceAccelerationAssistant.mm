@interface UITextChoiceAccelerationAssistant
@end

@implementation UITextChoiceAccelerationAssistant

void __72___UITextChoiceAccelerationAssistant_createPromptWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained updateDocumentFromPrompt:*(a1 + 32) completionHandler:*(a1 + 40)];
}

UIColor *__59___UITextChoiceAccelerationAssistant_defaultUnderlineColor__block_invoke(uint64_t a1, void *a2)
{
  v3 = dbl_18A67B7B0[[a2 userInterfaceStyle] == 2];
  v4 = *(a1 + 32);
  v5 = v3 + *(a1 + 40) * fmin(v3, 1.0 - v3);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = 1.0 - v3 / v5 + 1.0 - v3 / v5;
  }

  return [UIColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:v4 brightness:v6 alpha:?];
}

void __96___UITextChoiceAccelerationAssistant_showPromptForReplacementCandidate_originalCandidate_delay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textChoices];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = [*(a1 + 48) prompt];
      [v5 setCandidate:v4];

      v6 = [*(a1 + 48) delegate];
      v7 = [v6 keyboardState];
      v8 = [v7 secureCandidateRenderTraits];
      [v8 singleCellHeight];
      v10 = v9;
      v11 = [*(a1 + 48) prompt];
      [v11 setSecureCandidateHeight:v10];
    }

    if ([*(a1 + 48) usingCustomInteraction])
    {
      v12 = [*(a1 + 48) textInputResponder];
      if (v12)
      {
        v13 = *(a1 + 56);

        if (v13)
        {
          [*(a1 + 48) updateSelectionHighlights];
          v14 = [*(a1 + 48) delegate];
          v15 = [*(a1 + 48) textInputResponder];
          [v14 updateTextChoicePromptSelection:v15 toRange:*(a1 + 56)];
        }
      }
    }

    v16 = *(a1 + 32);
    v17 = [*(a1 + 48) prompt];
    [v17 setReplacement:v16];

    v18 = [*(a1 + 48) prompt];
    v19 = [*(a1 + 32) candidateChoices];
    v20 = *(a1 + 64);
    v21 = [*(a1 + 48) textInputView];
    [v18 updateWithChoices:v19 fromParentView:v20 referenceTextView:v21 presentedFromRect:*(a1 + 72) textHighlightColor:0];

    v22 = *(a1 + 48);
    v23 = [v22 prompt];
    [v22 updatePrompt:v23 forReplacementCandidate:*(a1 + 32)];

    v24 = *(a1 + 48);

    [v24 setupPassthroughContainer];
  }
}

void __97___UITextChoiceAccelerationAssistant_shouldShowPromptForWebKitText_atPosition_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) rangeOfAutocorrectionForString:*(a1 + 40) atPosition:*(a1 + 48) inDocument:a2];
  (*(*(a1 + 56) + 16))(*(a1 + 56), v3 != 0);
}

void __93___UITextChoiceAccelerationAssistant_fullAutocorrectionForWord_atPosition_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) rangeOfAutocorrectionForString:*(a1 + 40) atPosition:*(a1 + 48) inDocument:?];
  if (v3 && ([v15 fullText], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v6 = objc_msgSend(v3, "rangeValue"), v8 = v6 + v7, v4, v5 >= v8))
  {
    v9 = [v15 fullText];
    v10 = [v3 rangeValue];
    v12 = [v9 substringWithRange:{v10, v11}];

    if (v12)
    {
      v13 = [*(a1 + 32) underlinedWordData];
      v14 = [v13 objectForKey:v12];

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __158___UITextChoiceAccelerationAssistant_decorateTextInRanges_replacementTexts_allowAutomaticReplacement_autoHide_voiceCommandTrackingUUID_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateSelectionHighlights];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 updateDocumentFromPrompt:v3 completionHandler:v4];
}

uint64_t __199___UITextChoiceAccelerationAssistant_decorateTextInRects_targetTextArray_replacementTexts_deltaRanges_originalSelectedRange_allowAutomaticReplacement_autoHide_voiceCommandUUID_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateSelectionHighlights];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 updateDocumentFromPrompt:v3 completionHandler:v4];
}

uint64_t __199___UITextChoiceAccelerationAssistant_decorateTextInRects_targetTextArray_replacementTexts_deltaRanges_originalSelectedRange_allowAutomaticReplacement_autoHide_voiceCommandUUID_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) resetDictationChoicesAnimated:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end