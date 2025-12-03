@interface PersonalizedSensingServiceDelegate
- (BOOL)isExecutableAllowed:(id)allowed;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PersonalizedSensingServiceDelegate)init;
- (id)executablePathOfConnection:(id)connection;
- (id)getClientAlternateIdentifierForConnection:(id)connection;
- (id)getClientBundleIdentifierForConnection:(id)connection;
- (id)processName:(id)name;
- (void)clientConnection:(id)connection cacheContextRetrievalEntitlement:(id)entitlement;
- (void)clientConnection:(id)connection cachePersonalizedContextEntitlement:(id)entitlement;
@end

@implementation PersonalizedSensingServiceDelegate

- (PersonalizedSensingServiceDelegate)init
{
  v6.receiver = self;
  v6.super_class = PersonalizedSensingServiceDelegate;
  v2 = [(PersonalizedSensingServiceDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    dataAccessEntitlements = v2->dataAccessEntitlements;
    v2->dataAccessEntitlements = v3;
  }

  return v2;
}

- (void)clientConnection:(id)connection cachePersonalizedContextEntitlement:(id)entitlement
{
  v5 = [connection valueForEntitlement:entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v5;
    v6 = v5;
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v26) = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PSService,personalized context entitlementCheck,arrayEntriesCount,%d", buf, 8u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [@"NLData" isEqualToString:v13];
            p_hasEntitlementForNLData = &self->hasEntitlementForNLData;
            if ((v14 & 1) != 0 || (v16 = [@"StructuredData" isEqualToString:v13], p_hasEntitlementForNLData = &self->hasEntitlementForStructuredData, v16))
            {
              *p_hasEntitlementForNLData = 1;
            }

            v17 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              hasEntitlementForNLData = self->hasEntitlementForNLData;
              hasEntitlementForStructuredData = self->hasEntitlementForStructuredData;
              *buf = 138412802;
              v26 = v13;
              v27 = 1024;
              v28 = hasEntitlementForNLData;
              v29 = 1024;
              v30 = hasEntitlementForStructuredData;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "PSService,entitlementCheck,entry,%@,hasEntitlementForNLData,%d,hasEntitlementForStructuredData,%d", buf, 0x18u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v10);
    }

    v5 = v20;
  }
}

- (void)clientConnection:(id)connection cacheContextRetrievalEntitlement:(id)entitlement
{
  v5 = [connection valueForEntitlement:entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v5;
    v6 = v5;
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v24) = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PSService,context retrieval entitlementCheck,arrayEntriesCount,%d", buf, 8u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([@"Activity" isEqualToString:v13])
            {
              v14 = 3;
              goto LABEL_16;
            }

            if ([@"Location" isEqualToString:v13])
            {
              v14 = 1;
              goto LABEL_16;
            }

            if ([@"Time" isEqualToString:v13])
            {
              v14 = 6;
LABEL_16:
              v15 = [[NSNumber alloc] initWithInt:v14];
              [(NSMutableSet *)self->dataAccessEntitlements addObject:v15];
            }

            v16 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              dataAccessEntitlements = self->dataAccessEntitlements;
              *buf = 138412290;
              v24 = dataAccessEntitlements;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "PSService,entitlementCheck,dataAccessEntitlements,%@", buf, 0xCu);
            }

            continue;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v10);
    }

    v5 = v18;
  }
}

- (id)executablePathOfConnection:(id)connection
{
  connectionCopy = connection;
  bzero(buffer, 0x1000uLL);
  memset(&v6, 0, sizeof(v6));
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  if (proc_pidpath_audittoken(&v6, buffer, 0x1000u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSString stringWithUTF8String:buffer];
  }

  return v4;
}

- (id)processName:(id)name
{
  nameCopy = name;
  bzero(buffer, 0x1000uLL);
  memset(v9, 0, sizeof(v9));
  if (nameCopy)
  {
    processIdentifier = [nameCopy processIdentifier];
  }

  else
  {
    processIdentifier = getpid();
  }

  proc_pidpath(processIdentifier, buffer, 0x1000u);
  v5 = strlen(buffer);
  if ((v5 & 0x80000000) == 0)
  {
    do
    {
      if (buffer[v5] == 47)
      {
        break;
      }
    }

    while (v5-- > 0);
  }

  __strlcpy_chk();
  v7 = [[NSString alloc] initWithFormat:@"%s", v9];

  return v7;
}

- (BOOL)isExecutableAllowed:(id)allowed
{
  allowedCopy = allowed;
  v5 = [NSSet setWithObjects:@"photoanalysisd", @"momentsmotc", 0];
  v6 = [(PersonalizedSensingServiceDelegate *)self processName:allowedCopy];

  LOBYTE(allowedCopy) = [v5 containsObject:v6];
  return allowedCopy;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(PersonalizedSensingServiceDelegate *)self processName:connectionCopy];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PSService, client name,%@", buf, 0xCu);
  }

  [(PersonalizedSensingServiceDelegate *)self clientConnection:connectionCopy cachePersonalizedContextEntitlement:@"com.apple.personalized-sensing-service"];
  [(PersonalizedSensingServiceDelegate *)self clientConnection:connectionCopy cacheContextRetrievalEntitlement:@"com.apple.personalized-sensing-service.data-access"];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  selfCopy = self;
  v46 = v6;
  v51 = 0;
  v8 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v51];
  v44 = v51;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = [v8 bundleIdentifier];
    processIdentifier = [connectionCopy processIdentifier];
    *buf = 138412802;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2112;
    *&buf[20] = connectionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PSService,Accepting connection from process %@:%d (%@)", buf, 0x1Cu);
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PersonalizedSensingServiceProtocol];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v43 = v8;
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [NSSet setWithObjects:v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0];
  [v12 setClasses:v20 forSelector:"fetchPersonalizedContextWithOptions:withReply:" argumentIndex:0 ofReply:1];

  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [NSSet setWithObjects:v21, v22, v23, v24, v25, v26, v27, objc_opt_class(), 0];
  [v12 setClasses:v28 forSelector:"notifyContextFeedback:withReply:" argumentIndex:0 ofReply:1];

  v29 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v12 setClasses:v29 forSelector:"fetchContextWithOptions:predicates:authorizedTypes:withReply:" argumentIndex:0 ofReply:0];

  v30 = objc_opt_class();
  v31 = [NSSet setWithObjects:v30, objc_opt_class(), 0];
  [v12 setClasses:v31 forSelector:"fetchContextWithOptions:predicates:authorizedTypes:withReply:" argumentIndex:1 ofReply:0];

  v32 = objc_opt_class();
  v33 = [NSSet setWithObjects:v32, objc_opt_class(), 0];
  [v12 setClasses:v33 forSelector:"fetchContextWithOptions:predicates:authorizedTypes:withReply:" argumentIndex:2 ofReply:0];

  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = [NSSet setWithObjects:v34, v35, v36, objc_opt_class(), 0];
  [v12 setClasses:v37 forSelector:"fetchContextWithOptions:predicates:authorizedTypes:withReply:" argumentIndex:0 ofReply:1];

  [connectionCopy setExportedInterface:v12];
  v38 = [[PersonalizedSensingService alloc] initWithClientID:@"com.apple.photoanalysisd"];
  [connectionCopy setExportedObject:v38];
  [(PersonalizedSensingService *)v38 setEntitlementsForNLData:selfCopy->hasEntitlementForNLData];
  [(PersonalizedSensingService *)v38 setEntitlementsForStructuredData:selfCopy->hasEntitlementForStructuredData];
  [(PersonalizedSensingService *)v38 setEntitlementsForDataAccess:selfCopy->dataAccessEntitlements];
  v39 = [(PersonalizedSensingServiceDelegate *)selfCopy getClientAlternateIdentifierForConnection:connectionCopy];
  [(PersonalizedSensingService *)v38 setClientAlternateIdentifier:v39];

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = __73__PersonalizedSensingServiceDelegate_listener_shouldAcceptNewConnection___block_invoke;
  v49[3] = &unk_1000B7718;
  v40 = v38;
  v50 = v40;
  [connectionCopy setInterruptionHandler:v49];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = __73__PersonalizedSensingServiceDelegate_listener_shouldAcceptNewConnection___block_invoke_2;
  v47[3] = &unk_1000B7718;
  v48 = v40;
  v41 = v40;
  [connectionCopy setInvalidationHandler:v47];
  [connectionCopy resume];

  return 1;
}

- (id)getClientBundleIdentifierForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v5 = SecTaskCreateWithAuditToken(0, &v13);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopySigningIdentifier(v5, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = v8;
      if (!v8 || [(__CFString *)v8 length])
      {
        goto LABEL_10;
      }
    }

    v9 = 0;
LABEL_10:
    CFRelease(v6);
    v10 = v9;

    v11 = v10;
    goto LABEL_14;
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [PersonalizedSensingServiceDelegate getClientBundleIdentifierForConnection:v10];
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)getClientAlternateIdentifierForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"application-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [(PersonalizedSensingServiceDelegate *)self executablePathOfConnection:connectionCopy];
  }

  v7 = v6;

  return v7;
}

@end