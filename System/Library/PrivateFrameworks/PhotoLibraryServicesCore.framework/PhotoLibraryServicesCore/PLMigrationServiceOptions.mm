@interface PLMigrationServiceOptions
- (PLMigrationServiceOptions)init;
- (PLMigrationServiceOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)nameForOption:(unsigned __int16)option;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLMigrationServiceOptions

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12.receiver = self;
  v12.super_class = PLMigrationServiceOptions;
  v4 = [(PLMigrationServiceOptions *)&v12 description];
  clientBundleId = [(PLMigrationServiceOptions *)self clientBundleId];
  suggestedDestinationName = [(PLMigrationServiceOptions *)self suggestedDestinationName];
  [v3 appendFormat:@"%@ clientBundleId=%@ suggestedDestinationName=%@ options[%d]={", v4, clientBundleId, suggestedDestinationName, -[PLMigrationServiceOptions option](self, "option")];

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

- (id)nameForOption:(unsigned __int16)option
{
  if (option > 15)
  {
    if (option <= 63)
    {
      if (option == 16)
      {
        return @"NotifyTask";
      }

      if (option == 32)
      {
        return @"CopyResources";
      }
    }

    else
    {
      switch(option)
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

  else if (option <= 1)
  {
    if (!option)
    {
      return @"None";
    }

    if (option == 1)
    {
      return @"EnableMT";
    }
  }

  else
  {
    switch(option)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  clientBundleId = [(PLMigrationServiceOptions *)self clientBundleId];
  v6 = v4[2];
  v4[2] = clientBundleId;

  suggestedDestinationName = [(PLMigrationServiceOptions *)self suggestedDestinationName];
  [v4 setSuggestedDestinationName:suggestedDestinationName];

  [v4 setOption:{-[PLMigrationServiceOptions option](self, "option")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientBundleId = [(PLMigrationServiceOptions *)self clientBundleId];
  [coderCopy encodeObject:clientBundleId forKey:@"clientBundleId"];

  suggestedDestinationName = [(PLMigrationServiceOptions *)self suggestedDestinationName];
  [coderCopy encodeObject:suggestedDestinationName forKey:@"suggestedDestinationName"];

  [coderCopy encodeInt32:-[PLMigrationServiceOptions option](self forKey:{"option"), @"option"}];
}

- (PLMigrationServiceOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PLMigrationServiceOptions *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"clientBundleId"];
    clientBundleId = v5->_clientBundleId;
    v5->_clientBundleId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedDestinationName"];
    [(PLMigrationServiceOptions *)v5 setSuggestedDestinationName:v8];

    -[PLMigrationServiceOptions setOption:](v5, "setOption:", [coderCopy decodeInt32ForKey:@"option"]);
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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    clientBundleId = v2->_clientBundleId;
    v2->_clientBundleId = bundleIdentifier;

    if (!v2->_clientBundleId)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v8 = v2->_clientBundleId;
      v2->_clientBundleId = processName;
    }
  }

  return v2;
}

@end