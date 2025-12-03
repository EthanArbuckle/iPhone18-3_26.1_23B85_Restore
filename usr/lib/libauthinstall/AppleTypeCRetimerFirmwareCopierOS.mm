@interface AppleTypeCRetimerFirmwareCopierOS
- (AppleTypeCRetimerFirmwareCopierOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)error;
- (BOOL)createDestinationBundleFirmwareDirectoryFor:(id)for error:(id *)error;
- (BOOL)parseOptions:(id)options;
- (id)description;
- (id)readFirmwareFileDataWithError:(id *)error;
- (id)rtKitKeyFromBuildIdentityDict:(id)dict;
@end

@implementation AppleTypeCRetimerFirmwareCopierOS

- (AppleTypeCRetimerFirmwareCopierOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = AppleTypeCRetimerFirmwareCopierOS;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperOS *)&v13 initWithOptions:optionsCopy logFunction:function logContext:context];
  v10 = v9;
  if (v9)
  {
    if (![(AppleTypeCRetimerFirmwareCopierOS *)v9 parseOptions:optionsCopy])
    {
      v11 = 0;
      goto LABEL_6;
    }

    [(AppleTypeCRetimerRestoreInfoHelperOS *)v10 verboseLog:@"%@", v10];
  }

  v11 = v10;
LABEL_6:

  return v11;
}

- (BOOL)parseOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"BuildIdentity"];
  if (v5)
  {
    v6 = [(AppleTypeCRetimerFirmwareCopierOS *)self rtKitKeyFromBuildIdentityDict:v5];
    if (!v6)
    {
      [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Could not find RTKitOS key in build identity dictionary"];
      v26 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v7 objectForKeyedSubscript:@"Info"];
    v9 = v8;
    if (!v8)
    {
      [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Could not find RTKitOS info dictionary"];
      v26 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v10 = [v8 objectForKeyedSubscript:@"Path"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 copy];
      firmwarePathSuffix = self->_firmwarePathSuffix;
      self->_firmwarePathSuffix = v12;

      v14 = [optionsCopy objectForKeyedSubscript:@"FirmwareData"];
      firmwareOverrideData = self->_firmwareOverrideData;
      self->_firmwareOverrideData = v14;

      if (self->_firmwareOverrideData)
      {
        goto LABEL_12;
      }

      v16 = [optionsCopy objectForKeyedSubscript:@"BundleDataDict"];
      v17 = 0x2A13B8000;
      if (v16)
      {
        v29 = v16;
        v18 = [v16 objectForKeyedSubscript:v6];
        firmwareInBundleDataDict = self->_firmwareInBundleDataDict;
        self->_firmwareInBundleDataDict = v18;

        v17 = 0x2A13B8000uLL;
        [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Attempt to use '%@' firmware from BundleDataDict: %@", v6, self->_firmwareInBundleDataDict];
        v16 = v29;
      }

      if (self->_firmwareOverrideData || *(&self->super.super.isa + *(v17 + 2672)))
      {
        goto LABEL_12;
      }

      v20 = [optionsCopy objectForKeyedSubscript:@"BundlePath"];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 URLByAppendingPathComponent:self->_firmwarePathSuffix];
        firmwareBundleURL = self->_firmwareBundleURL;
        self->_firmwareBundleURL = v22;

LABEL_12:
        v24 = [optionsCopy objectForKeyedSubscript:@"DestBundlePath"];
        destBundlePathURL = self->_destBundlePathURL;
        self->_destBundlePathURL = v24;

        v26 = 1;
LABEL_18:

        goto LABEL_19;
      }

      v27 = @"Could not find bundle path";
    }

    else
    {
      v27 = @"Could not find RTKitOS path";
    }

    [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:v27];
    v26 = 0;
    goto LABEL_18;
  }

  [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Could not find build identity dictionary"];
  v26 = 0;
LABEL_21:

  return v26;
}

- (id)rtKitKeyFromBuildIdentityDict:(id)dict
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dictCopy = dict;
  v4 = [dictCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(dictCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasPrefix:{@"Timer, RTKitOS", v12}])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [dictCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (BOOL)createDestinationBundleFirmwareDirectoryFor:(id)for error:(id *)error
{
  v6 = [MEMORY[0x29EDB8E70] fileURLWithPath:for];
  uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  path = [uRLByDeletingLastPathComponent path];
  v10 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

  if ((v10 & 1) == 0)
  {
    path2 = [uRLByDeletingLastPathComponent path];
    [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to create destination bundle firmware directory at '%@' (%@)", path2, *error];
  }

  return v10;
}

- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)error
{
  destBundlePathURL = self->_destBundlePathURL;
  if (destBundlePathURL)
  {
    v6 = MEMORY[0x29EDBA0F8];
    path = [(NSURL *)destBundlePathURL path];
    v8 = [v6 stringWithFormat:@"%@/%@", path, self->_firmwarePathSuffix];

    v9 = [MEMORY[0x29EDB8E70] fileURLWithPath:v8];
    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];
    defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
    path2 = [uRLByDeletingLastPathComponent path];
    v36 = 0;
    v14 = [defaultManager2 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v36];
    v15 = v36;

    if ((v14 & 1) == 0 && ([v15 isFileExistsError] & 1) == 0)
    {
      path3 = [uRLByDeletingLastPathComponent path];
      [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to create directory at '%@' (%@)", path3, v15];

      if (!error)
      {
LABEL_21:
        v22 = 0;
        goto LABEL_22;
      }

      v26 = v15;
      v22 = 0;
      *error = v15;
      goto LABEL_22;
    }

    path4 = [v9 path];
    v17 = [defaultManager fileExistsAtPath:path4];

    if (v17)
    {
      v35 = 0;
      v18 = [defaultManager removeItemAtURL:v9 error:&v35];
      v19 = v35;
      v20 = v19;
      if ((v18 & 1) == 0)
      {
        path5 = [v9 path];
        [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to remove file at '%@' (%@)", path5, v20];
        goto LABEL_17;
      }
    }

    firmwareOverrideData = self->_firmwareOverrideData;
    if (firmwareOverrideData)
    {
      v22 = 1;
      if (![(NSData *)firmwareOverrideData writeToURL:v9 atomically:1])
      {
        path6 = [v9 path];
        [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to write firmware file data to '%@'", path6];
        v24 = path6;
LABEL_20:

        goto LABEL_21;
      }

LABEL_22:

      return v22;
    }

    defaultManager3 = [MEMORY[0x29EDB9FB8] defaultManager];
    firmwareBundleURL = self->_firmwareBundleURL;
    v34 = 0;
    v29 = [defaultManager3 copyItemAtURL:firmwareBundleURL toURL:v9 error:&v34];
    v20 = v34;

    if (v29)
    {

      v22 = 1;
      goto LABEL_22;
    }

    path5 = [(NSURL *)self->_firmwareBundleURL path];
    path7 = [v9 path];
    [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to copy firmware from '%@' to '%@' (%@)", path5, path7, v20];

LABEL_17:
    if (error)
    {
      v32 = v20;
      *error = v20;
    }

    v24 = v20;
    goto LABEL_20;
  }

  return 1;
}

- (id)readFirmwareFileDataWithError:(id *)error
{
  firmwareOverrideData = self->_firmwareOverrideData;
  if (firmwareOverrideData || (firmwareOverrideData = self->_firmwareInBundleDataDict) != 0)
  {
    v5 = firmwareOverrideData;
  }

  else
  {
    firmwareBundleURL = self->_firmwareBundleURL;
    v12 = 0;
    v5 = [MEMORY[0x29EDB8DA0] dataWithContentsOfURL:firmwareBundleURL options:0 error:&v12];
    v9 = v12;
    if (!v5)
    {
      path = [(NSURL *)self->_firmwareBundleURL path];
      [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to read firmware file at '%@' (%@)", path, v9];

      if (error)
      {
        v11 = v9;
        *error = v9;
      }
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@:\n", v5];

  [v6 appendFormat:@"\tFirmware path suffix: %@\n", self->_firmwarePathSuffix];
  path = [(NSURL *)self->_firmwareBundleURL path];
  [v6 appendFormat:@"\tFirmware bundle path: %@\n", path];

  destBundlePathURL = self->_destBundlePathURL;
  if (destBundlePathURL)
  {
    path2 = [(NSURL *)destBundlePathURL path];
    [v6 appendFormat:@"\tDestination Bundle Path: %@\n", path2];
  }

  v10 = [MEMORY[0x29EDBA0F8] stringWithString:v6];

  return v10;
}

@end