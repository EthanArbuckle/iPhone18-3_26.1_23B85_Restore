@interface BAAgentSystemConnection
- (BAAgentSystemConnection)initWithNSXPCConnection:(id)a3 error:(id *)a4;
- (NSString)debugDescription;
- (void)applicationEventPerformedWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)applicationPrepareWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)applicationShouldTriggerPeriodicWithIdentifier:(id)a3 bundleURLPath:(id)a4 completionHandler:(id)a5;
- (void)reportProgressForIdentifier:(id)a3 progressInfo:(id)a4;
- (void)runDebugCommand:(id)a3 reply:(id)a4;
- (void)updateAppStoreProgressObservationWithConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation BAAgentSystemConnection

- (BAAgentSystemConnection)initWithNSXPCConnection:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = BAAgentSystemConnection;
  v4 = [(BAAgentConnection *)&v12 initWithNSXPCConnection:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v4->_progressConfigLock._os_unfair_lock_opaque = 0;
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BAClientSystemXPCProtocol];
    [v6 setClass:objc_opt_class() forSelector:"receiveAppStoreProgressWithAppBundleIdentifier:progressInfo:" argumentIndex:1 ofReply:0];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BAAgentSystemXPCProtocol];
    [v7 setClass:objc_opt_class() forSelector:"applicationPrepareWithDescriptor:completionHandler:" argumentIndex:0 ofReply:0];
    [v7 setClass:objc_opt_class() forSelector:"applicationEventPerformedWithDescriptor:completionHandler:" argumentIndex:0 ofReply:0];
    v8 = [(BAAgentConnection *)v5 connection];
    [v8 setRemoteObjectInterface:v6];

    v9 = [(BAAgentConnection *)v5 connection];
    [v9 setExportedInterface:v7];

    v10 = [(BAAgentConnection *)v5 connection];
    [v10 setExportedObject:v5];
  }

  return v5;
}

- (void)applicationPrepareWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 appBundleIdentifier];
  v8 = [v7 _baassets_validUTI];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = +[BAAgentCore sharedCore];
    [v9 applicationPrepareWithDescriptor:v5];

    v6[2](v6, 1, 0);
  }

  else
  {
    v14 = NSLocalizedDescriptionKey;
    v10 = [v5 appBundleIdentifier];
    v11 = [NSString stringWithFormat:@"Invalid application identifier supplied: %@", v10];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    v13 = [NSError errorWithDomain:@"BAAgentSystemConnectionErrorDomain" code:1 userInfo:v12];
    (v6)[2](v6, 0, v13);
  }
}

- (void)applicationEventPerformedWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 appBundleIdentifier];
  v8 = [v7 _baassets_validUTI];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 automaticInstall] && objc_msgSend(v5, "eventType") == 10)
      {
        v9 = sub_10001060C();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App Store sent an [Installing] event during an automatic install for: (%{public}@). Dropping event...", buf, 0xCu);
        }

        goto LABEL_28;
      }

      v14 = [v5 eventType];
      if (v14 > 19)
      {
        if (v14 <= 21)
        {
          if (v14 == 20)
          {
            v15 = 4;
          }

          else
          {
            v15 = 5;
          }

          goto LABEL_25;
        }

        if (v14 != 22)
        {
          if (v14 == 30)
          {
            v15 = 6;
            goto LABEL_25;
          }

          goto LABEL_31;
        }

        v9 = +[BAAgentCore sharedCore];
        v16 = [v5 appBundleIdentifier];
        -[NSObject applicationInstallCanceledWithIdentifier:userInitiated:](v9, "applicationInstallCanceledWithIdentifier:userInitiated:", v16, [v5 userInitiated]);
      }

      else
      {
        if (v14 > 10)
        {
          if (v14 == 11)
          {
            v15 = 2;
            goto LABEL_25;
          }

          if (v14 == 12)
          {
            v15 = 3;
            goto LABEL_25;
          }

LABEL_31:
          v26 = NSLocalizedDescriptionKey;
          v21 = [v5 eventType];
          v22 = [v5 appBundleIdentifier];
          v23 = [NSString stringWithFormat:@"Invalid eventType supplied (%lu) for: %@", v21, v22];
          v27 = v23;
          v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

          v25 = [NSError errorWithDomain:@"BAAgentSystemConnectionErrorDomain" code:2 userInfo:v24];
          v6[2](v6, 0, v25);

          goto LABEL_30;
        }

        if (v14 != 5)
        {
          if (v14 == 10)
          {
            v15 = 1;
LABEL_25:
            v18 = +[BAAgentCore sharedCore];
            v19 = [v5 appBundleIdentifier];
            v20 = [v5 appBundleURL];
            [v18 handleApplicationEvent:v15 identifier:v19 bundleURLPath:v20 userInitiated:{objc_msgSend(v5, "userInitiated")}];

LABEL_29:
            v6[2](v6, 1, 0);
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        v9 = +[BAAgentCore sharedCore];
        v16 = [v5 appBundleIdentifier];
        v17 = [v5 appBundleURL];
        -[NSObject applicationPlaceholderReadyWithIdentifier:placeholderBundleURL:userInitiated:](v9, "applicationPlaceholderReadyWithIdentifier:placeholderBundleURL:userInitiated:", v16, v17, [v5 userInitiated]);
      }

LABEL_28:
      goto LABEL_29;
    }
  }

  v30 = NSLocalizedDescriptionKey;
  v10 = [v5 appBundleIdentifier];
  v11 = [NSString stringWithFormat:@"Invalid application identifier supplied: %@", v10];
  v31 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];

  v13 = [NSError errorWithDomain:@"BAAgentSystemConnectionErrorDomain" code:1 userInfo:v12];
  v6[2](v6, 0, v13);

LABEL_30:
}

- (void)applicationShouldTriggerPeriodicWithIdentifier:(id)a3 bundleURLPath:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 _baassets_validUTI];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = +[BAAgentCore sharedCore];
    [v11 handleApplicationEvent:7 identifier:v10 bundleURLPath:v8 userInitiated:0];

    v9[2](v9, 1, 0);
  }

  else
  {
    v12 = [NSString stringWithFormat:@"Invalid application identifier supplied: %@", v7, NSLocalizedDescriptionKey];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    v14 = [NSError errorWithDomain:@"BAAgentSystemConnectionErrorDomain" code:1 userInfo:v13];
    (v9)[2](v9, 0, v14);
  }
}

- (void)runDebugCommand:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKey:@"command"];
  v8 = [v7 lowercaseString];

  v9 = [v6 objectForKey:@"arguments"];

  if (![v8 isEqualToString:@"state"])
  {
    if ([v8 isEqualToString:@"shutdown"])
    {
      if ([v9 count])
      {
        goto LABEL_78;
      }

LABEL_6:
      v10 = +[BAAgentCore sharedCore];
      [v10 _debugShutdown];
      goto LABEL_77;
    }

    if ([v8 isEqualToString:@"force_periodic"])
    {
      if (![v9 count])
      {
        v10 = +[BAAgentCore sharedCore];
        [v10 doPeriodicUpdateCheck];
        goto LABEL_77;
      }

      goto LABEL_78;
    }

    if ([v8 isEqualToString:@"reset"])
    {
      if ([v9 count])
      {
        goto LABEL_78;
      }

      v11 = +[BAAgentCore sharedCore];
      [v11 _setClearBeforeShutdown];

      goto LABEL_6;
    }

    if ([v8 isEqualToString:@"downloads-allowed"])
    {
      if ([v9 count] != 1)
      {
        goto LABEL_78;
      }

      v10 = [v9 objectAtIndex:0];
      v12 = [v10 lowercaseString];
      v13 = [v12 isEqualToString:@"clear"];

      if (v13)
      {
        v14 = +[BAAgentCore sharedCore];
        v15 = v14;
        v16 = 0;
        v17 = 1;
      }

      else
      {
        v28 = [v10 lowercaseString];
        v29 = [v28 isEqualToString:@"yes"];

        if (v29)
        {
          v14 = +[BAAgentCore sharedCore];
          v15 = v14;
          v16 = 1;
        }

        else
        {
          v36 = [v10 lowercaseString];
          v37 = [v36 isEqualToString:@"no"];

          if (!v37)
          {
            goto LABEL_77;
          }

          v14 = +[BAAgentCore sharedCore];
          v15 = v14;
          v16 = 0;
        }

        v17 = 0;
      }

      [v14 _debugDownloadTime:v16 clear:v17];
LABEL_76:

      goto LABEL_77;
    }

    if (![v8 isEqualToString:@"consume-extension-time"])
    {
      if ([v8 isEqualToString:@"reset-extension-time"])
      {
        if ([v9 count] != 1)
        {
          v10 = sub_100010584();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_1000486C8();
          }

          goto LABEL_77;
        }

        v25 = [v9 objectAtIndex:0];
        v10 = [v25 _baassets_validUTI];

        if (!v10 || ![v10 length])
        {
          v15 = sub_100010584();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000486FC();
          }

          goto LABEL_76;
        }

        v26 = +[BAAgentCore sharedCore];
        v15 = [v26 applicationInfoForIdentifier:v10];

        v19 = sub_100010584();
        v27 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
        if (v15)
        {
          if (v27)
          {
            *buf = 138543362;
            v48 = v10;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Resetting extension runtime for %{public}@", buf, 0xCu);
          }

          [v15 resetExtensionRuntime];
          v19 = +[BAAgentCore sharedCore];
          [v19 saveApplicationState];
          goto LABEL_75;
        }

        if (!v27)
        {
LABEL_75:

          goto LABEL_76;
        }

        *buf = 138543362;
        v48 = v10;
      }

      else
      {
        if (![v8 isEqualToString:@"send-telemetry-event"])
        {
          goto LABEL_78;
        }

        if ([v9 count] != 1)
        {
          v10 = sub_100010584();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_100048660();
          }

          goto LABEL_77;
        }

        v30 = [v9 objectAtIndex:0];
        v10 = [v30 _baassets_validUTI];

        if (!v10 || ![v10 length])
        {
          v15 = sub_100010584();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100048694();
          }

          goto LABEL_76;
        }

        v31 = +[BAAgentCore sharedCore];
        v15 = [v31 applicationInfoIfExistsForIdentifier:v10];

        if (v15)
        {
          v19 = [v10 stringByAppendingString:@"1CB2CF25-5012-4A61-85D5-2FF468AE9203"];
          v32 = [BAContentRequestTelemetry alloc];
          v33 = [v15 installSource];
          v34 = +[NSSet set];
          v23 = [(BAContentRequestTelemetry *)v32 initWithContentRequest:3 applicationIdentifier:v19 installSource:v33 downloads:v34];

          [BATelemetrySender sendContentRequestTelemetryEvent:v23];
          goto LABEL_74;
        }

        v19 = sub_100010584();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          goto LABEL_75;
        }

        *buf = 138543362;
        v48 = v10;
      }

      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Unable to get application runtime info for identifier: %{public}@", buf, 0xCu);
      goto LABEL_75;
    }

    if ([v9 count] != 2)
    {
      v10 = sub_100010584();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100048730();
      }

      goto LABEL_77;
    }

    v18 = [v9 objectAtIndex:0];
    v10 = [v18 _baassets_validUTI];

    v15 = [v9 objectAtIndex:1];
    v19 = [NSScanner scannerWithString:v15];
    v46 = 0;
    [v19 scanInteger:&v46];
    v20 = [v15 substringFromIndex:[v19 scanLocation]];
    v21 = [v20 lowercaseString];
    v22 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v23 = [v21 stringByTrimmingCharactersInSet:v22];

    if ([(BAContentRequestTelemetry *)v23 length]== 1)
    {
      if ([(BAContentRequestTelemetry *)v23 isEqualToString:@"m"])
      {
        v24 = 60 * v46;
        goto LABEL_54;
      }

      if ([(BAContentRequestTelemetry *)v23 isEqualToString:@"h"])
      {
        v24 = 3600 * v46;
LABEL_54:
        v46 = v24;
        if (v24)
        {
          v38 = +[BAAgentCore sharedCore];
          v39 = [v38 applicationInfoForIdentifier:v10];

          if (!v39)
          {
            v45 = sub_100010584();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v48 = v10;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Unable to get application runtime info for identifier: %{public}@", buf, 0xCu);
            }

            goto LABEL_73;
          }

          v40 = v46;
          v41 = sub_100010584();
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
          if (v40 < 1)
          {
            p_vtable = BAURLSession.vtable;
            if (v42)
            {
              *buf = 134218242;
              v48 = v46;
              v49 = 2114;
              v50 = v10;
              v44 = "Removing %ld seconds to %{public}@";
              goto LABEL_71;
            }
          }

          else
          {
            p_vtable = (BAURLSession + 24);
            if (v42)
            {
              *buf = 134218242;
              v48 = v46;
              v49 = 2114;
              v50 = v10;
              v44 = "Added %ld seconds to %{public}@";
LABEL_71:
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, v44, buf, 0x16u);
            }
          }

          [v39 _debugConsumeTime:v46];
          v45 = [p_vtable + 107 sharedCore];
          [v45 saveApplicationState];
LABEL_73:
        }

LABEL_74:

        goto LABEL_75;
      }

      v35 = sub_100010584();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v48 = v23;
        goto LABEL_42;
      }
    }

    else
    {
      v35 = sub_100010584();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v48 = v23;
LABEL_42:
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Invalid unit string: %{public}@\nShould be 'm' or 'h'.", buf, 0xCu);
      }
    }

    v46 = 0;
    goto LABEL_74;
  }

  if (![v9 count])
  {
    v10 = +[BAAgentCore sharedCore];
    [v10 _printDebugState];
LABEL_77:
  }

LABEL_78:
  v5[2](v5);
}

- (void)updateAppStoreProgressObservationWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_progressConfigLock);
  [(BAAgentSystemConnection *)self setClientProgressConfiguration:v6];
  os_unfair_lock_unlock(&self->_progressConfigLock);
  v16 = v6;
  v8 = sub_100048498(v6);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = +[BAAgentCore sharedCore];
        v15 = [v14 essentialAssetsProgressDescriptorWithIdentifier:v13];

        [(BAAgentSystemConnection *)self reportProgressForIdentifier:v13 progressInfo:v15];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v7[2](v7, 1, 0);
}

- (void)reportProgressForIdentifier:(id)a3 progressInfo:(id)a4
{
  v13 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_progressConfigLock);
  v7 = [(BAAgentSystemConnection *)self clientProgressConfiguration];

  if (v7)
  {
    v8 = [(BAAgentSystemConnection *)self clientProgressConfiguration];
    v9 = sub_100048498(v8);
    v10 = [v9 containsObject:v13];

    os_unfair_lock_unlock(&self->_progressConfigLock);
    if (v10)
    {
      v11 = [(BAAgentConnection *)self connection];
      v12 = [v11 remoteObjectProxyWithErrorHandler:&stru_1000794F8];
      [v12 receiveAppStoreProgressWithAppBundleIdentifier:v13 progressInfo:v6];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_progressConfigLock);
  }
}

- (NSString)debugDescription
{
  v2 = [(BAAgentConnection *)self connection];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"System Connection\nPID: %d", [v2 processIdentifier]);

  return v3;
}

@end