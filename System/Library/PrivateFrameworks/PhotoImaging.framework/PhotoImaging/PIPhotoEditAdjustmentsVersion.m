@interface PIPhotoEditAdjustmentsVersion
+ (id)versionFromString:(id)a3;
+ (id)versionWithMajor:(unint64_t)a3 minor:(unint64_t)a4 subMinor:(unint64_t)a5 platform:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAdjustmentVersion:(id)a3;
- (NSString)string;
- (PIPhotoEditAdjustmentsVersion)initWithMajor:(unint64_t)a3 minor:(unint64_t)a4 subMinor:(unint64_t)a5 platform:(id)a6;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation PIPhotoEditAdjustmentsVersion

- (id)description
{
  v7.receiver = self;
  v7.super_class = PIPhotoEditAdjustmentsVersion;
  v3 = [(PIPhotoEditAdjustmentsVersion *)&v7 description];
  v4 = [(PIPhotoEditAdjustmentsVersion *)self string];
  v5 = [v3 stringByAppendingFormat:@" %@", v4];

  return v5;
}

- (BOOL)isEqualToAdjustmentVersion:(id)a3
{
  v4 = a3;
  v5 = [(PIPhotoEditAdjustmentsVersion *)self string];
  v6 = [v4 string];

  LOBYTE(v4) = [v5 caseInsensitiveCompare:v6] == 0;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PIPhotoEditAdjustmentsVersion *)self isEqualToAdjustmentVersion:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PIPhotoEditAdjustmentsVersion *)self string];
  v3 = 0xAAAC9C5260601 * [v2 hash];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(PIPhotoEditAdjustmentsVersion *)self asOrderedInteger];
  v6 = [v4 asOrderedInteger];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 != v6;
  }
}

- (NSString)string
{
  subMinorVersion = self->_subMinorVersion;
  if (subMinorVersion)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%lu", subMinorVersion];
  }

  else
  {
    v4 = &stru_1F46EAF88;
  }

  if (self->_platform)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", self->_platform];
  }

  else
  {
    v5 = &stru_1F46EAF88;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu.%lu%@%@", self->_majorVersion, self->_minorVersion, v4, v5];

  return v6;
}

- (PIPhotoEditAdjustmentsVersion)initWithMajor:(unint64_t)a3 minor:(unint64_t)a4 subMinor:(unint64_t)a5 platform:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = PIPhotoEditAdjustmentsVersion;
  v11 = [(PIPhotoEditAdjustmentsVersion *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_majorVersion = a3;
    v11->_minorVersion = a4;
    v11->_subMinorVersion = a5;
    v13 = [v10 copy];
    platform = v12->_platform;
    v12->_platform = v13;
  }

  return v12;
}

+ (id)versionFromString:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v22 = 0;
    goto LABEL_41;
  }

  v5 = [v3 componentsSeparatedByString:@"."];
  if (![v5 count])
  {
    v6 = 0;
LABEL_35:
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_8610);
    }

    v23 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v4;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "invalid format version: %@", buf, 0xCu);
    }

    v21 = 0;
    goto LABEL_40;
  }

  v25 = v4;
  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = 1;
  v10 = -1;
  v11 = -1;
  do
  {
    v12 = [v5 objectAtIndexedSubscript:v7];
    v13 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v14 = [v13 invertedSet];

    if ([v12 length] && objc_msgSend(v12, "rangeOfCharacterFromSet:", v14) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v12 intValue];
      if (v7 == 1)
      {
        v16 = v15;
      }

      else
      {
        v16 = v10;
      }

      if (v7 == 1)
      {
        v17 = (v15 >= 0) & v9;
      }

      else
      {
        v17 = 0;
      }

      if (v7 == 2)
      {
        v18 = v15;
      }

      else
      {
        v18 = v11;
      }

      if (v7 == 2)
      {
        v16 = v10;
        v17 = (v15 >= 0) & v9;
      }

      if (v7)
      {
        v11 = v18;
        v10 = v16;
        v9 = v17;
      }

      else
      {
        v8 = v15;
        v9 &= v15 >= 0;
      }
    }

    else if (v7 == [v5 count] - 1 && ((objc_msgSend(v12, "isEqual:", @"OSX") & 1) != 0 || objc_msgSend(v12, "isEqual:", @"iOS")))
    {
      v19 = v12;

      v6 = v19;
    }

    else
    {
      v9 = 0;
    }

    ++v7;
  }

  while (v7 < [v5 count]);
  if ((v9 & (v8 >= 0)) != 1 || v10 < 0)
  {
    v4 = v25;
    goto LABEL_35;
  }

  if (v11 == -1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v11;
  }

  v21 = [[PIPhotoEditAdjustmentsVersion alloc] initWithMajor:v8 minor:v10 subMinor:v20 platform:v6];
  v4 = v25;
LABEL_40:
  v22 = v21;

LABEL_41:

  return v22;
}

+ (id)versionWithMajor:(unint64_t)a3 minor:(unint64_t)a4 subMinor:(unint64_t)a5 platform:(id)a6
{
  v10 = a6;
  v11 = [[a1 alloc] initWithMajor:a3 minor:a4 subMinor:a5 platform:v10];

  return v11;
}

@end