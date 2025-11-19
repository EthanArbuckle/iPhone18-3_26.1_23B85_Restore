@interface WFIsolatedShortcutRunner
- (WFIsolatedShortcutRunner)init;
- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4;
- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4;
- (void)injectResolvedContent:(id)a3 asVariableWithName:(id)a4 completionHandler:(id)a5;
- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)reindexToolKitDatabaseWithRequest:(id)a3 completionHandler:(id)a4;
- (void)resolveContent:(id)a3 completionHandler:(id)a4;
- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)runToolWithInvocation:(id)a3;
- (void)transformAction:(id)a3 completionHandler:(id)a4;
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
  v3 = [(WFIsolatedShortcutRunner *)self sandboxExtensionReleaseBlock];

  if (v3)
  {
    v4 = getWFToolKitExecutionLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[WFIsolatedShortcutRunner unaliveProcess]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Releasing sandbox extensions", buf, 0xCu);
    }

    v5 = [(WFIsolatedShortcutRunner *)self sandboxExtensionReleaseBlock];
    v5[2]();
  }

  v6.receiver = self;
  v6.super_class = WFIsolatedShortcutRunner;
  [(WFIsolatedShortcutRunner *)&v6 unaliveProcess];
}

- (void)reindexToolKitDatabaseWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFIsolatedShortcutRunner *)self stateMachine];
  [v8 handlingRequestStateWithReason:@"incoming ToolKit indexing request"];

  v9 = +[WFShortcutRunnerSandboxExtensionManager sharedManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000865B8;
  v12[3] = &unk_10009FCE8;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v9 requestSandboxExtensionForToolKitIndexingWithCompletionHandler:v12];
}

- (void)transformAction:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = [(WFIsolatedShortcutRunner *)self workflowController];
  v9 = [v8 executionQueue];

  if (!v9)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFIsolatedShortcutRunner.m" lineNumber:286 description:@"Missing workQueue for action transformation"];
  }

  [WFToolKitHelper transformActionWithAction:v11 queue:v9 completionBlock:v7];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100086BA4;
  v8[3] = &unk_10009FBD0;
  v9 = a5;
  v7 = v9;
  [WFToolKitHelper resolveDeferredValueForEncodedStorage:a3 encodedResolutionRequest:a4 completionBlock:v8];
}

- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086D00;
  v6[3] = &unk_10009FBD0;
  v7 = a4;
  v5 = v7;
  [WFToolKitHelper produceEncodedDisplayRepresentationForRequest:a3 completionBlock:v6];
}

- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v66 = a3;
  v13 = a4;
  v65 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [WFToolKitHelper valueSetTypeForDefinition:v13];
  v17 = [(WFIsolatedShortcutRunner *)self currentRunRequest];
  v18 = [v17 runSource];
  LODWORD(a5) = [v18 isEqualToString:WFWorkflowRunSourceSpotlightTool];

  if (a5)
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
    v20 = [WFToolKitHelper linkQueryValueSetAsDynamicEnumeration:v13 error:&v80];
    v21 = v80;
    v22 = v13;
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
    v22 = v13;
  }

  if (v16 <= 1)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        v32 = v66;
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
            v15[2](v15, 0, v42);
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
        v78 = v15;
        v20 = v20;
        v75 = v20;
        v76 = v66;
        v77 = v14;
        v37 = v65;
        [WFToolKitHelper createActionFromEncodedToolInvocation:v65 fetchingDefaultValues:1 completion:v74];

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
    v30 = self;
    v31 = 157;
    goto LABEL_27;
  }

  if (v16 != 2)
  {
    if (v16 == 3)
    {
      v32 = v66;
      [WFToolKitHelper runLinkQuery:v66 valueSet:v22 encodedOptions:v14 completionBlock:v15];
LABEL_29:
      v37 = v65;
      goto LABEL_30;
    }

    if (v16 != 4)
    {
LABEL_28:
      v32 = v66;
      goto LABEL_29;
    }

    v25 = +[NSAssertionHandler currentHandler];
    v26 = v22;
    v27 = v25;
    v28 = @"Not yet implemented";
    v29 = a2;
    v30 = self;
    v31 = 162;
LABEL_27:
    [v25 handleFailureInMethod:v29 object:v30 file:@"WFIsolatedShortcutRunner.m" lineNumber:v31 description:v28];

    v41 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v15[2](v15, 0, v41);

    v22 = v26;
    goto LABEL_28;
  }

  v73 = v21;
  v34 = [WFToolKitHelper decodeContentPropertyPossibleValuesDefinition:v22 error:&v73];
  v35 = v73;

  if (v34)
  {
    v36 = [v34 contentItemClass];
    v37 = v65;
    if (v36)
    {
      v38 = v36;
      v39 = objc_opt_respondsToSelector();
      if (v39)
      {
        v40 = [v38 allProperties];
      }

      else
      {
        v40 = 0;
      }

      v47 = objc_opt_class();
      v64 = sub_100087A20(v40, v47);
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
          v51 = [v49 possibleValues];
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_100087BE0;
          v67[3] = &unk_10009FC70;
          v68 = v50;
          v69 = v14;
          v70 = v15;
          [v51 getValuesWithCompletionBlock:v67];
        }

        else
        {
          v81 = NSLocalizedDescriptionKey;
          v61 = [v48 propertyName];
          v57 = NSStringFromClass(v38);
          v58 = [NSString stringWithFormat:@"%@ is not a content property on %@", v61, v57];
          v82 = v58;
          v59 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          v60 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v59];

          v15[2](v15, 0, v60);
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
        v15[2](v15, 0, v56);
        v35 = v56;
      }

      v32 = v66;
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

      v15[2](v15, 0, v46);
      v35 = v46;
      v22 = v44;
      v34 = v43;
      v32 = v66;
    }
  }

  else
  {
    v15[2](v15, 0, v35);
    v37 = v65;
    v32 = v66;
  }

  v21 = v35;
LABEL_30:
}

- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFIsolatedShortcutRunner *)self accessSpecifier];
  v12 = [v11 allowVariableInjection];

  if (v12)
  {
    v19 = 0;
    v13 = [WFToolKitHelper produceVariableFromEncodedReference:v8 error:&v19];
    v14 = v19;
    if (v13)
    {
      v15 = [(WFIsolatedShortcutRunner *)self workflowController];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100088020;
      v16[3] = &unk_10009FB80;
      v18 = v10;
      v17 = v9;
      [v13 retrieveContentCollectionWithVariableSource:v15 completionHandler:v16];
    }

    else
    {
      (*(v10 + 2))(v10, 0, v14);
    }
  }

  else
  {
    v20 = NSLocalizedDescriptionKey;
    v21 = @"You're not entitled to extract variables out of a workflow execution";
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:v14];
    (*(v10 + 2))(v10, 0, v13);
  }
}

- (void)injectResolvedContent:(id)a3 asVariableWithName:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = +[NSUUID UUID];
    v11 = [v12 UUIDString];
  }

  v13 = [[WFUserDefinedVariable alloc] initWithName:v11 variableProvider:0 aggrandizements:0];
  v14 = [(WFIsolatedShortcutRunner *)self workflowController];
  v15 = [v13 name];
  v16 = [v14 setContent:v8 forVariableWithName:v15];

  if (v16)
  {
    v17 = [v13 serializedRepresentation];
    v18 = [WFAnyPropertyListObject objectWithPropertyListObject:v17];
    v10[2](v10, v18, 0);
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Couldn't inject content to variable table";
    v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:88 userInfo:v19];
    (v10)[2](v10, 0, v20);
  }
}

- (void)resolveContent:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = [a3 variableContent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(WFIsolatedShortcutRunner *)self workflowController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100088390;
    v11[3] = &unk_10009FB58;
    v12 = v7;
    [v8 resolveWithVariableSource:v9 completionHandler:v11];
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFIsolatedShortcutRunner.m" lineNumber:97 description:{@"Got contents that Shortcuts doesn't recognize: %@", v8}];
  }
}

- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WFIsolatedShortcutRunner *)self accessSpecifier];
  v10 = [v9 allowVariableInjection];

  if (v10)
  {
    v11 = [v7 variableContent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(WFIsolatedShortcutRunner *)self workflowController];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000885D8;
      v15[3] = &unk_10009FB30;
      v17 = v8;
      v15[4] = self;
      v11 = v11;
      v16 = v11;
      [v11 resolveWithVariableSource:v12 completionHandler:v15];
    }

    else
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"WFIsolatedShortcutRunner.m" lineNumber:81 description:{@"Got contents that Shortcuts doesn't recognize: %@", v11}];
    }
  }

  else
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"You're not entitled to inject variables into a workflow execution";
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:v11];
    (*(v8 + 2))(v8, 0, v13);
  }
}

- (void)runToolWithInvocation:(id)a3
{
  v5 = a3;
  v6 = [(WFIsolatedShortcutRunner *)self sandboxExtensionGroup];
  v7 = [(WFIsolatedShortcutRunner *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008874C;
  block[3] = &unk_10009FB08;
  v11 = self;
  v12 = a2;
  v10 = v5;
  v8 = v5;
  dispatch_group_notify(v6, v7, block);
}

@end