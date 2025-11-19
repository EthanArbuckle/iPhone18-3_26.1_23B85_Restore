@interface SSApplicationScreenshotSupplementalDataCapturer
+ (id)settingsForDocumentCapture:(BOOL)a3 elementIdentifier:(id)a4;
- (SSApplicationScreenshotSupplementalDataCapturer)init;
- (void)_sendRequestForEnvironmentElement:(id)a3 info:(id)a4 completionBlock:(id)a5;
- (void)captureDocumentForEnvironmentElement:(id)a3 withCompletionBlock:(id)a4;
- (void)captureMetadataForEnvironmentElement:(id)a3 withCompletionBlock:(id)a4;
@end

@implementation SSApplicationScreenshotSupplementalDataCapturer

- (SSApplicationScreenshotSupplementalDataCapturer)init
{
  v6.receiver = self;
  v6.super_class = SSApplicationScreenshotSupplementalDataCapturer;
  v2 = [(SSApplicationScreenshotSupplementalDataCapturer *)&v6 init];
  v3 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
  openAppService = v2->_openAppService;
  v2->_openAppService = v3;

  return v2;
}

- (void)captureMetadataForEnvironmentElement:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 elementIdentifier];
  v10 = [v8 settingsForDocumentCapture:0 elementIdentifier:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__SSApplicationScreenshotSupplementalDataCapturer_captureMetadataForEnvironmentElement_withCompletionBlock___block_invoke;
  v13[3] = &unk_1E85900F0;
  v14 = v6;
  v15 = v7;
  v11 = v6;
  v12 = v7;
  [(SSApplicationScreenshotSupplementalDataCapturer *)self _sendRequestForEnvironmentElement:v11 info:v10 completionBlock:v13];
}

void __108__SSApplicationScreenshotSupplementalDataCapturer_captureMetadataForEnvironmentElement_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 info];
    v7 = [v3 objectForSetting:3];

    v4 = objc_alloc_init(SSEnvironmentElementMetadataUpdate);
    v5 = [*(a1 + 32) identifier];
    [(SSEnvironmentElementMetadataUpdate *)v4 setEnvironmentElementIdentifier:v5];

    [(SSEnvironmentElementMetadataUpdate *)v4 setMetadata:v7];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (void)captureDocumentForEnvironmentElement:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 elementIdentifier];
  v10 = [v8 settingsForDocumentCapture:1 elementIdentifier:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__SSApplicationScreenshotSupplementalDataCapturer_captureDocumentForEnvironmentElement_withCompletionBlock___block_invoke;
  v13[3] = &unk_1E85900F0;
  v14 = v6;
  v15 = v7;
  v11 = v6;
  v12 = v7;
  [(SSApplicationScreenshotSupplementalDataCapturer *)self _sendRequestForEnvironmentElement:v11 info:v10 completionBlock:v13];
}

void __108__SSApplicationScreenshotSupplementalDataCapturer_captureDocumentForEnvironmentElement_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 info];
    v7 = [v3 objectForSetting:4];

    v4 = objc_alloc_init(SSEnvironmentElementDocumentUpdate);
    v5 = [*(a1 + 32) identifier];
    [(SSEnvironmentElementDocumentUpdate *)v4 setEnvironmentElementIdentifier:v5];

    [(SSEnvironmentElementDocumentUpdate *)v4 setDocument:v7];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

+ (id)settingsForDocumentCapture:(BOOL)a3 elementIdentifier:(id)a4
{
  v4 = MEMORY[0x1E698E700];
  v5 = a4;
  v6 = objc_alloc_init(v4);
  [v6 setFlag:BSSettingFlagForBool() forSetting:7];
  [v6 setObject:v5 forSetting:10];

  return v6;
}

- (void)_sendRequestForEnvironmentElement:(id)a3 info:(id)a4 completionBlock:(id)a5
{
  v24[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 supportsMetadataCapture])
  {
    v11 = objc_alloc(MEMORY[0x1E69DCEC0]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __106__SSApplicationScreenshotSupplementalDataCapturer__sendRequestForEnvironmentElement_info_completionBlock___block_invoke;
    v20[3] = &unk_1E8590118;
    v21 = v10;
    v12 = [v11 initWithInfo:v9 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v20 withHandler:0.0];
    v13 = MEMORY[0x1E699FB70];
    v14 = *MEMORY[0x1E699F8D0];
    v22 = v12;
    v23[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v23[1] = *MEMORY[0x1E699F8E8];
    v24[0] = v15;
    v24[1] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v17 = [v13 optionsWithDictionary:v16];

    openAppService = self->_openAppService;
    v19 = [v8 bundleIdentifier];
    [(FBSOpenApplicationService *)openAppService openApplication:v19 withOptions:v17 completion:0];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __106__SSApplicationScreenshotSupplementalDataCapturer__sendRequestForEnvironmentElement_info_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 error];

  (*(*(a1 + 32) + 16))();
}

@end