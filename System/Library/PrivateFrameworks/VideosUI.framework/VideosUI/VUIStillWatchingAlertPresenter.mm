@interface VUIStillWatchingAlertPresenter
+ (void)presentWithTitle:(id)title presentingController:(id)controller timeout:(double)timeout responseHandler:(id)handler;
@end

@implementation VUIStillWatchingAlertPresenter

+ (void)presentWithTitle:(id)title presentingController:(id)controller timeout:(double)timeout responseHandler:(id)handler
{
  titleCopy = title;
  controllerCopy = controller;
  handlerCopy = handler;
  v12 = MEMORY[0x1E696AEC0];
  v13 = +[VUILocalizationManager sharedInstance];
  v14 = [v13 localizedStringForKey:@"NOW_PLAYING_STILL_WATCHING_MESSAGE"];
  titleCopy = [v12 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, titleCopy];

  v16 = [VUIAlertController vui_alertControllerWithTitle:titleCopy message:0 preferredStyle:1];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__31;
  v42 = __Block_byref_object_dispose__31;
  v17 = MEMORY[0x1E695DFF0];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __96__VUIStillWatchingAlertPresenter_presentWithTitle_presentingController_timeout_responseHandler___block_invoke;
  v35[3] = &unk_1E87366A8;
  v18 = v16;
  v36 = v18;
  v19 = handlerCopy;
  v37 = v19;
  v43 = [v17 timerWithTimeInterval:0 repeats:v35 block:timeout];
  v20 = +[VUILocalizationManager sharedInstance];
  v21 = [v20 localizedStringForKey:@"CONTINUE_WATCHING"];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __96__VUIStillWatchingAlertPresenter_presentWithTitle_presentingController_timeout_responseHandler___block_invoke_3;
  v32[3] = &unk_1E87366D0;
  v34 = &v38;
  v22 = v19;
  v33 = v22;
  v23 = [VUIAlertAction vui_actionWithTitle:v21 style:0 handler:v32];
  [v18 vui_addAction:v23];

  v24 = +[VUILocalizationManager sharedInstance];
  v25 = [v24 localizedStringForKey:@"EXIT"];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __96__VUIStillWatchingAlertPresenter_presentWithTitle_presentingController_timeout_responseHandler___block_invoke_4;
  v29[3] = &unk_1E87366D0;
  v31 = &v38;
  v26 = v22;
  v30 = v26;
  v27 = [VUIAlertAction vui_actionWithTitle:v25 style:0 handler:v29];
  [v18 vui_addAction:v27];

  [v18 vui_presentAlertFromPresentingController:controllerCopy animated:1 completion:0];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [mainRunLoop addTimer:v39[5] forMode:*MEMORY[0x1E695D918]];

  _Block_object_dispose(&v38, 8);
}

void __96__VUIStillWatchingAlertPresenter_presentWithTitle_presentingController_timeout_responseHandler___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __96__VUIStillWatchingAlertPresenter_presentWithTitle_presentingController_timeout_responseHandler___block_invoke_2;
  v2[3] = &unk_1E872D7E0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 vui_dismissViewControllerAnimated:1 completion:v2];
}

uint64_t __96__VUIStillWatchingAlertPresenter_presentWithTitle_presentingController_timeout_responseHandler___block_invoke_3(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t __96__VUIStillWatchingAlertPresenter_presentWithTitle_presentingController_timeout_responseHandler___block_invoke_4(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

@end