@interface AEAConcreteXPCConnectionPrimitives
- (BOOL)connectionCanFetchActiveRestrictionUUIDs:(id)ds;
- (BOOL)connectionCanPublishAssessmentState:(id)state;
- (BOOL)connectionCanRegisterAsAssessmentSource:(id)source;
- (BOOL)connectionCanUsePrivateConfigurationSPI:(id)i;
- (id)auditTokenForConnection:(id)connection;
- (id)makeActiveRestrictionUUIDFetchingListener;
- (id)makeSourceRegisteringListener;
- (int64_t)connectionTypeForConnection:(id)connection;
@end

@implementation AEAConcreteXPCConnectionPrimitives

- (BOOL)connectionCanPublishAssessmentState:(id)state
{
  v3 = [state valueForEntitlement:AEAssessmentModeEntitlement];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)connectionCanRegisterAsAssessmentSource:(id)source
{
  v3 = [source valueForEntitlement:AEAssessmentModeEntitlement];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)connectionCanFetchActiveRestrictionUUIDs:(id)ds
{
  v3 = [ds valueForEntitlement:AEAssessmentModeFetchActiveRestrictionUUIDEntitlement];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)connectionCanUsePrivateConfigurationSPI:(id)i
{
  v3 = [i valueForEntitlement:AEAssessmentModePrivateConfigurationSPIEntitlement];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)auditTokenForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [AEAConcreteAuditToken alloc];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = [(AEAConcreteAuditToken *)v4 initWithAuditToken:v7];

  return v5;
}

- (id)makeSourceRegisteringListener
{
  v2 = [NSXPCListener alloc];
  v3 = [v2 initWithMachServiceName:AEAssessmentStatePublisherRegisteringMachServiceName];

  return v3;
}

- (id)makeActiveRestrictionUUIDFetchingListener
{
  v2 = [NSXPCListener alloc];
  v3 = [v2 initWithMachServiceName:AEAssessmentActiveRestrictionUUIDFetchingMachServiceName];

  return v3;
}

- (int64_t)connectionTypeForConnection:(id)connection
{
  connectionCopy = connection;
  serviceName = [connectionCopy serviceName];
  v5 = [serviceName isEqualToString:AEAssessmentStatePublisherRegisteringMachServiceName];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    serviceName2 = [connectionCopy serviceName];
    v8 = [serviceName2 isEqualToString:AEAssessmentActiveRestrictionUUIDFetchingMachServiceName];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end