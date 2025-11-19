@interface PPSourceMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSourceMetadata:(id)a3;
- (NSSet)featureNames;
- (PPSourceMetadata)initWithCoder:(id)a3;
- (PPSourceMetadata)initWithDwellTimeSeconds:(unsigned int)a3 lengthSeconds:(unsigned int)a4 lengthCharacters:(unsigned int)a5 donationCount:(unsigned __int16)a6 contactHandleCount:(unsigned __int16)a7 flags:(unsigned __int8)a8;
- (id)description;
- (id)featureValueForName:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSourceMetadata

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"dwellTimeSeconds"])
  {
    v5 = MEMORY[0x1E695FE60];
    dwellTimeSeconds = self->_dwellTimeSeconds;
LABEL_13:
    v7 = [v5 featureValueWithInt64:dwellTimeSeconds];
LABEL_14:
    v8 = v7;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"lengthSeconds"])
  {
    v5 = MEMORY[0x1E695FE60];
    dwellTimeSeconds = self->_lengthSeconds;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"lengthCharacters"])
  {
    v5 = MEMORY[0x1E695FE60];
    dwellTimeSeconds = self->_lengthCharacters;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"donationCount"])
  {
    v5 = MEMORY[0x1E695FE60];
    dwellTimeSeconds = self->_donationCount;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"contactHandleCount"])
  {
    v5 = MEMORY[0x1E695FE60];
    dwellTimeSeconds = self->_contactHandleCount;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"flags"])
  {
    v5 = MEMORY[0x1E695FE60];
    dwellTimeSeconds = self->_flags;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"userCreated"])
  {
    v10 = 1.0;
    if ((self->_flags & 1) == 0)
    {
      v10 = 0.0;
    }

    v7 = [MEMORY[0x1E695FE60] featureValueWithDouble:v10];
    goto LABEL_14;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (NSSet)featureNames
{
  if (featureNames__pasOnceToken4 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken4, &__block_literal_global_101);
  }

  v3 = featureNames__pasExprOnceResult;

  return v3;
}

void __32__PPSourceMetadata_featureNames__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"dwellTimeSeconds", @"lengthSeconds", @"lengthCharacters", @"donationCount", @"contactHandleCount", @"flags", @"userCreated", 0}];
  objc_autoreleasePoolPop(v1);
  v3 = featureNames__pasExprOnceResult;
  featureNames__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPSourceMetadata *)self isEqualToSourceMetadata:v4];
  }

  return v5;
}

- (BOOL)isEqualToSourceMetadata:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (dwellTimeSeconds = self->_dwellTimeSeconds, dwellTimeSeconds == [(PPSourceMetadata *)v4 dwellTimeSeconds]) && (lengthSeconds = self->_lengthSeconds, lengthSeconds == [(PPSourceMetadata *)v5 lengthSeconds]) && (lengthCharacters = self->_lengthCharacters, lengthCharacters == [(PPSourceMetadata *)v5 lengthCharacters]) && (donationCount = self->_donationCount, donationCount == [(PPSourceMetadata *)v5 donationCount]) && (contactHandleCount = self->_contactHandleCount, contactHandleCount == [(PPSourceMetadata *)v5 contactHandleCount]))
  {
    flags = self->_flags;
    v12 = flags == [(PPSourceMetadata *)v5 flags];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = self->_lengthCharacters - self->_donationCount + 32 * self->_donationCount;
  v3 = self->_lengthSeconds - v2 + 32 * v2;
  v4 = self->_dwellTimeSeconds - v3 + 32 * v3;
  return self->_flags - v4 + 32 * v4;
}

- (void)encodeWithCoder:(id)a3
{
  dwellTimeSeconds = self->_dwellTimeSeconds;
  v5 = a3;
  [v5 encodeInt32:dwellTimeSeconds forKey:@"dts"];
  [v5 encodeInt32:self->_lengthSeconds forKey:@"lns"];
  [v5 encodeInt32:self->_lengthCharacters forKey:@"lnc"];
  [v5 encodeInt32:self->_donationCount forKey:@"dct"];
  [v5 encodeInt32:self->_contactHandleCount forKey:@"chc"];
  [v5 encodeInt32:self->_flags forKey:@"flg"];
}

- (PPSourceMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"dts"];
  v6 = [v4 decodeInt32ForKey:@"lns"];
  v7 = [v4 decodeInt32ForKey:@"lnc"];
  v8 = [v4 decodeInt32ForKey:@"dct"];
  if (HIWORD(v8) || (v9 = v8, v10 = [v4 decodeInt32ForKey:@"chc"], HIWORD(v10)) || (v11 = v10, v12 = objc_msgSend(v4, "decodeInt32ForKey:", @"flg"), v12 > 0xFF))
  {
    v13 = 0;
  }

  else
  {
    self = [(PPSourceMetadata *)self initWithDwellTimeSeconds:v5 lengthSeconds:v6 lengthCharacters:v7 donationCount:v9 contactHandleCount:v11 flags:v12];
    v13 = self;
  }

  return v13;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPSourceMetadata d:%u ls:%u lc:%u dc:%u chc:%u f:%u>", self->_dwellTimeSeconds, self->_lengthSeconds, self->_lengthCharacters, self->_donationCount, self->_contactHandleCount, self->_flags];

  return v2;
}

- (PPSourceMetadata)initWithDwellTimeSeconds:(unsigned int)a3 lengthSeconds:(unsigned int)a4 lengthCharacters:(unsigned int)a5 donationCount:(unsigned __int16)a6 contactHandleCount:(unsigned __int16)a7 flags:(unsigned __int8)a8
{
  v15.receiver = self;
  v15.super_class = PPSourceMetadata;
  result = [(PPSourceMetadata *)&v15 init];
  if (result)
  {
    result->_dwellTimeSeconds = a3;
    result->_lengthSeconds = a4;
    result->_lengthCharacters = a5;
    result->_donationCount = a6;
    result->_contactHandleCount = a7;
    result->_flags = a8;
  }

  return result;
}

@end