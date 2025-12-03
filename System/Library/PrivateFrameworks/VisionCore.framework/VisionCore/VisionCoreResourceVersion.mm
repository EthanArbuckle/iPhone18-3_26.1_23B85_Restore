@interface VisionCoreResourceVersion
+ (id)invalidVersion;
+ (id)versionForStringRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResourceVersion:(id)version;
- (BOOL)isValid;
- (NSString)stringRepresentation;
- (VisionCoreResourceVersion)initWithCoder:(id)coder;
- (VisionCoreResourceVersion)initWithMajor:(unsigned int)major minor:(unsigned int)minor micro:(unsigned int)micro;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreResourceVersion

- (VisionCoreResourceVersion)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5 = 0;
  [coder decodeArrayOfObjCType:"I" count:3 at:&v5];
  return [(VisionCoreResourceVersion *)self initWithMajor:v5 minor:HIDWORD(v5) micro:v6];
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5[0] = [(VisionCoreResourceVersion *)self major];
  v5[1] = [(VisionCoreResourceVersion *)self minor];
  v5[2] = [(VisionCoreResourceVersion *)self micro];
  [coderCopy encodeArrayOfObjCType:"I" count:3 at:v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VisionCoreResourceVersion *)self isEqualToResourceVersion:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  major = [(VisionCoreResourceVersion *)self major];
  v4 = ([(VisionCoreResourceVersion *)self minor]<< 16) | (major << 32);
  return v4 | [(VisionCoreResourceVersion *)self micro];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (self == compareCopy)
  {
    v7 = 0;
    goto LABEL_8;
  }

  major = [(VisionCoreResourceVersion *)self major];
  major2 = [(VisionCoreResourceVersion *)compareCopy major];
  if (major < major2)
  {
    goto LABEL_3;
  }

  if (major > major2)
  {
    goto LABEL_7;
  }

  minor = [(VisionCoreResourceVersion *)self minor];
  minor2 = [(VisionCoreResourceVersion *)compareCopy minor];
  if (minor < minor2)
  {
LABEL_3:
    v7 = -1;
    goto LABEL_8;
  }

  if (minor > minor2)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  micro = [(VisionCoreResourceVersion *)self micro];
  micro2 = [(VisionCoreResourceVersion *)compareCopy micro];
  if (micro < micro2)
  {
    v7 = -1;
  }

  else
  {
    v7 = micro > micro2;
  }

LABEL_8:

  return v7;
}

- (BOOL)isEqualToResourceVersion:(id)version
{
  versionCopy = version;
  if (self == versionCopy)
  {
    v8 = 1;
  }

  else
  {
    major = [(VisionCoreResourceVersion *)self major];
    if (major == [(VisionCoreResourceVersion *)versionCopy major]&& (v6 = [(VisionCoreResourceVersion *)self minor], v6 == [(VisionCoreResourceVersion *)versionCopy minor]))
    {
      micro = [(VisionCoreResourceVersion *)self micro];
      v8 = micro == [(VisionCoreResourceVersion *)versionCopy micro];
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

- (VisionCoreResourceVersion)initWithMajor:(unsigned int)major minor:(unsigned int)minor micro:(unsigned int)micro
{
  v9.receiver = self;
  v9.super_class = VisionCoreResourceVersion;
  result = [(VisionCoreResourceVersion *)&v9 init];
  if (result)
  {
    result->_major = major;
    result->_minor = minor;
    result->_micro = micro;
  }

  return result;
}

+ (id)versionForStringRepresentation:(id)representation
{
  v4 = MEMORY[0x1E696AE88];
  representationCopy = representation;
  v6 = [[v4 alloc] initWithString:representationCopy];

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
      v9 = [self alloc];
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