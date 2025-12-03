@interface PLBuildVersion
+ (id)currentBuildVersionString;
- (PLBuildVersion)initWithString:(id)string;
- (int64_t)compareBuildVersion:(id)version withPrecision:(int64_t)precision;
- (int64_t)compareBuildVersionString:(id)string withPrecision:(int64_t)precision;
@end

@implementation PLBuildVersion

- (int64_t)compareBuildVersionString:(id)string withPrecision:(int64_t)precision
{
  stringCopy = string;
  v7 = [[PLBuildVersion alloc] initWithString:stringCopy];

  if (v7)
  {
    v8 = [(PLBuildVersion *)self compareBuildVersion:v7 withPrecision:precision];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)compareBuildVersion:(id)version withPrecision:(int64_t)precision
{
  versionCopy = version;
  if (!versionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLHelper.m" lineNumber:2062 description:{@"Invalid parameter not satisfying: %@", @"otherBuildVersion"}];
  }

  majorBuildNumber = [(PLBuildVersion *)self majorBuildNumber];
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

    majorBuildLetterString = [(PLBuildVersion *)self majorBuildLetterString];
    majorBuildLetterString2 = [versionCopy majorBuildLetterString];
    v10 = [majorBuildLetterString caseInsensitiveCompare:majorBuildLetterString2];

    if (precision == 2 && !v10)
    {
      minorBuildNumber = [(PLBuildVersion *)self minorBuildNumber];
      minorBuildNumber2 = [versionCopy minorBuildNumber];
      v10 = minorBuildNumber < minorBuildNumber2 ? -1 : minorBuildNumber > minorBuildNumber2;
      if (!v10)
      {
        minorBuildLetterString = [(PLBuildVersion *)self minorBuildLetterString];
        if (minorBuildLetterString)
        {

LABEL_17:
          minorBuildLetterString2 = [(PLBuildVersion *)self minorBuildLetterString];
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

- (PLBuildVersion)initWithString:(id)string
{
  stringCopy = string;
  letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
  v6 = [stringCopy rangeOfCharacterFromSet:letterCharacterSet];
  v8 = v7;

  if ([stringCopy length])
  {
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8 == 1)
    {
      v29.receiver = self;
      v29.super_class = PLBuildVersion;
      self = [(PLBuildVersion *)&v29 init];
      if (self)
      {
        v10 = [stringCopy copy];
        stringRepresentation = self->_stringRepresentation;
        self->_stringRepresentation = v10;

        v12 = [stringCopy substringToIndex:v6];
        self->_majorBuildNumber = [v12 integerValue];

        v13 = [stringCopy substringWithRange:{v6, v8}];
        v14 = [v13 copy];
        majorBuildLetterString = self->_majorBuildLetterString;
        self->_majorBuildLetterString = v14;

        v16 = [stringCopy substringFromIndex:v6 + 1];
        letterCharacterSet2 = [MEMORY[0x1E696AB08] letterCharacterSet];
        v18 = [v16 rangeOfCharacterFromSet:letterCharacterSet2];
        v20 = v19;

        if (v18 == 0x7FFFFFFFFFFFFFFFLL || v20 != 1)
        {
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = [&stru_1F1F75560 copy];
            minorBuildLetterString = self->_minorBuildLetterString;
            self->_minorBuildLetterString = v25;

            v24 = [stringCopy substringFromIndex:v6 + 1];
            goto LABEL_14;
          }
        }

        else if (v18 == [v16 length] - 1)
        {
          v21 = [v16 substringWithRange:{v18, 1}];
          v22 = [v21 copy];
          v23 = self->_minorBuildLetterString;
          self->_minorBuildLetterString = v22;

          v24 = [v16 substringToIndex:v18];
LABEL_14:
          selfCopy = v24;
          self->_minorBuildNumber = [(PLBuildVersion *)v24 integerValue];
LABEL_16:

          goto LABEL_17;
        }

        selfCopy = self;
        self = 0;
        goto LABEL_16;
      }
    }
  }

LABEL_17:

  return self;
}

+ (id)currentBuildVersionString
{
  v2 = _CFCopySystemVersionDictionary();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
  v4 = [v3 copy];

  return v4;
}

@end