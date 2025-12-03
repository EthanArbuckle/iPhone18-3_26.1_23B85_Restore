@interface SSStatisticsManager
+ (id)sharedStatisticsManager;
- (id)_triggerTypeForPresentationMode:(unint64_t)mode;
- (void)_appendSettingsAndSendEvent:(id)event block:(id)block;
- (void)_sendEvent:(id)event block:(id)block;
- (void)didSubmitFeedbackWithAnnotationCount:(unint64_t)count;
- (void)drewStrokes:(unint64_t)strokes;
- (void)logTotalAnnotations:(unint64_t)annotations;
- (void)screenshotGestureTriggered:(unint64_t)triggered;
- (void)screenshotGestureTriggeredWhileAnotherScreenshotWasShowing:(unint64_t)showing;
- (void)sendDismissalEventWithContext:(id)context;
@end

@implementation SSStatisticsManager

+ (id)sharedStatisticsManager
{
  if (sharedStatisticsManager_onceToken != -1)
  {
    +[SSStatisticsManager sharedStatisticsManager];
  }

  v3 = __sharedStatisticsManager;

  return v3;
}

uint64_t __46__SSStatisticsManager_sharedStatisticsManager__block_invoke()
{
  __sharedStatisticsManager = objc_alloc_init(SSStatisticsManager);

  return MEMORY[0x1EEE66BB8]();
}

- (void)screenshotGestureTriggered:(unint64_t)triggered
{
  v4 = [(SSStatisticsManager *)self _triggerTypeForPresentationMode:triggered];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SSStatisticsManager_screenshotGestureTriggered___block_invoke;
  v6[3] = &unk_1E85906E8;
  v7 = v4;
  v5 = v4;
  [(SSStatisticsManager *)self _appendSettingsAndSendEvent:@"triggered" block:v6];
}

id __50__SSStatisticsManager_screenshotGestureTriggered___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"screenshot_showing";
  v4[1] = @"triggerType";
  v1 = *(a1 + 32);
  v5[0] = MEMORY[0x1E695E110];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)screenshotGestureTriggeredWhileAnotherScreenshotWasShowing:(unint64_t)showing
{
  v4 = [(SSStatisticsManager *)self _triggerTypeForPresentationMode:showing];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__SSStatisticsManager_screenshotGestureTriggeredWhileAnotherScreenshotWasShowing___block_invoke;
  v6[3] = &unk_1E85906E8;
  v7 = v4;
  v5 = v4;
  [(SSStatisticsManager *)self _appendSettingsAndSendEvent:@"triggered" block:v6];
}

id __82__SSStatisticsManager_screenshotGestureTriggeredWhileAnotherScreenshotWasShowing___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"screenshot_showing";
  v4[1] = @"triggerType";
  v1 = *(a1 + 32);
  v5[0] = MEMORY[0x1E695E118];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (id)_triggerTypeForPresentationMode:(unint64_t)mode
{
  v3 = @"keychord";
  if (mode == 2)
  {
    v3 = @"keyboard";
  }

  if (mode == 3)
  {
    return @"pencil";
  }

  else
  {
    return v3;
  }
}

id __53__SSStatisticsManager_fileFormatIsHDRSettingsChanged__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"settingsName";
  v3[0] = @"fileFormatIsHDR";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __45__SSStatisticsManager_carPlaySettingsChanged__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"settingsName";
  v3[0] = @"carPlayScreenshots";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __56__SSStatisticsManager_fullScreenPreviewsSettingsChanged__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"settingsName";
  v3[0] = @"fullScreenPreview";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __51__SSStatisticsManager_pipSlidOffscreenDueToTimeout__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"reason";
  v3[0] = @"slidoffscreenduetotimer";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __47__SSStatisticsManager_pipDragEndedSuccessfully__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"reason";
  v3[0] = @"dragendedsuccessfully";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __34__SSStatisticsManager_pipExpanded__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"reason";
  v3[0] = @"screenshot_showing";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __55__SSStatisticsManager_fullscreenExperienceHadCropEvent__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"cropped";
  v3[0] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __42__SSStatisticsManager_didCropInNormalMode__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"normal";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __44__SSStatisticsManager_didCropInFullPageMode__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"full_page";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __42__SSStatisticsManager_didAccidentallyDraw__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"accidental_draw";
  v3[0] = &unk_1F555C228;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

- (void)drewStrokes:(unint64_t)strokes
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__SSStatisticsManager_drewStrokes___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = strokes;
  [(SSStatisticsManager *)self _sendEvent:@"edit" block:v3];
}

id __35__SSStatisticsManager_drewStrokes___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"stroke_count";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)logTotalAnnotations:(unint64_t)annotations
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__SSStatisticsManager_logTotalAnnotations___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = annotations;
  [(SSStatisticsManager *)self _sendEvent:@"edit" block:v3];
}

id __43__SSStatisticsManager_logTotalAnnotations___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"annotation_count";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __47__SSStatisticsManager_didTapBetaFeedbackButton__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"tapped";
  v3[0] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

- (void)didSubmitFeedbackWithAnnotationCount:(unint64_t)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__SSStatisticsManager_didSubmitFeedbackWithAnnotationCount___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = count;
  [(SSStatisticsManager *)self _sendEvent:@"beta_feedback_submitted" block:v3];
}

id __60__SSStatisticsManager_didSubmitFeedbackWithAnnotationCount___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"annotation_count";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __44__SSStatisticsManager_didTapFullPageSegment__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"tapped";
  v3[0] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __57__SSStatisticsManager_didChangeOpacityOnNormalScreenshot__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"change_type";
  v3[0] = @"normal";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __49__SSStatisticsManager_didChangeOpacityOnFullPage__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"change_type";
  v3[0] = @"full_page";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __54__SSStatisticsManager_didShareScreenSingleScreenshots__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"share_screen_single_screenshot";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __56__SSStatisticsManager_didShareScreenMultipleScreenshots__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"share_screen_multiple_screenshots";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __55__SSStatisticsManager_didShareFullPageMixedScreenshots__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"share_full_page_mixed_screenshots";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __65__SSStatisticsManager_didShareFullPageScreenshotAsAutomaticImage__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"share_full_page_screenshot_as_automatic_image";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __63__SSStatisticsManager_didShareFullPageScreenshotAsAutomaticPDF__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"share_full_page_screenshot_as_automatic_pdf";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __56__SSStatisticsManager_didShareFullPageScreenshotAsImage__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"share_full_page_screenshot_as_image";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __54__SSStatisticsManager_didShareFullPageScreenshotAsPDF__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"share_full_page_screenshot_as_pdf";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __42__SSStatisticsManager_didRenameScreenshot__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"rename_screenshot";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __43__SSStatisticsManager_didSaveImageToPhotos__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"image_to_photos";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __42__SSStatisticsManager_didSaveImageToFiles__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"image_to_files";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __46__SSStatisticsManager_didSaveImageToQuickNote__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"image_to_quick_note";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __46__SSStatisticsManager_didSavePDFImageToPhotos__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"pdf_image_to_photos";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __48__SSStatisticsManager_didSaveFullPagePDFToFiles__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"pdf_to_files";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __51__SSStatisticsManager_didSaveMixedToPhotosAndFiles__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"mixed_photos_and_files";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __54__SSStatisticsManager_didSaveMixedToQuickNoteAndFiles__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"mixed_quick_note_and_files";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __45__SSStatisticsManager_didSaveMixedAllToFiles__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"mixed_all_to_files";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __43__SSStatisticsManager_didDeleteScreenshots__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"delete";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __47__SSStatisticsManager_didCopyDeleteScreenshots__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"copy_and_delete";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __49__SSStatisticsManager_didDeleteScreenshotDueToVI__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"type";
  v3[0] = @"delete_due_to_vi";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

- (void)_sendEvent:(id)event block:(id)block
{
  eventCopy = event;
  blockCopy = block;
  if ([(SSStatisticsManager *)self _statisticsEnabled])
  {
    eventCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.screenshotservices.%@", eventCopy];
    AnalyticsSendEventLazy();
  }
}

- (void)_appendSettingsAndSendEvent:(id)event block:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__SSStatisticsManager__appendSettingsAndSendEvent_block___block_invoke;
  v8[3] = &unk_1E8590750;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SSStatisticsManager *)self _sendEvent:event block:v8];
}

id __57__SSStatisticsManager__appendSettingsAndSendEvent_block___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 mutableCopy];

  v3 = [MEMORY[0x1E696AD98] numberWithBool:_SSHDRCaptureEnabled()];
  [v2 setObject:v3 forKeyedSubscript:@"fileFormatIsHDR"];

  v4 = [MEMORY[0x1E696AD98] numberWithInt:_SSPIPExperienceEnabled() ^ 1];
  [v2 setObject:v4 forKeyedSubscript:@"fullScreenPreview"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:_SSCarPlayScreenshotsEnabled()];
  [v2 setObject:v5 forKeyedSubscript:@"carPlayScreenshots"];

  v6 = [v2 copy];

  return v6;
}

- (void)sendDismissalEventWithContext:(id)context
{
  contextCopy = context;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SSStatisticsManager_sendDismissalEventWithContext___block_invoke;
  v6[3] = &unk_1E85906E8;
  v7 = contextCopy;
  v5 = contextCopy;
  [(SSStatisticsManager *)self _sendEvent:@"dismissal" block:v6];
}

id __53__SSStatisticsManager_sendDismissalEventWithContext___block_invoke(uint64_t a1)
{
  v17[9] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "dismissalType", @"dismissalType"}];
  v17[0] = v2;
  v16[1] = @"dismissalAnimation";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "dismissAnimationStyle")}];
  v17[1] = v3;
  v16[2] = @"dismissalType";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "dismissalType")}];
  v17[2] = v4;
  v16[3] = @"cropUsed";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cropUsed")}];
  v17[3] = v5;
  v16[4] = @"markupUsed";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "markupUsed")}];
  v17[4] = v6;
  v16[5] = @"viUsed";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "viUsed")}];
  v17[5] = v7;
  v16[6] = @"viAvailable";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "viAvailable")}];
  v17[6] = v8;
  v16[7] = @"appearedFullscreen";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "appearedFullScreen")}];
  v17[7] = v9;
  v16[8] = @"numberOfScreenshots";
  v10 = MEMORY[0x1E696AD98];
  v11 = [*(a1 + 32) numberOfScreenshots];
  if (v11 >= 10)
  {
    v12 = 10;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 numberWithInteger:v12];
  v17[8] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];

  return v14;
}

@end