@interface IPAAdjustmentVersion
+ (id)validatePlatformString:(id)a3;
+ (id)versionForMajor:(unint64_t)a3 minor:(unint64_t)a4 platform:(id)a5;
+ (id)versionFromArchivalRepresentation:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAdjustmentVersion:(id)a3;
- (IPAAdjustmentVersion)initWithMajor:(unint64_t)a3 minor:(unint64_t)a4 platform:(id)a5;
- (id)archivalRepresentation;
- (id)debugDescription;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)setMinorVersion:(unint64_t)a3;
@end

@implementation IPAAdjustmentVersion

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(IPAAdjustmentVersion *)self archivalRepresentation];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqualToAdjustmentVersion:(id)a3
{
  v4 = a3;
  v5 = [(IPAAdjustmentVersion *)self archivalRepresentation];
  v6 = [v4 archivalRepresentation];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAAdjustmentVersion *)self isEqualToAdjustmentVersion:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(IPAAdjustmentVersion *)self archivalRepresentation];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 hash];

    return v4;
  }

  else
  {
    v6 = _PFAssertFailHandler();
    [(IPAAdjustmentVersion *)v6 setMinorVersion:v7, v8];
  }

  return result;
}

- (void)setMinorVersion:(unint64_t)a3
{
  if (a3 >= 0x3E8)
  {
    v3 = _PFAssertFailHandler();
    [(IPAAdjustmentVersion *)v3 compare:v4, v5];
  }

  else
  {
    self->_minorVersion = a3;
  }
}

- (int64_t)compare:(id)a3
{
  v3 = self->_minorVersion + 1000 * self->_majorVersion;
  v4 = a3;
  v5 = [v4 majorVersion];
  v6 = [v4 minorVersion];

  v7 = v6 + 1000 * v5;
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

- (IPAAdjustmentVersion)initWithMajor:(unint64_t)a3 minor:(unint64_t)a4 platform:(id)a5
{
  if (a4 < 0x3E8)
  {
    v10 = [IPAAdjustmentVersion validatePlatformString:a5];
    v11 = v10;
    if (!a5 || v10)
    {
      v14.receiver = self;
      v14.super_class = IPAAdjustmentVersion;
      v12 = [(IPAAdjustmentVersion *)&v14 init];
      v6 = v12;
      if (v12)
      {
        v12->_majorVersion = a3;
        v12->_minorVersion = a4;
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

+ (id)versionFromArchivalRepresentation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[IPAAdjustmentVersion versionForMajor:minor:](IPAAdjustmentVersion, "versionForMajor:minor:", [v3 unsignedIntegerValue], 0);
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v5 = [v3 lowercaseString];
  v6 = [v5 length];
  v7 = [s_platformFormatVersionRegex firstMatchInString:v5 options:0 range:{0, v6}];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 rangeAtIndex:1];
    v11 = [v5 substringWithRange:{v9, v10}];
    v12 = [v11 integerValue];

    v13 = [v8 rangeAtIndex:2];
    v15 = [v5 substringWithRange:{v13, v14}];
    v16 = [v15 integerValue];

    v17 = [v8 rangeAtIndex:3];
    v19 = [v5 substringWithRange:{v17, v18}];
  }

  else
  {
    v20 = [s_formatVersionRegex firstMatchInString:v5 options:0 range:{0, v6}];
    if (v20)
    {
      v8 = v20;
      v21 = [v20 rangeAtIndex:1];
      v23 = [v5 substringWithRange:{v21, v22}];
      v12 = [v23 integerValue];

      v24 = [v8 rangeAtIndex:2];
      v26 = [v5 substringWithRange:{v24, v25}];
      v16 = [v26 integerValue];

      v19 = 0;
    }

    else
    {
      v27 = [s_formatVersionSimpleRegex firstMatchInString:v5 options:0 range:{0, v6}];
      if (!v27)
      {
        v4 = 0;
        goto LABEL_12;
      }

      v8 = v27;
      v28 = [v27 rangeAtIndex:1];
      v30 = [v5 substringWithRange:{v28, v29}];
      v12 = [v30 integerValue];

      v19 = 0;
      v16 = 0;
    }
  }

  v4 = [[IPAAdjustmentVersion alloc] initWithMajor:v12 minor:v16 platform:v19];

LABEL_12:
LABEL_13:

  return v4;
}

+ (id)versionForMajor:(unint64_t)a3 minor:(unint64_t)a4 platform:(id)a5
{
  v8 = a5;
  v9 = [[a1 alloc] initWithMajor:a3 minor:a4 platform:v8];

  return v9;
}

+ (id)validatePlatformString:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
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
          if (![v3 compare:v8 options:{3, v10}])
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