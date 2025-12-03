@interface WFIsolatedShortcutRunner
- (WFIsolatedShortcutRunner)init;
- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler;
- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler;
- (void)injectResolvedContent:(id)content asVariableWithName:(id)name completionHandler:(id)handler;
- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler;
- (void)reindexToolKitDatabaseWithRequest:(id)request completionHandler:(id)handler;
- (void)resolveContent:(id)content completionHandler:(id)handler;
- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)runToolWithInvocation:(id)invocation;
- (void)transformAction:(id)action completionHandler:(id)handler;
- (void)unaliveProcess;
@end

@implementation WFIsolatedShortcutRunner

- (WFIsolatedShortcutRunner)init
{
  v12.receiver = self;
  v12.super_class = WFIsolatedShortcutRunner;
  v2 = [(WFIsolatedShortcutRunner *)&v12 initWithProcessPolicy:0];
  if (v2)
  {
    v3 = dispatch_group_create();
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    dispatch_group_enter(*(v2 + 2));
    v5 = getWFToolKitExecutionLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[WFIsolatedShortcutRunner init]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Taking sandbox extensions for execution", buf, 0xCu);
    }

    objc_initWeak(buf, v2);
    v6 = +[WFShortcutRunnerSandboxExtensionManager sharedManager];
    v7 = +[WFShortcutRunnerSandboxExtensionRequest all];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002590;
    v10[3] = &unk_10009FAB8;
    objc_copyWeak(&v11, buf);
    [v6 performWithSandboxExtensions:v7 asynchronousBlock:v10];

    v8 = v2;
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)unaliveProcess
{
  sandboxExtensionReleaseBlock = [(WFIsolatedShortcutRunner *)self sandboxExtensionReleaseBlock];

  if (sandboxExtensionReleaseBlock)
  {
    v4 = getWFToolKitExecutionLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[WFIsolatedShortcutRunner unaliveProcess]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Releasing sandbox extensions", buf, 0xCu);
    }

    sandboxExtensionReleaseBlock2 = [(WFIsolatedShortcutRunner *)self sandboxExtensionReleaseBlock];
    sandboxExtensionReleaseBlock2[2]();
  }

  v6.receiver = self;
  v6.super_class = WFIsolatedShortcutRunner;
  [(WFIsolatedShortcutRunner *)&v6 unaliveProcess];
}

- (void)reindexToolKitDatabaseWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  stateMachine = [(WFIsolatedShortcutRunner *)self stateMachine];
  [stateMachine handlingRequestStateWithReason:@"incoming ToolKit indexing request"];

  v9 = +[WFShortcutRunnerSandboxExtensionManager sharedManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000865B8;
  v12[3] = &unk_10009FCE8;
  v13 = requestCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v10 = requestCopy;
  v11 = handlerCopy;
  [v9 requestSandboxExtensionForToolKitIndexingWithCompletionHandler:v12];
}

- (void)transformAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  workflowController = [(WFIsolatedShortcutRunner *)self workflowController];
  executionQueue = [workflowController executionQueue];

  if (!executionQueue)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFIsolatedShortcutRunner.m" lineNumber:286 description:@"Missing workQueue for action transformation"];
  }

  [WFToolKitHelper transformActionWithAction:actionCopy queue:executionQueue completionBlock:handlerCopy];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100086BA4;
  v8[3] = &unk_10009FBD0;
  handlerCopy = handler;
  v7 = handlerCopy;
  [WFToolKitHelper resolveDeferredValueForEncodedStorage:storage encodedResolutionRequest:request completionBlock:v8];
}

- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086D00;
  v6[3] = &unk_10009FBD0;
  handlerCopy = handler;
  v5 = handlerCopy;
  [WFToolKitHelper produceEncodedDisplayRepresentationForRequest:request completionBlock:v6];
}

- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler
{
  queryCopy = query;
  setCopy = set;
  invocationCopy = invocation;
  optionsCopy = options;
  handlerCopy = handler;
  v16 = [WFToolKitHelper valueSetTypeForDefinition:setCopy];
  currentRunRequest = [(WFIsolatedShortcutRunner *)self currentRunRequest];
  runSource = [currentRunRequest runSource];
  LODWORD(invocation) = [runSource isEqualToString:WFWorkflowRunSourceSpotlightTool];

  if (invocation)
  {
    v19 = v16 == 3;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v80 = 0;
    v20 = [WFToolKitHelper linkQueryValueSetAsDynamicEnumeration:setCopy error:&v80];
    v21 = v80;
    v22 = setCopy;
    if (v20)
    {
      v23 = v20;
      v16 = 1;
    }

    else
    {
      v24 = getWFToolKitExecutionLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v88 = "[WFIsolatedShortcutRunner performQuery:inValueSet:toolInvocation:options:completionHandler:]";
        v89 = 2112;
        v90 = v21;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s spotlight query coercion: couldn't translate link query to a dynamic enumeration (%@)", buf, 0x16u);
      }

      v16 = 3;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = setCopy;
  }

  if (v16 <= 1)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        v32 = queryCopy;
        if (v20)
        {
          v33 = v22;
        }

        else
        {
          v79 = v21;
          v20 = [WFToolKitHelper decodeDynamicEnumerationDefinition:v22 error:&v79];
          v42 = v79;

          if (!v20)
          {
            handlerCopy[2](handlerCopy, 0, v42);
            v21 = v42;
            goto LABEL_29;
          }

          v33 = v22;
          v21 = v42;
        }

        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_10008760C;
        v74[3] = &unk_10009FC20;
        v78 = handlerCopy;
        v20 = v20;
        v75 = v20;
        v76 = queryCopy;
        v77 = optionsCopy;
        v37 = invocationCopy;
        [WFToolKitHelper createActionFromEncodedToolInvocation:invocationCopy fetchingDefaultValues:1 completion:v74];

        v22 = v33;
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v25 = +[NSAssertionHandler currentHandler];
    v26 = v22;
    v27 = v25;
    v28 = @"Can't parse value set definition";
    v29 = a2;
    selfCopy2 = self;
    v31 = 157;
    goto LABEL_27;
  }

  if (v16 != 2)
  {
    if (v16 == 3)
    {
      v32 = queryCopy;
      [WFToolKitHelper runLinkQuery:queryCopy valueSet:v22 encodedOptions:optionsCopy completionBlock:handlerCopy];
LABEL_29:
      v37 = invocationCopy;
      goto LABEL_30;
    }

    if (v16 != 4)
    {
LABEL_28:
      v32 = queryCopy;
      goto LABEL_29;
    }

    v25 = +[NSAssertionHandler currentHandler];
    v26 = v22;
    v27 = v25;
    v28 = @"Not yet implemented";
    v29 = a2;
    selfCopy2 = self;
    v31 = 162;
LABEL_27:
    [v25 handleFailureInMethod:v29 object:selfCopy2 file:@"WFIsolatedShortcutRunner.m" lineNumber:v31 description:v28];

    v41 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v41);

    v22 = v26;
    goto LABEL_28;
  }

  v73 = v21;
  v34 = [WFToolKitHelper decodeContentPropertyPossibleValuesDefinition:v22 error:&v73];
  v35 = v73;

  if (v34)
  {
    contentItemClass = [v34 contentItemClass];
    v37 = invocationCopy;
    if (contentItemClass)
    {
      v38 = contentItemClass;
      v39 = objc_opt_respondsToSelector();
      if (v39)
      {
        allProperties = [v38 allProperties];
      }

      else
      {
        allProperties = 0;
      }

      v47 = objc_opt_class();
      v64 = sub_100087A20(allProperties, v47);
      if (v39)
      {
      }

      v63 = v34;
      if (v64)
      {
        v62 = v22;
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_100087B48;
        v71[3] = &unk_10009FC48;
        v48 = v34;
        v72 = v48;
        v49 = [v64 if_firstObjectPassingTest:v71];
        v50 = v49;
        if (v49)
        {
          possibleValues = [v49 possibleValues];
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_100087BE0;
          v67[3] = &unk_10009FC70;
          v68 = v50;
          v69 = optionsCopy;
          v70 = handlerCopy;
          [possibleValues getValuesWithCompletionBlock:v67];
        }

        else
        {
          v81 = NSLocalizedDescriptionKey;
          propertyName = [v48 propertyName];
          v57 = NSStringFromClass(v38);
          v58 = [NSString stringWithFormat:@"%@ is not a content property on %@", propertyName, v57];
          v82 = v58;
          v59 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          v60 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v59];

          handlerCopy[2](handlerCopy, 0, v60);
          v35 = v60;
        }

        v22 = v62;
      }

      else
      {
        v83 = NSLocalizedDescriptionKey;
        v52 = NSStringFromClass(v38);
        v53 = [NSString stringWithFormat:@"%@ is not a subclass of WFContentItem", v52];
        v84 = v53;
        [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v55 = v54 = v22;
        v56 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v55];

        v22 = v54;
        handlerCopy[2](handlerCopy, 0, v56);
        v35 = v56;
      }

      v32 = queryCopy;
      v34 = v63;
    }

    else
    {
      v43 = v34;
      v44 = v22;
      v85 = NSLocalizedDescriptionKey;
      v86 = @"Content item class not found.";
      v45 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v45];

      handlerCopy[2](handlerCopy, 0, v46);
      v35 = v46;
      v22 = v44;
      v34 = v43;
      v32 = queryCopy;
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v35);
    v37 = invocationCopy;
    v32 = queryCopy;
  }

  v21 = v35;
LABEL_30:
}

- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler
{
  referenceCopy = reference;
  requestCopy = request;
  handlerCopy = handler;
  accessSpecifier = [(WFIsolatedShortcutRunner *)self accessSpecifier];
  allowVariableInjection = [accessSpecifier allowVariableInjection];

  if (allowVariableInjection)
  {
    v19 = 0;
    v13 = [WFToolKitHelper produceVariableFromEncodedReference:referenceCopy error:&v19];
    v14 = v19;
    if (v13)
    {
      workflowController = [(WFIsolatedShortcutRunner *)self workflowController];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100088020;
      v16[3] = &unk_10009FB80;
      v18 = handlerCopy;
      v17 = requestCopy;
      [v13 retrieveContentCollectionWithVariableSource:workflowController completionHandler:v16];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }

  else
  {
    v20 = NSLocalizedDescriptionKey;
    v21 = @"You're not entitled to extract variables out of a workflow execution";
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:v14];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (void)injectResolvedContent:(id)content asVariableWithName:(id)name completionHandler:(id)handler
{
  contentCopy = content;
  nameCopy = name;
  handlerCopy = handler;
  if (nameCopy)
  {
    uUIDString = nameCopy;
  }

  else
  {
    v12 = +[NSUUID UUID];
    uUIDString = [v12 UUIDString];
  }

  v13 = [[WFUserDefinedVariable alloc] initWithName:uUIDString variableProvider:0 aggrandizements:0];
  workflowController = [(WFIsolatedShortcutRunner *)self workflowController];
  name = [v13 name];
  v16 = [workflowController setContent:contentCopy forVariableWithName:name];

  if (v16)
  {
    serializedRepresentation = [v13 serializedRepresentation];
    v18 = [WFAnyPropertyListObject objectWithPropertyListObject:serializedRepresentation];
    handlerCopy[2](handlerCopy, v18, 0);
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Couldn't inject content to variable table";
    v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:88 userInfo:v19];
    (handlerCopy)[2](handlerCopy, 0, v20);
  }
}

- (void)resolveContent:(id)content completionHandler:(id)handler
{
  handlerCopy = handler;
  variableContent = [content variableContent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    workflowController = [(WFIsolatedShortcutRunner *)self workflowController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100088390;
    v11[3] = &unk_10009FB58;
    v12 = handlerCopy;
    [variableContent resolveWithVariableSource:workflowController completionHandler:v11];
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFIsolatedShortcutRunner.m" lineNumber:97 description:{@"Got contents that Shortcuts doesn't recognize: %@", variableContent}];
  }
}

- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler
{
  variableCopy = variable;
  handlerCopy = handler;
  accessSpecifier = [(WFIsolatedShortcutRunner *)self accessSpecifier];
  allowVariableInjection = [accessSpecifier allowVariableInjection];

  if (allowVariableInjection)
  {
    variableContent = [variableCopy variableContent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      workflowController = [(WFIsolatedShortcutRunner *)self workflowController];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000885D8;
      v15[3] = &unk_10009FB30;
      v17 = handlerCopy;
      v15[4] = self;
      variableContent = variableContent;
      v16 = variableContent;
      [variableContent resolveWithVariableSource:workflowController completionHandler:v15];
    }

    else
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"WFIsolatedShortcutRunner.m" lineNumber:81 description:{@"Got contents that Shortcuts doesn't recognize: %@", variableContent}];
    }
  }

  else
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"You're not entitled to inject variables into a workflow execution";
    variableContent = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:variableContent];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (void)runToolWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  sandboxExtensionGroup = [(WFIsolatedShortcutRunner *)self sandboxExtensionGroup];
  queue = [(WFIsolatedShortcutRunner *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008874C;
  block[3] = &unk_10009FB08;
  selfCopy = self;
  v12 = a2;
  v10 = invocationCopy;
  v8 = invocationCopy;
  dispatch_group_notify(sandboxExtensionGroup, queue, block);
}

@end