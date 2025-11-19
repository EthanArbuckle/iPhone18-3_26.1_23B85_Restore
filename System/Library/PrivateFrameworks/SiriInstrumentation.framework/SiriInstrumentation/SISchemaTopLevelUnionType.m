@interface SISchemaTopLevelUnionType
- (SIComponentIdentifier)componentIdentifier;
- (id)getRequestLinkInfo;
- (id)wrapAsAnyEvent;
@end

@implementation SISchemaTopLevelUnionType

- (id)wrapAsAnyEvent
{
  v3 = [(SISchemaTopLevelUnionType *)self getAnyEventType];
  if (v3)
  {
    v4 = v3;
    v5 = [SISchemaAnyEvent alloc];
    v6 = [(SISchemaTopLevelUnionType *)self data];
    v7 = [(SISchemaAnyEvent *)v5 initWithAnyEventType:v4 payload:v6];

    if ([(SISchemaTopLevelUnionType *)self isProvisional])
    {
      v8 = objc_alloc_init(SISchemaProvisionalEvent);
      v9 = [(SISchemaTopLevelUnionType *)self getTypeId];
      [(SISchemaProvisionalEvent *)v8 setTypeId:v9];

      v10 = [(SISchemaTopLevelUnionType *)self getVersion];
      -[SISchemaProvisionalEvent setVersion:](v8, "setVersion:", [v10 integerValue]);

      [(SISchemaProvisionalEvent *)v8 setAnyEvent:v7];
      v11 = [(SISchemaTopLevelUnionType *)v8 wrapAsAnyEvent];
    }

    else
    {
      v11 = v7;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getRequestLinkInfo
{
  v3 = [(SISchemaTopLevelUnionType *)self getComponentName];
  if (v3)
  {
    v4 = v3;
    v5 = [(SISchemaTopLevelUnionType *)self getComponentId];
    if (v5)
    {
      v6 = objc_alloc_init(SISchemaRequestLinkInfo);
      [(SISchemaRequestLinkInfo *)v6 setComponent:v4];
      [(SISchemaRequestLinkInfo *)v6 setUuid:v5];
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
  v3 = [(SISchemaTopLevelUnionType *)self getComponentName];
  v4 = [(SISchemaTopLevelUnionType *)self getComponentId];
  v5 = 0;
  if (v4 && v3)
  {
    v5 = [[SIComponentIdentifier alloc] initWithName:v3 schemaUUID:v4];
  }

  return v5;
}

@end