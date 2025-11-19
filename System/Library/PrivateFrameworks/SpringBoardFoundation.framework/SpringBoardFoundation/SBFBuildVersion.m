@interface SBFBuildVersion
- (BOOL)isEqual:(id)a3;
- (SBFBuildVersion)initWithString:(id)a3;
- (id)description;
- (int64_t)compareBuildVersion:(id)a3 withPrecision:(int64_t)a4;
- (int64_t)compareBuildVersionString:(id)a3 withPrecision:(int64_t)a4;
- (unint64_t)hash;
@end

@implementation SBFBuildVersion

- (SBFBuildVersion)initWithString:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SBFBuildVersion;
  v5 = [(SBFBuildVersion *)&v32 init];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v8 = [v4 rangeOfCharacterFromSet:v7];
    v10 = v9;

    v11 = 0;
    if (![v4 length] || (v8 != 0x7FFFFFFFFFFFFFFFLL ? (v12 = v10 == 1) : (v12 = 0), !v12))
    {
      v19 = v6;
LABEL_19:

      goto LABEL_20;
    }

    v13 = [v4 copy];
    stringRepresentation = v6->_stringRepresentation;
    v6->_stringRepresentation = v13;

    v15 = [v4 substringToIndex:v8];
    v6->_majorBuildNumber = [v15 integerValue];

    v16 = [v4 substringWithRange:{v8, v10}];
    v17 = [v16 copy];
    majorBuildLetterString = v6->_majorBuildLetterString;
    v6->_majorBuildLetterString = v17;

    v19 = [v4 substringFromIndex:v8 + 1];
    v20 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v21 = [v19 rangeOfCharacterFromSet:v20];
    v23 = v22;

    if (v21 == 0x7FFFFFFFFFFFFFFFLL || v23 != 1)
    {
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [&stru_1F3D19FF0 copy];
        minorBuildLetterString = v6->_minorBuildLetterString;
        v6->_minorBuildLetterString = v28;

        v27 = [v4 substringFromIndex:v8 + 1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      majorBuildNumber = self->_majorBuildNumber;
      if (majorBuildNumber == [(SBFBuildVersion *)v5 majorBuildNumber])
      {
        majorBuildLetterString = self->_majorBuildLetterString;
        v8 = [(SBFBuildVersion *)v5 majorBuildLetterString];
        if ([(NSString *)majorBuildLetterString isEqualToString:v8])
        {
          minorBuildLetterString = self->_minorBuildLetterString;
          v10 = [(SBFBuildVersion *)v5 minorBuildLetterString];
          if ([(NSString *)minorBuildLetterString isEqualToString:v10])
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_stringRepresentation];
  v5 = [v3 appendInteger:self->_majorBuildNumber];
  v6 = [v3 appendObject:self->_majorBuildLetterString];
  v7 = [v3 appendInteger:self->_minorBuildNumber];
  v8 = [v3 appendObject:self->_minorBuildLetterString];
  v9 = [v3 hash];

  return v9;
}

- (int64_t)compareBuildVersion:(id)a3 withPrecision:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [SBFBuildVersion compareBuildVersion:a2 withPrecision:self];
  }

  v8 = [(SBFBuildVersion *)self majorBuildNumber];
  v9 = [v7 majorBuildNumber];
  if (v8 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 > v9;
  }

  if (!v10)
  {
    if ((a4 - 1) > 1)
    {
      goto LABEL_18;
    }

    v11 = [(SBFBuildVersion *)self majorBuildLetterString];
    v12 = [v7 majorBuildLetterString];
    v10 = [v11 caseInsensitiveCompare:v12];

    if (a4 == 2 && !v10)
    {
      v13 = [(SBFBuildVersion *)self minorBuildNumber];
      v14 = [v7 minorBuildNumber];
      v10 = v13 < v14 ? -1 : v13 > v14;
      if (!v10)
      {
        v15 = [(SBFBuildVersion *)self minorBuildLetterString];
        if (v15)
        {

LABEL_17:
          v17 = [(SBFBuildVersion *)self minorBuildLetterString];
          v18 = [v7 minorBuildLetterString];
          v10 = [v17 caseInsensitiveCompare:v18];

          goto LABEL_19;
        }

        v16 = [v7 minorBuildLetterString];

        if (v16)
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

- (int64_t)compareBuildVersionString:(id)a3 withPrecision:(int64_t)a4
{
  v6 = a3;
  v7 = [[SBFBuildVersion alloc] initWithString:v6];

  if (v7)
  {
    v8 = [(SBFBuildVersion *)self compareBuildVersion:v7 withPrecision:a4];
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
  v6 = [v3 build];

  return v6;
}

- (void)compareBuildVersion:(uint64_t)a1 withPrecision:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFUtilities.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"otherBuildVersion"}];
}

@end