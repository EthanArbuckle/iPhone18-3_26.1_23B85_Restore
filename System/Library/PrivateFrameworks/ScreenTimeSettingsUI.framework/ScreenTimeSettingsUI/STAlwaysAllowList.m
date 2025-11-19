@interface STAlwaysAllowList
- (STAlwaysAllowList)initWithBlueprint:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation STAlwaysAllowList

- (STAlwaysAllowList)initWithBlueprint:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STAlwaysAllowList;
  v5 = [(STAlwaysAllowList *)&v18 init];
  if (v5)
  {
    v6 = [v4 configurations];
    v7 = [v6 anyObject];

    if (v7)
    {
      v8 = MEMORY[0x277CFBBC8];
      v9 = [v7 payloadPlist];
      v17 = 0;
      v10 = [v8 declarationForData:v9 error:&v17];
      v11 = v17;

      if (v10)
      {
        v12 = [v10 payloadApps];
      }

      else
      {
        v13 = +[STUILog persistence];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [STAlwaysAllowList initWithBlueprint:];
        }

        v12 = 0;
      }

      v14 = [v10 unknownPayloadKeys];
      v5->_shouldAllowEditing = [v14 count] == 0;
    }

    else
    {
      v12 = [MEMORY[0x277D4B928] defaultAlwaysAllowBundleIDs];
      v5->_shouldAllowEditing = 1;
    }

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_allowedBundleIDs, v15);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(NSArray *)self->_allowedBundleIDs copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end