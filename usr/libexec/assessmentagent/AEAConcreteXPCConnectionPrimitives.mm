@interface AEAConcreteXPCConnectionPrimitives
- (BOOL)connectionCanFetchActiveRestrictionUUIDs:(id)a3;
- (BOOL)connectionCanPublishAssessmentState:(id)a3;
- (BOOL)connectionCanRegisterAsAssessmentSource:(id)a3;
- (BOOL)connectionCanUsePrivateConfigurationSPI:(id)a3;
- (id)auditTokenForConnection:(id)a3;
- (id)makeActiveRestrictionUUIDFetchingListener;
- (id)makeSourceRegisteringListener;
- (int64_t)connectionTypeForConnection:(id)a3;
@end

@implementation AEAConcreteXPCConnectionPrimitives

- (BOOL)connectionCanPublishAssessmentState:(id)a3
{
  v3 = [a3 valueForEntitlement:AEAssessmentModeEntitlement];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)connectionCanRegisterAsAssessmentSource:(id)a3
{
  v3 = [a3 valueForEntitlement:AEAssessmentModeEntitlement];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)connectionCanFetchActiveRestrictionUUIDs:(id)a3
{
  v3 = [a3 valueForEntitlement:AEAssessmentModeFetchActiveRestrictionUUIDEntitlement];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)connectionCanUsePrivateConfigurationSPI:(id)a3
{
  v3 = [a3 valueForEntitlement:AEAssessmentModePrivateConfigurationSPIEntitlement];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)auditTokenForConnection:(id)a3
{
  v3 = a3;
  v4 = [AEAConcreteAuditToken alloc];
  if (v3)
  {
    [v3 auditToken];
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

- (int64_t)connectionTypeForConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 serviceName];
  v5 = [v4 isEqualToString:AEAssessmentStatePublisherRegisteringMachServiceName];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 serviceName];
    v8 = [v7 isEqualToString:AEAssessmentActiveRestrictionUUIDFetchingMachServiceName];

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