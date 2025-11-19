@interface WFOutOfProcessWorkflowControllerXPCProxy
- (WFOutOfProcessWorkflowControllerXPCProxy)initWithConnection:(id)a3 isSynchronous:(BOOL)a4;
- (WFOutOfProcessWorkflowControllerXPCProxy)proxyWithErrorHandler:(id)a3;
- (void)computeFinderResizedSizesForImages:(id)a3 inSizes:(id)a4 completion:(id)a5;
- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4;
- (void)getCurrentProgressCompletedWithCompletionHandler:(id)a3;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4;
- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4;
- (void)pauseWorkflowAndWriteStateToDisk:(id)a3;
- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)prewarmRunnerWithCompletion:(id)a3;
- (void)reindexToolKitDatabaseWithRequest:(id)a3 completionHandler:(id)a4;
- (void)resolveContent:(id)a3 completionHandler:(id)a4;
- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)resumeRunningFromContext:(id)a3 withRequest:(id)a4 completion:(id)a5;
- (void)runActionFromRunRequestData:(id)a3 runningContext:(id)a4 completion:(id)a5;
- (void)runToolWithInvocation:(id)a3;
- (void)runWorkflowWithDescriptor:(id)a3 request:(id)a4 inEnvironment:(id)a5 runningContext:(id)a6 completion:(id)a7;
- (void)stopWithError:(id)a3;
- (void)transformAction:(id)a3 completionHandler:(id)a4;
- (void)updateRunViewSource:(id)a3;
@end

@implementation WFOutOfProcessWorkflowControllerXPCProxy

- (void)updateRunViewSource:(id)a3
{
  v4 = a3;
  v5 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_65];
  [v5 updateRunViewSource:v4];
}

- (void)stopWithError:(id)a3
{
  v4 = a3;
  v5 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_63];
  [v5 stopWithError:v4];
}

- (void)runWorkflowWithDescriptor:(id)a3 request:(id)a4 inEnvironment:(id)a5 runningContext:(id)a6 completion:(id)a7
{
  v12 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __118__WFOutOfProcessWorkflowControllerXPCProxy_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke;
  v22[3] = &unk_1E7B02940;
  v13 = v12;
  v23 = v13;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __118__WFOutOfProcessWorkflowControllerXPCProxy_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke_2;
  v20[3] = &unk_1E7AFFEC0;
  v21 = v13;
  v19 = v13;
  [v18 runWorkflowWithDescriptor:v17 request:v16 inEnvironment:v15 runningContext:v14 completion:v20];
}

- (void)runToolWithInvocation:(id)a3
{
  v4 = a3;
  v5 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_59];
  [v5 runToolWithInvocation:v4];
}

- (void)runActionFromRunRequestData:(id)a3 runningContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__WFOutOfProcessWorkflowControllerXPCProxy_runActionFromRunRequestData_runningContext_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = v8;
  v17 = v9;
  v10 = a4;
  v11 = a3;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__WFOutOfProcessWorkflowControllerXPCProxy_runActionFromRunRequestData_runningContext_completion___block_invoke_2;
  v14[3] = &unk_1E7AFFEC0;
  v15 = v9;
  v13 = v9;
  [v12 runActionFromRunRequestData:v11 runningContext:v10 completion:v14];
}

- (void)resumeRunningFromContext:(id)a3 withRequest:(id)a4 completion:(id)a5
{
  v8 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__WFOutOfProcessWorkflowControllerXPCProxy_resumeRunningFromContext_withRequest_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = v8;
  v17 = v9;
  v10 = a4;
  v11 = a3;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__WFOutOfProcessWorkflowControllerXPCProxy_resumeRunningFromContext_withRequest_completion___block_invoke_2;
  v14[3] = &unk_1E7AFFEC0;
  v15 = v9;
  v13 = v9;
  [v12 resumeRunningFromContext:v11 withRequest:v10 completion:v14];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __123__WFOutOfProcessWorkflowControllerXPCProxy_resolveDeferredValueFromEncodedStorage_withResolutionRequest_completionHandler___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = v8;
  v17 = v9;
  v10 = a4;
  v11 = a3;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __123__WFOutOfProcessWorkflowControllerXPCProxy_resolveDeferredValueFromEncodedStorage_withResolutionRequest_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7B01690;
  v15 = v9;
  v13 = v9;
  [v12 resolveDeferredValueFromEncodedStorage:v11 withResolutionRequest:v10 completionHandler:v14];
}

- (void)reindexToolKitDatabaseWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__WFOutOfProcessWorkflowControllerXPCProxy_reindexToolKitDatabaseWithRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__WFOutOfProcessWorkflowControllerXPCProxy_reindexToolKitDatabaseWithRequest_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7B02940;
  v12 = v7;
  v10 = v7;
  [v9 reindexToolKitDatabaseWithRequest:v8 completionHandler:v11];
}

- (void)prewarmRunnerWithCompletion:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__WFOutOfProcessWorkflowControllerXPCProxy_prewarmRunnerWithCompletion___block_invoke;
  v10[3] = &unk_1E7B02940;
  v5 = v4;
  v11 = v5;
  v6 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__WFOutOfProcessWorkflowControllerXPCProxy_prewarmRunnerWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7B02940;
  v9 = v5;
  v7 = v5;
  [v6 prewarmRunnerWithCompletion:v8];
}

- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__WFOutOfProcessWorkflowControllerXPCProxy_performQuery_inValueSet_toolInvocation_options_completionHandler___block_invoke;
  v22[3] = &unk_1E7B02940;
  v13 = v12;
  v23 = v13;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __109__WFOutOfProcessWorkflowControllerXPCProxy_performQuery_inValueSet_toolInvocation_options_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7B01690;
  v21 = v13;
  v19 = v13;
  [v18 performQuery:v17 inValueSet:v16 toolInvocation:v15 options:v14 completionHandler:v20];
}

- (void)pauseWorkflowAndWriteStateToDisk:(id)a3
{
  v4 = a3;
  v5 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_56];
  [v5 pauseWorkflowAndWriteStateToDisk:v4];
}

- (void)resolveContent:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__WFOutOfProcessWorkflowControllerXPCProxy_resolveContent_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WFOutOfProcessWorkflowControllerXPCProxy_resolveContent_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7AFFE98;
  v12 = v7;
  v10 = v7;
  [v9 resolveContent:v8 completionHandler:v11];
}

- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__WFOutOfProcessWorkflowControllerXPCProxy_injectContentAsVariable_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__WFOutOfProcessWorkflowControllerXPCProxy_injectContentAsVariable_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7AFFE70;
  v12 = v7;
  v10 = v7;
  [v9 injectContentAsVariable:v8 completionHandler:v11];
}

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_1418];
  [v8 handleIncomingFileForRemoteExecutionWithURL:v7 withIdentifier:v6];
}

- (void)getCurrentProgressCompletedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__WFOutOfProcessWorkflowControllerXPCProxy_getCurrentProgressCompletedWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7B02940;
  v5 = v4;
  v11 = v5;
  v6 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__WFOutOfProcessWorkflowControllerXPCProxy_getCurrentProgressCompletedWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7AFFE48;
  v9 = v5;
  v7 = v5;
  [v6 getCurrentProgressCompletedWithCompletionHandler:v8];
}

- (void)transformAction:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__WFOutOfProcessWorkflowControllerXPCProxy_transformAction_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__WFOutOfProcessWorkflowControllerXPCProxy_transformAction_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7B01690;
  v12 = v7;
  v10 = v7;
  [v9 transformAction:v8 completionHandler:v11];
}

- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__WFOutOfProcessWorkflowControllerXPCProxy_fetchDisplayValueForRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__WFOutOfProcessWorkflowControllerXPCProxy_fetchDisplayValueForRequest_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7B01690;
  v12 = v7;
  v10 = v7;
  [v9 fetchDisplayValueForRequest:v8 completionHandler:v11];
}

- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __127__WFOutOfProcessWorkflowControllerXPCProxy_extractVariableContentFromEncodedReference_withResolutionRequest_completionHandler___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = v8;
  v17 = v9;
  v10 = a4;
  v11 = a3;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __127__WFOutOfProcessWorkflowControllerXPCProxy_extractVariableContentFromEncodedReference_withResolutionRequest_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7B01690;
  v15 = v9;
  v13 = v9;
  [v12 extractVariableContentFromEncodedReference:v11 withResolutionRequest:v10 completionHandler:v14];
}

- (void)computeFinderResizedSizesForImages:(id)a3 inSizes:(id)a4 completion:(id)a5
{
  v8 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__WFOutOfProcessWorkflowControllerXPCProxy_computeFinderResizedSizesForImages_inSizes_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = v8;
  v17 = v9;
  v10 = a4;
  v11 = a3;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__WFOutOfProcessWorkflowControllerXPCProxy_computeFinderResizedSizesForImages_inSizes_completion___block_invoke_2;
  v14[3] = &unk_1E7B01EA0;
  v15 = v9;
  v13 = v9;
  [v12 computeFinderResizedSizesForImages:v11 inSizes:v10 completion:v14];
}

- (WFOutOfProcessWorkflowControllerXPCProxy)proxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self isSynchronous];
  v6 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self connection];
  v7 = v6;
  if (v5)
  {
    [v6 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    [v6 remoteObjectProxyWithErrorHandler:v4];
  }
  v8 = ;

  return v8;
}

- (WFOutOfProcessWorkflowControllerXPCProxy)initWithConnection:(id)a3 isSynchronous:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WFOutOfProcessWorkflowControllerXPCProxy;
  v8 = [(WFOutOfProcessWorkflowControllerXPCProxy *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a3);
    v9->_isSynchronous = a4;
    v10 = v9;
  }

  return v9;
}

@end