@interface WFOutOfProcessWorkflowController(ContextualActions)
+ (id)computeFinderResizedSizesForImages:()ContextualActions inSizes:error:;
@end

@implementation WFOutOfProcessWorkflowController(ContextualActions)

+ (id)computeFinderResizedSizesForImages:()ContextualActions inSizes:error:
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [objc_alloc(MEMORY[0x1E69E0C20]) initWithEnvironment:0 runningContext:0 presentationMode:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__WFOutOfProcessWorkflowController_ContextualActions__computeFinderResizedSizesForImages_inSizes_error___block_invoke;
  aBlock[3] = &unk_1E837FA70;
  v12 = v11;
  v36 = v12;
  v13 = _Block_copy(aBlock);
  v34 = 0;
  v14 = [v12 synchronousRunnerWithError:&v34 reason:@"computing finder resized image"];
  v15 = v34;
  v16 = v15;
  if (v14)
  {
    v17 = v15;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v38 = __Block_byref_object_copy__15279;
    v39 = __Block_byref_object_dispose__15280;
    v40 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__15279;
    v32 = __Block_byref_object_dispose__15280;
    v33 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __104__WFOutOfProcessWorkflowController_ContextualActions__computeFinderResizedSizesForImages_inSizes_error___block_invoke_173;
    v22[3] = &unk_1E8375DC0;
    v23 = v10;
    v24 = &v28;
    v26 = a2;
    selfCopy = self;
    v25 = buf;
    [v14 computeFinderResizedSizesForImages:v9 inSizes:v23 completion:v22];
    v16 = v17;
    if (a5)
    {
      *a5 = v29[5];
    }

    v18 = *(*&buf[8] + 40);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[WFOutOfProcessWorkflowController(ContextualActions) computeFinderResizedSizesForImages:inSizes:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Unable to connect to runner: %@", buf, 0x16u);
    }

    v18 = 0;
  }

  v13[2](v13);
  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

@end