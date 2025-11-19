@interface VisionCoreResourceVersion
+ (id)invalidVersion;
+ (id)versionForStringRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResourceVersion:(id)a3;
- (BOOL)isValid;
- (NSString)stringRepresentation;
- (VisionCoreResourceVersion)initWithCoder:(id)a3;
- (VisionCoreResourceVersion)initWithMajor:(unsigned int)a3 minor:(unsigned int)a4 micro:(unsigned int)a5;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreResourceVersion

- (VisionCoreResourceVersion)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5 = 0;
  [a3 decodeArrayOfObjCType:"I" count:3 at:&v5];
  return [(VisionCoreResourceVersion *)self initWithMajor:v5 minor:HIDWORD(v5) micro:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5[0] = [(VisionCoreResourceVersion *)self major];
  v5[1] = [(VisionCoreResourceVersion *)self minor];
  v5[2] = [(VisionCoreResourceVersion *)self micro];
  [v4 encodeArrayOfObjCType:"I" count:3 at:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VisionCoreResourceVersion *)self isEqualToResourceVersion:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(VisionCoreResourceVersion *)self major];
  v4 = ([(VisionCoreResourceVersion *)self minor]<< 16) | (v3 << 32);
  return v4 | [(VisionCoreResourceVersion *)self micro];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [(VisionCoreResourceVersion *)self major];
  v6 = [(VisionCoreResourceVersion *)v4 major];
  if (v5 < v6)
  {
    goto LABEL_3;
  }

  if (v5 > v6)
  {
    goto LABEL_7;
  }

  v9 = [(VisionCoreResourceVersion *)self minor];
  v10 = [(VisionCoreResourceVersion *)v4 minor];
  if (v9 < v10)
  {
LABEL_3:
    v7 = -1;
    goto LABEL_8;
  }

  if (v9 > v10)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v11 = [(VisionCoreResourceVersion *)self micro];
  v12 = [(VisionCoreResourceVersion *)v4 micro];
  if (v11 < v12)
  {
    v7 = -1;
  }

  else
  {
    v7 = v11 > v12;
  }

LABEL_8:

  return v7;
}

- (BOOL)isEqualToResourceVersion:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(VisionCoreResourceVersion *)self major];
    if (v5 == [(VisionCoreResourceVersion *)v4 major]&& (v6 = [(VisionCoreResourceVersion *)self minor], v6 == [(VisionCoreResourceVersion *)v4 minor]))
    {
      v7 = [(VisionCoreResourceVersion *)self micro];
      v8 = v7 == [(VisionCoreResourceVersion *)v4 micro];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)stringRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u.%u.%u", -[VisionCoreResourceVersion major](self, "major"), -[VisionCoreResourceVersion minor](self, "minor"), -[VisionCoreResourceVersion micro](self, "micro")];

  return v2;
}

- (BOOL)isValid
{
  v3 = +[VisionCoreResourceVersion invalidVersion];
  LOBYTE(self) = [(VisionCoreResourceVersion *)self isEqual:v3];

  return self;
}

- (VisionCoreResourceVersion)initWithMajor:(unsigned int)a3 minor:(unsigned int)a4 micro:(unsigned int)a5
{
  v9.receiver = self;
  v9.super_class = VisionCoreResourceVersion;
  result = [(VisionCoreResourceVersion *)&v9 init];
  if (result)
  {
    result->_major = a3;
    result->_minor = a4;
    result->_micro = a5;
  }

  return result;
}

+ (id)versionForStringRepresentation:(id)a3
{
  v4 = MEMORY[0x1E696AE88];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  v12 = 0;
  v13 = 0;
  v11 = 0;
  if ([v6 scanInteger:&v13])
  {
    v7 = HIDWORD(v13) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

  if ([v6 isAtEnd])
  {
    goto LABEL_7;
  }

  if (![v6 scanString:@"." intoString:0])
  {
    goto LABEL_5;
  }

  v8 = 0;
  if ([v6 scanInteger:&v12] && !HIDWORD(v12))
  {
    if ([v6 isAtEnd])
    {
LABEL_7:
      v9 = [a1 alloc];
      v8 = [v9 initWithMajor:v13 minor:v12 micro:v11];
      goto LABEL_8;
    }

    if (![v6 scanString:@"." intoString:0])
    {
LABEL_5:
      v8 = 0;
      goto LABEL_8;
    }

    v8 = 0;
    if ([v6 scanInteger:&v11] && !HIDWORD(v11))
    {
      if ([v6 isAtEnd])
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

LABEL_8:

  return v8;
}

+ (id)invalidVersion
{
  if (invalidVersion_onceToken != -1)
  {
    dispatch_once(&invalidVersion_onceToken, &__block_literal_global_139);
  }

  v3 = invalidVersion_invalidVersion;

  return v3;
}

uint64_t __43__VisionCoreResourceVersion_invalidVersion__block_invoke()
{
  invalidVersion_invalidVersion = [[VisionCoreResourceVersion alloc] initWithMajor:0 minor:0 micro:0];

  return MEMORY[0x1EEE66BB8]();
}

@end