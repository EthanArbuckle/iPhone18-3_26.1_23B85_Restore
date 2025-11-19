@interface AppleTypeCRetimerFirmwareCopierOS
- (AppleTypeCRetimerFirmwareCopierOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)a3;
- (BOOL)createDestinationBundleFirmwareDirectoryFor:(id)a3 error:(id *)a4;
- (BOOL)parseOptions:(id)a3;
- (id)description;
- (id)readFirmwareFileDataWithError:(id *)a3;
- (id)rtKitKeyFromBuildIdentityDict:(id)a3;
@end

@implementation AppleTypeCRetimerFirmwareCopierOS

- (AppleTypeCRetimerFirmwareCopierOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = AppleTypeCRetimerFirmwareCopierOS;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperOS *)&v13 initWithOptions:v8 logFunction:a4 logContext:a5];
  v10 = v9;
  if (v9)
  {
    if (![(AppleTypeCRetimerFirmwareCopierOS *)v9 parseOptions:v8])
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

- (BOOL)parseOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"BuildIdentity"];
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

      v14 = [v4 objectForKeyedSubscript:@"FirmwareData"];
      firmwareOverrideData = self->_firmwareOverrideData;
      self->_firmwareOverrideData = v14;

      if (self->_firmwareOverrideData)
      {
        goto LABEL_12;
      }

      v16 = [v4 objectForKeyedSubscript:@"BundleDataDict"];
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

      v20 = [v4 objectForKeyedSubscript:@"BundlePath"];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 URLByAppendingPathComponent:self->_firmwarePathSuffix];
        firmwareBundleURL = self->_firmwareBundleURL;
        self->_firmwareBundleURL = v22;

LABEL_12:
        v24 = [v4 objectForKeyedSubscript:@"DestBundlePath"];
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

- (id)rtKitKeyFromBuildIdentityDict:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasPrefix:{@"Timer, RTKitOS", v12}])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)createDestinationBundleFirmwareDirectoryFor:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x29EDB8E70] fileURLWithPath:a3];
  v7 = [v6 URLByDeletingLastPathComponent];
  v8 = [MEMORY[0x29EDB9FB8] defaultManager];
  v9 = [v7 path];
  v10 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:a4];

  if ((v10 & 1) == 0)
  {
    v11 = [v7 path];
    [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to create destination bundle firmware directory at '%@' (%@)", v11, *a4];
  }

  return v10;
}

- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)a3
{
  destBundlePathURL = self->_destBundlePathURL;
  if (destBundlePathURL)
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = [(NSURL *)destBundlePathURL path];
    v8 = [v6 stringWithFormat:@"%@/%@", v7, self->_firmwarePathSuffix];

    v9 = [MEMORY[0x29EDB8E70] fileURLWithPath:v8];
    v10 = [MEMORY[0x29EDB9FB8] defaultManager];
    v11 = [v9 URLByDeletingLastPathComponent];
    v12 = [MEMORY[0x29EDB9FB8] defaultManager];
    v13 = [v11 path];
    v36 = 0;
    v14 = [v12 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v36];
    v15 = v36;

    if ((v14 & 1) == 0 && ([v15 isFileExistsError] & 1) == 0)
    {
      v25 = [v11 path];
      [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to create directory at '%@' (%@)", v25, v15];

      if (!a3)
      {
LABEL_21:
        v22 = 0;
        goto LABEL_22;
      }

      v26 = v15;
      v22 = 0;
      *a3 = v15;
      goto LABEL_22;
    }

    v16 = [v9 path];
    v17 = [v10 fileExistsAtPath:v16];

    if (v17)
    {
      v35 = 0;
      v18 = [v10 removeItemAtURL:v9 error:&v35];
      v19 = v35;
      v20 = v19;
      if ((v18 & 1) == 0)
      {
        v30 = [v9 path];
        [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to remove file at '%@' (%@)", v30, v20];
        goto LABEL_17;
      }
    }

    firmwareOverrideData = self->_firmwareOverrideData;
    if (firmwareOverrideData)
    {
      v22 = 1;
      if (![(NSData *)firmwareOverrideData writeToURL:v9 atomically:1])
      {
        v23 = [v9 path];
        [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to write firmware file data to '%@'", v23];
        v24 = v23;
LABEL_20:

        goto LABEL_21;
      }

LABEL_22:

      return v22;
    }

    v27 = [MEMORY[0x29EDB9FB8] defaultManager];
    firmwareBundleURL = self->_firmwareBundleURL;
    v34 = 0;
    v29 = [v27 copyItemAtURL:firmwareBundleURL toURL:v9 error:&v34];
    v20 = v34;

    if (v29)
    {

      v22 = 1;
      goto LABEL_22;
    }

    v30 = [(NSURL *)self->_firmwareBundleURL path];
    v31 = [v9 path];
    [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to copy firmware from '%@' to '%@' (%@)", v30, v31, v20];

LABEL_17:
    if (a3)
    {
      v32 = v20;
      *a3 = v20;
    }

    v24 = v20;
    goto LABEL_20;
  }

  return 1;
}

- (id)readFirmwareFileDataWithError:(id *)a3
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
      v10 = [(NSURL *)self->_firmwareBundleURL path];
      [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to read firmware file at '%@' (%@)", v10, v9];

      if (a3)
      {
        v11 = v9;
        *a3 = v9;
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
  v7 = [(NSURL *)self->_firmwareBundleURL path];
  [v6 appendFormat:@"\tFirmware bundle path: %@\n", v7];

  destBundlePathURL = self->_destBundlePathURL;
  if (destBundlePathURL)
  {
    v9 = [(NSURL *)destBundlePathURL path];
    [v6 appendFormat:@"\tDestination Bundle Path: %@\n", v9];
  }

  v10 = [MEMORY[0x29EDBA0F8] stringWithString:v6];

  return v10;
}

@end