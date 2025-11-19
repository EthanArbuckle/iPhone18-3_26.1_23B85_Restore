@interface PLMigrationServiceOptions
- (PLMigrationServiceOptions)init;
- (PLMigrationServiceOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)nameForOption:(unsigned __int16)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLMigrationServiceOptions

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12.receiver = self;
  v12.super_class = PLMigrationServiceOptions;
  v4 = [(PLMigrationServiceOptions *)&v12 description];
  v5 = [(PLMigrationServiceOptions *)self clientBundleId];
  v6 = [(PLMigrationServiceOptions *)self suggestedDestinationName];
  [v3 appendFormat:@"%@ clientBundleId=%@ suggestedDestinationName=%@ options[%d]={", v4, v5, v6, -[PLMigrationServiceOptions option](self, "option")];

  if ([(PLMigrationServiceOptions *)self option])
  {
    v7 = 0;
    for (i = 0; i != 9; ++i)
    {
      if ([(PLMigrationServiceOptions *)self isPMSOption:(1 << i)])
      {
        if (v7)
        {
          [v3 appendFormat:@", "];
        }

        v9 = [(PLMigrationServiceOptions *)self nameForOption:(1 << i)];
        [v3 appendFormat:@"%@", v9];

        v7 = 1;
      }
    }

    [v3 appendFormat:@"}"];
  }

  else
  {
    v10 = [(PLMigrationServiceOptions *)self nameForOption:0];
    [v3 appendFormat:@"%@}", v10];
  }

  return v3;
}

- (id)nameForOption:(unsigned __int16)a3
{
  if (a3 > 15)
  {
    if (a3 <= 63)
    {
      if (a3 == 16)
      {
        return @"NotifyTask";
      }

      if (a3 == 32)
      {
        return @"CopyResources";
      }
    }

    else
    {
      switch(a3)
      {
        case 0x40u:
          return @"PreserveProxies";
        case 0x80u:
          return @"CorruptedMigration";
        case 0x100u:
          return @"FailOnValidationErrors";
      }
    }
  }

  else if (a3 <= 1)
  {
    if (!a3)
    {
      return @"None";
    }

    if (a3 == 1)
    {
      return @"EnableMT";
    }
  }

  else
  {
    switch(a3)
    {
      case 2u:
        return @"Rebuild";
      case 4u:
        return @"ResumeInterruptedMigration";
      case 8u:
        return @"SilentMigration";
    }
  }

  return &stru_1F1F75560;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(PLMigrationServiceOptions *)self clientBundleId];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(PLMigrationServiceOptions *)self suggestedDestinationName];
  [v4 setSuggestedDestinationName:v7];

  [v4 setOption:{-[PLMigrationServiceOptions option](self, "option")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(PLMigrationServiceOptions *)self clientBundleId];
  [v6 encodeObject:v4 forKey:@"clientBundleId"];

  v5 = [(PLMigrationServiceOptions *)self suggestedDestinationName];
  [v6 encodeObject:v5 forKey:@"suggestedDestinationName"];

  [v6 encodeInt32:-[PLMigrationServiceOptions option](self forKey:{"option"), @"option"}];
}

- (PLMigrationServiceOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLMigrationServiceOptions *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"clientBundleId"];
    clientBundleId = v5->_clientBundleId;
    v5->_clientBundleId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedDestinationName"];
    [(PLMigrationServiceOptions *)v5 setSuggestedDestinationName:v8];

    -[PLMigrationServiceOptions setOption:](v5, "setOption:", [v4 decodeInt32ForKey:@"option"]);
  }

  return v5;
}

- (PLMigrationServiceOptions)init
{
  v10.receiver = self;
  v10.super_class = PLMigrationServiceOptions;
  v2 = [(PLMigrationServiceOptions *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    clientBundleId = v2->_clientBundleId;
    v2->_clientBundleId = v4;

    if (!v2->_clientBundleId)
    {
      v6 = [MEMORY[0x1E696AE30] processInfo];
      v7 = [v6 processName];
      v8 = v2->_clientBundleId;
      v2->_clientBundleId = v7;
    }
  }

  return v2;
}

@end