@interface IPAAdjustmentVersion
+ (id)validatePlatformString:(id)string;
+ (id)versionForMajor:(unint64_t)major minor:(unint64_t)minor platform:(id)platform;
+ (id)versionFromArchivalRepresentation:(id)representation;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAdjustmentVersion:(id)version;
- (IPAAdjustmentVersion)initWithMajor:(unint64_t)major minor:(unint64_t)minor platform:(id)platform;
- (id)archivalRepresentation;
- (id)debugDescription;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)setMinorVersion:(unint64_t)version;
@end

@implementation IPAAdjustmentVersion

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  archivalRepresentation = [(IPAAdjustmentVersion *)self archivalRepresentation];
  v4 = [v2 stringWithFormat:@"%@", archivalRepresentation];

  return v4;
}

- (BOOL)isEqualToAdjustmentVersion:(id)version
{
  versionCopy = version;
  archivalRepresentation = [(IPAAdjustmentVersion *)self archivalRepresentation];
  archivalRepresentation2 = [versionCopy archivalRepresentation];

  LOBYTE(versionCopy) = [archivalRepresentation isEqual:archivalRepresentation2];
  return versionCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAAdjustmentVersion *)self isEqualToAdjustmentVersion:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  archivalRepresentation = [(IPAAdjustmentVersion *)self archivalRepresentation];
  if (archivalRepresentation)
  {
    v3 = archivalRepresentation;
    v4 = [archivalRepresentation hash];

    return v4;
  }

  else
  {
    v6 = _PFAssertFailHandler();
    [(IPAAdjustmentVersion *)v6 setMinorVersion:v7, v8];
  }

  return result;
}

- (void)setMinorVersion:(unint64_t)version
{
  if (version >= 0x3E8)
  {
    v3 = _PFAssertFailHandler();
    [(IPAAdjustmentVersion *)v3 compare:v4, v5];
  }

  else
  {
    self->_minorVersion = version;
  }
}

- (int64_t)compare:(id)compare
{
  v3 = self->_minorVersion + 1000 * self->_majorVersion;
  compareCopy = compare;
  majorVersion = [compareCopy majorVersion];
  minorVersion = [compareCopy minorVersion];

  v7 = minorVersion + 1000 * majorVersion;
  v8 = v3 < v7;
  v9 = v3 != v7;
  if (v8)
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

- (id)archivalRepresentation
{
  minorVersion = self->_minorVersion;
  platform = self->_platform;
  if (minorVersion)
  {
    if (!platform)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu.%lu", self->_majorVersion, minorVersion, v6];
      v4 = LABEL_6:;
      goto LABEL_7;
    }

LABEL_5:
    [MEMORY[0x277CCACA8] stringWithFormat:@"%lu.%lu.%@", self->_majorVersion, self->_minorVersion, platform];
    goto LABEL_6;
  }

  if (platform)
  {
    goto LABEL_5;
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_majorVersion];
LABEL_7:

  return v4;
}

- (IPAAdjustmentVersion)initWithMajor:(unint64_t)major minor:(unint64_t)minor platform:(id)platform
{
  if (minor < 0x3E8)
  {
    v10 = [IPAAdjustmentVersion validatePlatformString:platform];
    v11 = v10;
    if (!platform || v10)
    {
      v14.receiver = self;
      v14.super_class = IPAAdjustmentVersion;
      v12 = [(IPAAdjustmentVersion *)&v14 init];
      v6 = v12;
      if (v12)
      {
        v12->_majorVersion = major;
        v12->_minorVersion = minor;
        objc_storeStrong(&v12->_platform, v11);
      }
    }

    else
    {

      v6 = 0;
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

+ (id)versionFromArchivalRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[IPAAdjustmentVersion versionForMajor:minor:](IPAAdjustmentVersion, "versionForMajor:minor:", [representationCopy unsignedIntegerValue], 0);
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_13;
  }

  lowercaseString = [representationCopy lowercaseString];
  v6 = [lowercaseString length];
  v7 = [s_platformFormatVersionRegex firstMatchInString:lowercaseString options:0 range:{0, v6}];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 rangeAtIndex:1];
    v11 = [lowercaseString substringWithRange:{v9, v10}];
    integerValue = [v11 integerValue];

    v13 = [v8 rangeAtIndex:2];
    v15 = [lowercaseString substringWithRange:{v13, v14}];
    integerValue2 = [v15 integerValue];

    v17 = [v8 rangeAtIndex:3];
    v19 = [lowercaseString substringWithRange:{v17, v18}];
  }

  else
  {
    v20 = [s_formatVersionRegex firstMatchInString:lowercaseString options:0 range:{0, v6}];
    if (v20)
    {
      v8 = v20;
      v21 = [v20 rangeAtIndex:1];
      v23 = [lowercaseString substringWithRange:{v21, v22}];
      integerValue = [v23 integerValue];

      v24 = [v8 rangeAtIndex:2];
      v26 = [lowercaseString substringWithRange:{v24, v25}];
      integerValue2 = [v26 integerValue];

      v19 = 0;
    }

    else
    {
      v27 = [s_formatVersionSimpleRegex firstMatchInString:lowercaseString options:0 range:{0, v6}];
      if (!v27)
      {
        v4 = 0;
        goto LABEL_12;
      }

      v8 = v27;
      v28 = [v27 rangeAtIndex:1];
      v30 = [lowercaseString substringWithRange:{v28, v29}];
      integerValue = [v30 integerValue];

      v19 = 0;
      integerValue2 = 0;
    }
  }

  v4 = [[IPAAdjustmentVersion alloc] initWithMajor:integerValue minor:integerValue2 platform:v19];

LABEL_12:
LABEL_13:

  return v4;
}

+ (id)versionForMajor:(unint64_t)major minor:(unint64_t)minor platform:(id)platform
{
  platformCopy = platform;
  v9 = [[self alloc] initWithMajor:major minor:minor platform:platformCopy];

  return v9;
}

+ (id)validatePlatformString:(id)string
{
  v15 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = s_validPlatforms;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if (![stringCopy compare:v8 options:{3, v10}])
          {
            v5 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)initialize
{
  v24 = *MEMORY[0x277D85DE8];
  if (!s_formatVersionRegex)
  {
    v20 = 0;
    v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^([0-9]+)\\.([0-9]+)$" options:0 error:&v20];
    v3 = v20;
    v4 = s_formatVersionRegex;
    s_formatVersionRegex = v2;

    if (!s_formatVersionRegex)
    {
      v5 = IPAAdjustmentGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = @"^([0-9]+)\\.([0-9]+)$";
        _os_log_impl(&dword_25E5BB000, v5, OS_LOG_TYPE_ERROR, "unable to create regex for pattern: %@", buf, 0xCu);
      }
    }

    v19 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^([0-9]+)\\.([0-9]+)\\.(osx|ios)$" options:0 error:&v19];
    v7 = v19;
    v8 = s_platformFormatVersionRegex;
    s_platformFormatVersionRegex = v6;

    if (!s_platformFormatVersionRegex)
    {
      v9 = IPAAdjustmentGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = @"^([0-9]+)\\.([0-9]+)\\.(osx|ios)$";
        _os_log_impl(&dword_25E5BB000, v9, OS_LOG_TYPE_ERROR, "unable to create regex for pattern: %@", buf, 0xCu);
      }
    }

    v18 = 0;
    v10 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^([0-9]+)$" options:0 error:&v18];
    v11 = v18;
    v12 = s_formatVersionSimpleRegex;
    s_formatVersionSimpleRegex = v10;

    if (!s_formatVersionSimpleRegex)
    {
      v13 = IPAAdjustmentGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = @"^([0-9]+)$";
        _os_log_impl(&dword_25E5BB000, v13, OS_LOG_TYPE_ERROR, "unable to create regex for pattern: %@", buf, 0xCu);
      }
    }

    v14 = MEMORY[0x277CBEB98];
    v21[0] = @"OSX";
    v21[1] = @"iOS";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = s_validPlatforms;
    s_validPlatforms = v16;
  }
}

@end