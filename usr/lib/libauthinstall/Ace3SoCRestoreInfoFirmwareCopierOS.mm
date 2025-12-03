@interface Ace3SoCRestoreInfoFirmwareCopierOS
- (Ace3SoCRestoreInfoFirmwareCopierOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)error;
- (BOOL)parseOptions:(id)options;
- (id)readFirmwareFileDataWithError:(id *)error;
@end

@implementation Ace3SoCRestoreInfoFirmwareCopierOS

- (Ace3SoCRestoreInfoFirmwareCopierOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = Ace3SoCRestoreInfoFirmwareCopierOS;
  v9 = [(Ace3SoCRestoreInfoHelperOS *)&v13 initWithOptions:optionsCopy logFunction:function logContext:context];
  v10 = v9;
  if (v9 && ([(Ace3SoCRestoreInfoHelperOS *)v9 log:@"%s: input options: %@", "[Ace3SoCRestoreInfoFirmwareCopierOS initWithOptions:logFunction:logContext:]", optionsCopy], ![(Ace3SoCRestoreInfoFirmwareCopierOS *)v10 parseOptions:optionsCopy]))
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (BOOL)parseOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"BuildIdentity"];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"DeviceInfo"];
    if (!v6)
    {
      [(Ace3SoCRestoreInfoHelperOS *)self log:@"Warning: Could not find device info dictionary"];
    }

    if ([v5 count])
    {
      v7 = [(Ace3SoCRestoreInfoFirmwareCopierOS *)self firmwareKeyFromBuildIdentityDict:v5 deviceInfo:v6];
      if (!v7)
      {
        [(Ace3SoCRestoreInfoHelperOS *)self log:@"Could not find firmware key in build identity dictionary"];
LABEL_26:
        v16 = 0;
        goto LABEL_27;
      }

      v8 = v7;
      v9 = [v5 objectForKeyedSubscript:v7];
      v10 = [v9 objectForKeyedSubscript:@"Info"];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 objectForKeyedSubscript:@"Path"];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 copy];
          firmwarePathSuffix = self->_firmwarePathSuffix;
          self->_firmwarePathSuffix = v14;

LABEL_11:
          v17 = [optionsCopy objectForKeyedSubscript:@"FirmwareData"];
          firmwareOverrideData = self->_firmwareOverrideData;
          self->_firmwareOverrideData = v17;

          v19 = self->_firmwareOverrideData;
          if (v19)
          {
            [(Ace3SoCRestoreInfoHelperOS *)self log:@"Detected firmware override"];
            v19 = self->_firmwareOverrideData;
          }

          if (!v19 && v8)
          {
            v20 = [optionsCopy objectForKeyedSubscript:@"BundleDataDict"];
            v21 = v20;
            if (v20)
            {
              v22 = [v20 objectForKeyedSubscript:v8];
              firmwareInBundleDataDict = self->_firmwareInBundleDataDict;
              self->_firmwareInBundleDataDict = v22;

              [(Ace3SoCRestoreInfoHelperOS *)self log:@"Attempt to use '%@' firmware from BundleDataDict: %@", v8, self->_firmwareInBundleDataDict];
            }

            v19 = self->_firmwareOverrideData;
          }

          if (v19 || self->_firmwareInBundleDataDict)
          {
            goto LABEL_20;
          }

          if (self->_firmwarePathSuffix)
          {
            v27 = [optionsCopy objectForKeyedSubscript:@"BundlePath"];
            if (v27)
            {
              v28 = v27;
              v29 = [v27 URLByAppendingPathComponent:self->_firmwarePathSuffix];
              firmwareBundleURL = self->_firmwareBundleURL;
              self->_firmwareBundleURL = v29;

LABEL_20:
              v24 = [optionsCopy objectForKeyedSubscript:@"DestBundlePath"];
              destBundlePathURL = self->_destBundlePathURL;
              self->_destBundlePathURL = v24;

              v16 = 1;
LABEL_27:

              goto LABEL_28;
            }

            v31 = @"Could not find bundle path";
          }

          else
          {
            v31 = @"Firmware override must be specified if build identity dictionary is empty";
          }

          [(Ace3SoCRestoreInfoHelperOS *)self log:v31];
          goto LABEL_25;
        }

        [(Ace3SoCRestoreInfoHelperOS *)self log:@"Could not find firmware path"];
      }

      else
      {
        [(Ace3SoCRestoreInfoHelperOS *)self log:@"Could not find firmware info dictionary"];
      }

LABEL_25:
      goto LABEL_26;
    }

    [(Ace3SoCRestoreInfoHelperOS *)self log:@"Detected empty build identity dictionary"];
    v8 = 0;
    goto LABEL_11;
  }

  [(Ace3SoCRestoreInfoHelperOS *)self log:@"Could not find build identity dictionary"];
  v16 = 0;
LABEL_28:

  return v16;
}

- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)error
{
  destBundlePathURL = self->_destBundlePathURL;
  if (destBundlePathURL && self->_firmwarePathSuffix)
  {
    v6 = MEMORY[0x29EDBA0F8];
    path = [(NSURL *)destBundlePathURL path];
    v8 = [v6 stringWithFormat:@"%@/%@", path, self->_firmwarePathSuffix];

    v9 = [MEMORY[0x29EDB8E70] fileURLWithPath:v8];
    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];
    defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
    path2 = [uRLByDeletingLastPathComponent path];
    v35 = 0;
    v14 = [defaultManager2 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v35];
    v15 = v35;

    if ((v14 & 1) == 0 && ([v15 isFileExistsError] & 1) == 0)
    {
      path3 = [uRLByDeletingLastPathComponent path];
      [(Ace3SoCRestoreInfoHelperOS *)self log:@"Failed to create directory at '%@' (%@)", path3, v15];

      if (!error)
      {
        goto LABEL_21;
      }

      v25 = v15;
      v22 = 0;
      *error = v15;
      goto LABEL_22;
    }

    path4 = [v9 path];
    v17 = [defaultManager fileExistsAtPath:path4];

    if (v17)
    {
      v34 = 0;
      v18 = [defaultManager removeItemAtURL:v9 error:&v34];
      v19 = v34;
      v20 = v19;
      if ((v18 & 1) == 0)
      {
        path5 = [v9 path];
        [(Ace3SoCRestoreInfoHelperOS *)self log:@"Failed to remove file at '%@' (%@)", path5, v20];
        goto LABEL_18;
      }
    }

    firmwareOverrideData = self->_firmwareOverrideData;
    if (firmwareOverrideData)
    {
      v22 = 1;
      if (![(NSData *)firmwareOverrideData writeToURL:v9 atomically:1])
      {
        path6 = [v9 path];
        [(Ace3SoCRestoreInfoHelperOS *)self log:@"Failed to write firmware file data to '%@'", path6];

LABEL_21:
        v22 = 0;
      }

LABEL_22:

      return v22;
    }

    defaultManager3 = [MEMORY[0x29EDB9FB8] defaultManager];
    firmwareBundleURL = self->_firmwareBundleURL;
    v33 = 0;
    v28 = [defaultManager3 copyItemAtURL:firmwareBundleURL toURL:v9 error:&v33];
    v20 = v33;

    if (v28)
    {

      v22 = 1;
      goto LABEL_22;
    }

    path5 = [(NSURL *)self->_firmwareBundleURL path];
    path7 = [v9 path];
    [(Ace3SoCRestoreInfoHelperOS *)self log:@"Failed to copy firmware from '%@' to '%@' (%@)", path5, path7, v20];

LABEL_18:
    if (error)
    {
      v31 = v20;
      *error = v20;
    }

    goto LABEL_21;
  }

  [(Ace3SoCRestoreInfoHelperOS *)self log:@"Not copying firmware to destination bundle"];
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
      [(Ace3SoCRestoreInfoHelperOS *)self log:@"Failed to read firmware file at '%@' (%@)", path, v9];

      if (error)
      {
        v11 = v9;
        *error = v9;
      }
    }
  }

  return v5;
}

@end