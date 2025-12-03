@interface SISchemaTopLevelUnionType
- (SIComponentIdentifier)componentIdentifier;
- (id)getRequestLinkInfo;
- (id)wrapAsAnyEvent;
@end

@implementation SISchemaTopLevelUnionType

- (id)wrapAsAnyEvent
{
  getAnyEventType = [(SISchemaTopLevelUnionType *)self getAnyEventType];
  if (getAnyEventType)
  {
    v4 = getAnyEventType;
    v5 = [SISchemaAnyEvent alloc];
    data = [(SISchemaTopLevelUnionType *)self data];
    v7 = [(SISchemaAnyEvent *)v5 initWithAnyEventType:v4 payload:data];

    if ([(SISchemaTopLevelUnionType *)self isProvisional])
    {
      v8 = objc_alloc_init(SISchemaProvisionalEvent);
      getTypeId = [(SISchemaTopLevelUnionType *)self getTypeId];
      [(SISchemaProvisionalEvent *)v8 setTypeId:getTypeId];

      getVersion = [(SISchemaTopLevelUnionType *)self getVersion];
      -[SISchemaProvisionalEvent setVersion:](v8, "setVersion:", [getVersion integerValue]);

      [(SISchemaProvisionalEvent *)v8 setAnyEvent:v7];
      wrapAsAnyEvent = [(SISchemaTopLevelUnionType *)v8 wrapAsAnyEvent];
    }

    else
    {
      wrapAsAnyEvent = v7;
    }
  }

  else
  {
    wrapAsAnyEvent = 0;
  }

  return wrapAsAnyEvent;
}

- (id)getRequestLinkInfo
{
  getComponentName = [(SISchemaTopLevelUnionType *)self getComponentName];
  if (getComponentName)
  {
    v4 = getComponentName;
    getComponentId = [(SISchemaTopLevelUnionType *)self getComponentId];
    if (getComponentId)
    {
      v6 = objc_alloc_init(SISchemaRequestLinkInfo);
      [(SISchemaRequestLinkInfo *)v6 setComponent:v4];
      [(SISchemaRequestLinkInfo *)v6 setUuid:getComponentId];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SIComponentIdentifier)componentIdentifier
{
  getComponentName = [(SISchemaTopLevelUnionType *)self getComponentName];
  getComponentId = [(SISchemaTopLevelUnionType *)self getComponentId];
  v5 = 0;
  if (getComponentId && getComponentName)
  {
    v5 = [[SIComponentIdentifier alloc] initWithName:getComponentName schemaUUID:getComponentId];
  }

  return v5;
}

@end