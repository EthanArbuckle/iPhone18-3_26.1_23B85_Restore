@interface STAlwaysAllowList
- (STAlwaysAllowList)initWithBlueprint:(id)blueprint;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation STAlwaysAllowList

- (STAlwaysAllowList)initWithBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  v18.receiver = self;
  v18.super_class = STAlwaysAllowList;
  v5 = [(STAlwaysAllowList *)&v18 init];
  if (v5)
  {
    configurations = [blueprintCopy configurations];
    anyObject = [configurations anyObject];

    if (anyObject)
    {
      v8 = MEMORY[0x277CFBBC8];
      payloadPlist = [anyObject payloadPlist];
      v17 = 0;
      v10 = [v8 declarationForData:payloadPlist error:&v17];
      v11 = v17;

      if (v10)
      {
        payloadApps = [v10 payloadApps];
      }

      else
      {
        v13 = +[STUILog persistence];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [STAlwaysAllowList initWithBlueprint:];
        }

        payloadApps = 0;
      }

      unknownPayloadKeys = [v10 unknownPayloadKeys];
      v5->_shouldAllowEditing = [unknownPayloadKeys count] == 0;
    }

    else
    {
      payloadApps = [MEMORY[0x277D4B928] defaultAlwaysAllowBundleIDs];
      v5->_shouldAllowEditing = 1;
    }

    if (payloadApps)
    {
      v15 = payloadApps;
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_allowedBundleIDs, v15);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(NSArray *)self->_allowedBundleIDs copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end