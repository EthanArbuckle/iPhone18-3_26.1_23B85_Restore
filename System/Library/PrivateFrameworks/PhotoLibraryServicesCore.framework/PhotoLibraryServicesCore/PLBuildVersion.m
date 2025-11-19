@interface PLBuildVersion
+ (id)currentBuildVersionString;
- (PLBuildVersion)initWithString:(id)a3;
- (int64_t)compareBuildVersion:(id)a3 withPrecision:(int64_t)a4;
- (int64_t)compareBuildVersionString:(id)a3 withPrecision:(int64_t)a4;
@end

@implementation PLBuildVersion

- (int64_t)compareBuildVersionString:(id)a3 withPrecision:(int64_t)a4
{
  v6 = a3;
  v7 = [[PLBuildVersion alloc] initWithString:v6];

  if (v7)
  {
    v8 = [(PLBuildVersion *)self compareBuildVersion:v7 withPrecision:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)compareBuildVersion:(id)a3 withPrecision:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLHelper.m" lineNumber:2062 description:{@"Invalid parameter not satisfying: %@", @"otherBuildVersion"}];
  }

  v8 = [(PLBuildVersion *)self majorBuildNumber];
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

    v11 = [(PLBuildVersion *)self majorBuildLetterString];
    v12 = [v7 majorBuildLetterString];
    v10 = [v11 caseInsensitiveCompare:v12];

    if (a4 == 2 && !v10)
    {
      v13 = [(PLBuildVersion *)self minorBuildNumber];
      v14 = [v7 minorBuildNumber];
      v10 = v13 < v14 ? -1 : v13 > v14;
      if (!v10)
      {
        v15 = [(PLBuildVersion *)self minorBuildLetterString];
        if (v15)
        {

LABEL_17:
          v17 = [(PLBuildVersion *)self minorBuildLetterString];
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

- (PLBuildVersion)initWithString:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v6 = [v4 rangeOfCharacterFromSet:v5];
  v8 = v7;

  if ([v4 length])
  {
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8 == 1)
    {
      v29.receiver = self;
      v29.super_class = PLBuildVersion;
      self = [(PLBuildVersion *)&v29 init];
      if (self)
      {
        v10 = [v4 copy];
        stringRepresentation = self->_stringRepresentation;
        self->_stringRepresentation = v10;

        v12 = [v4 substringToIndex:v6];
        self->_majorBuildNumber = [v12 integerValue];

        v13 = [v4 substringWithRange:{v6, v8}];
        v14 = [v13 copy];
        majorBuildLetterString = self->_majorBuildLetterString;
        self->_majorBuildLetterString = v14;

        v16 = [v4 substringFromIndex:v6 + 1];
        v17 = [MEMORY[0x1E696AB08] letterCharacterSet];
        v18 = [v16 rangeOfCharacterFromSet:v17];
        v20 = v19;

        if (v18 == 0x7FFFFFFFFFFFFFFFLL || v20 != 1)
        {
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = [&stru_1F1F75560 copy];
            minorBuildLetterString = self->_minorBuildLetterString;
            self->_minorBuildLetterString = v25;

            v24 = [v4 substringFromIndex:v6 + 1];
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
          v27 = v24;
          self->_minorBuildNumber = [(PLBuildVersion *)v24 integerValue];
LABEL_16:

          goto LABEL_17;
        }

        v27 = self;
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