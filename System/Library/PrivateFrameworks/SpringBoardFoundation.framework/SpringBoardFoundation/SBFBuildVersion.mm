@interface SBFBuildVersion
- (BOOL)isEqual:(id)equal;
- (SBFBuildVersion)initWithString:(id)string;
- (id)description;
- (int64_t)compareBuildVersion:(id)version withPrecision:(int64_t)precision;
- (int64_t)compareBuildVersionString:(id)string withPrecision:(int64_t)precision;
- (unint64_t)hash;
@end

@implementation SBFBuildVersion

- (SBFBuildVersion)initWithString:(id)string
{
  stringCopy = string;
  v32.receiver = self;
  v32.super_class = SBFBuildVersion;
  v5 = [(SBFBuildVersion *)&v32 init];
  if (v5)
  {
    v6 = v5;
    letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
    v8 = [stringCopy rangeOfCharacterFromSet:letterCharacterSet];
    v10 = v9;

    v11 = 0;
    if (![stringCopy length] || (v8 != 0x7FFFFFFFFFFFFFFFLL ? (v12 = v10 == 1) : (v12 = 0), !v12))
    {
      v19 = v6;
LABEL_19:

      goto LABEL_20;
    }

    v13 = [stringCopy copy];
    stringRepresentation = v6->_stringRepresentation;
    v6->_stringRepresentation = v13;

    v15 = [stringCopy substringToIndex:v8];
    v6->_majorBuildNumber = [v15 integerValue];

    v16 = [stringCopy substringWithRange:{v8, v10}];
    v17 = [v16 copy];
    majorBuildLetterString = v6->_majorBuildLetterString;
    v6->_majorBuildLetterString = v17;

    v19 = [stringCopy substringFromIndex:v8 + 1];
    letterCharacterSet2 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v21 = [v19 rangeOfCharacterFromSet:letterCharacterSet2];
    v23 = v22;

    if (v21 == 0x7FFFFFFFFFFFFFFFLL || v23 != 1)
    {
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [&stru_1F3D19FF0 copy];
        minorBuildLetterString = v6->_minorBuildLetterString;
        v6->_minorBuildLetterString = v28;

        v27 = [stringCopy substringFromIndex:v8 + 1];
        goto LABEL_16;
      }
    }

    else if (v21 == [v19 length] - 1)
    {
      v24 = [v19 substringWithRange:{v21, 1}];
      v25 = [v24 copy];
      v26 = v6->_minorBuildLetterString;
      v6->_minorBuildLetterString = v25;

      v27 = [v19 substringToIndex:v21];
LABEL_16:
      v30 = v27;
      v6->_minorBuildNumber = [(SBFBuildVersion *)v27 integerValue];
LABEL_18:

      v11 = v6;
      goto LABEL_19;
    }

    v30 = v6;
    v6 = 0;
    goto LABEL_18;
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      majorBuildNumber = self->_majorBuildNumber;
      if (majorBuildNumber == [(SBFBuildVersion *)v5 majorBuildNumber])
      {
        majorBuildLetterString = self->_majorBuildLetterString;
        majorBuildLetterString = [(SBFBuildVersion *)v5 majorBuildLetterString];
        if ([(NSString *)majorBuildLetterString isEqualToString:majorBuildLetterString])
        {
          minorBuildLetterString = self->_minorBuildLetterString;
          minorBuildLetterString = [(SBFBuildVersion *)v5 minorBuildLetterString];
          if ([(NSString *)minorBuildLetterString isEqualToString:minorBuildLetterString])
          {
            minorBuildNumber = self->_minorBuildNumber;
            v12 = minorBuildNumber == [(SBFBuildVersion *)v5 minorBuildNumber];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_stringRepresentation];
  v5 = [builder appendInteger:self->_majorBuildNumber];
  v6 = [builder appendObject:self->_majorBuildLetterString];
  v7 = [builder appendInteger:self->_minorBuildNumber];
  v8 = [builder appendObject:self->_minorBuildLetterString];
  v9 = [builder hash];

  return v9;
}

- (int64_t)compareBuildVersion:(id)version withPrecision:(int64_t)precision
{
  versionCopy = version;
  if (!versionCopy)
  {
    [SBFBuildVersion compareBuildVersion:a2 withPrecision:self];
  }

  majorBuildNumber = [(SBFBuildVersion *)self majorBuildNumber];
  majorBuildNumber2 = [versionCopy majorBuildNumber];
  if (majorBuildNumber < majorBuildNumber2)
  {
    v10 = -1;
  }

  else
  {
    v10 = majorBuildNumber > majorBuildNumber2;
  }

  if (!v10)
  {
    if ((precision - 1) > 1)
    {
      goto LABEL_18;
    }

    majorBuildLetterString = [(SBFBuildVersion *)self majorBuildLetterString];
    majorBuildLetterString2 = [versionCopy majorBuildLetterString];
    v10 = [majorBuildLetterString caseInsensitiveCompare:majorBuildLetterString2];

    if (precision == 2 && !v10)
    {
      minorBuildNumber = [(SBFBuildVersion *)self minorBuildNumber];
      minorBuildNumber2 = [versionCopy minorBuildNumber];
      v10 = minorBuildNumber < minorBuildNumber2 ? -1 : minorBuildNumber > minorBuildNumber2;
      if (!v10)
      {
        minorBuildLetterString = [(SBFBuildVersion *)self minorBuildLetterString];
        if (minorBuildLetterString)
        {

LABEL_17:
          minorBuildLetterString2 = [(SBFBuildVersion *)self minorBuildLetterString];
          minorBuildLetterString3 = [versionCopy minorBuildLetterString];
          v10 = [minorBuildLetterString2 caseInsensitiveCompare:minorBuildLetterString3];

          goto LABEL_19;
        }

        minorBuildLetterString4 = [versionCopy minorBuildLetterString];

        if (minorBuildLetterString4)
        {
          goto LABEL_17;
        }

LABEL_18:
        v10 = 0;
      }
    }
  }

LABEL_19:

  return v10;
}

- (int64_t)compareBuildVersionString:(id)string withPrecision:(int64_t)precision
{
  stringCopy = string;
  v7 = [[SBFBuildVersion alloc] initWithString:stringCopy];

  if (v7)
  {
    v8 = [(SBFBuildVersion *)self compareBuildVersion:v7 withPrecision:precision];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_stringRepresentation withName:0];
  v4 = [v3 appendInteger:self->_majorBuildNumber withName:@"majorNumber"];
  [v3 appendString:self->_majorBuildLetterString withName:@"majorLetter"];
  v5 = [v3 appendInteger:self->_minorBuildNumber withName:@"minorNumber"];
  [v3 appendString:self->_minorBuildLetterString withName:@"minorLetter" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (void)compareBuildVersion:(uint64_t)a1 withPrecision:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFUtilities.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"otherBuildVersion"}];
}

@end