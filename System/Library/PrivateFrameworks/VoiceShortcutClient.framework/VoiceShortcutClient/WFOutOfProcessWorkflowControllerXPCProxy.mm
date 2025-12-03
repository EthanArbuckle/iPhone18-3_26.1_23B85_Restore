@interface WFOutOfProcessWorkflowControllerXPCProxy
- (WFOutOfProcessWorkflowControllerXPCProxy)initWithConnection:(id)connection isSynchronous:(BOOL)synchronous;
- (WFOutOfProcessWorkflowControllerXPCProxy)proxyWithErrorHandler:(id)handler;
- (void)computeFinderResizedSizesForImages:(id)images inSizes:(id)sizes completion:(id)completion;
- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler;
- (void)getCurrentProgressCompletedWithCompletionHandler:(id)handler;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier;
- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler;
- (void)pauseWorkflowAndWriteStateToDisk:(id)disk;
- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler;
- (void)prewarmRunnerWithCompletion:(id)completion;
- (void)reindexToolKitDatabaseWithRequest:(id)request completionHandler:(id)handler;
- (void)resolveContent:(id)content completionHandler:(id)handler;
- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)resumeRunningFromContext:(id)context withRequest:(id)request completion:(id)completion;
- (void)runActionFromRunRequestData:(id)data runningContext:(id)context completion:(id)completion;
- (void)runToolWithInvocation:(id)invocation;
- (void)runWorkflowWithDescriptor:(id)descriptor request:(id)request inEnvironment:(id)environment runningContext:(id)context completion:(id)completion;
- (void)stopWithError:(id)error;
- (void)transformAction:(id)action completionHandler:(id)handler;
- (void)updateRunViewSource:(id)source;
@end

@implementation WFOutOfProcessWorkflowControllerXPCProxy

- (void)updateRunViewSource:(id)source
{
  sourceCopy = source;
  v5 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_65];
  [v5 updateRunViewSource:sourceCopy];
}

- (void)stopWithError:(id)error
{
  errorCopy = error;
  v5 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_63];
  [v5 stopWithError:errorCopy];
}

- (void)runWorkflowWithDescriptor:(id)descriptor request:(id)request inEnvironment:(id)environment runningContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __118__WFOutOfProcessWorkflowControllerXPCProxy_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke;
  v22[3] = &unk_1E7B02940;
  v13 = completionCopy;
  v23 = v13;
  contextCopy = context;
  environmentCopy = environment;
  requestCopy = request;
  descriptorCopy = descriptor;
  v18 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __118__WFOutOfProcessWorkflowControllerXPCProxy_runWorkflowWithDescriptor_request_inEnvironment_runningContext_completion___block_invoke_2;
  v20[3] = &unk_1E7AFFEC0;
  v21 = v13;
  v19 = v13;
  [v18 runWorkflowWithDescriptor:descriptorCopy request:requestCopy inEnvironment:environmentCopy runningContext:contextCopy completion:v20];
}

- (void)runToolWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_59];
  [v5 runToolWithInvocation:invocationCopy];
}

- (void)runActionFromRunRequestData:(id)data runningContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__WFOutOfProcessWorkflowControllerXPCProxy_runActionFromRunRequestData_runningContext_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = completionCopy;
  v17 = v9;
  contextCopy = context;
  dataCopy = data;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__WFOutOfProcessWorkflowControllerXPCProxy_runActionFromRunRequestData_runningContext_completion___block_invoke_2;
  v14[3] = &unk_1E7AFFEC0;
  v15 = v9;
  v13 = v9;
  [v12 runActionFromRunRequestData:dataCopy runningContext:contextCopy completion:v14];
}

- (void)resumeRunningFromContext:(id)context withRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__WFOutOfProcessWorkflowControllerXPCProxy_resumeRunningFromContext_withRequest_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = completionCopy;
  v17 = v9;
  requestCopy = request;
  contextCopy = context;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__WFOutOfProcessWorkflowControllerXPCProxy_resumeRunningFromContext_withRequest_completion___block_invoke_2;
  v14[3] = &unk_1E7AFFEC0;
  v15 = v9;
  v13 = v9;
  [v12 resumeRunningFromContext:contextCopy withRequest:requestCopy completion:v14];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __123__WFOutOfProcessWorkflowControllerXPCProxy_resolveDeferredValueFromEncodedStorage_withResolutionRequest_completionHandler___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = handlerCopy;
  v17 = v9;
  requestCopy = request;
  storageCopy = storage;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __123__WFOutOfProcessWorkflowControllerXPCProxy_resolveDeferredValueFromEncodedStorage_withResolutionRequest_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7B01690;
  v15 = v9;
  v13 = v9;
  [v12 resolveDeferredValueFromEncodedStorage:storageCopy withResolutionRequest:requestCopy completionHandler:v14];
}

- (void)reindexToolKitDatabaseWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__WFOutOfProcessWorkflowControllerXPCProxy_reindexToolKitDatabaseWithRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = handlerCopy;
  v14 = v7;
  requestCopy = request;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__WFOutOfProcessWorkflowControllerXPCProxy_reindexToolKitDatabaseWithRequest_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7B02940;
  v12 = v7;
  v10 = v7;
  [v9 reindexToolKitDatabaseWithRequest:requestCopy completionHandler:v11];
}

- (void)prewarmRunnerWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__WFOutOfProcessWorkflowControllerXPCProxy_prewarmRunnerWithCompletion___block_invoke;
  v10[3] = &unk_1E7B02940;
  v5 = completionCopy;
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

- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__WFOutOfProcessWorkflowControllerXPCProxy_performQuery_inValueSet_toolInvocation_options_completionHandler___block_invoke;
  v22[3] = &unk_1E7B02940;
  v13 = handlerCopy;
  v23 = v13;
  optionsCopy = options;
  invocationCopy = invocation;
  setCopy = set;
  queryCopy = query;
  v18 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __109__WFOutOfProcessWorkflowControllerXPCProxy_performQuery_inValueSet_toolInvocation_options_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7B01690;
  v21 = v13;
  v19 = v13;
  [v18 performQuery:queryCopy inValueSet:setCopy toolInvocation:invocationCopy options:optionsCopy completionHandler:v20];
}

- (void)pauseWorkflowAndWriteStateToDisk:(id)disk
{
  diskCopy = disk;
  v5 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_56];
  [v5 pauseWorkflowAndWriteStateToDisk:diskCopy];
}

- (void)resolveContent:(id)content completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__WFOutOfProcessWorkflowControllerXPCProxy_resolveContent_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = handlerCopy;
  v14 = v7;
  contentCopy = content;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WFOutOfProcessWorkflowControllerXPCProxy_resolveContent_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7AFFE98;
  v12 = v7;
  v10 = v7;
  [v9 resolveContent:contentCopy completionHandler:v11];
}

- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__WFOutOfProcessWorkflowControllerXPCProxy_injectContentAsVariable_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = handlerCopy;
  v14 = v7;
  variableCopy = variable;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__WFOutOfProcessWorkflowControllerXPCProxy_injectContentAsVariable_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7AFFE70;
  v12 = v7;
  v10 = v7;
  [v9 injectContentAsVariable:variableCopy completionHandler:v11];
}

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lCopy = l;
  v8 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:&__block_literal_global_1418];
  [v8 handleIncomingFileForRemoteExecutionWithURL:lCopy withIdentifier:identifierCopy];
}

- (void)getCurrentProgressCompletedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__WFOutOfProcessWorkflowControllerXPCProxy_getCurrentProgressCompletedWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7B02940;
  v5 = handlerCopy;
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

- (void)transformAction:(id)action completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__WFOutOfProcessWorkflowControllerXPCProxy_transformAction_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = handlerCopy;
  v14 = v7;
  actionCopy = action;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__WFOutOfProcessWorkflowControllerXPCProxy_transformAction_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7B01690;
  v12 = v7;
  v10 = v7;
  [v9 transformAction:actionCopy completionHandler:v11];
}

- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__WFOutOfProcessWorkflowControllerXPCProxy_fetchDisplayValueForRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = handlerCopy;
  v14 = v7;
  requestCopy = request;
  v9 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__WFOutOfProcessWorkflowControllerXPCProxy_fetchDisplayValueForRequest_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7B01690;
  v12 = v7;
  v10 = v7;
  [v9 fetchDisplayValueForRequest:requestCopy completionHandler:v11];
}

- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __127__WFOutOfProcessWorkflowControllerXPCProxy_extractVariableContentFromEncodedReference_withResolutionRequest_completionHandler___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = handlerCopy;
  v17 = v9;
  requestCopy = request;
  referenceCopy = reference;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __127__WFOutOfProcessWorkflowControllerXPCProxy_extractVariableContentFromEncodedReference_withResolutionRequest_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7B01690;
  v15 = v9;
  v13 = v9;
  [v12 extractVariableContentFromEncodedReference:referenceCopy withResolutionRequest:requestCopy completionHandler:v14];
}

- (void)computeFinderResizedSizesForImages:(id)images inSizes:(id)sizes completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__WFOutOfProcessWorkflowControllerXPCProxy_computeFinderResizedSizesForImages_inSizes_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = completionCopy;
  v17 = v9;
  sizesCopy = sizes;
  imagesCopy = images;
  v12 = [(WFOutOfProcessWorkflowControllerXPCProxy *)self proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__WFOutOfProcessWorkflowControllerXPCProxy_computeFinderResizedSizesForImages_inSizes_completion___block_invoke_2;
  v14[3] = &unk_1E7B01EA0;
  v15 = v9;
  v13 = v9;
  [v12 computeFinderResizedSizesForImages:imagesCopy inSizes:sizesCopy completion:v14];
}

- (WFOutOfProcessWorkflowControllerXPCProxy)proxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  isSynchronous = [(WFOutOfProcessWorkflowControllerXPCProxy *)self isSynchronous];
  connection = [(WFOutOfProcessWorkflowControllerXPCProxy *)self connection];
  v7 = connection;
  if (isSynchronous)
  {
    [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    [connection remoteObjectProxyWithErrorHandler:handlerCopy];
  }
  v8 = ;

  return v8;
}

- (WFOutOfProcessWorkflowControllerXPCProxy)initWithConnection:(id)connection isSynchronous:(BOOL)synchronous
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = WFOutOfProcessWorkflowControllerXPCProxy;
  v8 = [(WFOutOfProcessWorkflowControllerXPCProxy *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    v9->_isSynchronous = synchronous;
    v10 = v9;
  }

  return v9;
}

@end